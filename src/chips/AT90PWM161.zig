const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const AT90PWM161 = struct {
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
            ///  PSC2 End Of Enhanced Cycle
            PSC2_EEC: Handler = unhandled,
            ///  PSC0 Capture Event
            PSC0_CAPT: Handler = unhandled,
            ///  PSC0 End Cycle
            PSC0_EC: Handler = unhandled,
            ///  PSC0 End Of Enhanced Cycle
            PSC0_EEC: Handler = unhandled,
            ///  Analog Comparator 1
            ANALOG_COMP_1: Handler = unhandled,
            ///  Analog Comparator 2
            ANALOG_COMP_2: Handler = unhandled,
            ///  Analog Comparator 3
            ANALOG_COMP_3: Handler = unhandled,
            ///  External Interrupt Request 0
            INT0: Handler = unhandled,
            ///  Timer/Counter1 Capture Event
            TIMER1_CAPT: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIMER1_OVF: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  External Interrupt Request 1
            INT1: Handler = unhandled,
            ///  SPI Serial Transfer Complet
            SPI_STC: Handler = unhandled,
            ///  External Interrupt Request 2
            INT2: Handler = unhandled,
            ///  Watchdog Timeout Interrupt
            WDT: Handler = unhandled,
            ///  EEPROM Ready
            EE_READY: Handler = unhandled,
            ///  Store Program Memory Read
            SPM_READY: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @as(*volatile types.peripherals.FUSE, @ptrFromInt(0x0));
            ///  Lockbits
            pub const LOCKBIT = @as(*volatile types.peripherals.LOCKBIT, @ptrFromInt(0x0));
            ///  Analog Comparator
            pub const AC = @as(*volatile types.peripherals.AC, @ptrFromInt(0x20));
            ///  Timer/Counter, 16-bit
            pub const TC1 = @as(*volatile types.peripherals.TC16.TC1, @ptrFromInt(0x21));
            ///  I/O Port
            pub const PORTB = @as(*volatile types.peripherals.PORT.PORTB, @ptrFromInt(0x23));
            ///  Analog-to-Digital Converter
            pub const ADC = @as(*volatile types.peripherals.ADC, @ptrFromInt(0x26));
            ///  I/O Port
            pub const PORTD = @as(*volatile types.peripherals.PORT.PORTD, @ptrFromInt(0x29));
            ///  I/O Port
            pub const PORTE = @as(*volatile types.peripherals.PORT.PORTE, @ptrFromInt(0x2c));
            ///  Power Stage Controller
            pub const PSC0 = @as(*volatile types.peripherals.PSC.PSC0, @ptrFromInt(0x2f));
            ///  Power Stage Controller
            pub const PSC2 = @as(*volatile types.peripherals.PSC.PSC2, @ptrFromInt(0x33));
            ///  Serial Peripheral Interface
            pub const SPI = @as(*volatile types.peripherals.SPI, @ptrFromInt(0x37));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x39));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3c));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x40));
            ///  Bootloader
            pub const BOOT_LOAD = @as(*volatile types.peripherals.BOOT_LOAD, @ptrFromInt(0x57));
            ///  Digital-to-Analog Converter
            pub const DAC = @as(*volatile types.peripherals.DAC, @ptrFromInt(0x58));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x82));
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_SUT_CKSEL = enum(u6) {
                ///  Ext. CK; PLLin: RC8; SUT: 6CK/14CK+0ms; [CKSEL=0000 SUT=00]
                EXTCLK_PLLIN_RC_8MHZ_6CK_14CK_0MS = 0x0,
                ///  Ext. CK; PLLin: RC8 MHz; SUT:6 CK/14CK+4.1 ms; [CKSEL=0000 SUT=01]
                EXTCLK_PLLIN_RC_8MHZ_6CK_14CK_4MS1 = 0x10,
                ///  Ext. CK; PLLin: RC8 MHz; SUT:6 CK/14CK+65 ms; [CKSEL=0000 SUT=10]
                EXTCLK_PLLIN_RC_8MHZ_6CK_14CK_65MS = 0x20,
                ///  RC8 MHz; PLLin: RC8; SUT: 6CK/14CK+0ms; [CKSEL=0010 SUT=00]
                RC_8MHZ_PLLIN_RC_8MHZ_6CK_14CK_0MS = 0x2,
                ///  RC8 MHz; PLLin: RC8; SUT: 6CK/14CK+4.1 ms; [CKSEL=0010 SUT=01]
                RC_8MHZ_PLLIN_RC_8MHZ_6CK_14CK_4MS1 = 0x12,
                ///  RC8 MHz; PLLin: RC8; SUT: 6CK/14CK+65 ms; [CKSEL=0010 SUT=10]
                RC_8MHZ_PLLIN_RC_8MHZ_6CK_14CK_65MS = 0x22,
                ///  XOSC.9-3MHz; PLLin: RC8; SUT: 258CK/14CK+4.1 ms; [CKSEL=1000 SUT=00]
                XOSC_PLLIN_RC_8MHZ_258CK_14CK_4MS1 = 0x8,
                ///  XOSC.9-3MHz; PLLin: RC8; SUT: 258CK/14CK+65 ms; [CKSEL=1000 SUT=01]
                XOSC_PLLIN_RC_8MHZ_258CK_14CK_65MS = 0x18,
                ///  XOSC.9-3MHz; PLLin: RC8; SUT: 1KCK/14CK+0 ms; [CKSEL=1000 SUT=10]
                XOSC_PLLIN_RC_8MHZ_1KCK_14CK_0MS = 0x28,
                ///  XOSC.9-3MHz; PLLin: RC8; SUT: 1KCK/14CK+4.1 ms; [CKSEL=1000 SUT=11]
                XOSC_PLLIN_RC_8MHZ_1KCK_14CK_4MS1 = 0x38,
                ///  XOSC.9-3MHz; PLLin: RC8; SUT: 1KCK/14CK+65 ms; [CKSEL=1001 SUT=00]
                XOSC_PLLIN_RC_8MHZ_1KCK_14CK_65MS = 0x9,
                ///  XOSC.9-3MHz; PLLin: RC8; SUT: 16KCK/14CK+0 ms; [CKSEL=1001 SUT=01]
                XOSC_PLLIN_RC_8MHZ_16KCK_14CK_0MS = 0x19,
                ///  XOSC.9-3MHz; PLLin: RC8; SUT: 16KCK/14CK+4.1 ms; [CKSEL=1001 SUT=10]
                XOSC_PLLIN_RC_8MHZ_16KCK_14CK_4MS1 = 0x29,
                ///  XOSC.9-3MHz; PLLin: RC8; SUT: 16KCK/14CK+65 ms; [CKSEL=1001 SUT=11]
                XOSC_PLLIN_RC_8MHZ_16KCK_14CK_65MS = 0x39,
                ///  XOSC3-8MHz; PLLin: RC8; SUT: 258CK/14CK+4.1 ms; [CKSEL=1010 SUT=00]
                XOSC_3MHZ_8MHZ_PLLIN_RC_8MHZ_258CK_14CK_4MS1 = 0xa,
                ///  XOSC3-8MHz; PLLin: RC8; SUT: 258CK/14CK+65 ms; [CKSEL=1010 SUT=01]
                XOSC_3MHZ_8MHZ_PLLIN_RC_8MHZ_258CK_14CK_65MS = 0x1a,
                ///  XOSC3-8MHz; PLLin: RC8; SUT: 1KCK/14CK+0 ms; [CKSEL=1010 SUT=10]
                XOSC_3MHZ_8MHZ_PLLIN_RC_8MHZ_1KCK_14CK_0MS = 0x2a,
                ///  XOSC3-8MHz; PLLin: RC8; SUT: 1KCK/14CK+4.1 ms; [CKSEL=1010 SUT=11]
                XOSC_3MHZ_8MHZ_PLLIN_RC_8MHZ_1KCK_14CK_4MS1 = 0x3a,
                ///  XOSC3-8MHz; PLLin: RC8; SUT: 1KCK/14CK+65 ms; [CKSEL=1011 SUT=00]
                XOSC_3MHZ_8MHZ_PLLIN_RC_8MHZ_1KCK_14CK_65MS = 0xb,
                ///  XOSC3-8MHz; PLLin: RC8; SUT: 16KCK/14CK+0 ms; [CKSEL=1011 SUT=01]
                XOSC_3MHZ_8MHZ_PLLIN_RC_8MHZ_16KCK_14CK_0MS = 0x1b,
                ///  XOSC3-8MHz; PLLin: RC8; SUT: 16KCK/14CK+4.1 ms; [CKSEL=1011 SUT=10]
                XOSC_3MHZ_8MHZ_PLLIN_RC_8MHZ_16KCK_14CK_4MS1 = 0x2b,
                ///  XOSC3-8MHz; PLLin: RC8; SUT: 16KCK/14CK+65 ms; [CKSEL=1011 SUT=11]
                XOSC_3MHZ_8MHZ_PLLIN_RC_8MHZ_16KCK_14CK_65MS = 0x3b,
                ///  XOSC3-8MHz; PLLin: XOSC; SUT: 258CK/14CK+4.1 ms; [CKSEL=1100 SUT=00]
                XOSC_3MHZ_8MHZ_PLLIN_XOSC_258CK_14CK_4MS1 = 0xc,
                ///  XOSC3-8MHz; PLLin: XOSC; SUT: 258CK/14CK+65 ms; [CKSEL=1100 SUT=01]
                XOSC_3MHZ_8MHZ_PLLIN_XOSC_258CK_14CK_65MS = 0x1c,
                ///  XOSC3-8MHz; PLLin: XOSC; SUT: 1KCK/14CK+0 ms; [CKSEL=1100 SUT=10]
                XOSC_3MHZ_8MHZ_PLLIN_XOSC_1KCK_14CK_0MS = 0x2c,
                ///  XOSC3-8MHz; PLLin: XOSC; SUT: 1KCK/14CK+4.1 ms; [CKSEL=1100 SUT=11]
                XOSC_3MHZ_8MHZ_PLLIN_XOSC_1KCK_14CK_4MS1 = 0x3c,
                ///  XOSC3-8MHz; PLLin: XOSC; SUT: 1KCK/14CK+65 ms; [CKSEL=1101 SUT=00
                XOSC_3MHZ_8MHZ_PLLIN_XOSC_1KCK_14CK_65MS = 0xd,
                ///  XOSC3-8MHz; PLLin: XOSC; SUT: 16KCK/14CK+0 ms; [CKSEL=1101 SUT=01]
                XOSC_3MHZ_8MHZ_PLLIN_XOSC_16KCK_14CK_0MS = 0x1d,
                ///  XOSC3-8MHz; PLLin: XOSC; SUT: 16KCK/14CK+4.1 ms; [CKSEL=1101 SUT=10]
                XOSC_3MHZ_8MHZ_PLLIN_XOSC_16KCK_14CK_4MS1 = 0x2d,
                ///  XOSC3-8MHz; PLLin: XOSC; SUT: 16KCK/14CK+65 ms; [CKSEL=1101 SUT=11]
                XOSC_3MHZ_8MHZ_PLLIN_XOSC_16KCK_14CK_65MS = 0x3d,
                ///  XOSC8-16MHz; PLLin: RC8; SUT: 258CK/14CK+4.1 ms; [CKSEL=1110 SUT=00]
                XOSC_8MHZ_16MHZ_PLLIN_RC_8MHZ_258CK_14CK_4MS1 = 0xe,
                ///  XOSC8-16MHz; PLLin: RC8; SUT: 258CK/14CK+65 ms; [CKSEL=1110 SUT=01]
                XOSC_8MHZ_16MHZ_PLLIN_RC_8MHZ_258CK_14CK_65MS = 0x1e,
                ///  XOSC8-16MHz; PLLin: RC8; SUT: 1KCK/14CK+0 ms; [CKSEL=1110 SUT=10]
                XOSC_8MHZ_16MHZ_PLLIN_RC_8MHZ_1KCK_14CK_0MS = 0x2e,
                ///  XOSC8-16MHz; PLLin: RC8; SUT: 1KCK/14CK+4.1 ms; [CKSEL=1110 SUT=11]
                XOSC_8MHZ_16MHZ_PLLIN_RC_8MHZ_1KCK_14CK_4MS1 = 0x3e,
                ///  XOSC8-16MHz; PLLin: RC8; SUT: 1KCK/14CK+65 ms; [CKSEL=1111 SUT=00]
                XOSC_8MHZ_16MHZ_PLLIN_RC_8MHZ_1KCK_14CK_65MS = 0xf,
                ///  XOSC8-16MHz; PLLin: RC8; SUT: 16KCK/14CK+0 ms; [CKSEL=1111 SUT=01]
                XOSC_8MHZ_16MHZ_PLLIN_RC_8MHZ_16KCK_14CK_0MS = 0x1f,
                ///  XOSC8-16MHz; PLLin: RC8; SUT: 16KCK/14CK+4.1 ms; [CKSEL=1111 SUT=10]
                XOSC_8MHZ_16MHZ_PLLIN_RC_8MHZ_16KCK_14CK_4MS1 = 0x2f,
                ///  XOSC8-16MHz; PLLin: RC8; SUT: 16KCK/14CK+65 ms; [CKSEL=1111 SUT=11]
                XOSC_8MHZ_16MHZ_PLLIN_RC_8MHZ_16KCK_14CK_65MS = 0x3f,
                ///  WD128 KHz; SUT: 1KCK/14CK+0 ms; [CKSEL=0011 SUT=00]
                WDOSC_128KHZ_1KCK_14CK_0MS = 0x3,
                ///  WD128 KHz; SUT: 1KCK/14CK+4.1 ms; [CKSEL=0011 SUT=01]
                WDOSC_128KHZ_1KCK_14CK_4MS1 = 0x13,
                ///  WD128 KHz; SUT: 1KCK/14CK+65 ms; [CKSEL=0011 SUT=10]
                WDOSC_128KHZ_1KCK_14CK_65MS = 0x23,
                ///  WD128 KHz; SUT: 16KCK/14CK+0 ms; [CKSEL=0011 SUT=11]
                WDOSC_128KHZ_16KCK_14CK_0MS = 0x33,
                ///  PLL/4; PLLin: RC8; SUT: 1KCK/14CK+0 ms; [CKSEL=0001 SUT=00]
                PLLCLK_DIV4_PLLIN_RC_8MHZ_1KCK_14CK_0MS = 0x1,
                ///  PLL/4; PLLin: RC8; SUT: 1KCK/14CK+4 ms; [CKSEL=0001 SUT=01]
                PLLCLK_DIV4_PLLIN_RC_8MHZ_1KCK_14CK_4MS = 0x11,
                ///  PLL/4; PLLin: RC8; SUT: 1KCK/14CK+64 ms; [CKSEL=0001 SUT=10]
                PLLCLK_DIV4_PLLIN_RC_8MHZ_1KCK_14CK_64MS = 0x21,
                ///  PLL/4; PLLin: Ext. CK; SUT: 16KCK/14CK+0 ms; [CKSEL=0101 SUT=00]
                PLLCLK_DIV4_PLLIN_EXTCLK_16KCK_14CK_0MS = 0x5,
                ///  PLL/4; PLLin: Ext. CK; SUT: 16KCK/14CK+4 ms; [CKSEL=0101 SUT=01]
                PLLCLK_DIV4_PLLIN_EXTCLK_16KCK_14CK_4MS = 0x15,
                ///  PLL/4; PLLin: Ext. CK; SUT: 16KCK/14CK+4 ms; [CKSEL=0101 SUT=10]
                PLLCLK_DIV4_PLLIN_EXTCLK_16KCK_14CK_4MS = 0x25,
                ///  PLL/4; PLLin: Ext. CK; SUT: 16KCK/14CK+64 ms; [CKSEL=0101 SUT=11]
                PLLCLK_DIV4_PLLIN_EXTCLK_16KCK_14CK_64MS = 0x35,
                ///  PLL/4; PLLin: XOSC; SUT: 1KCK/14CK+0 ms; [CKSEL=0100 SUT=00]
                PLLCLK_DIV4_PLLIN_XOSC_1KCK_14CK_0MS = 0x4,
                ///  PLL/4; PLLin: XOSC; SUT: 1KCK/14CK+4 ms; [CKSEL=0100 SUT=01]
                PLLCLK_DIV4_PLLIN_XOSC_1KCK_14CK_4MS = 0x14,
                ///  PLL/4; PLLin: XOSC; SUT: 1KCK/14CK+64 ms; [CKSEL=0100 SUT=10]
                PLLCLK_DIV4_PLLIN_XOSC_1KCK_14CK_64MS = 0x24,
                ///  PLL/4; PLLin: XOSC; SUT: 16KCK/14CK+0 ms; [CKSEL=0100 SUT=11]
                PLLCLK_DIV4_PLLIN_XOSC_16KCK_14CK_0MS = 0x34,
                ///  RC 1 MHz; SUT: 1KCK/14CK+0 ms; [CKSEL=0110 SUT=00]
                RC_1MHZ_1KCK_14CK_0MS = 0x6,
                ///  RC 1 MHz; SUT: 1KCK/14CK+4.1 ms; [CKSEL=0110 SUT=01]
                RC_1MHZ_1KCK_14CK_4MS1 = 0x16,
                ///  RC 1 MHz; SUT: 1KCK/14CK+65 ms; [CKSEL=0110 SUT=10]
                RC_1MHZ_1KCK_14CK_65MS = 0x26,
                _,
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

            pub const ENUM_BODLEVEL = enum(u3) {
                ///  Brown-out detection disabled
                DISABLED = 0x7,
                ///  Brown-out detection at VCC=1.8 V
                @"1V8" = 0x6,
                ///  Brown-out detection at VCC=2.7 V
                @"2V7" = 0x5,
                ///  Brown-out detection at VCC=4.3 V
                @"4V3" = 0x4,
                ///  Brown-out detection at VCC=2.3 V
                @"2V3" = 0x3,
                ///  Brown-out detection at VCC=2.2 V
                @"2V2" = 0x2,
                ///  Brown-out detection at VCC=1.9 V
                @"1V9" = 0x1,
                ///  Brown-out detection at VCC=2.0 V
                @"2V0" = 0x0,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock Source
                SUT_CKSEL: packed union {
                    raw: u6,
                    value: ENUM_SUT_CKSEL,
                },
                ///  Clock output on PORTD1
                CKOUT: u1,
                ///  Divide clock by 8 internally
                CKDIV8: u1,
            }),
            HIGH: mmio.Mmio(packed struct(u8) {
                ///  Select Reset Vector
                BOOTRST: u1,
                ///  Select Boot Size
                BOOTSZ: packed union {
                    raw: u2,
                    value: ENUM_BOOTSZ,
                },
                ///  Preserve EEPROM through the Chip Erase cycle
                EESAVE: u1,
                ///  Watch-dog Timer always on
                WDTON: u1,
                ///  Serial program downloading (SPI) enabled
                SPIEN: u1,
                ///  Debug Wire enable
                DWEN: u1,
                ///  Reset Disabled (Enable PE0 as I/O pin)
                RSTDISBL: u1,
            }),
            EXTENDED: mmio.Mmio(packed struct(u8) {
                ///  Brown-out Detector Trigger Level
                BODLEVEL: packed union {
                    raw: u3,
                    value: ENUM_BODLEVEL,
                },
                ///  PSC2 and PSC0 input Reset Behavior
                PSCINRB: u1,
                ///  PSC Reset Value
                PSCRV: u1,
                ///  PSC0 Reset Behavior
                PSC0RB: u1,
                ///  PSC2 Reset Behavior for 22 and 23
                PSC2RBA: u1,
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

            ///  DAC Data Register Low Byte
            DACL: mmio.Mmio(packed struct(u8) {
                ///  DAC Data Register Low Byte Bits
                DACL: u8,
            }),
            ///  DAC Data Register High Byte
            DACH: mmio.Mmio(packed struct(u8) {
                ///  DAC Data Register High Byte Bits
                DACH: u8,
            }),
            reserved30: [28]u8,
            ///  DAC Control Register
            DACON: mmio.Mmio(packed struct(u8) {
                ///  DAC Enable Bit
                DAEN: u1,
                reserved2: u1,
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
                INTF: u3,
                padding: u5,
            }),
            ///  External Interrupt Mask Register
            EIMSK: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Request 2 Enable
                INT: u3,
                padding: u5,
            }),
            reserved73: [71]u8,
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
                padding: u2,
            }),
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

            pub const ANALOG_ADC_AUTO_TRIGGER_4BITS = enum(u4) {
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
                ///  Timer/Counter1 Compare Match B
                TIMER_COUNTER1_COMPARE_MATCH_B = 0x5,
                ///  Timer/Counter1 Overflow
                TIMER_COUNTER1_OVERFLOW = 0x6,
                ///  Timer/Counter1 Capture Event
                TIMER_COUNTER1_CAPTURE_EVENT = 0x7,
                ///  PSC0ASY Event
                PSC0ASY_EVENT = 0x8,
                ///  PSC1ASY Event
                PSC1ASY_EVENT = 0x9,
                ///  PSC2ASY Event
                PSC2ASY_EVENT = 0xa,
                ///  Analog comparator 1
                ANALOG_COMPARATOR_1 = 0xb,
                ///  Analog comparator 2
                ANALOG_COMPARATOR_2 = 0xc,
                _,
            };

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
                ///  ADC Auto Trigger Sources
                ADTS: packed union {
                    raw: u4,
                    value: ANALOG_ADC_AUTO_TRIGGER_4BITS,
                },
                ///  ADC Single Shot Enable on PSC's Synchronisation Signals
                ADSSEN: u1,
                reserved6: u1,
                ///  ADC Noise Canceller Disable
                ADNCDIS: u1,
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
            reserved38: [35]u8,
            ///  ADC Data Register Bytes
            ADC: u16,
            reserved81: [41]u8,
            ///  Digital Input Disable Register 0
            DIDR0: mmio.Mmio(packed struct(u8) {
                ///  ADC0 Digital input Disable
                ADC0D: u1,
                ///  ADC1 Digital input Disable
                ADC1D: u1,
                ///  ADC2 Digital input Disable
                ADC2D: u1,
                ///  ADC3 Digital input Disable
                ADC3D: u1,
                ///  ADC4 Digital input Disable
                ADC4D: u1,
                ///  ADC5 Digital input Disable
                ADC5D: u1,
                ///  ADC7 Digital input Disable
                ADC6D: u1,
                ADC7D: u1,
            }),
            ///  Digital Input Disable Register 0
            DIDR1: mmio.Mmio(packed struct(u8) {
                ADC9D: u1,
                ADC10D: u1,
                AMP0POSD: u1,
                ACMP1MD: u1,
                padding: u4,
            }),
            AMP0CSR: mmio.Mmio(packed struct(u8) {
                AMP0TS: u2,
                reserved3: u1,
                AMP0GS: u1,
                AMP0G: u2,
                AMP0IS: u1,
                AMP0EN: u1,
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
                reserved1: u1,
                ///  Analog Comparator 1 Output Bit
                AC1O: u1,
                ///  Analog Comparator 2 Output Bit
                AC2O: u1,
                ///  Analog Comparator 3 Output Bit
                AC3O: u1,
                reserved5: u1,
                ///  Analog Comparator 1 Interrupt Flag Bit
                AC1IF: u1,
                ///  Analog Comparator 2 Interrupt Flag Bit
                AC2IF: u1,
                ///  Analog Comparator 3 Interrupt Flag Bit
                AC3IF: u1,
            }),
            reserved90: [89]u8,
            AC1ECON: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator Hysteresis Select
                AC1H: u3,
                ///  Analog Comparator Interrupt Capture Enable
                AC1ICE: u1,
                ///  Analog Comparator Ouput Enable
                AC1OE: u1,
                ///  Analog Comparator Ouput Invert
                AC1OI: u1,
                padding: u2,
            }),
            AC2ECON: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator Hysteresis Select
                AC2H: u3,
                reserved4: u1,
                ///  Analog Comparator Ouput Enable
                AC2OE: u1,
                ///  Analog Comparator Ouput Invert
                AC2OI: u1,
                padding: u2,
            }),
            AC3ECON: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator Hysteresis Select
                AC3H: u3,
                reserved4: u1,
                ///  Analog Comparator Ouput Enable
                AC3OE: u1,
                ///  Analog Comparator Ouput Invert
                AC3OI: u1,
                padding: u2,
            }),
            ///  Analog Comparator 1 Control Register
            AC1CON: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator 1 Multiplexer Register
                AC1M: u3,
                reserved4: u1,
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
            ///  Analog Comparator3 Control Register
            AC3CON: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator 3 Multiplexer Register
                AC3M: u3,
                ///  Analog Comparator 3 Alternate Output Enable
                AC3OEA: u1,
                ///  Analog Comparator 3 Interrupt Select Bit
                AC3IS: u2,
                ///  Analog Comparator 3 Interrupt Enable Bit
                AC3IE: u1,
                ///  Analog Comparator3 Enable Bit
                AC3EN: u1,
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
                ///  2.0 MHz
                @"2_0_MHz" = 0x0,
                ///  8.0 MHz
                @"8_0_MHz" = 0x1,
            };

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
            reserved26: [23]u8,
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
                ///  Frequency Selection of the Calibrated RC Oscillator
                CKRC81: u1,
                ///  Reset Pin Disable
                RSTDIS: u1,
                ///  Pull-up disable
                PUD: u1,
                padding: u3,
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
            reserved71: [32]u8,
            ///  BandGap Resistor Calibration Register
            BGCRR: mmio.Mmio(packed struct(u8) {
                BGCR: u4,
                padding: u4,
            }),
            ///  BandGap Current Calibration Register
            BGCCR: mmio.Mmio(packed struct(u8) {
                BGCC: u4,
                padding: u4,
            }),
            reserved74: [1]u8,
            CLKPR: mmio.Mmio(packed struct(u8) {
                CLKPS: packed union {
                    raw: u4,
                    value: CPU_CLK_PRESCALE_4_BITS_SMALL,
                },
                reserved7: u3,
                CLKPCE: u1,
            }),
            CLKCSR: mmio.Mmio(packed struct(u8) {
                ///  Clock Control
                CLKC: u4,
                ///  Clock Ready Flag
                CLKRDY: u1,
                reserved7: u2,
                ///  Clock Control Change Enable
                CLKCCE: u1,
            }),
            CLKSELR: mmio.Mmio(packed struct(u8) {
                ///  Clock Source Select
                CKSEL: u4,
                ///  Clock Start up Time
                CSUT: u2,
                ///  Clock OUT
                COUT: u1,
                padding: u1,
            }),
            ///  Power Reduction Register
            PRR: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction ADC
                PRADC: u1,
                reserved2: u1,
                ///  Power Reduction Serial Peripheral Interface
                PRSPI: u1,
                reserved4: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                ///  Power Reduction PSC0
                PRPSCR: u1,
                reserved7: u1,
                ///  Power Reduction PSC2
                PRPSC2: u1,
            }),
            ///  PLL Control And Status Register
            PLLCSR: mmio.Mmio(packed struct(u8) {
                ///  PLL Lock Detector
                PLOCK: u1,
                ///  PLL Enable
                PLLE: u1,
                PLLF: u4,
                padding: u2,
            }),
            ///  Oscillator Calibration Value
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
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
                ///  EEPROM Page Access
                EEPAGE: u1,
                ///  None Volatile Busy Memory Busy
                NVMBSY: u1,
            }),
            ///  EEPROM Data Register
            EEDR: u8,
            ///  EEPROM Read/Write Access Bytes
            EEAR: u16,
        };

        ///  Power Stage Controller
        pub const PSC = struct {
            ///  Power Stage Controller
            pub const PSC0 = extern struct {
                ///  PSC0 Interrupt Mask Register
                PIM0: mmio.Mmio(packed struct(u8) {
                    ///  End of Cycle Interrupt Enable
                    PEOPE0: u1,
                    ///  End of Enhanced Cycle Enable
                    PEOEPE0: u1,
                    reserved3: u1,
                    ///  External Event A Interrupt Enable
                    PEVE0A: u1,
                    ///  External Event B Interrupt Enable
                    PEVE0B: u1,
                    padding: u3,
                }),
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
                    reserved6: u1,
                    ///  PSC 0 Output A Activity
                    POAC0A: u1,
                    ///  PSC 0 Output A Activity
                    POAC0B: u1,
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
                    ///  PSC 0 Balance Flank Width Modulation
                    PBFM0_bit0: u1,
                    ///  PSC 0 Asynchronous Output Control A
                    PAOC0A: u1,
                    ///  PSC 0 Asynchronous Output Control B
                    PAOC0B: u1,
                    ///  PSC 0 Balance Flank Width Modulation
                    PBFM0_bit1: u1,
                    ///  PSC 0 Prescaler Selects
                    PPRE0: u2,
                }),
                reserved19: [15]u8,
                ///  Output Compare SB Register
                OCR0SB: u16,
                ///  Output Compare RB Register
                OCR0RB: u16,
                reserved27: [4]u8,
                ///  Output Compare RA Register
                OCR0RA: u16,
                reserved49: [20]u8,
                ///  Output Compare SA Register
                OCR0SA: u16,
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
                reserved57: [4]u8,
                ///  PSC 0 Input Capture Register
                PICR0: u16,
                ///  PSC0 Synchro and Output Configuration
                PSOC0: mmio.Mmio(packed struct(u8) {
                    ///  PSCOUT00 Output Enable
                    POEN0A: u1,
                    reserved2: u1,
                    ///  PSCOUT01 Output Enable
                    POEN0B: u1,
                    reserved4: u1,
                    ///  Synchronisation out for ADC selection
                    PSYNC0: u2,
                    ///  PSC Input Select
                    PISEL0B1: u1,
                    ///  PSC Input Select
                    PISEL0A1: u1,
                }),
            };

            ///  Power Stage Controller
            pub const PSC2 = extern struct {
                ///  PSC2 Interrupt Mask Register
                PIM2: mmio.Mmio(packed struct(u8) {
                    ///  End of Cycle Interrupt Enable
                    PEOPE2: u1,
                    ///  End of Enhanced Cycle Interrupt Enable
                    PEOEPE2: u1,
                    reserved3: u1,
                    ///  External Event A Interrupt Enable
                    PEVE2A: u1,
                    ///  External Event B Interrupt Enable
                    PEVE2B: u1,
                    ///  PSC 2 Synchro Error Interrupt Enable
                    PSEIE2: u1,
                    padding: u2,
                }),
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
                reserved19: [15]u8,
                ///  Output Compare SB Register
                OCR2SB: u16,
                ///  Output Compare RB Register
                OCR2RB: u16,
                reserved27: [4]u8,
                ///  Output Compare RA Register
                OCR2RA: u16,
                reserved49: [20]u8,
                ///  Output Compare SA Register
                OCR2SA: u16,
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
                reserved57: [4]u8,
                ///  PSC 2 Input Capture Register Low
                PICR2L: u8,
                ///  PSC 2 Input Capture Register High
                PICR2H: mmio.Mmio(packed struct(u8) {
                    PICR2: u2,
                    PICR21: u2,
                    reserved7: u3,
                    ///  PSC 2 Capture Software Trigger Bit
                    PCST2: u1,
                }),
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
                    PSYNC2: u2,
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
                ///  PSC 2 Enhanced Configuration Register
                PCNFE2: mmio.Mmio(packed struct(u8) {
                    PISEL2B1: u1,
                    PISEL2A1: u1,
                    PELEV2B1: u1,
                    PELEV2A1: u1,
                    PBFM21: u1,
                    PASDLK2: u3,
                }),
                ///  Analog Synchronization Delay Register
                PASDLY2: u8,
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
                ///  Timer/Counter Interrupt Mask Register
                TIMSK1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Interrupt Enable
                    TOIE1: u1,
                    reserved5: u4,
                    ///  Timer/Counter1 Input Capture Interrupt Enable
                    ICIE1: u1,
                    padding: u2,
                }),
                ///  Timer/Counter Interrupt Flag register
                TIFR1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Flag
                    TOV1: u1,
                    reserved5: u4,
                    ///  Input Capture Flag 1
                    ICF1: u1,
                    padding: u2,
                }),
                reserved57: [55]u8,
                ///  Timer/Counter1 Bytes
                TCNT1: u16,
                reserved105: [46]u8,
                ///  Timer/Counter1 Control Register B
                TCCR1B: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler source of Timer/Counter 1
                    CS1: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    reserved4: u1,
                    ///  Waveform Generation Mode
                    WGM13: u1,
                    reserved6: u1,
                    ///  Input Capture 1 Edge Select
                    ICES1: u1,
                    ///  Input Capture 1 Noise Canceler
                    ICNC1: u1,
                }),
                reserved107: [1]u8,
                ///  Timer/Counter1 Input Capture Register Bytes
                ICR1: u16,
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
                ///  Signature Row Read
                SIGRD: u1,
                ///  Read While Write Section Busy
                RWWSB: u1,
                ///  SPM Interrupt Enable
                SPMIE: u1,
            }),
        };
    };
};
