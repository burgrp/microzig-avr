const std = @import("std");
const micro = @import("../deps/microzig/build.zig");

const Chip = micro.Chip;
const Cpu = micro.Cpu;
const MemoryRegion = micro.MemoryRegion;

// Generated file, do not edit.

fn root_dir() []const u8 {
    return std.fs.path.dirname(@src().file) orelse ".";
}

pub const at90can128 = Chip{
    .name = "AT90CAN128",
    .cpu = Cpu{
        .name = "AT90CAN128",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90can128 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90CAN32",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90can32 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90CAN64",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90can64 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90PWM161",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90pwm161 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90PWM1",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90pwm1 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90PWM216",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90pwm216 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90PWM2B",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90pwm2b },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90PWM316",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90pwm316 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90PWM3",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90pwm3 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90PWM3B",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90pwm3b },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90PWM81",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90pwm81 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90USB1286",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90usb1286 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90USB1287",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90usb1287 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90USB162",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90usb162 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90USB646",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90usb646 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90USB647",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90usb647 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "AT90USB82",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.at90usb82 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega1280",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega1280 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega1281",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega1281 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega1284",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega1284 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega1284P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega1284p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega1284RFR2",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega1284rfr2 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega128A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega128a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega128",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega128 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega128RFA1",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega128rfa1 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega128RFR2",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega128rfr2 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega1608",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega1608 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega1609",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega1609 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega162",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega162 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega164A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega164a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega164PA",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega164pa },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega164P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega164p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega165A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega165a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega165PA",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega165pa },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega165P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega165p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega168A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega168a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega168",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega168 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega168PA",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega168pa },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega168P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega168p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega168PB",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega168pb },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega169A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega169a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega169PA",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega169pa },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega169P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega169p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega16A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega16a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega16",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega16 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega16HVA",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega16hva },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega16HVB",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega16hvb },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega16HVBrevB",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega16hvbrevb },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega16M1",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega16m1 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega16U2",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega16u2 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega16U4",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega16u4 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega2560",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega2560 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega2561",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega2561 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega2564RFR2",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega2564rfr2 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega256RFR2",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega256rfr2 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega3208",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega3208 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega3209",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega3209 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega324A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega324a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega324PA",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega324pa },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega324P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega324p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega3250A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega3250a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega3250",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega3250 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega3250PA",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega3250pa },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega3250P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega3250p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega325A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega325a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega325",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega325 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega325PA",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega325pa },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega325P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega325p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega328",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega328 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega328P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega328p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega3290A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega3290a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega3290",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega3290 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega3290PA",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega3290pa },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega3290P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega3290p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega329A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega329a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega329",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega329 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega329PA",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega329pa },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega329P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega329p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega32A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega32a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega32",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega32 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega32C1",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega32c1 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega32HVB",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega32hvb },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega32HVBrevB",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega32hvbrevb },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega32M1",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega32m1 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega32U2",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega32u2 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega32U4",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega32u4 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega406",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega406 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega4808",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega4808 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega4809",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega4809 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega48A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega48a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega48",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega48 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega48PA",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega48pa },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega48P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega48p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega48PB",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega48pb },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega640",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega640 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega644A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega644a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega644",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega644 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega644PA",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega644pa },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega644P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega644p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega644RFR2",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega644rfr2 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega6450A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega6450a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega6450",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega6450 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega6450P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega6450p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega645A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega645a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega645",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega645 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega645P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega645p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega6490A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega6490a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega6490",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega6490 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega6490P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega6490p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega649A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega649a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega649",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega649 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega649P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega649p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega64A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega64a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega64",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega64 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega64C1",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega64c1 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega64HVE2",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega64hve2 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega64M1",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega64m1 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega64RFR2",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega64rfr2 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega808",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega808 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega809",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega809 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega8515",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega8515 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega8535",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega8535 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega88A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega88a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega88",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega88 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega88PA",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega88pa },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega88P",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega88p },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega88PB",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega88pb },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega8A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega8a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega8",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega8 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega8HVA",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega8hva },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATmega8U2",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega8u2 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny102",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny102 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny104",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny104 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny10",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny10 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny13A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny13a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny13",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny13 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny1604",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny1604 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny1606",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny1606 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny1607",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny1607 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny1624",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny1624 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny1626",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny1626 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny1627",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny1627 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny1634",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny1634 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny167",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny167 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny202",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny202 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny204",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny204 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny20",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny20 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny212",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny212 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny214",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny214 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny2313A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny2313a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny2313",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny2313 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny24A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny24a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny24",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny24 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny25",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny25 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny261A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny261a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny261",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny261 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny26",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny26 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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

pub const attiny402 = Chip{
    .name = "ATtiny402",
    .cpu = Cpu{
        .name = "ATtiny402",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny402 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny404",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny404 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny406",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny406 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny40",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny40 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny412",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny412 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny414",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny414 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny416",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny416 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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

pub const attiny4313 = Chip{
    .name = "ATtiny4313",
    .cpu = Cpu{
        .name = "ATtiny4313",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny4313 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny43U",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny43u },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny441",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny441 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny44A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny44a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny44",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny44 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny45",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny45 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny461A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny461a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny461",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny461 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny48",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny48 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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

pub const attiny5 = Chip{
    .name = "ATtiny5",
    .cpu = Cpu{
        .name = "ATtiny5",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny5 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny804",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny804 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny806",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny806 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny807",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny807 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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

pub const attiny841 = Chip{
    .name = "ATtiny841",
    .cpu = Cpu{
        .name = "ATtiny841",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny841 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny84A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny84a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny84",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny84 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny85",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny85 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny861A",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny861a },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny861",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny861 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny87",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny87 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny88",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny88 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
    .cpu = Cpu{
        .name = "ATtiny9",
        .source = .{
            .path = std.fmt.comptimePrint("{s}/cpu.zig", .{root_dir()}),
        },
        .target = std.zig.CrossTarget{
            .cpu_arch = .avr,
            .cpu_model = .{ .explicit = &std.Target.avr.cpu.attiny9 },
            .os_tag = .freestanding,
            .abi = .eabi,
        },
    },
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
