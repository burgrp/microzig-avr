const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny43U = struct {
        pub const properties = struct {
            pub const family = "tinyAVR";
            pub const arch = "AVR8";
        };

        pub const VectorTable = extern struct {
            const Handler = micro.interrupt.Handler;
            const unhandled = micro.interrupt.unhandled;

            RESET: Handler = unhandled,
            ///  External Interrupt Request 0
            INT0: Handler = unhandled,
            ///  Pin Change Interrupt Request 0
            PCINT0: Handler = unhandled,
            ///  Pin Change Interrupt Request 1
            PCINT1: Handler = unhandled,
            ///  Watchdog Time-out
            WDT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match A
            TIM1_COMPA: Handler = unhandled,
            ///  Timer/Counter1 Compare Match B
            TIM1_COMPB: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIM1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Compare Match A
            TIM0_COMPA: Handler = unhandled,
            ///  Timer/Counter0 Compare Match B
            TIM0_COMPB: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIM0_OVF: Handler = unhandled,
            ///  Analog Comparator
            ANA_COMP: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  EEPROM Ready
            EE_RDY: Handler = unhandled,
            ///  USI START
            USI_START: Handler = unhandled,
            ///  USI Overflow
            USI_OVF: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @as(*volatile types.peripherals.FUSE, @ptrFromInt(0x0));
            ///  Lockbits
            pub const LOCKBIT = @as(*volatile types.peripherals.LOCKBIT, @ptrFromInt(0x0));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x20));
            ///  Analog Comparator
            pub const AC = @as(*volatile types.peripherals.AC, @ptrFromInt(0x21));
            ///  Analog-to-Digital Converter
            pub const ADC = @as(*volatile types.peripherals.ADC, @ptrFromInt(0x21));
            ///  Timer/Counter, 8-bit
            pub const TC1 = @as(*volatile types.peripherals.TC8.TC1, @ptrFromInt(0x2b));
            ///  Universal Serial Interface
            pub const USI = @as(*volatile types.peripherals.USI, @ptrFromInt(0x2d));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x32));
            ///  I/O Port
            pub const PORTB = @as(*volatile types.peripherals.PORT.PORTB, @ptrFromInt(0x36));
            ///  I/O Port
            pub const PORTA = @as(*volatile types.peripherals.PORT.PORTA, @ptrFromInt(0x39));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3c));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x41));
            ///  Timer/Counter, 8-bit
            pub const TC0 = @as(*volatile types.peripherals.TC8.TC0, @ptrFromInt(0x43));
            ///  Bootloader
            pub const BOOT_LOAD = @as(*volatile types.peripherals.BOOT_LOAD, @ptrFromInt(0x57));
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_SUT_CKSEL = enum(u6) {
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 CK/14 CK + 0 ms
                EXTCLK_6CK_14CK_0MS = 0x0,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4 ms
                EXTCLK_6CK_14CK_4MS = 0x10,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 CK/14 CK + 64 ms
                EXTCLK_6CK_14CK_64MS = 0x20,
                ///  PLL Clock; Start-up time PWRDWN/RESET: 1K CK/14 CK + 8 ms
                PLLCLK_1KCK_14CK_8MS = 0x1,
                ///  PLL Clock; Start-up time PWRDWN/RESET: 16K CK/14 CK + 8 ms
                PLLCLK_16KCK_14CK_8MS = 0x11,
                ///  PLL Clock; Start-up time PWRDWN/RESET: 1K CK/14 CK + 68 ms
                PLLCLK_1KCK_14CK_68MS = 0x21,
                ///  PLL Clock; Start-up time PWRDWN/RESET: 16K CK/14 CK + 68 ms
                PLLCLK_16KCK_14CK_68MS = 0x31,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 0 ms
                INTRCOSC_8MHZ_6CK_14CK_0MS = 0x2,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4 ms
                INTRCOSC_8MHZ_6CK_14CK_4MS = 0x12,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 64 ms
                INTRCOSC_8MHZ_6CK_14CK_64MS = 0x22,
                ///  WD. Osc. 128 kHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 0 ms
                WDOSC_128KHZ_6CK_14CK_0MS = 0x3,
                ///  WD. Osc. 128 kHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4 ms
                WDOSC_128KHZ_6CK_14CK_4MS = 0x13,
                ///  WD. Osc. 128 kHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 64 ms
                WDOSC_128KHZ_6CK_14CK_64MS = 0x23,
                ///  Ext. Low-Freq. Crystal; Start-up time PWRDWN/RESET: 1 CK 4 ms
                EXTLOFXTAL_1CK_4MS = 0x4,
                ///  Ext. Low-Freq. Crystal; Start-up time PWRDWN/RESET: 1 CK + 64 ms
                EXTLOFXTAL_1CK_64MS = 0x14,
                ///  Ext. Low-Freq. Crystal; Start-up time PWRDWN/RESET: 32 CK + 64 ms
                EXTLOFXTAL_32CK_64MS = 0x24,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTCRES_0MHZ4_0MHZ9_258CK_14CK_4MS1 = 0x8,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTCRES_0MHZ4_0MHZ9_258CK_14CK_65MS = 0x18,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTCRES_0MHZ4_0MHZ9_1KCK_14CK_0MS = 0x28,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTCRES_0MHZ4_0MHZ9_1KCK_14CK_4MS1 = 0x38,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTCRES_0MHZ4_0MHZ9_1KCK_14CK_65MS = 0x9,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_0MS = 0x19,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_4MS1 = 0x29,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_65MS = 0x39,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTCRES_0MHZ9_3MHZ_258CK_14CK_4MS1 = 0xa,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTCRES_0MHZ9_3MHZ_258CK_14CK_65MS = 0x1a,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTCRES_0MHZ9_3MHZ_1KCK_14CK_0MS = 0x2a,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTCRES_0MHZ9_3MHZ_1KCK_14CK_4MS1 = 0x3a,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTCRES_0MHZ9_3MHZ_1KCK_14CK_65MS = 0xb,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_0MS = 0x1b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_4MS1 = 0x2b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_65MS = 0x3b,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTCRES_3MHZ_8MHZ_258CK_14CK_4MS1 = 0xc,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTCRES_3MHZ_8MHZ_258CK_14CK_65MS = 0x1c,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTCRES_3MHZ_8MHZ_1KCK_14CK_0MS = 0x2c,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTCRES_3MHZ_8MHZ_1KCK_14CK_4MS1 = 0x3c,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTCRES_3MHZ_8MHZ_1KCK_14CK_65MS = 0xd,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_0MS = 0x1d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_4MS1 = 0x2d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_65MS = 0x3d,
                ///  Ext. Ceramic Res. 8.0- MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTCRES_8MHZ_XX_258CK_14CK_4MS1 = 0xe,
                ///  Ext. Ceramic Res. 8.0- MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTCRES_8MHZ_XX_258CK_14CK_65MS = 0x1e,
                ///  Ext. Ceramic Res. 8.0- MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTCRES_8MHZ_XX_1KCK_14CK_0MS = 0x2e,
                ///  Ext. Ceramic Res. 8.0- MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTCRES_8MHZ_XX_1KCK_14CK_4MS1 = 0x3e,
                ///  Ext. Ceramic Res. 8.0- MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTCRES_8MHZ_XX_1KCK_14CK_65MS = 0xf,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_8MHZ_XX_16KCK_14CK_0MS = 0x1f,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_8MHZ_XX_16KCK_14CK_4MS1 = 0x2f,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_8MHZ_XX_16KCK_14CK_65MS = 0x3f,
                _,
            };

            pub const ENUM_BODLEVEL = enum(u3) {
                ///  Brown-out detection at VCC=4.3 V
                @"4V3" = 0x4,
                ///  Brown-out detection at VCC=2.7 V
                @"2V7" = 0x5,
                ///  Brown-out detection at VCC=1.8 V
                @"1V8" = 0x6,
                ///  Brown-out detection at VCC=2.3 V
                @"2V3" = 0x3,
                ///  Brown-out detection at VCC=2.2 V
                @"2V2" = 0x2,
                ///  Brown-out detection at VCC=1.9 V
                @"1V9" = 0x1,
                ///  Brown-out detection at VCC=2.0 V
                @"2V0" = 0x0,
                ///  Brown-out detection disabled
                DISABLED = 0x7,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock source
                SUT_CKSEL: packed union {
                    raw: u6,
                    value: ENUM_SUT_CKSEL,
                },
                ///  Clock output on PORTB5
                CKOUT: u1,
                ///  Divide clock by 8 internally
                CKDIV8: u1,
            }),
            HIGH: mmio.Mmio(packed struct(u8) {
                ///  Brown-out Detector trigger level
                BODLEVEL: packed union {
                    raw: u3,
                    value: ENUM_BODLEVEL,
                },
                ///  Preserve EEPROM through the Chip Erase cycle
                EESAVE: u1,
                ///  Watch-dog Timer always on
                WDTON: u1,
                ///  Serial program downloading (SPI) enabled
                SPIEN: u1,
                ///  Debug Wire enable
                DWEN: u1,
                ///  Reset Disabled (Enable PB7 as i/o pin)
                RSTDISBL: u1,
            }),
            EXTENDED: mmio.Mmio(packed struct(u8) {
                ///  Self Programming enable
                SELFPRGEN: u1,
                padding: u7,
            }),
        };

        ///  Lockbits
        pub const LOCKBIT = extern struct {
            pub const ENUM_LB = enum(u2) {
                ///  Further programming and verification disabled
                PROG_VER_DISABLED = 0x0,
                ///  Further programming disabled
                PROG_DISABLED = 0x2,
                ///  No memory lock features enabled
                NO_LOCK = 0x3,
                _,
            };

            LOCKBIT: mmio.Mmio(packed struct(u8) {
                ///  Memory Lock
                LB: packed union {
                    raw: u2,
                    value: ENUM_LB,
                },
                padding: u6,
            }),
        };

        ///  I/O Port
        pub const PORT = struct {
            ///  I/O Port
            pub const PORTA = extern struct {
                ///  Port A Input Pins
                PINA: u8,
                ///  Port A Data Direction Register
                DDRA: u8,
                ///  Port A Data Register
                PORTA: u8,
            };

            ///  I/O Port
            pub const PORTB = extern struct {
                ///  Port B Input Pins
                PINB: u8,
                ///  Port B Data Direction Register
                DDRB: u8,
                ///  Port B Data Register
                PORTB: u8,
            };
        };

        ///  Universal Serial Interface
        pub const USI = extern struct {
            pub const COMM_USI_OP = enum(u2) {
                ///  Normal Operation
                NORMAL_OPERATION = 0x0,
                ///  Three-Wire Mode
                THREE_WIRE_MODE = 0x1,
                ///  Two-Wire Mode
                TWO_WIRE_MODE = 0x2,
                ///  Two-Wire Mode Held Low
                TWO_WIRE_MODE_HELD_LOW = 0x3,
            };

            ///  USI Control Register
            USICR: mmio.Mmio(packed struct(u8) {
                ///  Toggle Clock Port Pin
                USITC: u1,
                ///  Clock Strobe
                USICLK: u1,
                ///  USI Clock Source Select Bits
                USICS: u2,
                ///  USI Wire Mode Bits
                USIWM: packed union {
                    raw: u2,
                    value: COMM_USI_OP,
                },
                ///  Counter Overflow Interrupt Enable
                USIOIE: u1,
                ///  Start Condition Interrupt Enable
                USISIE: u1,
            }),
            ///  USI Status Register
            USISR: mmio.Mmio(packed struct(u8) {
                ///  USI Counter Value Bits
                USICNT: u4,
                ///  Data Output Collision
                USIDC: u1,
                ///  Stop Condition Flag
                USIPF: u1,
                ///  Counter Overflow Interrupt Flag
                USIOIF: u1,
                ///  Start Condition Interrupt Flag
                USISIF: u1,
            }),
            ///  USI Data Register
            USIDR: u8,
            ///  USI Buffer Register
            USIBR: u8,
        };

        ///  Watchdog Timer
        pub const WDT = extern struct {
            pub const WDOG_TIMER_PRESCALE_4BITS = enum(u4) {
                ///  Oscillator Cycles 2K
                OSCILLATOR_CYCLES_2K = 0x0,
                ///  Oscillator Cycles 4K
                OSCILLATOR_CYCLES_4K = 0x1,
                ///  Oscillator Cycles 8K
                OSCILLATOR_CYCLES_8K = 0x2,
                ///  Oscillator Cycles 16K
                OSCILLATOR_CYCLES_16K = 0x3,
                ///  Oscillator Cycles 32K
                OSCILLATOR_CYCLES_32K = 0x4,
                ///  Oscillator Cycles 64K
                OSCILLATOR_CYCLES_64K = 0x5,
                ///  Oscillator Cycles 128K
                OSCILLATOR_CYCLES_128K = 0x6,
                ///  Oscillator Cycles 256K
                OSCILLATOR_CYCLES_256K = 0x7,
                ///  Oscillator Cycles 512K
                OSCILLATOR_CYCLES_512K = 0x8,
                ///  Oscillator Cycles 1024K
                OSCILLATOR_CYCLES_1024K = 0x9,
                _,
            };

            ///  Watchdog Timer Control Register
            WDTCSR: mmio.Mmio(packed struct(u8) {
                ///  Watchdog Timer Prescaler Bits
                WDP_bit0: u1,
                ///  Watchdog Timer Prescaler Bits
                WDP_bit1: u1,
                ///  Watchdog Timer Prescaler Bits
                WDP_bit2: u1,
                ///  Watch Dog Enable
                WDE: u1,
                ///  Watchdog Change Enable
                WDCE: u1,
                ///  Watchdog Timer Prescaler Bits
                WDP_bit3: u1,
                ///  Watchdog Timeout Interrupt Enable
                WDIE: u1,
                ///  Watchdog Timeout Interrupt Flag
                WDIF: u1,
            }),
        };

        ///  Timer/Counter, 8-bit
        pub const TC8 = struct {
            pub const CLK_SEL_3BIT_EXT = enum(u3) {
                ///  No Clock Source (Stopped)
                NO_CLOCK_SOURCE_STOPPED = 0x0,
                ///  Running, No Prescaling
                RUNNING_NO_PRESCALING = 0x1,
                ///  Running, CLK/8
                RUNNING_CLK_8 = 0x2,
                ///  Running, CLK/64
                RUNNING_CLK_64 = 0x3,
                ///  Running, CLK/256
                RUNNING_CLK_256 = 0x4,
                ///  Running, CLK/1024
                RUNNING_CLK_1024 = 0x5,
                ///  Running, ExtClk Tn Falling Edge
                RUNNING_EXTCLK_TN_FALLING_EDGE = 0x6,
                ///  Running, ExtClk Tn Rising Edge
                RUNNING_EXTCLK_TN_RISING_EDGE = 0x7,
            };

            ///  Timer/Counter, 8-bit
            pub const TC0 = extern struct {
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset Timer/CounterN
                    PSR10: u1,
                    reserved7: u6,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                reserved13: [12]u8,
                ///  Timer/Counter Control Register A
                TCCR0A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode bits
                    WGM0: u2,
                    reserved4: u2,
                    ///  Compare Match Output B Mode bits
                    COM0B: u2,
                    ///  Compare Match Output A Mode bits
                    COM0A: u2,
                }),
                reserved15: [1]u8,
                ///  Timer/Counter0
                TCNT0: u8,
                ///  Timer/Counter Control Register B
                TCCR0B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select bits
                    CS0: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Waveform Generation Mode bit 2
                    WGM02: u1,
                    reserved6: u2,
                    ///  Force Output Compare B
                    FOC0B: u1,
                    ///  Force Output Compare A
                    FOC0A: u1,
                }),
                reserved19: [2]u8,
                ///  Timer/Counter0 Output Compare Register A
                OCR0A: u8,
                reserved21: [1]u8,
                ///  Timer/Counter0 Interrupt Flag Register
                TIFR0: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Overflow Flag
                    TOV0: u1,
                    ///  Timer/Counter0 Output Compare Flag A
                    OCF0A: u1,
                    ///  Timer/Counter0 Output Compare Flag B
                    OCF0B: u1,
                    padding: u5,
                }),
                ///  Timer/Counter Interrupt Mask Register
                TIMSK0: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Overflow Interrupt Enable
                    TOIE0: u1,
                    ///  Timer/Counter0 Output Compare Match A Interrupt Enable
                    OCIE0A: u1,
                    ///  Timer/Counter0 Output Compare Match B Interrupt Enable
                    OCIE0B: u1,
                    padding: u5,
                }),
                reserved25: [2]u8,
                ///  Timer/Counter0 Output Compare Register B
                OCR0B: u8,
            };

            ///  Timer/Counter, 8-bit
            pub const TC1 = extern struct {
                ///  Timer/Counter1 Interrupt Flag Register
                TIFR1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Flag
                    TOV1: u1,
                    ///  Timer/Counter1 Output Compare Flag A
                    OCF1A: u1,
                    ///  Timer/Counter1 Output Compare Flag B
                    OCF1B: u1,
                    padding: u5,
                }),
                ///  Timer/Counter Interrupt Mask Register
                TIMSK1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Interrupt Enable
                    TOIE1: u1,
                    ///  Timer/Counter1 Output Compare Match A Interrupt Enable
                    OCIE1A: u1,
                    ///  Timer/Counter1 Output Compare Match B Interrupt Enable
                    OCIE1B: u1,
                    padding: u5,
                }),
                reserved24: [22]u8,
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset Timer/CounterN
                    PSR10: u1,
                    reserved7: u6,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                reserved32: [7]u8,
                ///  Timer/Counter1 Output Compare Register B
                OCR1B: u8,
                ///  Timer/Counter1 Output Compare Register A
                OCR1A: u8,
                ///  Timer/Counter1
                TCNT1: u8,
                ///  Timer/Counter Control Register B
                TCCR1B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select bits
                    CS1: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Waveform Generation Mode bit 2
                    WGM12: u1,
                    reserved6: u2,
                    ///  Force Output Compare B
                    FOC1B: u1,
                    ///  Force Output Compare A
                    FOC1A: u1,
                }),
                ///  Timer/Counter1 Control Register A
                TCCR1A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode bits
                    WGM1: u2,
                    reserved4: u2,
                    ///  Compare Match Output B Mode bits
                    COM1B: u2,
                    ///  Compare Match Output A Mode bits
                    COM1A: u2,
                }),
            };
        };

        ///  Bootloader
        pub const BOOT_LOAD = extern struct {
            ///  Store Program Memory Control Register
            SPMCSR: mmio.Mmio(packed struct(u8) {
                ///  Store Program Memory Enable
                SPMEN: u1,
                ///  Page Erase
                PGERS: u1,
                ///  Page Write
                PGWRT: u1,
                ///  Read fuse and lock bits
                RFLB: u1,
                ///  Clear temporary page buffer
                CTPB: u1,
                padding: u3,
            }),
        };

        ///  CPU Registers
        pub const CPU = extern struct {
            pub const CPU_CLK_PRESCALE_4_BITS_SMALL = enum(u4) {
                ///  1
                @"1" = 0x0,
                ///  2
                @"2" = 0x1,
                ///  4
                @"4" = 0x2,
                ///  8
                @"8" = 0x3,
                ///  16
                @"16" = 0x4,
                ///  32
                @"32" = 0x5,
                ///  64
                @"64" = 0x6,
                ///  128
                @"128" = 0x7,
                ///  256
                @"256" = 0x8,
                _,
            };

            pub const CPU_SLEEP_MODE = enum(u2) {
                ///  Idle
                IDLE = 0x0,
                ///  ADC Noise Reduction (If Available)
                ADC = 0x1,
                ///  Power Down
                PDOWN = 0x2,
                ///  Standby
                STDBY = 0x3,
            };

            pub const INTERRUPT_SENSE_CONTROL2 = enum(u2) {
                ///  Low Level of INTX
                LOW_LEVEL_OF_INTX = 0x0,
                ///  Any Logical Change in INTX
                ANY_LOGICAL_CHANGE_IN_INTX = 0x1,
                ///  Falling Edge of INTX
                FALLING_EDGE_OF_INTX = 0x2,
                ///  Rising Edge of INTX
                RISING_EDGE_OF_INTX = 0x3,
            };

            ///  Oscillator Calibration Values
            pub const OSCCAL_VALUE_ADDRESSES = enum(u1) {
                ///  8.0 MHz
                @"8_0_MHz" = 0x0,
                _,
            };

            ///  Power Reduction Register
            PRR: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction ADC
                PRADC: u1,
                ///  Power Reduction USI
                PRUSI: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                padding: u4,
            }),
            reserved19: [18]u8,
            ///  General Purpose I/O Register 0
            GPIOR0: u8,
            ///  General Purpose I/O Register 1
            GPIOR1: u8,
            ///  General Purpose I/O Register 2
            GPIOR2: u8,
            reserved38: [16]u8,
            ///  Clock Prescale Register
            CLKPR: mmio.Mmio(packed struct(u8) {
                ///  Clock Prescaler Select Bits
                CLKPS: packed union {
                    raw: u4,
                    value: CPU_CLK_PRESCALE_4_BITS_SMALL,
                },
                reserved7: u3,
                ///  Clock Prescaler Change Enable
                CLKPCE: u1,
            }),
            reserved49: [10]u8,
            ///  Oscillator Calibration Value
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
            reserved52: [2]u8,
            ///  MCU Status Register
            MCUSR: mmio.Mmio(packed struct(u8) {
                ///  Power-on reset flag
                PORF: u1,
                ///  External Reset Flag
                EXTRF: u1,
                ///  Brown-out Reset Flag
                BORF: u1,
                ///  Watchdog Reset Flag
                WDRF: u1,
                padding: u4,
            }),
            ///  MCU Control Register
            MCUCR: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Sense Control 0 Bits
                ISC0: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL2,
                },
                ///  BOD Sleep Enable
                BODSE: u1,
                ///  Sleep Mode Select Bits
                SM: packed union {
                    raw: u2,
                    value: CPU_SLEEP_MODE,
                },
                ///  Sleep Enable
                SE: u1,
                ///  Pull-Up Disable
                PUD: u1,
                ///  BOD Sleep
                BODS: u1,
            }),
            reserved61: [7]u8,
            ///  Stack Pointer
            SP: u16,
            ///  Status Register
            SREG: mmio.Mmio(packed struct(u8) {
                ///  Carry Flag
                C: u1,
                ///  Zero Flag
                Z: u1,
                ///  Negative Flag
                N: u1,
                ///  Two's Complement Overflow Flag
                V: u1,
                ///  Sign Bit
                S: u1,
                ///  Half Carry Flag
                H: u1,
                ///  Bit Copy Storage
                T: u1,
                ///  Global Interrupt Enable
                I: u1,
            }),
        };

        ///  Analog Comparator
        pub const AC = extern struct {
            pub const ANALOG_COMP_INTERRUPT = enum(u2) {
                ///  Interrupt on Toggle
                INTERRUPT_ON_TOGGLE = 0x0,
                ///  Reserved
                RESERVED = 0x1,
                ///  Interrupt on Falling Edge
                INTERRUPT_ON_FALLING_EDGE = 0x2,
                ///  Interrupt on Rising Edge
                INTERRUPT_ON_RISING_EDGE = 0x3,
            };

            DIDR0: mmio.Mmio(packed struct(u8) {
                ///  ADC 0 Digital input buffer disable
                ADC0D: u1,
                ///  ADC 1 Digital input buffer disable
                ADC1D: u1,
                padding: u6,
            }),
            reserved2: [1]u8,
            ///  ADC Control and Status Register B
            ADCSRB: mmio.Mmio(packed struct(u8) {
                reserved6: u6,
                ///  Analog Comparator Multiplexer Enable
                ACME: u1,
                padding: u1,
            }),
            reserved7: [4]u8,
            ///  Analog Comparator Control And Status Register
            ACSR: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator Interrupt Mode Select bits
                ACIS: packed union {
                    raw: u2,
                    value: ANALOG_COMP_INTERRUPT,
                },
                reserved3: u1,
                ///  Analog Comparator Interrupt Enable
                ACIE: u1,
                ///  Analog Comparator Interrupt Flag
                ACI: u1,
                ///  Analog Compare Output
                ACO: u1,
                ///  Analog Comparator Bandgap Select
                ACBG: u1,
                ///  Analog Comparator Disable
                ACD: u1,
            }),
        };

        ///  Analog-to-Digital Converter
        pub const ADC = extern struct {
            pub const ANALOG_ADC_V_REF5 = enum(u1) {
                ///  Vcc
                VCC = 0x0,
                ///  Internal 1.1V Voltage Reference
                INTERNAL_1_1V_VOLTAGE_REFERENCE = 0x1,
            };

            pub const ANALOG_ADC_PRESCALER = enum(u3) {
                ///  2
                @"2" = 0x0,
                ///  2
                @"2" = 0x1,
                ///  4
                @"4" = 0x2,
                ///  8
                @"8" = 0x3,
                ///  16
                @"16" = 0x4,
                ///  32
                @"32" = 0x5,
                ///  64
                @"64" = 0x6,
                ///  128
                @"128" = 0x7,
            };

            pub const ANALOG_ADC_AUTO_TRIGGER_T43U = enum(u3) {
                ///  Free Running mode
                FREE_RUNNING_MODE = 0x0,
                ///  Analog Comparator
                ANALOG_COMPARATOR = 0x1,
                ///  External Interrupt Request 0
                EXTERNAL_INTERRUPT_REQUEST_0 = 0x2,
                ///  Timer/Counter0 Compare Match A
                TIMER_COUNTER0_COMPARE_MATCH_A = 0x3,
                ///  Timer/Counter0 Overflow
                TIMER_COUNTER0_OVERFLOW = 0x4,
                ///  Timer/Counter1 Compare Match A
                TIMER_COUNTER1_COMPARE_MATCH_A = 0x5,
                ///  Timer/Counter1 Overflow
                TIMER_COUNTER1_OVERFLOW = 0x6,
                ///  Timer/Counter1 Capture Match B
                TIMER_COUNTER1_CAPTURE_MATCH_B = 0x7,
            };

            ///  Digital Input Disable Register 0
            DIDR0: mmio.Mmio(packed struct(u8) {
                ///  ADC0 Digital Input Disable
                ADC0D: u1,
                ///  ADC1 Digital Input Disable
                ADC1D: u1,
                ///  ADC2 Digital Input Disable
                ADC2D: u1,
                ///  ADC3 Digital Input Disable
                ADC3D: u1,
                ///  Analog Comparator IO
                AIN0D: u1,
                ///  Analog Comparator IO
                AIN1D: u1,
                padding: u2,
            }),
            reserved2: [1]u8,
            ///  ADC Control and Status Register B
            ADCSRB: mmio.Mmio(packed struct(u8) {
                ///  ADC Auto Trigger Source bits
                ADTS: packed union {
                    raw: u3,
                    value: ANALOG_ADC_AUTO_TRIGGER_T43U,
                },
                reserved4: u1,
                ///  ADC Left Adjust Result
                ADLAR: u1,
                reserved6: u1,
                ///  Analog Comparator Multiplexer Enable
                ACME: u1,
                ///  Boost Regulator Status Bit
                BVRON: u1,
            }),
            ///  ADC Data Register Bytes
            ADC: u16,
            ///  ADC Control and Status Register A
            ADCSRA: mmio.Mmio(packed struct(u8) {
                ///  ADC Prescaler Select Bits
                ADPS: packed union {
                    raw: u3,
                    value: ANALOG_ADC_PRESCALER,
                },
                ///  ADC Interrupt Enable
                ADIE: u1,
                ///  ADC Interrupt Flag
                ADIF: u1,
                ///  ADC Auto Trigger Enable
                ADATE: u1,
                ///  ADC Start Conversion
                ADSC: u1,
                ///  ADC Enable
                ADEN: u1,
            }),
            ///  ADC Multiplexer Selection Register
            ADMUX: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel Selection Bits
                MUX: u3,
                reserved6: u3,
                ///  Reference Selection Bit
                REFS: packed union {
                    raw: u1,
                    value: ANALOG_ADC_V_REF5,
                },
                padding: u1,
            }),
        };

        ///  EEPROM
        pub const EEPROM = extern struct {
            pub const EEP_MODE = enum(u2) {
                ///  Erase and Write in one operation
                ERASE_AND_WRITE_IN_ONE_OPERATION = 0x0,
                ///  Erase Only
                ERASE_ONLY = 0x1,
                ///  Write Only
                WRITE_ONLY = 0x2,
                _,
            };

            ///  EEPROM Control Register
            EECR: mmio.Mmio(packed struct(u8) {
                ///  EEPROM Read Enable
                EERE: u1,
                ///  EEPROM Write Enable
                EEPE: u1,
                ///  EEPROM Master Write Enable
                EEMPE: u1,
                ///  EEPROM Ready Interrupt Enable
                EERIE: u1,
                ///  EEPROM Programming Mode Bits
                EEPM: packed union {
                    raw: u2,
                    value: EEP_MODE,
                },
                padding: u2,
            }),
            ///  EEPROM Data Register
            EEDR: u8,
            ///  EEPROM Address Register
            EEAR: u8,
        };
    };
};
