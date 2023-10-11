const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const AT90PWM3B = struct {
        pub const properties = struct {
            pub const family = "megaAVR";
            pub const arch = "AVR8";
        };

        pub const VectorTable = extern struct {
            const Handler = micro.interrupt.Handler;
            const unhandled = micro.interrupt.unhandled;

            RESET: Handler = unhandled,
            ///  PSC2 Capture Event
            PSC2_CAPT: Handler = unhandled,
            ///  PSC2 End Cycle
            PSC2_EC: Handler = unhandled,
            ///  PSC1 Capture Event
            PSC1_CAPT: Handler = unhandled,
            ///  PSC1 End Cycle
            PSC1_EC: Handler = unhandled,
            ///  PSC0 Capture Event
            PSC0_CAPT: Handler = unhandled,
            ///  PSC0 End Cycle
            PSC0_EC: Handler = unhandled,
            ///  Analog Comparator 0
            ANALOG_COMP_0: Handler = unhandled,
            ///  Analog Comparator 1
            ANALOG_COMP_1: Handler = unhandled,
            ///  Analog Comparator 2
            ANALOG_COMP_2: Handler = unhandled,
            ///  External Interrupt Request 0
            INT0: Handler = unhandled,
            ///  Timer/Counter1 Capture Event
            TIMER1_CAPT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer/Counter Compare Match B
            TIMER1_COMPB: Handler = unhandled,
            RESERVED15: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIMER1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Compare Match A
            TIMER0_COMPA: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  External Interrupt Request 1
            INT1: Handler = unhandled,
            ///  SPI Serial Transfer Complete
            SPI_STC: Handler = unhandled,
            ///  USART, Rx Complete
            USART_RX: Handler = unhandled,
            ///  USART Data Register Empty
            USART_UDRE: Handler = unhandled,
            ///  USART, Tx Complete
            USART_TX: Handler = unhandled,
            ///  External Interrupt Request 2
            INT2: Handler = unhandled,
            ///  Watchdog Timeout Interrupt
            WDT: Handler = unhandled,
            ///  EEPROM Ready
            EE_READY: Handler = unhandled,
            ///  Timer Counter 0 Compare Match B
            TIMER0_COMPB: Handler = unhandled,
            ///  External Interrupt Request 3
            INT3: Handler = unhandled,
            RESERVED30: Handler = unhandled,
            RESERVED31: Handler = unhandled,
            ///  Store Program Memory Read
            SPM_READY: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @as(*volatile types.peripherals.FUSE, @ptrFromInt(0x0));
            ///  Lockbits
            pub const LOCKBIT = @as(*volatile types.peripherals.LOCKBIT, @ptrFromInt(0x0));
            ///  I/O Port
            pub const PORTB = @as(*volatile types.peripherals.PORT.PORTB, @ptrFromInt(0x23));
            ///  I/O Port
            pub const PORTC = @as(*volatile types.peripherals.PORT.PORTC, @ptrFromInt(0x26));
            ///  I/O Port
            pub const PORTD = @as(*volatile types.peripherals.PORT.PORTD, @ptrFromInt(0x29));
            ///  I/O Port
            pub const PORTE = @as(*volatile types.peripherals.PORT.PORTE, @ptrFromInt(0x2c));
            ///  Timer/Counter, 8-bit
            pub const TC0 = @as(*volatile types.peripherals.TC8.TC0, @ptrFromInt(0x35));
            ///  Timer/Counter, 16-bit
            pub const TC1 = @as(*volatile types.peripherals.TC16.TC1, @ptrFromInt(0x36));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x39));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x3c));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3f));
            ///  Serial Peripheral Interface
            pub const SPI = @as(*volatile types.peripherals.SPI, @ptrFromInt(0x4c));
            ///  Analog Comparator
            pub const AC = @as(*volatile types.peripherals.AC, @ptrFromInt(0x50));
            ///  Bootloader
            pub const BOOT_LOAD = @as(*volatile types.peripherals.BOOT_LOAD, @ptrFromInt(0x57));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x60));
            ///  Analog-to-Digital Converter
            pub const ADC = @as(*volatile types.peripherals.ADC, @ptrFromInt(0x76));
            ///  Power Stage Controller
            pub const PSC0 = @as(*volatile types.peripherals.PSC.PSC0, @ptrFromInt(0xa0));
            ///  Power Stage Controller
            pub const PSC1 = @as(*volatile types.peripherals.PSC.PSC1, @ptrFromInt(0xa2));
            ///  Power Stage Controller
            pub const PSC2 = @as(*volatile types.peripherals.PSC.PSC2, @ptrFromInt(0xa4));
            ///  Digital-to-Analog Converter
            pub const DAC = @as(*volatile types.peripherals.DAC, @ptrFromInt(0xaa));
            ///  USART
            pub const USART = @as(*volatile types.peripherals.USART, @ptrFromInt(0xc0));
            ///  Extended USART
            pub const EUSART = @as(*volatile types.peripherals.EUSART, @ptrFromInt(0xc8));
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
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4.1 ms
                EXTCLK_6CK_14CK_4MS1 = 0x10,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 CK/14 CK + 65 ms
                EXTCLK_6CK_14CK_65MS = 0x20,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 0 ms
                INTRCOSC_8MHZ_6CK_14CK_0MS = 0x2,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4.1 ms
                INTRCOSC_8MHZ_6CK_14CK_4MS1 = 0x12,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 65 ms
                INTRCOSC_8MHZ_6CK_14CK_65MS = 0x22,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_258CK_14CK_4MS1 = 0x8,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_258CK_14CK_65MS = 0x18,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTXOSC_0MHZ4_0MHZ9_1KCK_14CK_0MS = 0x28,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_1KCK_14CK_4MS1 = 0x38,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_1KCK_14CK_65MS = 0x9,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_0MS = 0x19,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_4MS1 = 0x29,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_65MS = 0x39,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_258CK_14CK_4MS1 = 0xa,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_258CK_14CK_65MS = 0x1a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTXOSC_0MHZ9_3MHZ_1KCK_14CK_0MS = 0x2a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_1KCK_14CK_4MS1 = 0x3a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_1KCK_14CK_65MS = 0xb,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_0MS = 0x1b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_4MS1 = 0x2b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_65MS = 0x3b,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_258CK_14CK_4MS1 = 0xc,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_258CK_14CK_65MS = 0x1c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTXOSC_3MHZ_8MHZ_1KCK_14CK_0MS = 0x2c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_1KCK_14CK_4MS1 = 0x3c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_1KCK_14CK_65MS = 0xd,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_0MS = 0x1d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_4MS1 = 0x2d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_65MS = 0x3d,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTXOSC_8MHZ_XX_258CK_14CK_4MS1 = 0xe,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTXOSC_8MHZ_XX_258CK_14CK_65MS = 0x1e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTXOSC_8MHZ_XX_1KCK_14CK_0MS = 0x2e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTXOSC_8MHZ_XX_1KCK_14CK_4MS1 = 0x3e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTXOSC_8MHZ_XX_1KCK_14CK_65MS = 0xf,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_8MHZ_XX_16KCK_14CK_0MS = 0x1f,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_8MHZ_XX_16KCK_14CK_4MS1 = 0x2f,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_8MHZ_XX_16KCK_14CK_65MS = 0x3f,
                ///  PLL clock 16 MHz; Rc. Start-up time PWRDWN/RESET: 1K CK/14 CK + 0 ms
                PLLCLK_16MHZ_1KCK_14CK_0MS = 0x3,
                ///  PLL clock 16 MHz; Start-up time PWRDWN/RESET: 1K CK/14 CK + 4.1 ms
                PLLCLK_16MHZ_1KCK_14CK_4MS1 = 0x13,
                ///  PLL clock 16 MHz; Start-up time PWRDWN/RESET: 1K CK/14 CK + 65 ms
                PLLCLK_16MHZ_1KCK_14CK_65MS = 0x23,
                ///  PLL clock 16 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                PLLCLK_16MHZ_16KCK_14CK_0MS = 0x33,
                ///  PLL clock /4; PLL input: Ext. Clock; Start-up time PWRDWN/RESET: 6K CK/14 CK + 0 ms
                PLLCLK_PLLIN_EXTCLK_6KCK_14CK_0MS = 0x1,
                ///  PLL clock /4; PLL input: Ext. Clock; Start-up time PWRDWN/RESET: 6K CK/14 CK + 4 ms
                PLLCLK_PLLIN_EXTCLK_6KCK_14CK_4MS = 0x11,
                ///  PLL clock /4; PLL input: Ext. Clock; Start-up time PWRDWN/RESET: 6K CK/14 CK + 64 ms
                PLLCLK_PLLIN_EXTCLK_6KCK_14CK_64MS = 0x21,
                ///  PLL clock /4; PLL input: Ext. Crystal Osc.; Start-up time PWRDWN/RESET: 1K CK/14 CK + 0 ms
                PLLCLK_PLLIN_EXTXOSC_1KCK_14CK_0MS = 0x5,
                ///  PLL clock /4; PLL input: Ext. Crystal Osc.; Start-up time PWRDWN/RESET: 1K CK/14 CK + 4 ms
                PLLCLK_PLLIN_EXTXOSC_1KCK_14CK_4MS = 0x15,
                ///  PLL clock /4; PLL input: Ext. Crystal Osc.; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4 ms
                PLLCLK_PLLIN_EXTXOSC_16KCK_14CK_4MS = 0x25,
                ///  PLL clock /4; PLL input: Ext. Crystal Osc.; Start-up time PWRDWN/RESET: 16K CK/14 CK + 64 ms
                PLLCLK_PLLIN_EXTXOSC_16KCK_14CK_64MS = 0x35,
                ///  Ext. Crystal Osc.; PLL input: Ext. Crystal Osc.; Start-up time PWRDWN/RESET: 1K CK/14 CK + 0 ms
                EXTXOSC_PLLIN_EXTXOSC_1KCK_14CK_0MS = 0x4,
                ///  Ext. Crystal Osc.; PLL input: Ext. Crystal Osc.; Start-up time PWRDWN/RESET: 1K CK/14 CK + 4 ms
                EXTXOSC_PLLIN_EXTXOSC_1KCK_14CK_4MS = 0x14,
                ///  Ext. Crystal Osc.; PLL input: Ext. Crystal Osc.; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4 ms
                EXTXOSC_PLLIN_EXTXOSC_16KCK_14CK_4MS = 0x24,
                ///  Ext. Crystal Osc.; PLL input: Ext. Crystal Osc.; Start-up time PWRDWN/RESET: 16K CK/14 CK + 64 ms
                EXTXOSC_PLLIN_EXTXOSC_16KCK_14CK_64MS = 0x34,
                _,
            };

            pub const ENUM_BODLEVEL = enum(u3) {
                ///  Brown-out detection disabled
                DISABLED = 0x7,
                ///  Brown-out detection at VCC=4.5 V
                @"4V5" = 0x6,
                ///  Brown-out detection at VCC=2.7 V
                @"2V7" = 0x5,
                ///  Brown-out detection at VCC=4.3 V
                @"4V3" = 0x4,
                ///  Brown-out detection at VCC=4.4 V
                @"4V4" = 0x3,
                ///  Brown-out detection at VCC=4.2 V
                @"4V2" = 0x2,
                ///  Brown-out detection at VCC=2.8 V
                @"2V8" = 0x1,
                ///  Brown-out detection at VCC=2.6 V
                @"2V6" = 0x0,
            };

            pub const ENUM_BOOTSZ = enum(u2) {
                ///  Boot Flash size=128 words Boot address=$0F80
                @"128W_0F80" = 0x3,
                ///  Boot Flash size=256 words Boot address=$0F00
                @"256W_0F00" = 0x2,
                ///  Boot Flash size=512 words Boot address=$0E00
                @"512W_0E00" = 0x1,
                ///  Boot Flash size=1024 words Boot address=$0C00
                @"1024W_0C00" = 0x0,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock Source
                SUT_CKSEL: packed union {
                    raw: u6,
                    value: ENUM_SUT_CKSEL,
                },
                ///  Clock output on PORTB0
                CKOUT: u1,
                ///  Divide clock by 8 internally
                CKDIV8: u1,
            }),
            HIGH: mmio.Mmio(packed struct(u8) {
                ///  Brown-out Detector Trigger Level
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
                ///  Reset Disabled (Enable PC6 as i/o pin)
                RSTDISBL: u1,
            }),
            EXTENDED: mmio.Mmio(packed struct(u8) {
                ///  Select Reset Vector
                BOOTRST: u1,
                ///  Select Boot Size
                BOOTSZ: packed union {
                    raw: u2,
                    value: ENUM_BOOTSZ,
                },
                reserved4: u1,
                ///  PSCOUT Reset Value
                PSCRV: u1,
                ///  PSC0 Reset Behavior
                PSC0RB: u1,
                ///  PSC1 Reset Behavior
                PSC1RB: u1,
                ///  PSC2 Reset Behavior
                PSC2RB: u1,
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

            pub const ENUM_BLB = enum(u2) {
                ///  LPM and SPM prohibited in Application Section
                LPM_SPM_DISABLE = 0x0,
                ///  LPM prohibited in Application Section
                LPM_DISABLE = 0x1,
                ///  SPM prohibited in Application Section
                SPM_DISABLE = 0x2,
                ///  No lock on SPM and LPM in Application Section
                NO_LOCK = 0x3,
            };

            pub const ENUM_BLB2 = enum(u2) {
                ///  LPM and SPM prohibited in Boot Section
                LPM_SPM_DISABLE = 0x0,
                ///  LPM prohibited in Boot Section
                LPM_DISABLE = 0x1,
                ///  SPM prohibited in Boot Section
                SPM_DISABLE = 0x2,
                ///  No lock on SPM and LPM in Boot Section
                NO_LOCK = 0x3,
            };

            LOCKBIT: mmio.Mmio(packed struct(u8) {
                ///  Memory Lock
                LB: packed union {
                    raw: u2,
                    value: ENUM_LB,
                },
                ///  Boot Loader Protection Mode
                BLB0: packed union {
                    raw: u2,
                    value: ENUM_BLB,
                },
                ///  Boot Loader Protection Mode
                BLB1: packed union {
                    raw: u2,
                    value: ENUM_BLB2,
                },
                padding: u2,
            }),
        };

        ///  I/O Port
        pub const PORT = struct {
            ///  I/O Port
            pub const PORTB = extern struct {
                ///  Port B Input Pins
                PINB: u8,
                ///  Port B Data Direction Register
                DDRB: u8,
                ///  Port B Data Register
                PORTB: u8,
            };

            ///  I/O Port
            pub const PORTC = extern struct {
                ///  Port C Input Pins
                PINC: u8,
                ///  Port C Data Direction Register
                DDRC: u8,
                ///  Port C Data Register
                PORTC: u8,
            };

            ///  I/O Port
            pub const PORTD = extern struct {
                ///  Port D Input Pins
                PIND: u8,
                ///  Port D Data Direction Register
                DDRD: u8,
                ///  Port D Data Register
                PORTD: u8,
            };

            ///  I/O Port
            pub const PORTE = extern struct {
                ///  Port E Input Pins
                PINE: u8,
                ///  Port E Data Direction Register
                DDRE: u8,
                ///  Port E Data Register
                PORTE: u8,
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
                ///  Boot Lock Bit Set
                BLBSET: u1,
                ///  Read While Write section read enable
                RWWSRE: u1,
                reserved6: u1,
                ///  Read While Write Section Busy
                RWWSB: u1,
                ///  SPM Interrupt Enable
                SPMIE: u1,
            }),
        };

        ///  Extended USART
        pub const EUSART = extern struct {
            pub const COMM_TRANS_CHAR_SIZE = enum(u4) {
                ///  5-bit
                @"5_BIT" = 0x0,
                ///  6-bit
                @"6_BIT" = 0x1,
                ///  7-bit
                @"7_BIT" = 0x2,
                ///  8-bit
                @"8_BIT" = 0x3,
                ///  Reserved
                RESERVED = 0x4,
                ///  Reserved
                RESERVED = 0x5,
                ///  Reserved
                RESERVED = 0x6,
                ///  9-bit
                @"9_BIT" = 0x7,
                ///  13-bit
                @"13_BIT" = 0x8,
                ///  14-bit
                @"14_BIT" = 0x9,
                ///  15-bit
                @"15_BIT" = 0xa,
                ///  16-bit
                @"16_BIT" = 0xb,
                ///  Reserved
                RESERVED = 0xc,
                ///  Reserved
                RESERVED = 0xd,
                ///  Reserved
                RESERVED = 0xe,
                ///  17-bit
                @"17_BIT" = 0xf,
            };

            pub const COMM_TRANS_CHAR_SIZE2 = enum(u4) {
                ///  5-bit
                @"5_BIT" = 0x0,
                ///  6-bit
                @"6_BIT" = 0x1,
                ///  7-bit
                @"7_BIT" = 0x2,
                ///  8-bit
                @"8_BIT" = 0x3,
                ///  Reserved
                RESERVED = 0x4,
                ///  Reserved
                RESERVED = 0x5,
                ///  Reserved
                RESERVED = 0x6,
                ///  9-bit
                @"9_BIT" = 0x7,
                ///  13-bit
                @"13_BIT" = 0x8,
                ///  14-bit
                @"14_BIT" = 0x9,
                ///  15-bit
                @"15_BIT" = 0xa,
                ///  16-bit
                @"16_BIT" = 0xb,
                ///  Reserved
                RESERVED = 0xc,
                ///  Reserved
                RESERVED = 0xd,
                ///  16 or 17
                @"16_OR_17" = 0xe,
                ///  17-bit
                @"17_BIT" = 0xf,
            };

            ///  EUSART Control and Status Register A
            EUCSRA: mmio.Mmio(packed struct(u8) {
                ///  EUSART Control and Status Register A Bits
                URxS: packed union {
                    raw: u4,
                    value: COMM_TRANS_CHAR_SIZE2,
                },
                ///  EUSART Control and Status Register A Bits
                UTxS: packed union {
                    raw: u4,
                    value: COMM_TRANS_CHAR_SIZE,
                },
            }),
            ///  EUSART Control Register B
            EUCSRB: mmio.Mmio(packed struct(u8) {
                ///  Order Bit
                BODR: u1,
                ///  Manchester Mode Bit
                EMCH: u1,
                reserved3: u1,
                ///  EUSBS Enable Bit
                EUSBS: u1,
                ///  EUSART Enable Bit
                EUSART: u1,
                padding: u3,
            }),
            ///  EUSART Status Register C
            EUCSRC: mmio.Mmio(packed struct(u8) {
                ///  Stop Bits
                STP: u2,
                ///  F1617 Bit
                F1617: u1,
                ///  Frame Error Manchester Bit
                FEM: u1,
                padding: u4,
            }),
            reserved4: [1]u8,
            ///  Manchester Receiver Baud Rate Register
            MUBRR: mmio.Mmio(packed struct(u16) {
                ///  Manchester Receiver Baud Rate Register Bits
                MUBRR: u16,
            }),
            ///  EUSART I/O Data Register
            EUDR: mmio.Mmio(packed struct(u8) {
                ///  EUSART Extended data bits
                EUDR: u8,
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

            ///  Analog Comparator Status Register
            ACSR: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator 0 Output Bit
                AC0O: u1,
                ///  Analog Comparator 1 Output Bit
                AC1O: u1,
                ///  Analog Comparator 2 Output Bit
                AC2O: u1,
                reserved4: u1,
                ///  Analog Comparator 0 Interrupt Flag Bit
                AC0IF: u1,
                ///  Analog Comparator 1 Interrupt Flag Bit
                AC1IF: u1,
                ///  Analog Comparator 2 Interrupt Flag Bit
                AC2IF: u1,
                ///  Analog Comparator Clock Divider
                ACCKDIV: u1,
            }),
            reserved93: [92]u8,
            ///  Analog Comparator 0 Control Register
            AC0CON: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator 0 Multiplexer Register
                AC0M: u3,
                reserved4: u1,
                ///  Analog Comparator 0 Interrupt Select Bit
                AC0IS: u2,
                ///  Analog Comparator 0 Interrupt Enable Bit
                AC0IE: u1,
                ///  Analog Comparator 0 Enable Bit
                AC0EN: u1,
            }),
            ///  Analog Comparator 1 Control Register
            AC1CON: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator 1 Multiplexer Register
                AC1M: u3,
                ///  Analog Comparator 1 Interrupt Capture Enable Bit
                AC1ICE: u1,
                ///  Analog Comparator 1 Interrupt Select Bit
                AC1IS: packed union {
                    raw: u2,
                    value: ANALOG_COMP_INTERRUPT,
                },
                ///  Analog Comparator 1 Interrupt Enable Bit
                AC1IE: u1,
                ///  Analog Comparator 1 Enable Bit
                AC1EN: u1,
            }),
            ///  Analog Comparator 2 Control Register
            AC2CON: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator 2 Multiplexer Register
                AC2M: u3,
                reserved4: u1,
                ///  Analog Comparator 2 Interrupt Select Bit
                AC2IS: packed union {
                    raw: u2,
                    value: ANALOG_COMP_INTERRUPT,
                },
                ///  Analog Comparator 2 Interrupt Enable Bit
                AC2IE: u1,
                ///  Analog Comparator 2 Enable Bit
                AC2EN: u1,
            }),
        };

        ///  Digital-to-Analog Converter
        pub const DAC = extern struct {
            pub const ANALOG_DAC_AUTO_TRIGGER = enum(u3) {
                ///  Analog Comparator 0
                ANALOG_COMPARATOR_0 = 0x0,
                ///  Analog Comparator 1
                ANALOG_COMPARATOR_1 = 0x1,
                ///  External Interrupt Request 0
                EXTERNAL_INTERRUPT_REQUEST_0 = 0x2,
                ///  Timer/Counter0 Compare Match A
                TIMER_COUNTER0_COMPARE_MATCH_A = 0x3,
                ///  Timer/Counter0 Overflow
                TIMER_COUNTER0_OVERFLOW = 0x4,
                ///  Timer/Counter1 Compare Match B
                TIMER_COUNTER1_COMPARE_MATCH_B = 0x5,
                ///  Timer/Counter1 Overflow
                TIMER_COUNTER1_OVERFLOW = 0x6,
                ///  Timer/Counter1 Capture Event
                TIMER_COUNTER1_CAPTURE_EVENT = 0x7,
            };

            ///  DAC Control Register
            DACON: mmio.Mmio(packed struct(u8) {
                ///  DAC Enable Bit
                DAEN: u1,
                ///  DAC Output Enable
                DAOE: u1,
                ///  DAC Left Adjust
                DALA: u1,
                reserved4: u1,
                ///  DAC Trigger Selection Bits
                DATS: packed union {
                    raw: u3,
                    value: ANALOG_DAC_AUTO_TRIGGER,
                },
                ///  DAC Auto Trigger Enable Bit
                DAATE: u1,
            }),
            ///  DAC Data Register
            DAC: mmio.Mmio(packed struct(u16) {
                ///  DAC Data Register Bits
                DAC: u16,
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

            pub const CPU_SLEEP_MODE_3BITS4 = enum(u3) {
                ///  Idle
                IDLE = 0x0,
                ///  ADC Noise Reduction (If Available)
                ADC = 0x1,
                ///  Power Down
                PDOWN = 0x2,
                ///  Reserved
                VAL_0x03 = 0x3,
                ///  Reserved
                VAL_0x04 = 0x4,
                ///  Reserved
                VAL_0x05 = 0x5,
                ///  Standby
                STDBY = 0x6,
                ///  Reserved
                VAL_0x07 = 0x7,
            };

            ///  Oscillator Calibration Values
            pub const OSCCAL_VALUE_ADDRESSES = enum(u1) {
                ///  8.0 MHz
                @"8_0_MHz" = 0x0,
                _,
            };

            ///  General Purpose IO Register 1
            GPIOR1: mmio.Mmio(packed struct(u8) {
                ///  General Purpose IO Register 1 bis
                GPIOR: u8,
            }),
            ///  General Purpose IO Register 2
            GPIOR2: mmio.Mmio(packed struct(u8) {
                ///  General Purpose IO Register 2 bis
                GPIOR: u8,
            }),
            ///  General Purpose IO Register 3
            GPIOR3: mmio.Mmio(packed struct(u8) {
                ///  General Purpose IO Register 3 bis
                GPIOR: u8,
            }),
            reserved5: [2]u8,
            ///  General Purpose IO Register 0
            GPIOR0: mmio.Mmio(packed struct(u8) {
                ///  General Purpose IO Register 0 bit 0
                GPIOR00: u1,
                ///  General Purpose IO Register 0 bit 1
                GPIOR01: u1,
                ///  General Purpose IO Register 0 bit 2
                GPIOR02: u1,
                ///  General Purpose IO Register 0 bit 3
                GPIOR03: u1,
                ///  General Purpose IO Register 0 bit 4
                GPIOR04: u1,
                ///  General Purpose IO Register 0 bit 5
                GPIOR05: u1,
                ///  General Purpose IO Register 0 bit 6
                GPIOR06: u1,
                ///  General Purpose IO Register 0 bit 7
                GPIOR07: u1,
            }),
            reserved16: [10]u8,
            ///  PLL Control And Status Register
            PLLCSR: mmio.Mmio(packed struct(u8) {
                ///  PLL Lock Detector
                PLOCK: u1,
                ///  PLL Enable
                PLLE: u1,
                ///  PLL Factor
                PLLF: u1,
                padding: u5,
            }),
            reserved26: [9]u8,
            ///  Sleep Mode Control Register
            SMCR: mmio.Mmio(packed struct(u8) {
                ///  Sleep Enable
                SE: u1,
                ///  Sleep Mode Select bits
                SM: packed union {
                    raw: u3,
                    value: CPU_SLEEP_MODE_3BITS4,
                },
                padding: u4,
            }),
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
                ///  Interrupt Vector Change Enable
                IVCE: u1,
                ///  Interrupt Vector Select
                IVSEL: u1,
                reserved4: u2,
                ///  Pull-up disable
                PUD: u1,
                reserved7: u2,
                ///  SPI Pin Select
                SPIPS: u1,
            }),
            reserved36: [7]u8,
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
            reserved40: [1]u8,
            CLKPR: mmio.Mmio(packed struct(u8) {
                CLKPS: packed union {
                    raw: u4,
                    value: CPU_CLK_PRESCALE_4_BITS_SMALL,
                },
                reserved7: u3,
                CLKPCE: u1,
            }),
            reserved43: [2]u8,
            ///  Power Reduction Register
            PRR: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction ADC
                PRADC: u1,
                ///  Power Reduction USART
                PRUSART0: u1,
                ///  Power Reduction Serial Peripheral Interface
                PRSPI: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                ///  Power Reduction PSC0
                PRPSC0: u1,
                ///  Power Reduction PSC1
                PRPSC1: u1,
                ///  Power Reduction PSC2
                PRPSC2: u1,
            }),
            reserved45: [1]u8,
            ///  Oscillator Calibration Value
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
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
                ///  Timer/Counter0 Interrupt Flag register
                TIFR0: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Overflow Flag
                    TOV0: u1,
                    ///  Timer/Counter0 Output Compare Flag 0A
                    OCF0A: u1,
                    ///  Timer/Counter0 Output Compare Flag 0B
                    OCF0B: u1,
                    padding: u5,
                }),
                reserved14: [13]u8,
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset Timer/Counter1 and Timer/Counter0
                    PSR10: u1,
                    reserved6: u5,
                    ///  Timer1 Input Capture Selection Bit
                    ICPSEL1: u1,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                ///  Timer/Counter Control Register A
                TCCR0A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM0: u2,
                    reserved4: u2,
                    ///  Compare Output Mode, Fast PWm
                    COM0B: u2,
                    ///  Compare Output Mode, Phase Correct PWM Mode
                    COM0A: u2,
                }),
                ///  Timer/Counter Control Register B
                TCCR0B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select
                    CS0: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    WGM02: u1,
                    reserved6: u2,
                    ///  Force Output Compare B
                    FOC0B: u1,
                    ///  Force Output Compare A
                    FOC0A: u1,
                }),
                ///  Timer/Counter0
                TCNT0: mmio.Mmio(packed struct(u8) {
                    ///  Timer Counter 0 value
                    TCNT0: u8,
                }),
                ///  Timer/Counter0 Output Compare Register
                OCR0A: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Output Compare A
                    OCR0A: u8,
                }),
                ///  Timer/Counter0 Output Compare Register
                OCR0B: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Output Compare B
                    OCR0B: u8,
                }),
                reserved57: [37]u8,
                ///  Timer/Counter0 Interrupt Mask Register
                TIMSK0: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Overflow Interrupt Enable
                    TOIE0: u1,
                    ///  Timer/Counter0 Output Compare Match A Interrupt Enable
                    OCIE0A: u1,
                    ///  Timer/Counter0 Output Compare Match B Interrupt Enable
                    OCIE0B: u1,
                    padding: u5,
                }),
            };
        };

        ///  Timer/Counter, 16-bit
        pub const TC16 = struct {
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

            ///  Timer/Counter, 16-bit
            pub const TC1 = extern struct {
                ///  Timer/Counter Interrupt Flag register
                TIFR1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Flag
                    TOV1: u1,
                    ///  Output Compare Flag 1A
                    OCF1A: u1,
                    ///  Output Compare Flag 1B
                    OCF1B: u1,
                    reserved5: u2,
                    ///  Input Capture Flag 1
                    ICF1: u1,
                    padding: u2,
                }),
                reserved13: [12]u8,
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset Timer/Counter1 and Timer/Counter0
                    PSRSYNC: u1,
                    reserved7: u6,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                reserved57: [43]u8,
                ///  Timer/Counter Interrupt Mask Register
                TIMSK1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Interrupt Enable
                    TOIE1: u1,
                    ///  Timer/Counter1 Output CompareA Match Interrupt Enable
                    OCIE1A: u1,
                    ///  Timer/Counter1 Output CompareB Match Interrupt Enable
                    OCIE1B: u1,
                    reserved5: u2,
                    ///  Timer/Counter1 Input Capture Interrupt Enable
                    ICIE1: u1,
                    padding: u2,
                }),
                reserved74: [16]u8,
                ///  Timer/Counter1 Control Register A
                TCCR1A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM1: u2,
                    reserved4: u2,
                    ///  Compare Output Mode 1B, bits
                    COM1B: u2,
                    ///  Compare Output Mode 1A, bits
                    COM1A: u2,
                }),
                ///  Timer/Counter1 Control Register B
                TCCR1B: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler source of Timer/Counter 1
                    CS1: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Waveform Generation Mode
                    WGM1: u2,
                    reserved6: u1,
                    ///  Input Capture 1 Edge Select
                    ICES1: u1,
                    ///  Input Capture 1 Noise Canceler
                    ICNC1: u1,
                }),
                ///  Timer/Counter1 Control Register C
                TCCR1C: mmio.Mmio(packed struct(u8) {
                    reserved6: u6,
                    FOC1B: u1,
                    FOC1A: u1,
                }),
                reserved78: [1]u8,
                ///  Timer/Counter1 Bytes
                TCNT1: mmio.Mmio(packed struct(u16) {
                    ///  Timer/Counter1
                    TCNT1: u16,
                }),
                ///  Timer/Counter1 Input Capture Register Bytes
                ICR1: mmio.Mmio(packed struct(u16) {
                    ///  Timer/Counter1 Input Capture
                    ICR1: u16,
                }),
                ///  Timer/Counter1 Output Compare Register Bytes
                OCR1A: mmio.Mmio(packed struct(u16) {
                    ///  Timer/Counter1 Output Compare A
                    OCR1A: u16,
                }),
                ///  Timer/Counter1 Output Compare Register Bytes
                OCR1B: mmio.Mmio(packed struct(u16) {
                    ///  Timer/Counter1 Output Compare B
                    OCR1B: u16,
                }),
            };
        };

        ///  Analog-to-Digital Converter
        pub const ADC = extern struct {
            pub const ANALOG_ADC_V_REF2 = enum(u2) {
                ///  AREF, Internal Vref turned off
                AREF_INTERNAL_VREF_TURNED_OFF = 0x0,
                ///  AVCC with external capacitor at AREF pin
                AVCC_WITH_EXTERNAL_CAPACITOR_AT_AREF_PIN = 0x1,
                ///  Reserved
                RESERVED = 0x2,
                ///  Internal 2.56V Voltage Reference with external capacitor at AREF pin
                INTERNAL_2_56V_VOLTAGE_REFERENCE_WITH_EXTERNAL_CAPACITOR_AT_AREF_PIN = 0x3,
            };

            AMP0CSR: mmio.Mmio(packed struct(u8) {
                AMP0TS: u2,
                reserved4: u2,
                AMP0G: u2,
                AMP0IS: u1,
                AMP0EN: u1,
            }),
            AMP1CSR: mmio.Mmio(packed struct(u8) {
                AMP1TS: u2,
                reserved4: u2,
                AMP1G: u2,
                AMP1IS: u1,
                AMP1EN: u1,
            }),
            ///  ADC Data Register Bytes
            ADC: mmio.Mmio(packed struct(u16) {
                ///  ADC Data Register
                ADC: u16,
            }),
            ///  The ADC Control and Status register
            ADCSRA: mmio.Mmio(packed struct(u8) {
                ///  ADC Prescaler Select Bits
                ADPS: u3,
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
            ///  ADC Control and Status Register B
            ADCSRB: mmio.Mmio(packed struct(u8) {
                ///  ADC Auto Trigger Source
                ADTS: u4,
                reserved7: u3,
                ///  ADC High Speed Mode
                ADHSM: u1,
            }),
            ///  The ADC multiplexer Selection Register
            ADMUX: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel and Gain Selection Bits
                MUX: u4,
                reserved5: u1,
                ///  Left Adjust Result
                ADLAR: u1,
                ///  Reference Selection Bits
                REFS: packed union {
                    raw: u2,
                    value: ANALOG_ADC_V_REF2,
                },
            }),
            reserved8: [1]u8,
            ///  Digital Input Disable Register 0
            DIDR0: mmio.Mmio(packed struct(u8) {
                ADC0D: u1,
                ADC1D: u1,
                ADC2D: u1,
                ADC3D: u1,
                ADC4D: u1,
                ADC5D: u1,
                ADC6D: u1,
                ADC7D: u1,
            }),
            ///  Digital Input Disable Register 1
            DIDR1: mmio.Mmio(packed struct(u8) {
                ADC8D: u1,
                ADC9D: u1,
                ADC10D: u1,
                AMP0ND: u1,
                AMP0PD: u1,
                ACMP0D: u1,
                padding: u2,
            }),
        };

        ///  USART
        pub const USART = extern struct {
            pub const COMM_UPM_PARITY_MODE = enum(u2) {
                ///  Disabled
                DISABLED = 0x0,
                ///  Reserved
                RESERVED = 0x1,
                ///  Enabled, Even Parity
                ENABLED_EVEN_PARITY = 0x2,
                ///  Enabled, Odd Parity
                ENABLED_ODD_PARITY = 0x3,
            };

            pub const COMM_STOP_BIT_SEL = enum(u1) {
                ///  1-bit
                @"1_BIT" = 0x0,
                ///  2-bit
                @"2_BIT" = 0x1,
            };

            ///  USART Control and Status register A
            UCSRA: mmio.Mmio(packed struct(u8) {
                ///  Multi-processor Communication Mode
                MPCM: u1,
                ///  Double USART Transmission Bit
                U2X: u1,
                ///  USART Parity Error
                UPE: u1,
                ///  Data Overrun
                DOR: u1,
                ///  Framing Error
                FE: u1,
                ///  USART Data Register Empty
                UDRE: u1,
                ///  USART Transmitt Complete
                TXC: u1,
                ///  USART Receive Complete
                RXC: u1,
            }),
            ///  USART Control an Status register B
            UCSRB: mmio.Mmio(packed struct(u8) {
                ///  Transmit Data Bit 8
                TXB8: u1,
                ///  Receive Data Bit 8
                RXB8: u1,
                ///  Character Size
                UCSZ2: u1,
                ///  Transmitter Enable
                TXEN: u1,
                ///  Receiver Enable
                RXEN: u1,
                ///  USART Data Register Empty Interrupt Enable
                UDRIE: u1,
                ///  TX Complete Interrupt Enable
                TXCIE: u1,
                ///  RX Complete Interrupt Enable
                RXCIE: u1,
            }),
            ///  USART Control an Status register C
            UCSRC: mmio.Mmio(packed struct(u8) {
                ///  Clock Polarity
                UCPOL: u1,
                ///  Character Size Bits
                UCSZ: u2,
                ///  Stop Bit Select
                USBS: packed union {
                    raw: u1,
                    value: COMM_STOP_BIT_SEL,
                },
                ///  Parity Mode Bits
                UPM: packed union {
                    raw: u2,
                    value: COMM_UPM_PARITY_MODE,
                },
                ///  USART Mode Select
                UMSEL0: u1,
                padding: u1,
            }),
            reserved4: [1]u8,
            ///  USART Baud Rate Register
            UBRR: mmio.Mmio(packed struct(u16) {
                ///  USART Baud Rate Register Bits
                UBRR: u12,
                padding: u4,
            }),
            ///  USART I/O Data Register
            UDR: mmio.Mmio(packed struct(u8) {
                ///  USART I/O Data
                UDR: u8,
            }),
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

        ///  External Interrupts
        pub const EXINT = extern struct {
            ///  Interrupt Sense Control
            pub const INTERRUPT_SENSE_CONTROL = enum(u2) {
                ///  Low Level of INTX
                LOW_LEVEL_OF_INTX = 0x0,
                ///  Any Logical Change of INTX
                ANY_LOGICAL_CHANGE_OF_INTX = 0x1,
                ///  Falling Edge of INTX
                FALLING_EDGE_OF_INTX = 0x2,
                ///  Rising Edge of INTX
                RISING_EDGE_OF_INTX = 0x3,
            };

            ///  External Interrupt Flag Register
            EIFR: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Flags
                INTF: u4,
                padding: u4,
            }),
            ///  External Interrupt Mask Register
            EIMSK: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Request Enable
                INT: u4,
                padding: u4,
            }),
            reserved45: [43]u8,
            ///  External Interrupt Control Register A
            EICRA: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Sense Control Bit
                ISC0: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt Sense Control Bit
                ISC1: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt Sense Control Bit
                ISC2: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt Sense Control Bit
                ISC3: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
            }),
        };

        ///  EEPROM
        pub const EEPROM = extern struct {
            ///  EEPROM Control Register
            EECR: mmio.Mmio(packed struct(u8) {
                ///  EEPROM Read Enable
                EERE: u1,
                ///  EEPROM Write Enable
                EEWE: u1,
                ///  EEPROM Master Write Enable
                EEMWE: u1,
                ///  EEPROM Ready Interrupt Enable
                EERIE: u1,
                ///  EEPROM Programming Mode
                EEPM: u2,
                padding: u2,
            }),
            ///  EEPROM Data Register
            EEDR: mmio.Mmio(packed struct(u8) {
                ///  EEPROM Data Bits
                EEDR: u8,
            }),
            ///  EEPROM Read/Write Access Bytes
            EEAR: mmio.Mmio(packed struct(u16) {
                ///  EEPROM Address bytes
                EEAR: u12,
                padding: u4,
            }),
        };

        ///  Power Stage Controller
        pub const PSC = struct {
            ///  Power Stage Controller
            pub const PSC0 = extern struct {
                ///  PSC0 Interrupt Flag Register
                PIFR0: mmio.Mmio(packed struct(u8) {
                    ///  End of PSC0 Interrupt
                    PEOP0: u1,
                    ///  Ramp Number
                    PRN0: u2,
                    ///  External Event A Interrupt
                    PEV0A: u1,
                    ///  External Event B Interrupt
                    PEV0B: u1,
                    ///  PSC 0 Synchro Error Interrupt
                    PSEI0: u1,
                    ///  PSC 0 Output A Activity
                    POAC0A: u1,
                    ///  PSC 0 Output A Activity
                    POAC0B: u1,
                }),
                ///  PSC0 Interrupt Mask Register
                PIM0: mmio.Mmio(packed struct(u8) {
                    ///  End of Cycle Interrupt Enable
                    PEOPE0: u1,
                    reserved3: u2,
                    ///  External Event A Interrupt Enable
                    PEVE0A: u1,
                    ///  External Event B Interrupt Enable
                    PEVE0B: u1,
                    ///  PSC 0 Synchro Error Interrupt Enable
                    PSEIE0: u1,
                    padding: u2,
                }),
                reserved48: [46]u8,
                ///  PSC0 Synchro and Output Configuration
                PSOC0: mmio.Mmio(packed struct(u8) {
                    ///  PSCOUT00 Output Enable
                    POEN0A: u1,
                    reserved2: u1,
                    ///  PSCOUT01 Output Enable
                    POEN0B: u1,
                    reserved4: u1,
                    ///  Synchronization Out for ADC Selection
                    PSYNC0: u2,
                    padding: u2,
                }),
                reserved50: [1]u8,
                ///  Output Compare 0 SA Register
                OCR0SA: mmio.Mmio(packed struct(u16) {
                    ///  Output Compare SA
                    OCR0SA: u12,
                    padding: u4,
                }),
                ///  Output Compare 0 RA Register
                OCR0RA: mmio.Mmio(packed struct(u16) {
                    ///  Output Compare RA
                    OCR0RA: u12,
                    padding: u4,
                }),
                ///  Output Compare 0 SB Register
                OCR0SB: mmio.Mmio(packed struct(u16) {
                    ///  Output Compare SB
                    OCR0SB: u12,
                    padding: u4,
                }),
                ///  Output Compare 0 RB Register
                OCR0RB: mmio.Mmio(packed struct(u16) {
                    ///  Output Compare RB
                    OCR0RB: u16,
                }),
                ///  PSC 0 Configuration Register
                PCNF0: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  PSC 0 Input Clock Select
                    PCLKSEL0: u1,
                    ///  PSC 0 Output Polarity
                    POP0: u1,
                    ///  PSC 0 Mode
                    PMODE0: u2,
                    ///  PSC 0 Lock
                    PLOCK0: u1,
                    ///  PSC 0 Autolock
                    PALOCK0: u1,
                    ///  PSC 0 Fifty
                    PFIFTY0: u1,
                }),
                ///  PSC 0 Control Register
                PCTL0: mmio.Mmio(packed struct(u8) {
                    ///  PSC 0 Run
                    PRUN0: u1,
                    ///  PSC0 Complete Cycle
                    PCCYC0: u1,
                    ///  PSC0 Auto Run
                    PARUN0: u1,
                    ///  PSC 0 Asynchronous Output Control A
                    PAOC0A: u1,
                    ///  PSC 0 Asynchronous Output Control B
                    PAOC0B: u1,
                    ///  PSC 0 Balance Flank Width Modulation
                    PBFM0: u1,
                    ///  PSC 0 Prescaler Selects
                    PPRE0: u2,
                }),
                ///  PSC 0 Input A Control
                PFRC0A: mmio.Mmio(packed struct(u8) {
                    ///  PSC 0 Retrigger and Fault Mode for Part A
                    PRFM0A: u4,
                    ///  PSC 0 Filter Enable on Input Part A
                    PFLTE0A: u1,
                    ///  PSC 0 Edge Level Selector on Input Part A
                    PELEV0A: u1,
                    ///  PSC 0 Input Select for Part A
                    PISEL0A: u1,
                    ///  PSC 0 Capture Enable Input Part A
                    PCAE0A: u1,
                }),
                ///  PSC 0 Input B Control
                PFRC0B: mmio.Mmio(packed struct(u8) {
                    ///  PSC 0 Retrigger and Fault Mode for Part B
                    PRFM0B: u4,
                    ///  PSC 0 Filter Enable on Input Part B
                    PFLTE0B: u1,
                    ///  PSC 0 Edge Level Selector on Input Part B
                    PELEV0B: u1,
                    ///  PSC 0 Input Select for Part B
                    PISEL0B: u1,
                    ///  PSC 0 Capture Enable Input Part B
                    PCAE0B: u1,
                }),
                ///  PSC 0 Input Capture Register
                PICR0: mmio.Mmio(packed struct(u16) {
                    ///  PSC 0 Input Capture Bytes
                    PICR0: u12,
                    reserved15: u3,
                    ///  PSC 0 Input Capture Software Trig
                    PCST0: u1,
                }),
            };

            ///  Power Stage Controller
            pub const PSC1 = extern struct {
                ///  PSC1 Interrupt Flag Register
                PIFR1: mmio.Mmio(packed struct(u8) {
                    ///  End of PSC1 Interrupt
                    PEOP1: u1,
                    ///  Ramp Number
                    PRN1: u2,
                    ///  External Event A Interrupt
                    PEV1A: u1,
                    ///  External Event B Interrupt
                    PEV1B: u1,
                    ///  PSC 1 Synchro Error Interrupt
                    PSEI1: u1,
                    ///  PSC 1 Output A Activity
                    POAC1A: u1,
                    ///  PSC 1 Output B Activity
                    POAC1B: u1,
                }),
                ///  PSC1 Interrupt Mask Register
                PIM1: mmio.Mmio(packed struct(u8) {
                    ///  End of Cycle Interrupt Enable
                    PEOPE1: u1,
                    reserved3: u2,
                    ///  External Event A Interrupt Enable
                    PEVE1A: u1,
                    ///  External Event B Interrupt Enable
                    PEVE1B: u1,
                    ///  PSC 1 Synchro Error Interrupt Enable
                    PSEIE1: u1,
                    padding: u2,
                }),
                reserved62: [60]u8,
                ///  PSC1 Synchro and Output Configuration
                PSOC1: mmio.Mmio(packed struct(u8) {
                    ///  PSCOUT10 Output Enable
                    POEN1A: u1,
                    reserved2: u1,
                    ///  PSCOUT11 Output Enable
                    POEN1B: u1,
                    reserved4: u1,
                    ///  Synchronization Out for ADC Selection
                    PSYNC1_: u2,
                    padding: u2,
                }),
                reserved64: [1]u8,
                ///  Output Compare SA Register
                OCR1SA: mmio.Mmio(packed struct(u16) {
                    ///  Output Compare 1 SA
                    OCR1SA: u12,
                    padding: u4,
                }),
                ///  Output Compare RA Register
                OCR1RA: mmio.Mmio(packed struct(u16) {
                    ///  Output Compare 1 RA
                    OCR1RA: u12,
                    padding: u4,
                }),
                ///  Output Compare SB Register
                OCR1SB: mmio.Mmio(packed struct(u16) {
                    ///  Output Compare 1 SB
                    OCR1SB: u12,
                    padding: u4,
                }),
                ///  Output Compare RB Register
                OCR1RB: mmio.Mmio(packed struct(u16) {
                    ///  Output Compare 1 RB
                    OCR1RB: u16,
                }),
                ///  PSC 1 Configuration Register
                PCNF1: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  PSC 1 Input Clock Select
                    PCLKSEL1: u1,
                    ///  PSC 1 Output Polarity
                    POP1: u1,
                    ///  PSC 1 Mode
                    PMODE1: u2,
                    ///  PSC 1 Lock
                    PLOCK1: u1,
                    ///  PSC 1 Autolock
                    PALOCK1: u1,
                    ///  PSC 1 Fifty
                    PFIFTY1: u1,
                }),
                ///  PSC 1 Control Register
                PCTL1: mmio.Mmio(packed struct(u8) {
                    ///  PSC 1 Run
                    PRUN1: u1,
                    ///  PSC1 Complete Cycle
                    PCCYC1: u1,
                    ///  PSC1 Auto Run
                    PARUN1: u1,
                    ///  PSC 1 Asynchronous Output Control A
                    PAOC1A: u1,
                    ///  PSC 1 Asynchronous Output Control B
                    PAOC1B: u1,
                    ///  Balance Flank Width Modulation
                    PBFM1: u1,
                    ///  PSC 1 Prescaler Selects
                    PPRE1: u2,
                }),
                ///  PSC 1 Input B Control
                PFRC1A: mmio.Mmio(packed struct(u8) {
                    ///  PSC 1 Retrigger and Fault Mode for Part A
                    PRFM1A: u4,
                    ///  PSC 1 Filter Enable on Input Part A
                    PFLTE1A: u1,
                    ///  PSC 1 Edge Level Selector on Input Part A
                    PELEV1A: u1,
                    ///  PSC 1 Input Select for Part A
                    PISEL1A: u1,
                    ///  PSC 1 Capture Enable Input Part A
                    PCAE1A: u1,
                }),
                ///  PSC 1 Input B Control
                PFRC1B: mmio.Mmio(packed struct(u8) {
                    ///  PSC 1 Retrigger and Fault Mode for Part B
                    PRFM1B: u4,
                    ///  PSC 1 Filter Enable on Input Part B
                    PFLTE1B: u1,
                    ///  PSC 1 Edge Level Selector on Input Part B
                    PELEV1B: u1,
                    ///  PSC 1 Input Select for Part B
                    PISEL1B: u1,
                    ///  PSC 1 Capture Enable Input Part B
                    PCAE1B: u1,
                }),
                ///  PSC 1 Input Capture Register
                PICR1: mmio.Mmio(packed struct(u16) {
                    ///  PSC 1 Input Capture Bytes
                    PICR1: u12,
                    reserved15: u3,
                    ///  PSC 1 Input Capture Software Trig
                    PCST1: u1,
                }),
            };

            ///  Power Stage Controller
            pub const PSC2 = extern struct {
                ///  PSC2 Interrupt Flag Register
                PIFR2: mmio.Mmio(packed struct(u8) {
                    ///  End of PSC2 Interrupt
                    PEOP2: u1,
                    ///  Ramp Number
                    PRN2: u2,
                    ///  External Event A Interrupt
                    PEV2A: u1,
                    ///  External Event B Interrupt
                    PEV2B: u1,
                    ///  PSC 2 Synchro Error Interrupt
                    PSEI2: u1,
                    ///  PSC 2 Output A Activity
                    POAC2A: u1,
                    ///  PSC 2 Output A Activity
                    POAC2B: u1,
                }),
                ///  PSC2 Interrupt Mask Register
                PIM2: mmio.Mmio(packed struct(u8) {
                    ///  End of Cycle Interrupt Enable
                    PEOPE2: u1,
                    reserved3: u2,
                    ///  External Event A Interrupt Enable
                    PEVE2A: u1,
                    ///  External Event B Interrupt Enable
                    PEVE2B: u1,
                    ///  PSC 2 Synchro Error Interrupt Enable
                    PSEIE2: u1,
                    padding: u2,
                }),
                reserved76: [74]u8,
                ///  PSC2 Synchro and Output Configuration
                PSOC2: mmio.Mmio(packed struct(u8) {
                    ///  PSCOUT20 Output Enable
                    POEN2A: u1,
                    ///  PSCOUT22 Output Enable
                    POEN2C: u1,
                    ///  PSCOUT21 Output Enable
                    POEN2B: u1,
                    ///  PSCOUT23 Output Enable
                    POEN2D: u1,
                    ///  Synchronization Out for ADC Selection
                    PSYNC2_: u2,
                    ///  PSC 2 Output 23 Select
                    POS2: u2,
                }),
                ///  PSC 2 Output Matrix
                POM2: mmio.Mmio(packed struct(u8) {
                    ///  Output Matrix Output A Ramps
                    POMV2A: u4,
                    ///  Output Matrix Output B Ramps
                    POMV2B: u4,
                }),
                ///  Output Compare 2 SA Register
                OCR2SA: mmio.Mmio(packed struct(u16) {
                    ///  Output Compare SA
                    OCR2SA: u12,
                    padding: u4,
                }),
                ///  Output Compare 2 RA Register
                OCR2RA: mmio.Mmio(packed struct(u16) {
                    ///  Output Compare RA
                    OCR2RA: u12,
                    padding: u4,
                }),
                ///  Output Compare 2 SB Register
                OCR2SB: mmio.Mmio(packed struct(u16) {
                    ///  Output Compare SB
                    OCR2SB: u12,
                    padding: u4,
                }),
                ///  Output Compare 2 RB Register
                OCR2RB: mmio.Mmio(packed struct(u16) {
                    ///  Output Compare RB
                    OCR2RB: u16,
                }),
                ///  PSC 2 Configuration Register
                PCNF2: mmio.Mmio(packed struct(u8) {
                    ///  PSC 2 Output Matrix Enable
                    POME2: u1,
                    ///  PSC 2 Input Clock Select
                    PCLKSEL2: u1,
                    ///  PSC 2 Output Polarity
                    POP2: u1,
                    ///  PSC 2 Mode
                    PMODE2: u2,
                    ///  PSC 2 Lock
                    PLOCK2: u1,
                    ///  PSC 2 Autolock
                    PALOCK2: u1,
                    ///  PSC 2 Fifty
                    PFIFTY2: u1,
                }),
                ///  PSC 2 Control Register
                PCTL2: mmio.Mmio(packed struct(u8) {
                    ///  PSC 2 Run
                    PRUN2: u1,
                    ///  PSC2 Complete Cycle
                    PCCYC2: u1,
                    ///  PSC2 Auto Run
                    PARUN2: u1,
                    ///  PSC 2 Asynchronous Output Control A
                    PAOC2A: u1,
                    ///  PSC 2 Asynchronous Output Control B
                    PAOC2B: u1,
                    ///  Balance Flank Width Modulation
                    PBFM2: u1,
                    ///  PSC 2 Prescaler Selects
                    PPRE2: u2,
                }),
                ///  PSC 2 Input B Control
                PFRC2A: mmio.Mmio(packed struct(u8) {
                    ///  PSC 2 Retrigger and Fault Mode for Part A
                    PRFM2A: u4,
                    ///  PSC 2 Filter Enable on Input Part A
                    PFLTE2A: u1,
                    ///  PSC 2 Edge Level Selector on Input Part A
                    PELEV2A: u1,
                    ///  PSC 2 Input Select for Part A
                    PISEL2A: u1,
                    ///  PSC 2 Capture Enable Input Part A
                    PCAE2A: u1,
                }),
                ///  PSC 2 Input B Control
                PFRC2B: mmio.Mmio(packed struct(u8) {
                    ///  PSC 2 Retrigger and Fault Mode for Part B
                    PRFM2B: u4,
                    ///  PSC 2 Filter Enable on Input Part B
                    PFLTE2B: u1,
                    ///  PSC 2 Edge Level Selector on Input Part B
                    PELEV2B: u1,
                    ///  PSC 2 Input Select for Part B
                    PISEL2B: u1,
                    ///  PSC 2 Capture Enable Input Part B
                    PCAE2B: u1,
                }),
                ///  PSC 2 Input Capture Register
                PICR2: mmio.Mmio(packed struct(u16) {
                    ///  PSC 2 Input Capture Bytes
                    PICR2: u12,
                    reserved15: u3,
                    ///  PSC 2 Input Capture Software Trig
                    PCST2: u1,
                }),
            };
        };
    };
};
