#!/bin/bash

rm src/chips -rf

cat >src/chips.zig <<EOF
const std = @import("std");
const micro = @import("../deps/microzig/build.zig");

const Chip = micro.Chip;
const Cpu = micro.Cpu;
const MemoryRegion = micro.MemoryRegion;

// Generated file, do not edit.

fn root_dir() []const u8 {
    return std.fs.path.dirname(@src().file) orelse ".";
}
EOF

for ATDF in `ls atdf/*/*.atdf`
do
    NAME=$(basename $ATDF | sed 's/\.atdf//')
    VAR=$(echo $NAME | tr '[:upper:]' '[:lower:]')

    GEN_ZIG="chips/$NAME.zig"
    regz $ATDF -o src/$GEN_ZIG
    if [ $? -ne 0 ]; then
        echo "Failed to generate $GEN_ZIG"
        rm -f src/$GEN_ZIG
        continue
    fi

    GEN_JSON="chips/$NAME.json"
    regz $ATDF -j -o src/$GEN_JSON
    if [ $? -ne 0 ]; then
        echo "Failed to generate $GEN_JSON"
        rm -f src/$GEN_ZIG src/$GEN_JSON
        continue
    fi

    MEM_DECL=$(cat $ATDF | xq | sed "s/@//g;s/-//g" | jq -r '.avrtoolsdevicefile.devices.device.addressspaces.addressspace[].memorysegment|select(.!=null)|if type == "array" then .[] else . end|select(.name=="SRAM" or .name=="IRAM" or .name=="FLASH" or .name=="PROGMEM" or .name=="INTERNAL_SRAM")|"MemoryRegion{ .offset = \(.start), .length = \(.size), .kind = .\(.type) },"|tostring')
    if [ $? -ne 0 ]; then
        echo "Failed to generate memory declaration for $NAME"
        rm -f src/$GEN_ZIG src/$GEN_JSON
        continue
    fi

    if [[ "$MEM_DECL" != *.ram* ]]; then
        echo "RAM memory region is missing for $NAME"
        rm -f src/$GEN_ZIG src/$GEN_JSON
        continue
    fi

    if [[ "$MEM_DECL" != *.flash* ]]; then
        echo "Flash memory region is missing for $NAME"
        rm -f src/$GEN_ZIG src/$GEN_JSON
        continue
    fi

    cat >>src/chips.zig <<EOF

pub const $VAR = Chip{
    .name = "$NAME",
    .cpu = Cpu{
        .name = "$NAME",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/../deps/microzig/src/modules/cpus/avr5.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.$VAR },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
    .memory_regions = &.{
        $MEM_DECL
    },
    .source = .{
        .path = root_dir() ++ "/$GEN_ZIG",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/$GEN_JSON",
    },
};
EOF

done

zig fmt src/chips.zig