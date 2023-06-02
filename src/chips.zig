const std = @import("std");
const micro = @import("../deps/microzig/build.zig");
const Chip = micro.Chip;
const MemoryRegion = micro.MemoryRegion;

// Generated file, do not edit.

fn root_dir() []const u8 {
    return std.fs.path.dirname(@src().file) orelse ".";
}

pub const at90can128 = Chip{
    .name = "AT90CAN128",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x20000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90CAN128.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90CAN128.json",
    },
};

pub const at90can32 = Chip{
    .name = "AT90CAN32",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90CAN32.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90CAN32.json",
    },
};

pub const at90can64 = Chip{
    .name = "AT90CAN64",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90CAN64.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90CAN64.json",
    },
};

pub const at90pwm161 = Chip{
    .name = "AT90PWM161",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90PWM161.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90PWM161.json",
    },
};

pub const at90pwm1 = Chip{
    .name = "AT90PWM1",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90PWM1.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90PWM1.json",
    },
};

pub const at90pwm216 = Chip{
    .name = "AT90PWM216",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90PWM216.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90PWM216.json",
    },
};

pub const at90pwm2b = Chip{
    .name = "AT90PWM2B",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90PWM2B.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90PWM2B.json",
    },
};

pub const at90pwm316 = Chip{
    .name = "AT90PWM316",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90PWM316.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90PWM316.json",
    },
};

pub const at90pwm3 = Chip{
    .name = "AT90PWM3",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90PWM3.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90PWM3.json",
    },
};

pub const at90pwm3b = Chip{
    .name = "AT90PWM3B",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90PWM3B.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90PWM3B.json",
    },
};

pub const at90pwm81 = Chip{
    .name = "AT90PWM81",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0100, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90PWM81.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90PWM81.json",
    },
};

pub const at90usb1286 = Chip{
    .name = "AT90USB1286",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x20000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x2000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90USB1286.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90USB1286.json",
    },
};

pub const at90usb1287 = Chip{
    .name = "AT90USB1287",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x20000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x2000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90USB1287.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90USB1287.json",
    },
};

pub const at90usb162 = Chip{
    .name = "AT90USB162",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90USB162.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90USB162.json",
    },
};

pub const at90usb646 = Chip{
    .name = "AT90USB646",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90USB646.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90USB646.json",
    },
};

pub const at90usb647 = Chip{
    .name = "AT90USB647",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90USB647.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90USB647.json",
    },
};

pub const at90usb82 = Chip{
    .name = "AT90USB82",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/AT90USB82.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/AT90USB82.json",
    },
};

pub const atmega1280 = Chip{
    .name = "ATmega1280",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x20000, .kind = .flash },
        MemoryRegion{ .offset = 0x0200, .length = 0x2000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega1280.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega1280.json",
    },
};

pub const atmega1281 = Chip{
    .name = "ATmega1281",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x20000, .kind = .flash },
        MemoryRegion{ .offset = 0x0200, .length = 0x2000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega1281.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega1281.json",
    },
};

pub const atmega1284 = Chip{
    .name = "ATmega1284",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x20000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x4000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega1284.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega1284.json",
    },
};

pub const atmega1284p = Chip{
    .name = "ATmega1284P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x20000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x4000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega1284P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega1284P.json",
    },
};

pub const atmega1284rfr2 = Chip{
    .name = "ATmega1284RFR2",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x20000, .kind = .flash },
        MemoryRegion{ .offset = 0x0200, .length = 0x4000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega1284RFR2.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega1284RFR2.json",
    },
};

pub const atmega128a = Chip{
    .name = "ATmega128A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x20000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega128A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega128A.json",
    },
};

pub const atmega128 = Chip{
    .name = "ATmega128",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x20000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega128.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega128.json",
    },
};

pub const atmega128rfa1 = Chip{
    .name = "ATmega128RFA1",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x20000, .kind = .flash },
        MemoryRegion{ .offset = 0x0200, .length = 0x4000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega128RFA1.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega128RFA1.json",
    },
};

pub const atmega128rfr2 = Chip{
    .name = "ATmega128RFR2",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x20000, .kind = .flash },
        MemoryRegion{ .offset = 0x0200, .length = 0x4000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega128RFR2.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega128RFR2.json",
    },
};

pub const atmega1608 = Chip{
    .name = "ATmega1608",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3800, .length = 0x800, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x4000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega1608.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega1608.json",
    },
};

pub const atmega1609 = Chip{
    .name = "ATmega1609",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3800, .length = 0x800, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x4000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega1609.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega1609.json",
    },
};

pub const atmega162 = Chip{
    .name = "ATmega162",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega162.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega162.json",
    },
};

pub const atmega164a = Chip{
    .name = "ATmega164A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega164A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega164A.json",
    },
};

pub const atmega164pa = Chip{
    .name = "ATmega164PA",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega164PA.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega164PA.json",
    },
};

pub const atmega164p = Chip{
    .name = "ATmega164P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega164P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega164P.json",
    },
};

pub const atmega165a = Chip{
    .name = "ATmega165A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega165A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega165A.json",
    },
};

pub const atmega165pa = Chip{
    .name = "ATmega165PA",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega165PA.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega165PA.json",
    },
};

pub const atmega165p = Chip{
    .name = "ATmega165P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega165P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega165P.json",
    },
};

pub const atmega168a = Chip{
    .name = "ATmega168A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega168A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega168A.json",
    },
};

pub const atmega168 = Chip{
    .name = "ATmega168",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega168.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega168.json",
    },
};

pub const atmega168pa = Chip{
    .name = "ATmega168PA",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega168PA.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega168PA.json",
    },
};

pub const atmega168p = Chip{
    .name = "ATmega168P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega168P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega168P.json",
    },
};

pub const atmega168pb = Chip{
    .name = "ATmega168PB",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega168PB.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega168PB.json",
    },
};

pub const atmega169a = Chip{
    .name = "ATmega169A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega169A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega169A.json",
    },
};

pub const atmega169pa = Chip{
    .name = "ATmega169PA",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega169PA.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega169PA.json",
    },
};

pub const atmega169p = Chip{
    .name = "ATmega169P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega169P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega169P.json",
    },
};

pub const atmega16a = Chip{
    .name = "ATmega16A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega16A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega16A.json",
    },
};

pub const atmega16 = Chip{
    .name = "ATmega16",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega16.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega16.json",
    },
};

pub const atmega16hva = Chip{
    .name = "ATmega16HVA",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega16HVA.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega16HVA.json",
    },
};

pub const atmega16hvb = Chip{
    .name = "ATmega16HVB",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega16HVB.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega16HVB.json",
    },
};

pub const atmega16hvbrevb = Chip{
    .name = "ATmega16HVBrevB",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega16HVBrevB.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega16HVBrevB.json",
    },
};

pub const atmega16m1 = Chip{
    .name = "ATmega16M1",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega16M1.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega16M1.json",
    },
};

pub const atmega16u2 = Chip{
    .name = "ATmega16U2",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega16U2.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega16U2.json",
    },
};

pub const atmega16u4 = Chip{
    .name = "ATmega16U4",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0500, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega16U4.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega16U4.json",
    },
};

pub const atmega2560 = Chip{
    .name = "ATmega2560",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x40000, .kind = .flash },
        MemoryRegion{ .offset = 0x0200, .length = 0x2000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega2560.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega2560.json",
    },
};

pub const atmega2561 = Chip{
    .name = "ATmega2561",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x40000, .kind = .flash },
        MemoryRegion{ .offset = 0x0200, .length = 0x2000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega2561.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega2561.json",
    },
};

pub const atmega2564rfr2 = Chip{
    .name = "ATmega2564RFR2",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x40000, .kind = .flash },
        MemoryRegion{ .offset = 0x0200, .length = 0x8000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega2564RFR2.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega2564RFR2.json",
    },
};

pub const atmega256rfr2 = Chip{
    .name = "ATmega256RFR2",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x40000, .kind = .flash },
        MemoryRegion{ .offset = 0x0200, .length = 0x8000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega256RFR2.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega256RFR2.json",
    },
};

pub const atmega3208 = Chip{
    .name = "ATmega3208",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3000, .length = 0x1000, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x8000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega3208.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega3208.json",
    },
};

pub const atmega3209 = Chip{
    .name = "ATmega3209",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3000, .length = 0x1000, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x8000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega3209.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega3209.json",
    },
};

pub const atmega324a = Chip{
    .name = "ATmega324A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega324A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega324A.json",
    },
};

pub const atmega324pa = Chip{
    .name = "ATmega324PA",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega324PA.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega324PA.json",
    },
};

pub const atmega324p = Chip{
    .name = "ATmega324P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega324P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega324P.json",
    },
};

pub const atmega3250a = Chip{
    .name = "ATmega3250A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega3250A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega3250A.json",
    },
};

pub const atmega3250 = Chip{
    .name = "ATmega3250",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega3250.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega3250.json",
    },
};

pub const atmega3250pa = Chip{
    .name = "ATmega3250PA",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega3250PA.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega3250PA.json",
    },
};

pub const atmega3250p = Chip{
    .name = "ATmega3250P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega3250P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega3250P.json",
    },
};

pub const atmega325a = Chip{
    .name = "ATmega325A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega325A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega325A.json",
    },
};

pub const atmega325 = Chip{
    .name = "ATmega325",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega325.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega325.json",
    },
};

pub const atmega325pa = Chip{
    .name = "ATmega325PA",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega325PA.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega325PA.json",
    },
};

pub const atmega325p = Chip{
    .name = "ATmega325P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega325P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega325P.json",
    },
};

pub const atmega328 = Chip{
    .name = "ATmega328",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega328.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega328.json",
    },
};

pub const atmega328p = Chip{
    .name = "ATmega328P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega328P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega328P.json",
    },
};

pub const atmega3290a = Chip{
    .name = "ATmega3290A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega3290A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega3290A.json",
    },
};

pub const atmega3290 = Chip{
    .name = "ATmega3290",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega3290.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega3290.json",
    },
};

pub const atmega3290pa = Chip{
    .name = "ATmega3290PA",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega3290PA.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega3290PA.json",
    },
};

pub const atmega3290p = Chip{
    .name = "ATmega3290P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega3290P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega3290P.json",
    },
};

pub const atmega329a = Chip{
    .name = "ATmega329A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega329A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega329A.json",
    },
};

pub const atmega329 = Chip{
    .name = "ATmega329",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega329.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega329.json",
    },
};

pub const atmega329pa = Chip{
    .name = "ATmega329PA",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega329PA.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega329PA.json",
    },
};

pub const atmega329p = Chip{
    .name = "ATmega329P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega329P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega329P.json",
    },
};

pub const atmega32a = Chip{
    .name = "ATmega32A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega32A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega32A.json",
    },
};

pub const atmega32 = Chip{
    .name = "ATmega32",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega32.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega32.json",
    },
};

pub const atmega32c1 = Chip{
    .name = "ATmega32C1",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega32C1.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega32C1.json",
    },
};

pub const atmega32hvb = Chip{
    .name = "ATmega32HVB",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega32HVB.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega32HVB.json",
    },
};

pub const atmega32hvbrevb = Chip{
    .name = "ATmega32HVBrevB",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega32HVBrevB.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega32HVBrevB.json",
    },
};

pub const atmega32m1 = Chip{
    .name = "ATmega32M1",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega32M1.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega32M1.json",
    },
};

pub const atmega32u2 = Chip{
    .name = "ATmega32U2",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega32U2.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega32U2.json",
    },
};

pub const atmega32u4 = Chip{
    .name = "ATmega32U4",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x8000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0a00, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega32U4.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega32U4.json",
    },
};

pub const atmega406 = Chip{
    .name = "ATmega406",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0xa000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0800, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega406.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega406.json",
    },
};

pub const atmega4808 = Chip{
    .name = "ATmega4808",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x2800, .length = 0x1800, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0xC000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega4808.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega4808.json",
    },
};

pub const atmega4809 = Chip{
    .name = "ATmega4809",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x2800, .length = 0x1800, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0xC000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega4809.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega4809.json",
    },
};

pub const atmega48a = Chip{
    .name = "ATmega48A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega48A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega48A.json",
    },
};

pub const atmega48 = Chip{
    .name = "ATmega48",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega48.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega48.json",
    },
};

pub const atmega48pa = Chip{
    .name = "ATmega48PA",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega48PA.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega48PA.json",
    },
};

pub const atmega48p = Chip{
    .name = "ATmega48P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega48P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega48P.json",
    },
};

pub const atmega48pb = Chip{
    .name = "ATmega48PB",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega48PB.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega48PB.json",
    },
};

pub const atmega640 = Chip{
    .name = "ATmega640",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0200, .length = 0x2000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega640.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega640.json",
    },
};

pub const atmega644a = Chip{
    .name = "ATmega644A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega644A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega644A.json",
    },
};

pub const atmega644 = Chip{
    .name = "ATmega644",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega644.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega644.json",
    },
};

pub const atmega644pa = Chip{
    .name = "ATmega644PA",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega644PA.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega644PA.json",
    },
};

pub const atmega644p = Chip{
    .name = "ATmega644P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega644P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega644P.json",
    },
};

pub const atmega644rfr2 = Chip{
    .name = "ATmega644RFR2",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0200, .length = 0x2000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega644RFR2.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega644RFR2.json",
    },
};

pub const atmega6450a = Chip{
    .name = "ATmega6450A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega6450A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega6450A.json",
    },
};

pub const atmega6450 = Chip{
    .name = "ATmega6450",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega6450.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega6450.json",
    },
};

pub const atmega6450p = Chip{
    .name = "ATmega6450P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega6450P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega6450P.json",
    },
};

pub const atmega645a = Chip{
    .name = "ATmega645A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega645A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega645A.json",
    },
};

pub const atmega645 = Chip{
    .name = "ATmega645",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega645.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega645.json",
    },
};

pub const atmega645p = Chip{
    .name = "ATmega645P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega645P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega645P.json",
    },
};

pub const atmega6490a = Chip{
    .name = "ATmega6490A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega6490A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega6490A.json",
    },
};

pub const atmega6490 = Chip{
    .name = "ATmega6490",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega6490.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega6490.json",
    },
};

pub const atmega6490p = Chip{
    .name = "ATmega6490P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega6490P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega6490P.json",
    },
};

pub const atmega649a = Chip{
    .name = "ATmega649A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega649A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega649A.json",
    },
};

pub const atmega649 = Chip{
    .name = "ATmega649",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega649.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega649.json",
    },
};

pub const atmega649p = Chip{
    .name = "ATmega649P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega649P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega649P.json",
    },
};

pub const atmega64a = Chip{
    .name = "ATmega64A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega64A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega64A.json",
    },
};

pub const atmega64 = Chip{
    .name = "ATmega64",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega64.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega64.json",
    },
};

pub const atmega64c1 = Chip{
    .name = "ATmega64C1",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega64C1.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega64C1.json",
    },
};

pub const atmega64hve2 = Chip{
    .name = "ATmega64HVE2",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega64HVE2.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega64HVE2.json",
    },
};

pub const atmega64m1 = Chip{
    .name = "ATmega64M1",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x1000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega64M1.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega64M1.json",
    },
};

pub const atmega64rfr2 = Chip{
    .name = "ATmega64RFR2",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x10000, .kind = .flash },
        MemoryRegion{ .offset = 0x0200, .length = 0x2000, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega64RFR2.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega64RFR2.json",
    },
};

pub const atmega808 = Chip{
    .name = "ATmega808",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3C00, .length = 0x400, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x2000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega808.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega808.json",
    },
};

pub const atmega809 = Chip{
    .name = "ATmega809",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3C00, .length = 0x400, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x2000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega809.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega809.json",
    },
};

pub const atmega8515 = Chip{
    .name = "ATmega8515",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega8515.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega8515.json",
    },
};

pub const atmega8535 = Chip{
    .name = "ATmega8535",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega8535.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega8535.json",
    },
};

pub const atmega88a = Chip{
    .name = "ATmega88A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega88A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega88A.json",
    },
};

pub const atmega88 = Chip{
    .name = "ATmega88",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega88.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega88.json",
    },
};

pub const atmega88pa = Chip{
    .name = "ATmega88PA",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega88PA.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega88PA.json",
    },
};

pub const atmega88p = Chip{
    .name = "ATmega88P",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega88P.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega88P.json",
    },
};

pub const atmega88pb = Chip{
    .name = "ATmega88PB",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega88PB.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega88PB.json",
    },
};

pub const atmega8a = Chip{
    .name = "ATmega8A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega8A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega8A.json",
    },
};

pub const atmega8 = Chip{
    .name = "ATmega8",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega8.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega8.json",
    },
};

pub const atmega8hva = Chip{
    .name = "ATmega8HVA",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega8HVA.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega8HVA.json",
    },
};

pub const atmega8u2 = Chip{
    .name = "ATmega8U2",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATmega8U2.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATmega8U2.json",
    },
};

pub const attiny102 = Chip{
    .name = "ATtiny102",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0400, .kind = .flash },
        MemoryRegion{ .offset = 0x0040, .length = 0x20, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny102.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny102.json",
    },
};

pub const attiny104 = Chip{
    .name = "ATtiny104",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0400, .kind = .flash },
        MemoryRegion{ .offset = 0x0040, .length = 0x20, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny104.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny104.json",
    },
};

pub const attiny10 = Chip{
    .name = "ATtiny10",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0400, .kind = .flash },
        MemoryRegion{ .offset = 0x0040, .length = 0x20, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny10.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny10.json",
    },
};

pub const attiny13a = Chip{
    .name = "ATtiny13A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0400, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0040, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny13A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny13A.json",
    },
};

pub const attiny13 = Chip{
    .name = "ATtiny13",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0400, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0040, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny13.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny13.json",
    },
};

pub const attiny1604 = Chip{
    .name = "ATtiny1604",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3C00, .length = 0x400, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x4000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny1604.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny1604.json",
    },
};

pub const attiny1606 = Chip{
    .name = "ATtiny1606",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3C00, .length = 0x400, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x4000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny1606.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny1606.json",
    },
};

pub const attiny1607 = Chip{
    .name = "ATtiny1607",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3C00, .length = 0x400, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x4000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny1607.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny1607.json",
    },
};

pub const attiny1624 = Chip{
    .name = "ATtiny1624",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3800, .length = 0x800, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x4000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny1624.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny1624.json",
    },
};

pub const attiny1626 = Chip{
    .name = "ATtiny1626",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3800, .length = 0x800, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x4000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny1626.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny1626.json",
    },
};

pub const attiny1627 = Chip{
    .name = "ATtiny1627",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3800, .length = 0x800, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x4000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny1627.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny1627.json",
    },
};

pub const attiny1634 = Chip{
    .name = "ATtiny1634",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0400, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny1634.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny1634.json",
    },
};

pub const attiny167 = Chip{
    .name = "ATtiny167",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x4000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny167.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny167.json",
    },
};

pub const attiny202 = Chip{
    .name = "ATtiny202",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3F80, .length = 0x80, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x800, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny202.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny202.json",
    },
};

pub const attiny204 = Chip{
    .name = "ATtiny204",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3F80, .length = 0x80, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x800, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny204.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny204.json",
    },
};

pub const attiny20 = Chip{
    .name = "ATtiny20",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0800, .kind = .flash },
        MemoryRegion{ .offset = 0x0040, .length = 0x80, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny20.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny20.json",
    },
};

pub const attiny212 = Chip{
    .name = "ATtiny212",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3F80, .length = 0x80, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x800, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny212.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny212.json",
    },
};

pub const attiny214 = Chip{
    .name = "ATtiny214",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3F80, .length = 0x80, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x800, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny214.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny214.json",
    },
};

pub const attiny2313a = Chip{
    .name = "ATtiny2313A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0800, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0080, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny2313A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny2313A.json",
    },
};

pub const attiny2313 = Chip{
    .name = "ATtiny2313",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0800, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0080, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny2313.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny2313.json",
    },
};

pub const attiny24a = Chip{
    .name = "ATtiny24A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0800, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0080, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny24A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny24A.json",
    },
};

pub const attiny24 = Chip{
    .name = "ATtiny24",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0800, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0080, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny24.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny24.json",
    },
};

pub const attiny25 = Chip{
    .name = "ATtiny25",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0800, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0080, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny25.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny25.json",
    },
};

pub const attiny261a = Chip{
    .name = "ATtiny261A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0800, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0080, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny261A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny261A.json",
    },
};

pub const attiny261 = Chip{
    .name = "ATtiny261",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0800, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0080, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny261.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny261.json",
    },
};

pub const attiny26 = Chip{
    .name = "ATtiny26",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0800, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0080, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny26.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny26.json",
    },
};

pub const attiny3224 = Chip{
    .name = "ATtiny3224",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3400, .length = 0xC00, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x8000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny3224.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny3224.json",
    },
};

pub const attiny3226 = Chip{
    .name = "ATtiny3226",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3400, .length = 0xC00, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x8000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny3226.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny3226.json",
    },
};

pub const attiny3227 = Chip{
    .name = "ATtiny3227",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3400, .length = 0xC00, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x8000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny3227.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny3227.json",
    },
};

pub const attiny402 = Chip{
    .name = "ATtiny402",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3F00, .length = 0x100, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x1000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny402.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny402.json",
    },
};

pub const attiny404 = Chip{
    .name = "ATtiny404",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3F00, .length = 0x100, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x1000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny404.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny404.json",
    },
};

pub const attiny406 = Chip{
    .name = "ATtiny406",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3F00, .length = 0x100, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x1000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny406.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny406.json",
    },
};

pub const attiny40 = Chip{
    .name = "ATtiny40",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0040, .length = 0x100, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny40.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny40.json",
    },
};

pub const attiny412 = Chip{
    .name = "ATtiny412",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3F00, .length = 0x100, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x1000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny412.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny412.json",
    },
};

pub const attiny414 = Chip{
    .name = "ATtiny414",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3F00, .length = 0x100, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x1000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny414.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny414.json",
    },
};

pub const attiny416 = Chip{
    .name = "ATtiny416",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3F00, .length = 0x100, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x1000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny416.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny416.json",
    },
};

pub const attiny424 = Chip{
    .name = "ATtiny424",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3E00, .length = 0x200, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x1000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny424.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny424.json",
    },
};

pub const attiny426 = Chip{
    .name = "ATtiny426",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3E00, .length = 0x200, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x1000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny426.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny426.json",
    },
};

pub const attiny427 = Chip{
    .name = "ATtiny427",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3E00, .length = 0x200, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x1000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny427.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny427.json",
    },
};

pub const attiny4313 = Chip{
    .name = "ATtiny4313",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0100, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny4313.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny4313.json",
    },
};

pub const attiny43u = Chip{
    .name = "ATtiny43U",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0100, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny43U.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny43U.json",
    },
};

pub const attiny441 = Chip{
    .name = "ATtiny441",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0100, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny441.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny441.json",
    },
};

pub const attiny44a = Chip{
    .name = "ATtiny44A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0100, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny44A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny44A.json",
    },
};

pub const attiny44 = Chip{
    .name = "ATtiny44",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0100, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny44.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny44.json",
    },
};

pub const attiny45 = Chip{
    .name = "ATtiny45",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0100, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny45.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny45.json",
    },
};

pub const attiny461a = Chip{
    .name = "ATtiny461A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0100, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny461A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny461A.json",
    },
};

pub const attiny461 = Chip{
    .name = "ATtiny461",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0100, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny461.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny461.json",
    },
};

pub const attiny48 = Chip{
    .name = "ATtiny48",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x1000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0100, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny48.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny48.json",
    },
};

pub const attiny4 = Chip{
    .name = "ATtiny4",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0200, .kind = .flash },
        MemoryRegion{ .offset = 0x0040, .length = 0x20, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny4.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny4.json",
    },
};

pub const attiny5 = Chip{
    .name = "ATtiny5",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0200, .kind = .flash },
        MemoryRegion{ .offset = 0x0040, .length = 0x20, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny5.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny5.json",
    },
};

pub const attiny804 = Chip{
    .name = "ATtiny804",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3E00, .length = 0x200, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x2000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny804.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny804.json",
    },
};

pub const attiny806 = Chip{
    .name = "ATtiny806",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3E00, .length = 0x200, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x2000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny806.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny806.json",
    },
};

pub const attiny807 = Chip{
    .name = "ATtiny807",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3E00, .length = 0x200, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x2000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny807.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny807.json",
    },
};

pub const attiny824 = Chip{
    .name = "ATtiny824",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3C00, .length = 0x400, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x2000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny824.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny824.json",
    },
};

pub const attiny826 = Chip{
    .name = "ATtiny826",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3C00, .length = 0x400, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x2000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny826.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny826.json",
    },
};

pub const attiny827 = Chip{
    .name = "ATtiny827",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x3C00, .length = 0x400, .kind = .ram },
        MemoryRegion{ .offset = 0x00, .length = 0x2000, .kind = .flash },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny827.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny827.json",
    },
};

pub const attiny828 = Chip{
    .name = "ATtiny828",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny828.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny828.json",
    },
};

pub const attiny841 = Chip{
    .name = "ATtiny841",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny841.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny841.json",
    },
};

pub const attiny84a = Chip{
    .name = "ATtiny84A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny84A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny84A.json",
    },
};

pub const attiny84 = Chip{
    .name = "ATtiny84",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny84.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny84.json",
    },
};

pub const attiny85 = Chip{
    .name = "ATtiny85",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny85.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny85.json",
    },
};

pub const attiny861a = Chip{
    .name = "ATtiny861A",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny861A.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny861A.json",
    },
};

pub const attiny861 = Chip{
    .name = "ATtiny861",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0060, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny861.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny861.json",
    },
};

pub const attiny87 = Chip{
    .name = "ATtiny87",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny87.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny87.json",
    },
};

pub const attiny88 = Chip{
    .name = "ATtiny88",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x2000, .kind = .flash },
        MemoryRegion{ .offset = 0x0100, .length = 0x0200, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny88.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny88.json",
    },
};

pub const attiny9 = Chip{
    .name = "ATtiny9",
    .cpu = micro.cpus.avr5,
    .memory_regions = &.{
        MemoryRegion{ .offset = 0x0000, .length = 0x0400, .kind = .flash },
        MemoryRegion{ .offset = 0x0040, .length = 0x20, .kind = .ram },
    },
    .source = .{
        .path = root_dir() ++ "/chips/ATtiny9.zig",
    },
    .json_register_schema = .{
        .path = root_dir() ++ "/chips/ATtiny9.json",
    },
};
