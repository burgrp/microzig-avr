const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATmega64M1 = struct {
        pub const properties = struct {
            pub const family = "megaAVR";
            pub const arch = "AVR8";
        };

        pub const VectorTable = extern struct {
            const Handler = micro.interrupt.Handler;
            const unhandled = micro.interrupt.unhandled;

            RESET: Handler = unhandled,
            ///  Analog Comparator 0
            ANACOMP0: Handler = unhandled,
            ///  Analog Comparator 1
            ANACOMP1: Handler = unhandled,
            ///  Analog Comparator 2
            ANACOMP2: Handler = unhandled,
            ///  Analog Comparator 3
            ANACOMP3: Handler = unhandled,
            ///  PSC Fault
            PSC_FAULT: Handler = unhandled,
            ///  PSC End of Cycle
            PSC_EC: Handler = unhandled,
            ///  External Interrupt Request 0
            INT0: Handler = unhandled,
            ///  External Interrupt Request 1
            INT1: Handler = unhandled,
            ///  External Interrupt Request 2
            INT2: Handler = unhandled,
            ///  External Interrupt Request 3
            INT3: Handler = unhandled,
            ///  Timer/Counter1 Capture Event
            TIMER1_CAPT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer/Counter1 Compare Match B
            TIMER1_COMPB: Handler = unhandled,
            ///  Timer1/Counter1 Overflow
            TIMER1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Compare Match A
            TIMER0_COMPA: Handler = unhandled,
            ///  Timer/Counter0 Compare Match B
            TIMER0_COMPB: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  CAN MOB, Burst, General Errors
            CAN_INT: Handler = unhandled,
            ///  CAN Timer Overflow
            CAN_TOVF: Handler = unhandled,
            ///  LIN Transfer Complete
            LIN_TC: Handler = unhandled,
            ///  LIN Error
            LIN_ERR: Handler = unhandled,
            ///  Pin Change Interrupt Request 0
            PCINT0: Handler = unhandled,
            ///  Pin Change Interrupt Request 1
            PCINT1: Handler = unhandled,
            ///  Pin Change Interrupt Request 2
            PCINT2: Handler = unhandled,
            ///  Pin Change Interrupt Request 3
            PCINT3: Handler = unhandled,
            ///  SPI Serial Transfer Complete
            SPI_STC: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  Watchdog Time-Out Interrupt
            WDT: Handler = unhandled,
            ///  EEPROM Ready
            EE_READY: Handler = unhandled,
            ///  Store Program Memory Read
            SPM_READY: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @intToPtr(*volatile types.peripherals.FUSE, 0x0);
            ///  Lockbits
            pub const LOCKBIT = @intToPtr(*volatile types.peripherals.LOCKBIT, 0x0);
            ///  I/O Port
            pub const PORTB = @intToPtr(*volatile types.peripherals.PORT.PORTB, 0x23);
            ///  I/O Port
            pub const PORTC = @intToPtr(*volatile types.peripherals.PORT.PORTC, 0x26);
            ///  I/O Port
            pub const PORTD = @intToPtr(*volatile types.peripherals.PORT.PORTD, 0x29);
            ///  I/O Port
            pub const PORTE = @intToPtr(*volatile types.peripherals.PORT.PORTE, 0x2c);
            ///  Timer/Counter, 8-bit
            pub const TC0 = @intToPtr(*volatile types.peripherals.TC8.TC0, 0x35);
            ///  Timer/Counter, 16-bit
            pub const TC1 = @intToPtr(*volatile types.peripherals.TC16.TC1, 0x36);
            ///  CPU Registers
            pub const CPU = @intToPtr(*volatile types.peripherals.CPU, 0x39);
            ///  External Interrupts
            pub const EXINT = @intToPtr(*volatile types.peripherals.EXINT, 0x3b);
            ///  EEPROM
            pub const EEPROM = @intToPtr(*volatile types.peripherals.EEPROM, 0x3f);
            ///  Serial Peripheral Interface
            pub const SPI = @intToPtr(*volatile types.peripherals.SPI, 0x4c);
            ///  Analog Comparator
            pub const AC = @intToPtr(*volatile types.peripherals.AC, 0x50);
            ///  Watchdog Timer
            pub const WDT = @intToPtr(*volatile types.peripherals.WDT, 0x60);
            ///  Analog-to-Digital Converter
            pub const ADC = @intToPtr(*volatile types.peripherals.ADC, 0x75);
            ///  Digital-to-Analog Converter
            pub const DAC = @intToPtr(*volatile types.peripherals.DAC, 0x90);
            ///  Power Stage Controller
            pub const PSC = @intToPtr(*volatile types.peripherals.PSC, 0xa0);
            ///  Local Interconnect Network
            pub const LINUART = @intToPtr(*volatile types.peripherals.LINUART, 0xc8);
            ///  Controller Area Network
            pub const CAN = @intToPtr(*volatile types.peripherals.CAN, 0xd8);
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
                ///  PLL clock 16 MHz; Start-up time PWRDWN/RESET: 1K CK/14 CK + 0 ms
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
                ///  Boot Flash size=512 words Boot address=$7E00
                @"512W_7E00" = 0x3,
                ///  Boot Flash size=1024 words Boot address=$7C00
                @"1024W_7C00" = 0x2,
                ///  Boot Flash size=2048 words Boot address=$7800
                @"2048W_7800" = 0x1,
                ///  Boot Flash size=4096 words Boot address=$7000
                @"4096W_7000" = 0x0,
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
                ///  Reset Disabled (Enable PC6 as i/o pin)
                RSTDISBL: u1,
            }),
            EXTENDED: mmio.Mmio(packed struct(u8) {
                ///  Brown-out Detector Trigger Level
                BODLEVEL: packed union {
                    raw: u3,
                    value: ENUM_BODLEVEL,
                },
                ///  PSC0UTnB Reset Value
                PSCRVB: u1,
                ///  PSCOUTnA Reset Value
                PSCRVA: u1,
                ///  PSC Reset Behavior
                PSCRB: u1,
                padding: u2,
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

        ///  Controller Area Network
        pub const CAN = extern struct {
            ///  CAN General Control Register
            CANGCON: mmio.Mmio(packed struct(u8) {
                ///  Software Reset Request
                SWRES: u1,
                ///  Enable / Standby
                ENASTB: u1,
                ///  Test Mode
                TEST: u1,
                ///  Listening Mode
                LISTEN: u1,
                ///  Synchronization of TTC
                SYNTTC: u1,
                ///  Time Trigger Communication
                TTC: u1,
                ///  Overload Frame Request
                OVRQ: u1,
                ///  Abort Request
                ABRQ: u1,
            }),
            ///  CAN General Status Register
            CANGSTA: mmio.Mmio(packed struct(u8) {
                ///  Error Passive Mode
                ERRP: u1,
                ///  Bus Off Mode
                BOFF: u1,
                ///  Enable Flag
                ENFG: u1,
                ///  Receiver Busy
                RXBSY: u1,
                ///  Transmitter Busy
                TXBSY: u1,
                reserved6: u1,
                ///  Overload Frame Flag
                OVFG: u1,
                padding: u1,
            }),
            ///  CAN General Interrupt Register Flags
            CANGIT: mmio.Mmio(packed struct(u8) {
                ///  Ackknowledgement Error General Flag
                AERG: u1,
                ///  Form Error General Flag
                FERG: u1,
                ///  CRC Error General Flag
                CERG: u1,
                ///  Stuff Error General Flag
                SERG: u1,
                ///  Burst Receive Interrupt Flag
                BXOK: u1,
                ///  Overrun CAN Timer Flag
                OVRTIM: u1,
                ///  Bus Off Interrupt Flag
                BOFFIT: u1,
                ///  General Interrupt Flag
                CANIT: u1,
            }),
            ///  CAN General Interrupt Enable Register
            CANGIE: mmio.Mmio(packed struct(u8) {
                ///  Enable CAN Timer Overrun Interrupt
                ENOVRT: u1,
                ///  Enable General Error Interrupt
                ENERG: u1,
                ///  Enable Burst Receive Interrupt
                ENBX: u1,
                ///  Enable MOb Error Interrupt
                ENERR: u1,
                ///  Enable Transmitt Interrupt
                ENTX: u1,
                ///  Enable Receive Interrupt
                ENRX: u1,
                ///  Enable Bus Off Interrupt
                ENBOFF: u1,
                ///  Enable all Interrupts
                ENIT: u1,
            }),
            ///  Enable MOb Register 2
            CANEN2: mmio.Mmio(packed struct(u8) {
                ///  Enable MObs
                ENMOB: u6,
                padding: u2,
            }),
            ///  Enable MOb Register 1(empty)
            CANEN1: u8,
            ///  Enable Interrupt MOb Register 2
            CANIE2: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Enable MObs
                IEMOB: u6,
                padding: u2,
            }),
            ///  Enable Interrupt MOb Register 1 (empty)
            CANIE1: u8,
            ///  CAN Status Interrupt MOb Register 2
            CANSIT2: mmio.Mmio(packed struct(u8) {
                ///  Status of Interrupt MObs
                SIT: u6,
                padding: u2,
            }),
            ///  CAN Status Interrupt MOb Register 1 (empty)
            CANSIT1: u8,
            ///  CAN Bit Timing Register 1
            CANBT1: mmio.Mmio(packed struct(u8) {
                reserved1: u1,
                ///  Baud Rate Prescaler bits
                BRP: u6,
                padding: u1,
            }),
            ///  CAN Bit Timing Register 2
            CANBT2: mmio.Mmio(packed struct(u8) {
                reserved1: u1,
                ///  Propagation Time Segment bits
                PRS: u3,
                reserved5: u1,
                ///  Re-Sync Jump Width bits
                SJW: u2,
                padding: u1,
            }),
            ///  CAN Bit Timing Register 3
            CANBT3: mmio.Mmio(packed struct(u8) {
                ///  Sample Type
                SMP: u1,
                ///  Phase Segment 1 bits
                PHS1: u3,
                ///  Phase Segment 2 bits
                PHS2: u3,
                padding: u1,
            }),
            ///  Timer Control Register
            CANTCON: u8,
            ///  Timer Register
            CANTIM: u16,
            ///  TTC Timer Register
            CANTTC: u16,
            ///  Transmit Error Counter Register
            CANTEC: u8,
            ///  Receive Error Counter Register
            CANREC: u8,
            ///  Highest Priority MOb Register
            CANHPMOB: mmio.Mmio(packed struct(u8) {
                ///  CAN General Purpose bits
                CGP: u4,
                ///  Highest Priority MOb Number bits
                HPMOB: u4,
            }),
            ///  Page MOb Register
            CANPAGE: mmio.Mmio(packed struct(u8) {
                ///  Data Buffer Index bits
                INDX: u3,
                ///  MOb Data Buffer Auto Increment (Active Low)
                AINC: u1,
                ///  MOb Number bits
                MOBNB: u4,
            }),
            ///  MOb Status Register
            CANSTMOB: mmio.Mmio(packed struct(u8) {
                ///  Ackknowledgement Error on MOb
                AERR: u1,
                ///  Form Error on MOb
                FERR: u1,
                ///  CRC Error on MOb
                CERR: u1,
                ///  Stuff Error on MOb
                SERR: u1,
                ///  Bit Error on MOb
                BERR: u1,
                ///  Receive OK on MOb
                RXOK: u1,
                ///  Transmit OK on MOb
                TXOK: u1,
                ///  Data Length Code Warning on MOb
                DLCW: u1,
            }),
            ///  MOb Control and DLC Register
            CANCDMOB: mmio.Mmio(packed struct(u8) {
                ///  Data Length Code bits
                DLC: u4,
                ///  Identifier Extension
                IDE: u1,
                ///  Reply Valid
                RPLV: u1,
                ///  MOb Config bits
                CONMOB: u2,
            }),
            ///  Identifier Tag Register 4
            CANIDT4: mmio.Mmio(packed struct(u8) {
                ///  Reserved Bit 0 Tag
                RB0TAG: u1,
                ///  Reserved Bit 1 Tag
                RB1TAG: u1,
                ///  Remote Transmission Request Tag
                RTRTAG: u1,
                ///  Identifier Tag
                IDT: u5,
            }),
            ///  Identifier Tag Register 3
            CANIDT3: mmio.Mmio(packed struct(u8) {
                ///  Identifier Tag
                IDT: u8,
            }),
            ///  Identifier Tag Register 2
            CANIDT2: mmio.Mmio(packed struct(u8) {
                ///  Identifier Tag
                IDT: u8,
            }),
            ///  Identifier Tag Register 1
            CANIDT1: mmio.Mmio(packed struct(u8) {
                ///  Identifier Tag
                IDT: u8,
            }),
            ///  Identifier Mask Register 4
            CANIDM4: mmio.Mmio(packed struct(u8) {
                ///  Identifier Extension Mask
                IDEMSK: u1,
                reserved2: u1,
                ///  Remote Transmission Request Mask
                RTRMSK: u1,
                ///  Identifier Mask
                IDMSK: u5,
            }),
            ///  Identifier Mask Register 3
            CANIDM3: mmio.Mmio(packed struct(u8) {
                ///  Identifier Mask
                IDMSK: u8,
            }),
            ///  Identifier Mask Register 2
            CANIDM2: mmio.Mmio(packed struct(u8) {
                ///  Identifier Mask
                IDMSK: u8,
            }),
            ///  Identifier Mask Register 1
            CANIDM1: mmio.Mmio(packed struct(u8) {
                ///  Identifier Mask
                IDMSK: u8,
            }),
            ///  Time Stamp Register
            CANSTM: u16,
            ///  Message Data Register
            CANMSG: u8,
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
                ///  Analog Comparator 3 Output Bit
                AC3O: u1,
                ///  Analog Comparator 0 Interrupt Flag Bit
                AC0IF: u1,
                ///  Analog Comparator 1 Interrupt Flag Bit
                AC1IF: u1,
                ///  Analog Comparator 2 Interrupt Flag Bit
                AC2IF: u1,
                ///  Analog Comparator 3 Interrupt Flag Bit
                AC3IF: u1,
            }),
            reserved68: [67]u8,
            ///  Analog Comparator 0 Control Register
            AC0CON: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator 0 Multiplexer Register
                AC0M: u3,
                ///  Analog Comparator Clock Select
                ACCKSEL: u1,
                ///  Analog Comparator 0 Interrupt Select Bits
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
            ///  Analog Comparator 3 Control Register
            AC3CON: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator 3 Multiplexer Register
                AC3M: u3,
                reserved4: u1,
                ///  Analog Comparator 3 Interrupt Select Bit
                AC3IS: packed union {
                    raw: u2,
                    value: ANALOG_COMP_INTERRUPT,
                },
                ///  Analog Comparator 3 Interrupt Enable Bit
                AC3IE: u1,
                ///  Analog Comparator 3 Enable Bit
                AC3EN: u1,
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
            reserved5: [3]u8,
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
            reserved30: [1]u8,
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
            reserved36: [5]u8,
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
                ///  Clock Prescaler Select
                CLKPS: packed union {
                    raw: u4,
                    value: CPU_CLK_PRESCALE_4_BITS_SMALL,
                },
                reserved7: u3,
                ///  Clock Prescaler Change Enable
                CLKPCE: u1,
            }),
            reserved43: [2]u8,
            ///  Power Reduction Register
            PRR: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction ADC
                PRADC: u1,
                ///  Power Reduction LIN UART
                PRLIN: u1,
                ///  Power Reduction Serial Peripheral Interface
                PRSPI: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                ///  Power Reduction PSC
                PRPSC: u1,
                ///  Power Reduction CAN
                PRCAN: u1,
                padding: u1,
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
                    ///  Timer/Counter Prescaler Reset
                    PSRSYNC: u1,
                    reserved6: u5,
                    ///  Timer/Counter1 Input Capture Selection
                    ICPSEL1: u1,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                ///  Timer/Counter Control Register A
                TCCR0A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM0: u2,
                    reserved4: u2,
                    ///  Compare Output Mode for Channel B
                    COM0B: u2,
                    ///  Compare Output Mode for Channel A
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
                TCNT0: u8,
                ///  Timer/Counter0 Output Compare Register A
                OCR0A: u8,
                ///  Timer/Counter0 Output Compare Register B
                OCR0B: u8,
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
                    ///  Timer/Counter Prescaler Reset
                    PSRSYNC: u1,
                    reserved6: u5,
                    ///  Timer/Counter1 Input Capture Selection
                    ICPSEL1: u1,
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
                    ///  Compare Output Mode for Channel B
                    COM1B: u2,
                    ///  Compare Output Mode for Channel A
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
                    ///  Force Output Compare for Channel B
                    FOC1B: u1,
                    ///  Force Output Compare for Channel A
                    FOC1A: u1,
                }),
                reserved78: [1]u8,
                ///  Timer/Counter1 Bytes
                TCNT1: u16,
                ///  Timer/Counter1 Input Capture Register
                ICR1: u16,
                ///  Timer/Counter1 Output Compare Register A
                OCR1A: u16,
                ///  Timer/Counter1 Output Compare Register B
                OCR1B: u16,
            };
        };

        ///  Analog-to-Digital Converter
        pub const ADC = extern struct {
            pub const ANALOG_ADC_V_REF2 = enum(u2) {
                ///  AREF, Internal Vref turned off
                AREF_INTERNAL_VREF_TURNED_OFF = 0x0,
                ///  AVCC reference
                AVCC_REFERENCE = 0x1,
                ///  Reserved
                RESERVED = 0x2,
                ///  Internal 2.56V Voltage Reference
                INTERNAL_2_56V_VOLTAGE_REFERENCE = 0x3,
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

            ///  Analog Channel Selection Bits select
            pub const ANALOG_ADC_MUXPOS = enum(u5) {
                ///  ADC input pin 0
                ADC0 = 0x0,
                ///  ADC input pin 1
                ADC1 = 0x1,
                ///  ADC input pin 2
                ADC2 = 0x2,
                ///  ADC input pin 3
                ADC3 = 0x3,
                ///  ADC input pin 4
                ADC4 = 0x4,
                ///  ADC input pin 5
                ADC5 = 0x5,
                ///  ADC input pin 6
                ADC6 = 0x6,
                ///  ADC input pin 7
                ADC7 = 0x7,
                ///  ADC input pin 8
                ADC8 = 0x8,
                ///  ADC input pin 9
                ADC9 = 0x9,
                ///  ADC input pin 10
                ADC10 = 0xa,
                ///  Temperature sensor
                TEMPSENSE = 0xb,
                ///  Internal VCC / 4
                VCC4 = 0xc,
                ///  Current source
                ISRC = 0xd,
                ///  Analog Differential Amplifier 0
                AMP0 = 0xe,
                ///  Analog Differential Amplifier 1
                AMP1 = 0xf,
                ///  Analog Differential Amplifier 2
                AMP2 = 0x10,
                ///  Bandgap
                BNDGAP = 0x11,
                ///  0V (GND)
                GND = 0x12,
                _,
            };

            ///  Amplifier 0 Control and Status Register
            AMP0CSR: mmio.Mmio(packed struct(u8) {
                ///  Amplifier 0 Clock Source Selection
                AMP0TS: u3,
                ///  Amplifier 0 - Comparator 0 connection
                AMPCMP0: u1,
                ///  Amplifier 0 Gain Selection
                AMP0G: u2,
                ///  Amplifier 0 Input Shunt
                AMP0IS: u1,
                ///  Amplifier 0 Enable
                AMP0EN: u1,
            }),
            ///  Amplifier 1 Control and Status Register
            AMP1CSR: mmio.Mmio(packed struct(u8) {
                ///  Amplifier 1 Clock Source Selection
                AMP1TS: u3,
                ///  Amplifier 1 - Comparator 1 Connection
                AMPCMP1: u1,
                ///  Amplifier 1 Gain Selection
                AMP1G: u2,
                ///  Amplifier 1 Input Shunt
                AMP1IS: u1,
                ///  Amplifier 1 Enable
                AMP1EN: u1,
            }),
            ///  Amplifier 2 Control and Status Register
            AMP2CSR: mmio.Mmio(packed struct(u8) {
                ///  Amplifier 2 Clock Source Selection
                AMP2TS: u3,
                ///  Amplifier 2 - Comparator 2 Connection
                AMPCMP2: u1,
                ///  Amplifier 2 Gain Selection
                AMP2G: u2,
                ///  Amplifier 2 Input Shunt
                AMP2IS: u1,
                ///  Amplifier 2 Enable
                AMP2EN: u1,
            }),
            ///  ADC Data Register Bytes
            ADC: u16,
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
                reserved5: u1,
                ///  Analog Reference pin Enable
                AREFEN: u1,
                ///  Current Source Enable
                ISRCEN: u1,
                ///  ADC High Speed Mode
                ADHSM: u1,
            }),
            ///  The ADC multiplexer Selection Register
            ADMUX: mmio.Mmio(packed struct(u8) {
                ///  ADC channel selection bits
                MUX: packed union {
                    raw: u5,
                    value: ANALOG_ADC_MUXPOS,
                },
                ///  Left Adjust Result
                ADLAR: u1,
                ///  Reference Selection Bits
                REFS: packed union {
                    raw: u2,
                    value: ANALOG_ADC_V_REF2,
                },
            }),
            reserved9: [1]u8,
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
                ///  ADC6 Digital input Disable
                ADC6D: u1,
                ///  ADC7 Digital input Disable
                ADC7D: u1,
            }),
            ///  Digital Input Disable Register 0
            DIDR1: mmio.Mmio(packed struct(u8) {
                ///  ADC8 Pin Digital input Disable
                ADC8D: u1,
                ///  ADC9 Pin Digital input Disable
                ADC9D: u1,
                ///  ADC10 Pin Digital input Disable
                ADC10D: u1,
                ///  AMP0N Pin Digital input Disable
                AMP0ND: u1,
                ///  AMP0P Pin Digital input Disable
                AMP0PD: u1,
                ///  ACMP0 Pin Digital input Disable
                ACMP0D: u1,
                ///  AMP2P Pin Digital input Disable
                AMP2PD: u1,
                padding: u1,
            }),
        };

        ///  Local Interconnect Network
        pub const LINUART = extern struct {
            ///  LIN Control Register
            LINCR: mmio.Mmio(packed struct(u8) {
                ///  LIN Command and Mode bits
                LCMD: u3,
                ///  LIN or UART Enable
                LENA: u1,
                ///  LIN Configuration bits
                LCONF: u2,
                ///  LIN Standard
                LIN13: u1,
                ///  Software Reset
                LSWRES: u1,
            }),
            ///  LIN Status and Interrupt Register
            LINSIR: mmio.Mmio(packed struct(u8) {
                ///  Receive Performed Interrupt
                LRXOK: u1,
                ///  Transmit Performed Interrupt
                LTXOK: u1,
                ///  Identifier Interrupt
                LIDOK: u1,
                ///  Error Interrupt
                LERR: u1,
                ///  Busy Signal
                LBUSY: u1,
                ///  Identifier Status bits
                LIDST: u3,
            }),
            ///  LIN Enable Interrupt Register
            LINENIR: mmio.Mmio(packed struct(u8) {
                ///  Enable Receive Performed Interrupt
                LENRXOK: u1,
                ///  Enable Transmit Performed Interrupt
                LENTXOK: u1,
                ///  Enable Identifier Interrupt
                LENIDOK: u1,
                ///  Enable Error Interrupt
                LENERR: u1,
                padding: u4,
            }),
            ///  LIN Error Register
            LINERR: mmio.Mmio(packed struct(u8) {
                ///  Bit Error Flag
                LBERR: u1,
                ///  Checksum Error Flag
                LCERR: u1,
                ///  Parity Error Flag
                LPERR: u1,
                ///  Synchronization Error Flag
                LSERR: u1,
                ///  Framing Error Flag
                LFERR: u1,
                ///  Overrun Error Flag
                LOVERR: u1,
                ///  Frame Time Out Error Flag
                LTOERR: u1,
                ///  Abort Flag
                LABORT: u1,
            }),
            ///  LIN Bit Timing Register
            LINBTR: mmio.Mmio(packed struct(u8) {
                ///  LIN Bit Timing bits
                LBT: u6,
                reserved7: u1,
                ///  Disable Bit Timing Resynchronization
                LDISR: u1,
            }),
            ///  LIN Baud Rate Register
            LINBRR: mmio.Mmio(packed struct(u16) {
                LDIV: u12,
                padding: u4,
            }),
            ///  LIN Data Length Register
            LINDLR: mmio.Mmio(packed struct(u8) {
                ///  LIN Receive Data Length bits
                LRXDL: u4,
                ///  LIN Transmit Data Length bits
                LTXDL: u4,
            }),
            ///  LIN Identifier Register
            LINIDR: mmio.Mmio(packed struct(u8) {
                ///  Identifier bit 5 or Data Length bits
                LID: u6,
                ///  Parity bits
                LP: u2,
            }),
            ///  LIN Data Buffer Selection Register
            LINSEL: mmio.Mmio(packed struct(u8) {
                ///  FIFO LIN Data Buffer Index bits
                LINDX: u3,
                ///  Auto Increment of Data Buffer Index (Active Low)
                LAINC: u1,
                padding: u4,
            }),
            ///  LIN Data Register
            LINDAT: mmio.Mmio(packed struct(u8) {
                ///  LIN Data In / Data out
                LDATA: u8,
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

            ///  Pin Change Interrupt Flag Register
            PCIFR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Flags
                PCIF: u4,
                padding: u4,
            }),
            ///  External Interrupt Flag Register
            EIFR: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Flags
                INTF: u4,
                padding: u4,
            }),
            ///  External Interrupt Mask Register
            EIMSK: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Request 3 Enable
                INT: u4,
                padding: u4,
            }),
            reserved45: [42]u8,
            ///  Pin Change Interrupt Control Register
            PCICR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Enables
                PCIE: u4,
                padding: u4,
            }),
            ///  External Interrupt Control Register
            EICRA: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Sense Control 0 Bits
                ISC0: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt Sense Control 1 Bits
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
            ///  Pin Change Mask Register 0
            PCMSK0: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Masks
                PCINT: u8,
            }),
            ///  Pin Change Mask Register 1
            PCMSK1: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Masks
                PCINT: u8,
            }),
            ///  Pin Change Mask Register 2
            PCMSK2: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Masks
                PCINT: u8,
            }),
            ///  Pin Change Mask Register 3
            PCMSK3: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Masks
                PCINT: u3,
                padding: u5,
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
                EEWE: u1,
                ///  EEPROM Master Write Enable
                EEMWE: u1,
                ///  EEPROM Ready Interrupt Enable
                EERIE: u1,
                ///  EEPROM Programming mode
                EEPM: packed union {
                    raw: u2,
                    value: EEP_MODE,
                },
                padding: u2,
            }),
            ///  EEPROM Data Register
            EEDR: u8,
            ///  EEPROM Read/Write Access
            EEAR: u16,
        };

        ///  Power Stage Controller
        pub const PSC = extern struct {
            ///  PSC Module 0 Output Compare SA Register
            POCR0SA: u16,
            ///  PSC Module 0 Output Compare RA Register
            POCR0RA: u16,
            ///  PSC Output Compare SB Register
            POCR0SB: u16,
            ///  PSC Output Compare SA Register
            POCR1SA: u16,
            ///  PSC Module 1 Output Compare RA Register
            POCR1RA: u16,
            ///  PSC Module 1 Output Compare SB Register
            POCR1SB: u16,
            ///  PSC Module 2 Output Compare SA Register
            POCR2SA: u16,
            ///  PSC Module 2 Output Compare RA Register
            POCR2RA: u16,
            ///  PSC Module 2 Output Compare SB Register
            POCR2SB: u16,
            ///  PSC Output Compare RB Register
            POCR_RB: u16,
            ///  PSC Synchro Configuration
            PSYNC: mmio.Mmio(packed struct(u8) {
                ///  Selection of Synchronization Out for ADC
                PSYNC0: u2,
                ///  Selection of Synchronization Out for ADC
                PSYNC1: u2,
                ///  Selection of Synchronization Out for ADC
                PSYNC2: u2,
                padding: u2,
            }),
            ///  PSC Configuration Register
            PCNF: mmio.Mmio(packed struct(u8) {
                reserved2: u2,
                ///  PSC Output A Polarity
                POPA: u1,
                ///  PSC Output B Polarity
                POPB: u1,
                ///  PSC Mode
                PMODE: u1,
                ///  PSC Update Lock
                PULOCK: u1,
                padding: u2,
            }),
            ///  PSC Output Configuration
            POC: mmio.Mmio(packed struct(u8) {
                ///  PSC Output 0A Enable
                POEN0A: u1,
                ///  PSC Output 0B Enable
                POEN0B: u1,
                ///  PSC Output 1A Enable
                POEN1A: u1,
                ///  PSC Output 1B Enable
                POEN1B: u1,
                ///  PSC Output 2A Enable
                POEN2A: u1,
                ///  PSC Output 2B Enable
                POEN2B: u1,
                padding: u2,
            }),
            ///  PSC Control Register
            PCTL: mmio.Mmio(packed struct(u8) {
                ///  PSC Run
                PRUN: u1,
                ///  PSC Complete Cycle
                PCCYC: u1,
                reserved5: u3,
                ///  PSC Input Clock Select
                PCLKSEL: u1,
                ///  PSC Prescaler Select bits
                PPRE: u2,
            }),
            ///  PSC Module 0 Input Control Register
            PMIC0: mmio.Mmio(packed struct(u8) {
                ///  PSC Module 0 Input Mode bits
                PRFM0: u3,
                ///  PSC Module 0 Asynchronous Output Control
                PAOC0: u1,
                ///  PSC Module 0 Input Filter Enable
                PFLTE0: u1,
                ///  PSC Module 0 Input Level Selector
                PELEV0: u1,
                ///  PSC Module 0 Input Select
                PISEL0: u1,
                ///  PSC Module 0 Overlap Enable
                POVEN0: u1,
            }),
            ///  PSC Module 1 Input Control Register
            PMIC1: mmio.Mmio(packed struct(u8) {
                ///  PSC Module 1 Input Mode bits
                PRFM1: u3,
                ///  PSC Module 1 Asynchronous Output Control
                PAOC1: u1,
                ///  PSC Module 1 Input Filter Enable
                PFLTE1: u1,
                ///  PSC Module 1 Input Level Selector
                PELEV1: u1,
                ///  PSC Module 1 Input Select
                PISEL1: u1,
                ///  PSC Module 1 Overlap Enable
                POVEN1: u1,
            }),
            ///  PSC Module 2 Input Control Register
            PMIC2: mmio.Mmio(packed struct(u8) {
                ///  PSC Module 2 Input Mode bits
                PRFM2: u3,
                ///  PSC Module 2 Asynchronous Output Control
                PAOC2: u1,
                ///  PSC Module 2 Input Filter Enable
                PFLTE2: u1,
                ///  PSC Module 2 Input Level Selector
                PELEV2: u1,
                ///  PSC Module 2 Input Select
                PISEL2: u1,
                ///  PSC Module 2 Overlap Enable
                POVEN2: u1,
            }),
            ///  PSC Interrupt Mask Register
            PIM: mmio.Mmio(packed struct(u8) {
                ///  PSC End of Cycle Interrupt Enable
                PEOPE: u1,
                ///  External Event 2 Interrupt Enable
                PEVE: u3,
                padding: u4,
            }),
            ///  PSC Interrupt Flag Register
            PIFR: mmio.Mmio(packed struct(u8) {
                ///  PSC End of Cycle Interrupt
                PEOP: u1,
                ///  PSC External Event 2 Interrupt
                PEV: u3,
                padding: u4,
            }),
        };
    };
};
