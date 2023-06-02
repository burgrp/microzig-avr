const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATmega8U2 = struct {
        pub const properties = struct {
            pub const family = "megaAVR";
            pub const arch = "AVR8";
        };

        pub const VectorTable = extern struct {
            const Handler = micro.interrupt.Handler;
            const unhandled = micro.interrupt.unhandled;

            RESET: Handler = unhandled,
            ///  External Interrupt Request 0
            INT0: Handler = unhandled,
            ///  External Interrupt Request 1
            INT1: Handler = unhandled,
            ///  External Interrupt Request 2
            INT2: Handler = unhandled,
            ///  External Interrupt Request 3
            INT3: Handler = unhandled,
            ///  External Interrupt Request 4
            INT4: Handler = unhandled,
            ///  External Interrupt Request 5
            INT5: Handler = unhandled,
            ///  External Interrupt Request 6
            INT6: Handler = unhandled,
            ///  External Interrupt Request 7
            INT7: Handler = unhandled,
            ///  Pin Change Interrupt Request 0
            PCINT0: Handler = unhandled,
            ///  Pin Change Interrupt Request 1
            PCINT1: Handler = unhandled,
            ///  USB General Interrupt Request
            USB_GEN: Handler = unhandled,
            ///  USB Endpoint/Pipe Interrupt Communication Request
            USB_COM: Handler = unhandled,
            ///  Watchdog Time-out Interrupt
            WDT: Handler = unhandled,
            ///  Timer/Counter2 Capture Event
            TIMER1_CAPT: Handler = unhandled,
            ///  Timer/Counter2 Compare Match B
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer/Counter2 Compare Match B
            TIMER1_COMPB: Handler = unhandled,
            ///  Timer/Counter2 Compare Match C
            TIMER1_COMPC: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIMER1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Compare Match A
            TIMER0_COMPA: Handler = unhandled,
            ///  Timer/Counter0 Compare Match B
            TIMER0_COMPB: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  SPI Serial Transfer Complete
            SPI_STC: Handler = unhandled,
            ///  USART1, Rx Complete
            USART1_RX: Handler = unhandled,
            ///  USART1 Data register Empty
            USART1_UDRE: Handler = unhandled,
            ///  USART1, Tx Complete
            USART1_TX: Handler = unhandled,
            ///  Analog Comparator
            ANALOG_COMP: Handler = unhandled,
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
            ///  Timer/Counter, 8-bit
            pub const TC0 = @intToPtr(*volatile types.peripherals.TC8.TC0, 0x35);
            ///  Timer/Counter, 16-bit
            pub const TC1 = @intToPtr(*volatile types.peripherals.TC16.TC1, 0x36);
            ///  External Interrupts
            pub const EXINT = @intToPtr(*volatile types.peripherals.EXINT, 0x3b);
            ///  CPU Registers
            pub const CPU = @intToPtr(*volatile types.peripherals.CPU, 0x3e);
            ///  EEPROM
            pub const EEPROM = @intToPtr(*volatile types.peripherals.EEPROM, 0x3f);
            ///  Phase Locked Loop
            pub const PLL = @intToPtr(*volatile types.peripherals.PLL, 0x49);
            ///  Serial Peripheral Interface
            pub const SPI = @intToPtr(*volatile types.peripherals.SPI, 0x4c);
            ///  Analog Comparator
            pub const AC = @intToPtr(*volatile types.peripherals.AC, 0x50);
            ///  Bootloader
            pub const BOOT_LOAD = @intToPtr(*volatile types.peripherals.BOOT_LOAD, 0x57);
            ///  Watchdog Timer
            pub const WDT = @intToPtr(*volatile types.peripherals.WDT, 0x60);
            ///  USB Device Registers
            pub const USB_DEVICE = @intToPtr(*volatile types.peripherals.USB_DEVICE, 0x63);
            ///  USART
            pub const USART1 = @intToPtr(*volatile types.peripherals.USART.USART1, 0xc8);
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_SUT_CKSEL = enum(u6) {
                ///  Ext. Clock; Start-up time: 6 CK + 0 ms
                EXTCLK_6CK_0MS = 0x0,
                ///  Ext. Clock; Start-up time: 6 CK + 4.1 ms
                EXTCLK_6CK_4MS1 = 0x10,
                ///  Ext. Clock; Start-up time: 6 CK + 65 ms
                EXTCLK_6CK_65MS = 0x20,
                ///  Int. RC Osc.; Start-up time: 6 CK + 0 ms
                INTRCOSC_6CK_0MS = 0x2,
                ///  Int. RC Osc.; Start-up time: 6 CK + 4.1 ms
                INTRCOSC_6CK_4MS1 = 0x12,
                ///  Int. RC Osc.; Start-up time: 6 CK + 65 ms
                INTRCOSC_6CK_65MS = 0x22,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 0 ms; Int. Cap.
                EXTLOFXTAL_32KCK_0MS_INTCAP = 0x7,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 4.1 ms; Int. Cap.
                EXTLOFXTAL_32KCK_4MS1_INTCAP = 0x17,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 65 ms; Int. Cap.
                EXTLOFXTAL_32KCK_65MS_INTCAP = 0x27,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 0 ms; Int. Cap.
                EXTLOFXTAL_1KCK_0MS_INTCAP = 0x6,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 4.1 ms; Int. Cap.
                EXTLOFXTAL_1KCK_4MS1_INTCAP = 0x16,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 65 ms; Int. Cap.
                EXTLOFXTAL_1KCK_65MS_INTCAP = 0x26,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 0 ms
                EXTLOFXTAL_32KCK_0MS = 0x5,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 4.1 ms
                EXTLOFXTAL_32KCK_4MS1 = 0x15,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 65 ms
                EXTLOFXTAL_32KCK_65MS = 0x25,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 0 ms
                EXTLOFXTAL_1KCK_0MS = 0x4,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 4.1 ms
                EXTLOFXTAL_1KCK_4MS1 = 0x14,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 65 ms
                EXTLOFXTAL_1KCK_65MS = 0x24,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 258 CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_258CK_4MS1 = 0x8,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 258 CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_258CK_65MS = 0x18,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 1K CK + 0 ms
                EXTXOSC_0MHZ4_0MHZ9_1KCK_0MS = 0x28,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 1K CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_1KCK_4MS1 = 0x38,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 1K CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_1KCK_65MS = 0x9,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 16K CK + 0 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_0MS = 0x19,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 16K CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_4MS1 = 0x29,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 16K CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_65MS = 0x39,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 258 CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_258CK_4MS1 = 0xa,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 258 CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_258CK_65MS = 0x1a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 1K CK + 0 ms
                EXTXOSC_0MHZ9_3MHZ_1KCK_0MS = 0x2a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 1K CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_1KCK_4MS1 = 0x3a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 1K CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_1KCK_65MS = 0xb,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 16K CK + 0 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_0MS = 0x1b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 16K CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_4MS1 = 0x2b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 16K CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_65MS = 0x3b,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 258 CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_258CK_4MS1 = 0xc,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 258 CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_258CK_65MS = 0x1c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 1K CK + 0 ms
                EXTXOSC_3MHZ_8MHZ_1KCK_0MS = 0x2c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 1K CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_1KCK_4MS1 = 0x3c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 1K CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_1KCK_65MS = 0xd,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 16K CK + 0 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_0MS = 0x1d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 16K CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_4MS1 = 0x2d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 16K CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_65MS = 0x3d,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 258 CK + 4.1 ms
                EXTXOSC_8MHZ_XX_258CK_4MS1 = 0xe,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 258 CK + 65 ms
                EXTXOSC_8MHZ_XX_258CK_65MS = 0x1e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 1K CK + 0 ms
                EXTXOSC_8MHZ_XX_1KCK_0MS = 0x2e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 1K CK + 4.1 ms
                EXTXOSC_8MHZ_XX_1KCK_4MS1 = 0x3e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 1K CK + 65 ms
                EXTXOSC_8MHZ_XX_1KCK_65MS = 0xf,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 16K CK + 0 ms
                EXTXOSC_8MHZ_XX_16KCK_0MS = 0x1f,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 16K CK + 4.1 ms
                EXTXOSC_8MHZ_XX_16KCK_4MS1 = 0x2f,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 16K CK + 65 ms
                EXTXOSC_8MHZ_XX_16KCK_65MS = 0x3f,
                _,
            };

            pub const ENUM_BOOTSZ = enum(u2) {
                ///  Boot Flash size=256 words start address=$F00
                @"256W_F00" = 0x3,
                ///  Boot Flash size=512 words start address=$E00
                @"512W_E00" = 0x2,
                ///  Boot Flash size=1024 words start address=$C00
                @"1024W_C00" = 0x1,
                ///  Boot Flash size=2048 words start address=$800
                @"2048W_800" = 0x0,
            };

            pub const ENUM_BODLEVEL = enum(u3) {
                ///  Brown-out detection disabled
                DISABLED = 0x7,
                ///  Brown-out detection level at VCC=2.7 V
                @"2V7" = 0x6,
                ///  Brown-out detection level at VCC=2.9 V
                @"2V9" = 0x5,
                ///  Brown-out detection level at VCC=3.0 V
                @"3V0" = 0x4,
                ///  Brown-out detection level at VCC=3.5 V
                @"3V5" = 0x3,
                ///  Brown-out detection level at VCC=3.6 V
                @"3V6" = 0x2,
                ///  Brown-out detection level at VCC=4.0 V
                @"4V0" = 0x1,
                ///  Brown-out detection level at VCC=4.3 V
                @"4V3" = 0x0,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock Source
                SUT_CKSEL: packed union {
                    raw: u6,
                    value: ENUM_SUT_CKSEL,
                },
                ///  Clock output on PORTC7
                CKOUT: u1,
                ///  Divide clock by 8 internally
                CKDIV8: u1,
            }),
            HIGH: mmio.Mmio(packed struct(u8) {
                ///  Boot Reset vector Enabled
                BOOTRST: u1,
                ///  Select Boot Size
                BOOTSZ: packed union {
                    raw: u2,
                    value: ENUM_BOOTSZ,
                },
                ///  Preserve EEPROM through the Chip Erase cycle
                EESAVE: u1,
                ///  Watchdog timer always on
                WDTON: u1,
                ///  Serial program downloading (SPI) enabled
                SPIEN: u1,
                ///  Reset Disabled (Enable PC6 as i/o pin)
                RSTDISBL: u1,
                ///  Debug Wire enable
                DWEN: u1,
            }),
            EXTENDED: mmio.Mmio(packed struct(u8) {
                ///  Brown-out Detector trigger level
                BODLEVEL: packed union {
                    raw: u3,
                    value: ENUM_BODLEVEL,
                },
                ///  Hardware Boot Enable
                HWBE: u1,
                padding: u4,
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
            pub const PORTC = extern struct {
                ///  Port C Input Pins
                PINC: mmio.Mmio(packed struct(u8) {
                    ///  Port C Input Pins bits
                    PINC: u3,
                    reserved4: u1,
                    ///  Port C Input Pins bits
                    PINC: u4,
                }),
                ///  Port C Data Direction Register
                DDRC: mmio.Mmio(packed struct(u8) {
                    ///  Port C Data Direction Register bits
                    DDC: u3,
                    reserved4: u1,
                    ///  Port C Data Direction Register bits
                    DDC: u4,
                }),
                ///  Port C Data Register
                PORTC: mmio.Mmio(packed struct(u8) {
                    ///  Port C Data Register bits
                    PORTC: u3,
                    reserved4: u1,
                    ///  Port C Data Register bits
                    PORTC: u4,
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
            ///  EEPROM Address Register Low Bytes
            EEAR: u16,
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
                    PSRSYNC: u1,
                    reserved7: u6,
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
                TCNT0: u8,
                ///  Timer/Counter0 Output Compare Register
                OCR0A: u8,
                ///  Timer/Counter0 Output Compare Register
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
                ///  Timer/Counter1 Interrupt Flag register
                TIFR1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Flag
                    TOV1: u1,
                    ///  Output Compare Flag 1A
                    OCF1A: u1,
                    ///  Output Compare Flag 1B
                    OCF1B: u1,
                    ///  Output Compare Flag 1C
                    OCF1C: u1,
                    reserved5: u1,
                    ///  Input Capture Flag 1
                    ICF1: u1,
                    padding: u2,
                }),
                reserved57: [56]u8,
                ///  Timer/Counter1 Interrupt Mask Register
                TIMSK1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Interrupt Enable
                    TOIE1: u1,
                    ///  Timer/Counter1 Output Compare A Match Interrupt Enable
                    OCIE1A: u1,
                    ///  Timer/Counter1 Output Compare B Match Interrupt Enable
                    OCIE1B: u1,
                    ///  Timer/Counter1 Output Compare C Match Interrupt Enable
                    OCIE1C: u1,
                    reserved5: u1,
                    ///  Timer/Counter1 Input Capture Interrupt Enable
                    ICIE1: u1,
                    padding: u2,
                }),
                reserved74: [16]u8,
                ///  Timer/Counter1 Control Register A
                TCCR1A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM1: u2,
                    ///  Compare Output Mode 1C, bits
                    COM1C: u2,
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
                ///  Timer/Counter 1 Control Register C
                TCCR1C: mmio.Mmio(packed struct(u8) {
                    reserved5: u5,
                    ///  Force Output Compare 1C
                    FOC1C: u1,
                    ///  Force Output Compare 1B
                    FOC1B: u1,
                    ///  Force Output Compare 1A
                    FOC1A: u1,
                }),
                reserved78: [1]u8,
                ///  Timer/Counter1 Bytes
                TCNT1: u16,
                ///  Timer/Counter1 Input Capture Register Bytes
                ICR1: u16,
                ///  Timer/Counter1 Output Compare Register A Bytes
                OCR1A: u16,
                ///  Timer/Counter1 Output Compare Register B Bytes
                OCR1B: u16,
                ///  Timer/Counter1 Output Compare Register C Bytes
                OCR1C: u16,
            };
        };

        ///  Phase Locked Loop
        pub const PLL = extern struct {
            pub const PLL_INPUT_PRESCALER = enum(u3) {
                ///  Clock/4
                CLOCK_4 = 0x3,
                ///  Clock/8
                CLOCK_8 = 0x5,
                _,
            };

            ///  PLL Status and Control register
            PLLCSR: mmio.Mmio(packed struct(u8) {
                ///  PLL Lock Status Bit
                PLOCK: u1,
                ///  PLL Enable Bit
                PLLE: u1,
                ///  PLL prescaler Bits
                PLLP: packed union {
                    raw: u3,
                    value: PLL_INPUT_PRESCALER,
                },
                padding: u3,
            }),
        };

        ///  USB Device Registers
        pub const USB_DEVICE = extern struct {
            ///  Regulator Control Register
            REGCR: mmio.Mmio(packed struct(u8) {
                ///  Regulator Disable
                REGDIS: u1,
                padding: u7,
            }),
            reserved117: [116]u8,
            ///  USB General Control Register
            USBCON: mmio.Mmio(packed struct(u8) {
                reserved5: u5,
                ///  Freeze USB Clock Bit
                FRZCLK: u1,
                reserved7: u1,
                ///  USB macro Enable Bit
                USBE: u1,
            }),
            reserved125: [7]u8,
            ///  USB Device Control Registers
            UDCON: mmio.Mmio(packed struct(u8) {
                ///  Detach Bit
                DETACH: u1,
                ///  Remote Wake-up Bit
                RMWKUP: u1,
                ///  USB Reset CPU Bit
                RSTCPU: u1,
                padding: u5,
            }),
            ///  USB Device Interrupt Register
            UDINT: mmio.Mmio(packed struct(u8) {
                ///  Suspend Interrupt Flag
                SUSPI: u1,
                reserved2: u1,
                ///  Start Of Frame Interrupt Flag
                SOFI: u1,
                ///  End Of Reset Interrupt Flag
                EORSTI: u1,
                ///  Wake-up CPU Interrupt Flag
                WAKEUPI: u1,
                ///  End Of Resume Interrupt Flag
                EORSMI: u1,
                ///  Upstream Resume Interrupt Flag
                UPRSMI: u1,
                padding: u1,
            }),
            ///  USB Device Interrupt Enable Register
            UDIEN: mmio.Mmio(packed struct(u8) {
                ///  Suspend Interrupt Enable Bit
                SUSPE: u1,
                reserved2: u1,
                ///  Start Of Frame Interrupt Enable Bit
                SOFE: u1,
                ///  End Of Reset Interrupt Enable Bit
                EORSTE: u1,
                ///  Wake-up CPU Interrupt Enable Bit
                WAKEUPE: u1,
                ///  End Of Resume Interrupt Enable Bit
                EORSME: u1,
                ///  Upstream Resume Interrupt Enable Bit
                UPRSME: u1,
                padding: u1,
            }),
            ///  USB Device Address Register
            UDADDR: mmio.Mmio(packed struct(u8) {
                ///  USB Address Bits
                UADD: u7,
                ///  Address Enable Bit
                ADDEN: u1,
            }),
            ///  USB Device Frame Number High Register
            UDFNUM: mmio.Mmio(packed struct(u16) {
                ///  Frame Number Upper Flag
                FNUM: u11,
                padding: u5,
            }),
            ///  USB Device Micro Frame Number
            UDMFN: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  Frame Number CRC Error Flag
                FNCERR: u1,
                padding: u3,
            }),
            reserved133: [1]u8,
            ///  USB Endpoint Interrupt Register
            UEINTX: mmio.Mmio(packed struct(u8) {
                ///  Transmitter Ready Interrupt Flag
                TXINI: u1,
                ///  STALLEDI Interrupt Flag
                STALLEDI: u1,
                ///  Received OUT Data Interrupt Flag
                RXOUTI: u1,
                ///  Received SETUP Interrupt Flag
                RXSTPI: u1,
                ///  NAK OUT Received Interrupt Flag
                NAKOUTI: u1,
                ///  Read/Write Allowed Flag
                RWAL: u1,
                ///  NAK IN Received Interrupt Flag
                NAKINI: u1,
                ///  FIFO Control Bit
                FIFOCON: u1,
            }),
            ///  USB Endpoint Number
            UENUM: mmio.Mmio(packed struct(u8) {
                ///  Endpoint Number bits
                EPNUM: u3,
                padding: u5,
            }),
            ///  USB Endpoint Reset Register
            UERST: mmio.Mmio(packed struct(u8) {
                ///  Endpoint FIFO Reset Bits
                EPRST: u5,
                padding: u3,
            }),
            ///  USB Endpoint Control Register
            UECONX: mmio.Mmio(packed struct(u8) {
                ///  Endpoint Enable Bit
                EPEN: u1,
                reserved3: u2,
                ///  Reset Data Toggle Bit
                RSTDT: u1,
                ///  STALL Request Clear Handshake Bit
                STALLRQC: u1,
                ///  STALL Request Handshake Bit
                STALLRQ: u1,
                padding: u2,
            }),
            ///  USB Endpoint Configuration 0 Register
            UECFG0X: mmio.Mmio(packed struct(u8) {
                ///  Endpoint Direction Bit
                EPDIR: u1,
                reserved6: u5,
                ///  Endpoint Type Bits
                EPTYPE: u2,
            }),
            ///  USB Endpoint Configuration 1 Register
            UECFG1X: mmio.Mmio(packed struct(u8) {
                reserved1: u1,
                ///  Endpoint Allocation Bit
                ALLOC: u1,
                ///  Endpoint Bank Bits
                EPBK: u2,
                ///  Endpoint Size Bits
                EPSIZE: u3,
                padding: u1,
            }),
            ///  USB Endpoint Status 0 Register
            UESTA0X: mmio.Mmio(packed struct(u8) {
                ///  Busy Bank Flag
                NBUSYBK: u2,
                ///  Data Toggle Sequencing Flag
                DTSEQ: u2,
                reserved5: u1,
                ///  Underflow Error Interrupt Flag
                UNDERFI: u1,
                ///  Overflow Error Interrupt Flag
                OVERFI: u1,
                ///  Configuration Status Flag
                CFGOK: u1,
            }),
            ///  USB Endpoint Status 1 Register
            UESTA1X: mmio.Mmio(packed struct(u8) {
                ///  Current Bank
                CURRBK: u2,
                ///  Control Direction
                CTRLDIR: u1,
                padding: u5,
            }),
            ///  USB Endpoint Interrupt Enable Register
            UEIENX: mmio.Mmio(packed struct(u8) {
                ///  Transmitter Ready Interrupt Enable Flag
                TXINE: u1,
                ///  Stalled Interrupt Enable Flag
                STALLEDE: u1,
                ///  Received OUT Data Interrupt Enable Flag
                RXOUTE: u1,
                ///  Received SETUP Interrupt Enable Flag
                RXSTPE: u1,
                ///  NAK OUT Interrupt Enable Bit
                NAKOUTE: u1,
                reserved6: u1,
                ///  NAK IN Interrupt Enable Bit
                NAKINE: u1,
                ///  Flow Error Interrupt Enable Flag
                FLERRE: u1,
            }),
            ///  USB Data Endpoint
            UEDATX: mmio.Mmio(packed struct(u8) {
                ///  Data bits
                DAT: u8,
            }),
            ///  USB Endpoint Byte Count Register
            UEBCLX: mmio.Mmio(packed struct(u8) {
                ///  Byte Count bits
                BYCT: u8,
            }),
            reserved145: [1]u8,
            ///  USB Endpoint Number Interrupt Register
            UEINT: mmio.Mmio(packed struct(u8) {
                ///  Byte Count bits
                EPINT: u5,
                padding: u3,
            }),
            reserved152: [6]u8,
            ///  USB Software Output Enable register
            UPOE: mmio.Mmio(packed struct(u8) {
                ///  D- Input value
                DMI: u1,
                ///  D+ Input value
                DPI: u1,
                reserved4: u2,
                ///  USB direct drive values
                UPDRV: u2,
                ///  USB Buffers Direct Drive enable configuration
                UPWE: u2,
            }),
        };

        ///  CPU Registers
        pub const CPU = extern struct {
            ///  Oscillator Calibration Values
            pub const OSCCAL_VALUE_ADDRESSES = enum(u1) {
                ///  8.0 MHz
                @"8_0_MHz" = 0x0,
                _,
            };

            pub const CPU_SLEEP_MODE_3BITS = enum(u3) {
                ///  Idle
                IDLE = 0x0,
                ///  Reserved
                VAL_0x01 = 0x1,
                ///  Power Down
                PDOWN = 0x2,
                ///  Power Save
                PSAVE = 0x3,
                ///  Reserved
                VAL_0x04 = 0x4,
                ///  Reserved
                VAL_0x05 = 0x5,
                ///  Standby
                STDBY = 0x6,
                ///  Extended Standby
                ESTDBY = 0x7,
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
            reserved12: [11]u8,
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
            reserved19: [5]u8,
            ///  debugWire communication register
            DWDR: u8,
            reserved21: [1]u8,
            ///  Sleep Mode Control Register
            SMCR: mmio.Mmio(packed struct(u8) {
                ///  Sleep Enable
                SE: u1,
                ///  Sleep Mode Select bits
                SM: packed union {
                    raw: u3,
                    value: CPU_SLEEP_MODE_3BITS,
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
                reserved5: u1,
                ///  USB reset flag
                USBRF: u1,
                padding: u2,
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
                padding: u3,
            }),
            reserved30: [6]u8,
            ///  Extended Indirect Register
            EIND: u8,
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
            reserved35: [1]u8,
            CLKPR: mmio.Mmio(packed struct(u8) {
                CLKPS: u4,
                reserved7: u3,
                CLKPCE: u1,
            }),
            reserved38: [2]u8,
            ///  Power Reduction Register0
            PRR0: mmio.Mmio(packed struct(u8) {
                reserved2: u2,
                ///  Power Reduction Serial Peripheral Interface
                PRSPI: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                reserved5: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                padding: u2,
            }),
            ///  Power Reduction Register1
            PRR1: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction USART1
                PRUSART1: u1,
                reserved7: u6,
                ///  Power Reduction USB
                PRUSB: u1,
            }),
            ///  Oscillator Calibration Value
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
            reserved146: [105]u8,
            CLKSEL0: mmio.Mmio(packed struct(u8) {
                CLKS: u1,
                reserved2: u1,
                EXTE: u1,
                RCE: u1,
                EXSUT: u2,
                RCSUT: u2,
            }),
            CLKSEL1: mmio.Mmio(packed struct(u8) {
                EXCKSEL: u4,
                RCCKSEL: u4,
            }),
            CLKSTA: mmio.Mmio(packed struct(u8) {
                EXTON: u1,
                RCON: u1,
                padding: u6,
            }),
        };

        ///  External Interrupts
        pub const EXINT = extern struct {
            ///  Pin Change Interrupt Flag Register
            PCIFR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Flags
                PCIF: u2,
                padding: u6,
            }),
            ///  External Interrupt Flag Register
            EIFR: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Flags
                INTF: u8,
            }),
            ///  External Interrupt Mask Register
            EIMSK: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Request 7 Enable
                INT: u8,
            }),
            reserved45: [42]u8,
            ///  Pin Change Interrupt Control Register
            PCICR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Enables
                PCIE: u2,
                padding: u6,
            }),
            ///  External Interrupt Control Register A
            EICRA: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Sense Control Bit
                ISC0: u2,
                ///  External Interrupt Sense Control Bit
                ISC1: u2,
                ///  External Interrupt Sense Control Bit
                ISC2: u2,
                ///  External Interrupt Sense Control Bit
                ISC3: u2,
            }),
            ///  External Interrupt Control Register B
            EICRB: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt 7-4 Sense Control Bit
                ISC4: u2,
                ///  External Interrupt 7-4 Sense Control Bit
                ISC5: u2,
                ///  External Interrupt 7-4 Sense Control Bit
                ISC6: u2,
                ///  External Interrupt 7-4 Sense Control Bit
                ISC7: u2,
            }),
            ///  Pin Change Mask Register 0
            PCMSK0: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Masks
                PCINT: u8,
            }),
            ///  Pin Change Mask Register 1
            PCMSK1: mmio.Mmio(packed struct(u8) {
                PCINT: u5,
                padding: u3,
            }),
        };

        ///  USART
        pub const USART = struct {
            ///  USART
            pub const USART1 = extern struct {
                ///  USART Control and Status Register A
                UCSR1A: mmio.Mmio(packed struct(u8) {
                    ///  Multi-processor Communication Mode
                    MPCM1: u1,
                    ///  Double the USART transmission speed
                    U2X1: u1,
                    ///  Parity Error
                    UPE1: u1,
                    ///  Data overRun
                    DOR1: u1,
                    ///  Framing Error
                    FE1: u1,
                    ///  USART Data Register Empty
                    UDRE1: u1,
                    ///  USART Transmitt Complete
                    TXC1: u1,
                    ///  USART Receive Complete
                    RXC1: u1,
                }),
                ///  USART Control and Status Register B
                UCSR1B: mmio.Mmio(packed struct(u8) {
                    ///  Transmit Data Bit 8
                    TXB81: u1,
                    ///  Receive Data Bit 8
                    RXB81: u1,
                    ///  Character Size
                    UCSZ12: u1,
                    ///  Transmitter Enable
                    TXEN1: u1,
                    ///  Receiver Enable
                    RXEN1: u1,
                    ///  USART Data register Empty Interrupt Enable
                    UDRIE1: u1,
                    ///  TX Complete Interrupt Enable
                    TXCIE1: u1,
                    ///  RX Complete Interrupt Enable
                    RXCIE1: u1,
                }),
                ///  USART Control and Status Register C
                UCSR1C: mmio.Mmio(packed struct(u8) {
                    ///  Clock Polarity
                    UCPOL1: u1,
                    ///  Character Size
                    UCSZ1: u2,
                    ///  Stop Bit Select
                    USBS1: u1,
                    ///  Parity Mode Bits
                    UPM1: u2,
                    ///  USART Mode Select
                    UMSEL1: u2,
                }),
                ///  USART Control and Status Register D
                UCSR1D: mmio.Mmio(packed struct(u8) {
                    ///  RTS Enable
                    RTSEN: u1,
                    ///  CTS Enable
                    CTSEN: u1,
                    padding: u6,
                }),
                ///  USART Baud Rate Register Bytes
                UBRR1: u16,
                ///  USART I/O Data Register
                UDR1: u8,
            };
        };

        ///  Watchdog Timer
        pub const WDT = extern struct {
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
            reserved2: [1]u8,
            ///  Watchdog Timer Clock Divider
            WDTCKD: mmio.Mmio(packed struct(u8) {
                ///  Watchdog Timer Clock Dividers
                WCLKD: u2,
                ///  Watchdog Early Warning Interrupt Enable
                WDEWIE: u1,
                ///  Watchdog Early Warning Interrupt Flag
                WDEWIF: u1,
                padding: u4,
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

            pub const ANALOG_COMP_SELECTION_BITS = enum(u3) {
                ///  AIN1
                AIN1 = 0x0,
                ///  AIN2
                AIN2 = 0x1,
                ///  AIN3
                AIN3 = 0x2,
                ///  AIN4
                AIN4 = 0x3,
                ///  AIN5
                AIN5 = 0x4,
                ///  AIN6
                AIN6 = 0x5,
                _,
            };

            ///  Analog Comparator Control And Status Register
            ACSR: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator Interrupt Mode Select bits
                ACIS: packed union {
                    raw: u2,
                    value: ANALOG_COMP_INTERRUPT,
                },
                ///  Analog Comparator Input Capture Enable
                ACIC: u1,
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
            reserved45: [44]u8,
            ///  Analog Comparator Input Multiplexer
            ACMUX: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator Selection Bits
                CMUX: packed union {
                    raw: u3,
                    value: ANALOG_COMP_SELECTION_BITS,
                },
                padding: u5,
            }),
            reserved47: [1]u8,
            DIDR1: mmio.Mmio(packed struct(u8) {
                ///  AIN0 Digital Input Disable
                AIN0D: u1,
                ///  AIN1 Digital Input Disable
                AIN1D: u1,
                ///  AIN2 Digital Input Disable
                AIN2D: u1,
                ///  AIN3 Digital Input Disable
                AIN3D: u1,
                ///  AIN4 Digital Input Disable
                AIN4D: u1,
                ///  AIN5 Digital Input Disable
                AIN5D: u1,
                ///  AIN6 Digital Input Disable
                AIN6D: u1,
                ///  AIN7 Digital Input Disable
                AIN7D: u1,
            }),
        };
    };
};
