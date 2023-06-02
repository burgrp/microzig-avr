const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATmega1280 = struct {
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
            ///  Pin Change Interrupt Request 2
            PCINT2: Handler = unhandled,
            ///  Watchdog Time-out Interrupt
            WDT: Handler = unhandled,
            ///  Timer/Counter2 Compare Match A
            TIMER2_COMPA: Handler = unhandled,
            ///  Timer/Counter2 Compare Match B
            TIMER2_COMPB: Handler = unhandled,
            ///  Timer/Counter2 Overflow
            TIMER2_OVF: Handler = unhandled,
            ///  Timer/Counter1 Capture Event
            TIMER1_CAPT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer/Counter1 Compare Match B
            TIMER1_COMPB: Handler = unhandled,
            ///  Timer/Counter1 Compare Match C
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
            ///  USART0, Rx Complete
            USART0_RX: Handler = unhandled,
            ///  USART0 Data register Empty
            USART0_UDRE: Handler = unhandled,
            ///  USART0, Tx Complete
            USART0_TX: Handler = unhandled,
            ///  Analog Comparator
            ANALOG_COMP: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  EEPROM Ready
            EE_READY: Handler = unhandled,
            ///  Timer/Counter3 Capture Event
            TIMER3_CAPT: Handler = unhandled,
            ///  Timer/Counter3 Compare Match A
            TIMER3_COMPA: Handler = unhandled,
            ///  Timer/Counter3 Compare Match B
            TIMER3_COMPB: Handler = unhandled,
            ///  Timer/Counter3 Compare Match C
            TIMER3_COMPC: Handler = unhandled,
            ///  Timer/Counter3 Overflow
            TIMER3_OVF: Handler = unhandled,
            ///  USART1, Rx Complete
            USART1_RX: Handler = unhandled,
            ///  USART1 Data register Empty
            USART1_UDRE: Handler = unhandled,
            ///  USART1, Tx Complete
            USART1_TX: Handler = unhandled,
            ///  2-wire Serial Interface
            TWI: Handler = unhandled,
            ///  Store Program Memory Read
            SPM_READY: Handler = unhandled,
            ///  Timer/Counter4 Capture Event
            TIMER4_CAPT: Handler = unhandled,
            ///  Timer/Counter4 Compare Match A
            TIMER4_COMPA: Handler = unhandled,
            ///  Timer/Counter4 Compare Match B
            TIMER4_COMPB: Handler = unhandled,
            ///  Timer/Counter4 Compare Match C
            TIMER4_COMPC: Handler = unhandled,
            ///  Timer/Counter4 Overflow
            TIMER4_OVF: Handler = unhandled,
            ///  Timer/Counter5 Capture Event
            TIMER5_CAPT: Handler = unhandled,
            ///  Timer/Counter5 Compare Match A
            TIMER5_COMPA: Handler = unhandled,
            ///  Timer/Counter5 Compare Match B
            TIMER5_COMPB: Handler = unhandled,
            ///  Timer/Counter5 Compare Match C
            TIMER5_COMPC: Handler = unhandled,
            ///  Timer/Counter5 Overflow
            TIMER5_OVF: Handler = unhandled,
            ///  USART2, Rx Complete
            USART2_RX: Handler = unhandled,
            ///  USART2 Data register Empty
            USART2_UDRE: Handler = unhandled,
            ///  USART2, Tx Complete
            USART2_TX: Handler = unhandled,
            ///  USART3, Rx Complete
            USART3_RX: Handler = unhandled,
            ///  USART3 Data register Empty
            USART3_UDRE: Handler = unhandled,
            ///  USART3, Tx Complete
            USART3_TX: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @intToPtr(*volatile types.peripherals.FUSE, 0x0);
            ///  Lockbits
            pub const LOCKBIT = @intToPtr(*volatile types.peripherals.LOCKBIT, 0x0);
            ///  I/O Port
            pub const PORTA = @intToPtr(*volatile types.peripherals.PORT.PORTA, 0x20);
            ///  I/O Port
            pub const PORTB = @intToPtr(*volatile types.peripherals.PORT.PORTB, 0x23);
            ///  I/O Port
            pub const PORTC = @intToPtr(*volatile types.peripherals.PORT.PORTC, 0x26);
            ///  I/O Port
            pub const PORTD = @intToPtr(*volatile types.peripherals.PORT.PORTD, 0x29);
            ///  I/O Port
            pub const PORTE = @intToPtr(*volatile types.peripherals.PORT.PORTE, 0x2c);
            ///  I/O Port
            pub const PORTF = @intToPtr(*volatile types.peripherals.PORT.PORTF, 0x2f);
            ///  I/O Port
            pub const PORTG = @intToPtr(*volatile types.peripherals.PORT.PORTG, 0x32);
            ///  Timer/Counter, 8-bit
            pub const TC0 = @intToPtr(*volatile types.peripherals.TC8.TC0, 0x35);
            ///  Timer/Counter, 16-bit
            pub const TC1 = @intToPtr(*volatile types.peripherals.TC16.TC1, 0x36);
            ///  Timer/Counter, 8-bit Async
            pub const TC2 = @intToPtr(*volatile types.peripherals.TC8_ASYNC.TC2, 0x37);
            ///  Timer/Counter, 16-bit
            pub const TC3 = @intToPtr(*volatile types.peripherals.TC16.TC3, 0x38);
            ///  Timer/Counter, 16-bit
            pub const TC4 = @intToPtr(*volatile types.peripherals.TC16.TC4, 0x39);
            ///  Timer/Counter, 16-bit
            pub const TC5 = @intToPtr(*volatile types.peripherals.TC16.TC5, 0x3a);
            ///  External Interrupts
            pub const EXINT = @intToPtr(*volatile types.peripherals.EXINT, 0x3b);
            ///  CPU Registers
            pub const CPU = @intToPtr(*volatile types.peripherals.CPU, 0x3e);
            ///  EEPROM
            pub const EEPROM = @intToPtr(*volatile types.peripherals.EEPROM, 0x3f);
            ///  Serial Peripheral Interface
            pub const SPI = @intToPtr(*volatile types.peripherals.SPI, 0x4c);
            ///  Analog Comparator
            pub const AC = @intToPtr(*volatile types.peripherals.AC, 0x50);
            ///  JTAG Interface
            pub const JTAG = @intToPtr(*volatile types.peripherals.JTAG, 0x51);
            ///  Bootloader
            pub const BOOT_LOAD = @intToPtr(*volatile types.peripherals.BOOT_LOAD, 0x57);
            ///  Watchdog Timer
            pub const WDT = @intToPtr(*volatile types.peripherals.WDT, 0x60);
            ///  Analog-to-Digital Converter
            pub const ADC = @intToPtr(*volatile types.peripherals.ADC, 0x78);
            ///  Two Wire Serial Interface
            pub const TWI = @intToPtr(*volatile types.peripherals.TWI, 0xb8);
            ///  USART
            pub const USART0 = @intToPtr(*volatile types.peripherals.USART.USART0, 0xc0);
            ///  USART
            pub const USART1 = @intToPtr(*volatile types.peripherals.USART.USART1, 0xc8);
            ///  USART
            pub const USART2 = @intToPtr(*volatile types.peripherals.USART.USART2, 0xd0);
            ///  I/O Port
            pub const PORTH = @intToPtr(*volatile types.peripherals.PORT.PORTH, 0x100);
            ///  I/O Port
            pub const PORTJ = @intToPtr(*volatile types.peripherals.PORT.PORTJ, 0x103);
            ///  I/O Port
            pub const PORTK = @intToPtr(*volatile types.peripherals.PORT.PORTK, 0x106);
            ///  I/O Port
            pub const PORTL = @intToPtr(*volatile types.peripherals.PORT.PORTL, 0x109);
            ///  USART
            pub const USART3 = @intToPtr(*volatile types.peripherals.USART.USART3, 0x130);
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
                ///  Int. 128kHz RC Osc.; Start-up time: 6 CK + 0 ms
                INTRCOSC_128KHZ_6CK_0MS = 0x3,
                ///  Int. 128kHz RC Osc.; Start-up time: 6 CK + 4 ms
                INTRCOSC_128KHZ_6CK_4MS = 0x13,
                ///  Int. 128kHz RC Osc.; Start-up time: 6 CK + 64 ms
                INTRCOSC_128KHZ_6CK_64MS = 0x23,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 0 ms
                EXTLOFXTAL_1KCK_0MS = 0x4,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 4.1 ms
                EXTLOFXTAL_1KCK_4MS1 = 0x14,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 65 ms
                EXTLOFXTAL_1KCK_65MS = 0x24,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 0 ms
                EXTLOFXTAL_32KCK_0MS = 0x5,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 4.1 ms
                EXTLOFXTAL_32KCK_4MS1 = 0x15,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 65 ms
                EXTLOFXTAL_32KCK_65MS = 0x25,
                ///  Full Swing Oscillator; Start-up time: 258 CK + 4.1 ms; Ceramic res.; fast rising power
                FSOSC_258CK_4MS1_CRES_FASTPWR = 0x6,
                ///  Full Swing Oscillator; Start-up time: 258 CK + 65 ms; Ceramic res.; slowly rising power
                FSOSC_258CK_65MS_CRES_SLOWPWR = 0x16,
                ///  Full Swing Oscillator; Start-up time: 1K CK + 0 ms; Ceramic res.; BOD enable
                FSOSC_1KCK_0MS_CRES_BODEN = 0x26,
                ///  Full Swing Oscillator; Start-up time: 1K CK + 4.1 ms; Ceramic res.; fast rising power
                FSOSC_1KCK_4MS1_CRES_FASTPWR = 0x36,
                ///  Full Swing Oscillator; Start-up time: 1K CK + 65 ms; Ceramic res.; slowly rising power
                FSOSC_1KCK_65MS_CRES_SLOWPWR = 0x7,
                ///  Full Swing Oscillator; Start-up time: 16K CK + 0 ms; Crystal Osc.; BOD enabled
                FSOSC_16KCK_0MS_XOSC_BODEN = 0x17,
                ///  Full Swing Oscillator; Start-up time: 16K CK + 4.1 ms; Crystal Osc.; fast rising power
                FSOSC_16KCK_4MS1_XOSC_FASTPWR = 0x27,
                ///  Full Swing Oscillator; Start-up time: 16K CK + 65 ms; Crystal Osc.; slowly rising power
                FSOSC_16KCK_65MS_XOSC_SLOWPWR = 0x37,
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
                ///  Boot Flash size=512 words start address=$FE00
                @"512W_FE00" = 0x3,
                ///  Boot Flash size=1024 words start address=$FC00
                @"1024W_FC00" = 0x2,
                ///  Boot Flash size=2048 words start address=$F800
                @"2048W_F800" = 0x1,
                ///  Boot Flash size=4096 words start address=$F000
                @"4096W_F000" = 0x0,
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
                _,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock Source
                SUT_CKSEL: packed union {
                    raw: u6,
                    value: ENUM_SUT_CKSEL,
                },
                ///  Clock output on PORTE7
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
                ///  JTAG Interface Enabled
                JTAGEN: u1,
                ///  On-Chip Debug Enabled
                OCDEN: u1,
            }),
            EXTENDED: mmio.Mmio(packed struct(u8) {
                ///  Brown-out Detector trigger level
                BODLEVEL: packed union {
                    raw: u3,
                    value: ENUM_BODLEVEL,
                },
                padding: u5,
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
            reserved43: [42]u8,
            ///  ADC Control and Status Register B
            ADCSRB: mmio.Mmio(packed struct(u8) {
                reserved6: u6,
                ///  Analog Comparator Multiplexer Enable
                ACME: u1,
                padding: u1,
            }),
            reserved47: [3]u8,
            ///  Digital Input Disable Register 1
            DIDR1: mmio.Mmio(packed struct(u8) {
                ///  AIN0 Digital Input Disable
                AIN0D: u1,
                ///  AIN1 Digital Input Disable
                AIN1D: u1,
                padding: u6,
            }),
        };

        ///  USART
        pub const USART = struct {
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

            pub const COMM_USART_MODE_2BIT = enum(u2) {
                ///  Asynchronous USART
                ASYNCHRONOUS_USART = 0x0,
                ///  Synchronous USART
                SYNCHRONOUS_USART = 0x1,
                ///  Master SPI
                MASTER_SPI = 0x3,
                _,
            };

            ///  USART
            pub const USART0 = extern struct {
                ///  USART Control and Status Register A
                UCSR0A: mmio.Mmio(packed struct(u8) {
                    ///  Multi-processor Communication Mode
                    MPCM0: u1,
                    ///  Double the USART transmission speed
                    U2X0: u1,
                    ///  Parity Error
                    UPE0: u1,
                    ///  Data overRun
                    DOR0: u1,
                    ///  Framing Error
                    FE0: u1,
                    ///  USART Data Register Empty
                    UDRE0: u1,
                    ///  USART Transmitt Complete
                    TXC0: u1,
                    ///  USART Receive Complete
                    RXC0: u1,
                }),
                ///  USART Control and Status Register B
                UCSR0B: mmio.Mmio(packed struct(u8) {
                    ///  Transmit Data Bit 8
                    TXB80: u1,
                    ///  Receive Data Bit 8
                    RXB80: u1,
                    ///  Character Size
                    UCSZ02: u1,
                    ///  Transmitter Enable
                    TXEN0: u1,
                    ///  Receiver Enable
                    RXEN0: u1,
                    ///  USART Data register Empty Interrupt Enable
                    UDRIE0: u1,
                    ///  TX Complete Interrupt Enable
                    TXCIE0: u1,
                    ///  RX Complete Interrupt Enable
                    RXCIE0: u1,
                }),
                ///  USART Control and Status Register C
                UCSR0C: mmio.Mmio(packed struct(u8) {
                    ///  Clock Polarity
                    UCPOL0: u1,
                    ///  Character Size
                    UCSZ0: u2,
                    ///  Stop Bit Select
                    USBS0: packed union {
                        raw: u1,
                        value: COMM_STOP_BIT_SEL,
                    },
                    ///  Parity Mode Bits
                    UPM0: packed union {
                        raw: u2,
                        value: COMM_UPM_PARITY_MODE,
                    },
                    ///  USART Mode Select
                    UMSEL0: packed union {
                        raw: u2,
                        value: COMM_USART_MODE_2BIT,
                    },
                }),
                reserved4: [1]u8,
                ///  USART Baud Rate Register Bytes
                UBRR0: u16,
                ///  USART I/O Data Register
                UDR0: u8,
            };

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
                    USBS1: packed union {
                        raw: u1,
                        value: COMM_STOP_BIT_SEL,
                    },
                    ///  Parity Mode Bits
                    UPM1: packed union {
                        raw: u2,
                        value: COMM_UPM_PARITY_MODE,
                    },
                    ///  USART Mode Select
                    UMSEL1: packed union {
                        raw: u2,
                        value: COMM_USART_MODE_2BIT,
                    },
                }),
                reserved4: [1]u8,
                ///  USART Baud Rate Register Bytes
                UBRR1: u16,
                ///  USART I/O Data Register
                UDR1: u8,
            };

            ///  USART
            pub const USART2 = extern struct {
                ///  USART Control and Status Register A
                UCSR2A: mmio.Mmio(packed struct(u8) {
                    ///  Multi-processor Communication Mode
                    MPCM2: u1,
                    ///  Double the USART transmission speed
                    U2X2: u1,
                    ///  Parity Error
                    UPE2: u1,
                    ///  Data overRun
                    DOR2: u1,
                    ///  Framing Error
                    FE2: u1,
                    ///  USART Data Register Empty
                    UDRE2: u1,
                    ///  USART Transmitt Complete
                    TXC2: u1,
                    ///  USART Receive Complete
                    RXC2: u1,
                }),
                ///  USART Control and Status Register B
                UCSR2B: mmio.Mmio(packed struct(u8) {
                    ///  Transmit Data Bit 8
                    TXB82: u1,
                    ///  Receive Data Bit 8
                    RXB82: u1,
                    ///  Character Size
                    UCSZ22: u1,
                    ///  Transmitter Enable
                    TXEN2: u1,
                    ///  Receiver Enable
                    RXEN2: u1,
                    ///  USART Data register Empty Interrupt Enable
                    UDRIE2: u1,
                    ///  TX Complete Interrupt Enable
                    TXCIE2: u1,
                    ///  RX Complete Interrupt Enable
                    RXCIE2: u1,
                }),
                ///  USART Control and Status Register C
                UCSR2C: mmio.Mmio(packed struct(u8) {
                    ///  Clock Polarity
                    UCPOL2: u1,
                    ///  Character Size
                    UCSZ2: u2,
                    ///  Stop Bit Select
                    USBS2: packed union {
                        raw: u1,
                        value: COMM_STOP_BIT_SEL,
                    },
                    ///  Parity Mode Bits
                    UPM2: packed union {
                        raw: u2,
                        value: COMM_UPM_PARITY_MODE,
                    },
                    ///  USART Mode Select
                    UMSEL2: packed union {
                        raw: u2,
                        value: COMM_USART_MODE_2BIT,
                    },
                }),
                reserved4: [1]u8,
                ///  USART Baud Rate Register Bytes
                UBRR2: u16,
                ///  USART I/O Data Register
                UDR2: u8,
            };

            ///  USART
            pub const USART3 = extern struct {
                ///  USART Control and Status Register A
                UCSR3A: mmio.Mmio(packed struct(u8) {
                    ///  Multi-processor Communication Mode
                    MPCM3: u1,
                    ///  Double the USART transmission speed
                    U2X3: u1,
                    ///  Parity Error
                    UPE3: u1,
                    ///  Data overRun
                    DOR3: u1,
                    ///  Framing Error
                    FE3: u1,
                    ///  USART Data Register Empty
                    UDRE3: u1,
                    ///  USART Transmitt Complete
                    TXC3: u1,
                    ///  USART Receive Complete
                    RXC3: u1,
                }),
                ///  USART Control and Status Register B
                UCSR3B: mmio.Mmio(packed struct(u8) {
                    ///  Transmit Data Bit 8
                    TXB83: u1,
                    ///  Receive Data Bit 8
                    RXB83: u1,
                    ///  Character Size
                    UCSZ32: u1,
                    ///  Transmitter Enable
                    TXEN3: u1,
                    ///  Receiver Enable
                    RXEN3: u1,
                    ///  USART Data register Empty Interrupt Enable
                    UDRIE3: u1,
                    ///  TX Complete Interrupt Enable
                    TXCIE3: u1,
                    ///  RX Complete Interrupt Enable
                    RXCIE3: u1,
                }),
                ///  USART Control and Status Register C
                UCSR3C: mmio.Mmio(packed struct(u8) {
                    ///  Clock Polarity
                    UCPOL3: u1,
                    ///  Character Size
                    UCSZ3: u2,
                    ///  Stop Bit Select
                    USBS3: packed union {
                        raw: u1,
                        value: COMM_STOP_BIT_SEL,
                    },
                    ///  Parity Mode Bits
                    UPM3: packed union {
                        raw: u2,
                        value: COMM_UPM_PARITY_MODE,
                    },
                    ///  USART Mode Select
                    UMSEL3: packed union {
                        raw: u2,
                        value: COMM_USART_MODE_2BIT,
                    },
                }),
                reserved4: [1]u8,
                ///  USART Baud Rate Register Bytes
                UBRR3: u16,
                ///  USART I/O Data Register
                UDR3: u8,
            };
        };

        ///  Two Wire Serial Interface
        pub const TWI = extern struct {
            pub const COMM_TWI_PRESACLE = enum(u2) {
                ///  1
                @"1" = 0x0,
                ///  4
                @"4" = 0x1,
                ///  16
                @"16" = 0x2,
                ///  64
                @"64" = 0x3,
            };

            ///  TWI Bit Rate register
            TWBR: u8,
            ///  TWI Status Register
            TWSR: mmio.Mmio(packed struct(u8) {
                ///  TWI Prescaler
                TWPS: packed union {
                    raw: u2,
                    value: COMM_TWI_PRESACLE,
                },
                reserved3: u1,
                ///  TWI Status
                TWS: u5,
            }),
            ///  TWI (Slave) Address register
            TWAR: mmio.Mmio(packed struct(u8) {
                ///  TWI General Call Recognition Enable Bit
                TWGCE: u1,
                ///  TWI (Slave) Address register Bits
                TWA: u7,
            }),
            ///  TWI Data register
            TWDR: u8,
            ///  TWI Control Register
            TWCR: mmio.Mmio(packed struct(u8) {
                ///  TWI Interrupt Enable
                TWIE: u1,
                reserved2: u1,
                ///  TWI Enable Bit
                TWEN: u1,
                ///  TWI Write Collition Flag
                TWWC: u1,
                ///  TWI Stop Condition Bit
                TWSTO: u1,
                ///  TWI Start Condition Bit
                TWSTA: u1,
                ///  TWI Enable Acknowledge Bit
                TWEA: u1,
                ///  TWI Interrupt Flag
                TWINT: u1,
            }),
            ///  TWI (Slave) Address Mask Register
            TWAMR: mmio.Mmio(packed struct(u8) {
                reserved1: u1,
                TWAM: u7,
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
                ///  Input Pins, Port E
                PINE: u8,
                ///  Data Direction Register, Port E
                DDRE: u8,
                ///  Data Register, Port E
                PORTE: u8,
            };

            ///  I/O Port
            pub const PORTF = extern struct {
                ///  Input Pins, Port F
                PINF: u8,
                ///  Data Direction Register, Port F
                DDRF: u8,
                ///  Data Register, Port F
                PORTF: u8,
            };

            ///  I/O Port
            pub const PORTG = extern struct {
                ///  Input Pins, Port G
                PING: u8,
                ///  Data Direction Register, Port G
                DDRG: u8,
                ///  Data Register, Port G
                PORTG: u8,
            };

            ///  I/O Port
            pub const PORTH = extern struct {
                ///  PORT H Input Pins
                PINH: u8,
                ///  PORT H Data Direction Register
                DDRH: u8,
                ///  PORT H Data Register
                PORTH: u8,
            };

            ///  I/O Port
            pub const PORTJ = extern struct {
                ///  PORT J Input Pins
                PINJ: u8,
                ///  PORT J Data Direction Register
                DDRJ: u8,
                ///  PORT J Data Register
                PORTJ: u8,
            };

            ///  I/O Port
            pub const PORTK = extern struct {
                ///  PORT K Input Pins
                PINK: u8,
                ///  PORT K Data Direction Register
                DDRK: u8,
                ///  PORT K Data Register
                PORTK: u8,
            };

            ///  I/O Port
            pub const PORTL = extern struct {
                ///  PORT L Input Pins
                PINL: u8,
                ///  PORT L Data Direction Register
                DDRL: u8,
                ///  PORT L Data Register
                PORTL: u8,
            };
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

        ///  Timer/Counter, 8-bit Async
        pub const TC8_ASYNC = struct {
            pub const CLK_SEL_3BIT = enum(u3) {
                ///  No Clock Source (Stopped)
                NO_CLOCK_SOURCE_STOPPED = 0x0,
                ///  Running, No Prescaling
                RUNNING_NO_PRESCALING = 0x1,
                ///  Running, CLK/8
                RUNNING_CLK_8 = 0x2,
                ///  Running, CLK/32
                RUNNING_CLK_32 = 0x3,
                ///  Running, CLK/64
                RUNNING_CLK_64 = 0x4,
                ///  Running, CLK/128
                RUNNING_CLK_128 = 0x5,
                ///  Running, CLK/256
                RUNNING_CLK_256 = 0x6,
                ///  Running, CLK/1024
                RUNNING_CLK_1024 = 0x7,
            };

            ///  Timer/Counter, 8-bit Async
            pub const TC2 = extern struct {
                ///  Timer/Counter Interrupt Flag Register
                TIFR2: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter2 Overflow Flag
                    TOV2: u1,
                    ///  Output Compare Flag 2A
                    OCF2A: u1,
                    ///  Output Compare Flag 2B
                    OCF2B: u1,
                    padding: u5,
                }),
                reserved12: [11]u8,
                ///  General Timer Counter Control register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  Prescaler Reset Timer/Counter2
                    PSRASY: u1,
                    reserved7: u5,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                reserved57: [44]u8,
                ///  Timer/Counter Interrupt Mask register
                TIMSK2: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter2 Overflow Interrupt Enable
                    TOIE2: u1,
                    ///  Timer/Counter2 Output Compare Match A Interrupt Enable
                    OCIE2A: u1,
                    ///  Timer/Counter2 Output Compare Match B Interrupt Enable
                    OCIE2B: u1,
                    padding: u5,
                }),
                reserved121: [63]u8,
                ///  Timer/Counter2 Control Register A
                TCCR2A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Genration Mode
                    WGM2: u2,
                    reserved4: u2,
                    ///  Compare Output Mode bits
                    COM2B: u2,
                    ///  Compare Output Mode bits
                    COM2A: u2,
                }),
                ///  Timer/Counter2 Control Register B
                TCCR2B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select bits
                    CS2: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT,
                    },
                    ///  Waveform Generation Mode
                    WGM22: u1,
                    reserved6: u2,
                    ///  Force Output Compare B
                    FOC2B: u1,
                    ///  Force Output Compare A
                    FOC2A: u1,
                }),
                ///  Timer/Counter2
                TCNT2: u8,
                ///  Timer/Counter2 Output Compare Register A
                OCR2A: u8,
                ///  Timer/Counter2 Output Compare Register B
                OCR2B: u8,
                reserved127: [1]u8,
                ///  Asynchronous Status Register
                ASSR: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter Control Register2 Update Busy
                    TCR2BUB: u1,
                    ///  Timer/Counter Control Register2 Update Busy
                    TCR2AUB: u1,
                    ///  Output Compare Register 2 Update Busy
                    OCR2BUB: u1,
                    ///  Output Compare Register2 Update Busy
                    OCR2AUB: u1,
                    ///  Timer/Counter2 Update Busy
                    TCN2UB: u1,
                    ///  Asynchronous Timer/Counter2
                    AS2: u1,
                    ///  Enable External Clock Input
                    EXCLK: u1,
                    padding: u1,
                }),
            };
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
            pub const TC5 = extern struct {
                ///  Timer/Counter5 Interrupt Flag register
                TIFR5: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter5 Overflow Flag
                    TOV5: u1,
                    ///  Output Compare Flag 5A
                    OCF5A: u1,
                    ///  Output Compare Flag 5B
                    OCF5B: u1,
                    ///  Output Compare Flag 5C
                    OCF5C: u1,
                    reserved5: u1,
                    ///  Input Capture Flag 5
                    ICF5: u1,
                    padding: u2,
                }),
                reserved57: [56]u8,
                ///  Timer/Counter5 Interrupt Mask Register
                TIMSK5: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter5 Overflow Interrupt Enable
                    TOIE5: u1,
                    ///  Timer/Counter5 Output Compare A Match Interrupt Enable
                    OCIE5A: u1,
                    ///  Timer/Counter5 Output Compare B Match Interrupt Enable
                    OCIE5B: u1,
                    ///  Timer/Counter5 Output Compare C Match Interrupt Enable
                    OCIE5C: u1,
                    reserved5: u1,
                    ///  Timer/Counter5 Input Capture Interrupt Enable
                    ICIE5: u1,
                    padding: u2,
                }),
                reserved230: [172]u8,
                ///  Timer/Counter5 Control Register A
                TCCR5A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM5: u2,
                    ///  Compare Output Mode 5C, bits
                    COM5C: u2,
                    ///  Compare Output Mode 5B, bits
                    COM5B: u2,
                    ///  Compare Output Mode 1A, bits
                    COM5A: u2,
                }),
                ///  Timer/Counter5 Control Register B
                TCCR5B: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler source of Timer/Counter 5
                    CS5: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Waveform Generation Mode
                    WGM5: u2,
                    reserved6: u1,
                    ///  Input Capture 5 Edge Select
                    ICES5: u1,
                    ///  Input Capture 5 Noise Canceler
                    ICNC5: u1,
                }),
                ///  Timer/Counter 5 Control Register C
                TCCR5C: mmio.Mmio(packed struct(u8) {
                    reserved5: u5,
                    ///  Force Output Compare 5C
                    FOC5C: u1,
                    ///  Force Output Compare 5B
                    FOC5B: u1,
                    ///  Force Output Compare 5A
                    FOC5A: u1,
                }),
                reserved234: [1]u8,
                ///  Timer/Counter5 Bytes
                TCNT5: u16,
                ///  Timer/Counter5 Input Capture Register Bytes
                ICR5: u16,
                ///  Timer/Counter5 Output Compare Register A Bytes
                OCR5A: u16,
                ///  Timer/Counter5 Output Compare Register B Bytes
                OCR5B: u16,
                ///  Timer/Counter5 Output Compare Register B Bytes
                OCR5C: u16,
            };

            ///  Timer/Counter, 16-bit
            pub const TC4 = extern struct {
                ///  Timer/Counter4 Interrupt Flag register
                TIFR4: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter4 Overflow Flag
                    TOV4: u1,
                    ///  Output Compare Flag 4A
                    OCF4A: u1,
                    ///  Output Compare Flag 4B
                    OCF4B: u1,
                    ///  Output Compare Flag 4C
                    OCF4C: u1,
                    reserved5: u1,
                    ///  Input Capture Flag 4
                    ICF4: u1,
                    padding: u2,
                }),
                reserved57: [56]u8,
                ///  Timer/Counter4 Interrupt Mask Register
                TIMSK4: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter4 Overflow Interrupt Enable
                    TOIE4: u1,
                    ///  Timer/Counter4 Output Compare A Match Interrupt Enable
                    OCIE4A: u1,
                    ///  Timer/Counter4 Output Compare B Match Interrupt Enable
                    OCIE4B: u1,
                    ///  Timer/Counter4 Output Compare C Match Interrupt Enable
                    OCIE4C: u1,
                    reserved5: u1,
                    ///  Timer/Counter4 Input Capture Interrupt Enable
                    ICIE4: u1,
                    padding: u2,
                }),
                reserved103: [45]u8,
                ///  Timer/Counter4 Control Register A
                TCCR4A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM4: u2,
                    ///  Compare Output Mode 4C, bits
                    COM4C: u2,
                    ///  Compare Output Mode 4B, bits
                    COM4B: u2,
                    ///  Compare Output Mode 1A, bits
                    COM4A: u2,
                }),
                ///  Timer/Counter4 Control Register B
                TCCR4B: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler source of Timer/Counter 4
                    CS4: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Waveform Generation Mode
                    WGM4: u2,
                    reserved6: u1,
                    ///  Input Capture 4 Edge Select
                    ICES4: u1,
                    ///  Input Capture 4 Noise Canceler
                    ICNC4: u1,
                }),
                ///  Timer/Counter 4 Control Register C
                TCCR4C: mmio.Mmio(packed struct(u8) {
                    reserved5: u5,
                    ///  Force Output Compare 4C
                    FOC4C: u1,
                    ///  Force Output Compare 4B
                    FOC4B: u1,
                    ///  Force Output Compare 4A
                    FOC4A: u1,
                }),
                reserved107: [1]u8,
                ///  Timer/Counter4 Bytes
                TCNT4: u16,
                ///  Timer/Counter4 Input Capture Register Bytes
                ICR4: u16,
                ///  Timer/Counter4 Output Compare Register A Bytes
                OCR4A: u16,
                ///  Timer/Counter4 Output Compare Register B Bytes
                OCR4B: u16,
                ///  Timer/Counter4 Output Compare Register B Bytes
                OCR4C: u16,
            };

            ///  Timer/Counter, 16-bit
            pub const TC3 = extern struct {
                ///  Timer/Counter3 Interrupt Flag register
                TIFR3: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter3 Overflow Flag
                    TOV3: u1,
                    ///  Output Compare Flag 3A
                    OCF3A: u1,
                    ///  Output Compare Flag 3B
                    OCF3B: u1,
                    ///  Output Compare Flag 3C
                    OCF3C: u1,
                    reserved5: u1,
                    ///  Input Capture Flag 3
                    ICF3: u1,
                    padding: u2,
                }),
                reserved57: [56]u8,
                ///  Timer/Counter3 Interrupt Mask Register
                TIMSK3: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter3 Overflow Interrupt Enable
                    TOIE3: u1,
                    ///  Timer/Counter3 Output Compare A Match Interrupt Enable
                    OCIE3A: u1,
                    ///  Timer/Counter3 Output Compare B Match Interrupt Enable
                    OCIE3B: u1,
                    ///  Timer/Counter3 Output Compare C Match Interrupt Enable
                    OCIE3C: u1,
                    reserved5: u1,
                    ///  Timer/Counter3 Input Capture Interrupt Enable
                    ICIE3: u1,
                    padding: u2,
                }),
                reserved88: [30]u8,
                ///  Timer/Counter3 Control Register A
                TCCR3A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM3: u2,
                    ///  Compare Output Mode 3C, bits
                    COM3C: u2,
                    ///  Compare Output Mode 3B, bits
                    COM3B: u2,
                    ///  Compare Output Mode 1A, bits
                    COM3A: u2,
                }),
                ///  Timer/Counter3 Control Register B
                TCCR3B: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler source of Timer/Counter 3
                    CS3: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Waveform Generation Mode
                    WGM3: u2,
                    reserved6: u1,
                    ///  Input Capture 3 Edge Select
                    ICES3: u1,
                    ///  Input Capture 3 Noise Canceler
                    ICNC3: u1,
                }),
                ///  Timer/Counter 3 Control Register C
                TCCR3C: mmio.Mmio(packed struct(u8) {
                    reserved5: u5,
                    ///  Force Output Compare 3C
                    FOC3C: u1,
                    ///  Force Output Compare 3B
                    FOC3B: u1,
                    ///  Force Output Compare 3A
                    FOC3A: u1,
                }),
                reserved92: [1]u8,
                ///  Timer/Counter3 Bytes
                TCNT3: u16,
                ///  Timer/Counter3 Input Capture Register Bytes
                ICR3: u16,
                ///  Timer/Counter3 Output Compare Register A Bytes
                OCR3A: u16,
                ///  Timer/Counter3 Output Compare Register B Bytes
                OCR3B: u16,
                ///  Timer/Counter3 Output Compare Register B Bytes
                OCR3C: u16,
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

        ///  JTAG Interface
        pub const JTAG = extern struct {
            ///  On-Chip Debug Related Register in I/O Memory
            OCDR: u8,
            reserved3: [2]u8,
            ///  MCU Status Register
            MCUSR: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  JTAG Reset Flag
                JTRF: u1,
                padding: u3,
            }),
            ///  MCU Control Register
            MCUCR: mmio.Mmio(packed struct(u8) {
                reserved7: u7,
                ///  JTAG Interface Disable
                JTD: u1,
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
                PCIF: u3,
                padding: u5,
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
                PCIE: u3,
                padding: u5,
            }),
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
            ///  External Interrupt Control Register B
            EICRB: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt 7-4 Sense Control Bit
                ISC4: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt 7-4 Sense Control Bit
                ISC5: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt 7-4 Sense Control Bit
                ISC6: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt 7-4 Sense Control Bit
                ISC7: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
            }),
            ///  Pin Change Mask Register 0
            PCMSK0: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable bits
                PCINT: u8,
            }),
            ///  Pin Change Mask Register 1
            PCMSK1: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable bits
                PCINT: u8,
            }),
            ///  Pin Change Mask Register 2
            PCMSK2: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable bits
                PCINT: u8,
            }),
        };

        ///  CPU Registers
        pub const CPU = extern struct {
            pub const CPU_SECTOR_LIMITS2 = enum(u3) {
                ///  LS = N/A, US = 0x1100 - 0xFFFF
                LS_N_A_US_0X1100_0XFFFF = 0x0,
                ///  LS = 0x2200 - 0x1FFF, US = 0x2000 - 0xFFFF
                LS_0X2200_0X1FFF_US_0X2000_0XFFFF = 0x1,
                ///  LS = 0x2200 - 0x3FFF, US = 0x4000 - 0xFFFF
                LS_0X2200_0X3FFF_US_0X4000_0XFFFF = 0x2,
                ///  LS = 0x2200 - 0x5FFF, US = 0x6000 - 0xFFFF
                LS_0X2200_0X5FFF_US_0X6000_0XFFFF = 0x3,
                ///  LS = 0x2200 - 0x7FFF, US = 0x8000 - 0xFFFF
                LS_0X2200_0X7FFF_US_0X8000_0XFFFF = 0x4,
                ///  LS = 0x2200 - 0x9FFF, US = 0xA000 - 0xFFFF
                LS_0X2200_0X9FFF_US_0XA000_0XFFFF = 0x5,
                ///  LS = 0x2200 - 0xBFFF, US = 0xC000 - 0xFFFF
                LS_0X2200_0XBFFF_US_0XC000_0XFFFF = 0x6,
                ///  LS = 0x2200 - 0xDFFF, US = 0xE000 - 0xFFFF
                LS_0X2200_0XDFFF_US_0XE000_0XFFFF = 0x7,
            };

            pub const CPU_WAIT_STATES = enum(u2) {
                ///  No wait-states
                NO_WAIT_STATES = 0x0,
                ///  Wait one cycle during read/write strobe
                WAIT_ONE_CYCLE_DURING_READ_WRITE_STROBE = 0x1,
                ///  Wait two cycles during read/write strobe
                WAIT_TWO_CYCLES_DURING_READ_WRITE_STROBE = 0x2,
                ///  Wait two cycles during read/write and wait one cycle before driving out new address
                WAIT_TWO_CYCLES_DURING_READ_WRITE_AND_WAIT_ONE_CYCLE_BEFORE_DRIVING_OUT_NEW_ADDRESS = 0x3,
            };

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

            pub const CPU_SLEEP_MODE_3BITS = enum(u3) {
                ///  Idle
                IDLE = 0x0,
                ///  ADC Noise Reduction (If Available)
                ADC = 0x1,
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

            ///  Oscillator Calibration Values
            pub const OSCCAL_VALUE_ADDRESSES = enum(u1) {
                ///  8.0 MHz
                @"8_0_MHz" = 0x0,
                _,
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
            reserved21: [7]u8,
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
                ///  JTAG Reset Flag
                JTRF: u1,
                padding: u3,
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
                ///  JTAG Interface Disable
                JTD: u1,
            }),
            reserved29: [5]u8,
            ///  RAM Page Z Select Register
            RAMPZ: u8,
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
                CLKPS: packed union {
                    raw: u4,
                    value: CPU_CLK_PRESCALE_4_BITS_SMALL,
                },
                reserved7: u3,
                CLKPCE: u1,
            }),
            reserved38: [2]u8,
            ///  Power Reduction Register0
            PRR0: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction ADC
                PRADC: u1,
                ///  Power Reduction USART0
                PRUSART0: u1,
                ///  Power Reduction Serial Peripheral Interface
                PRSPI: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                reserved5: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction Timer/Counter2
                PRTIM2: u1,
                ///  Power Reduction TWI
                PRTWI: u1,
            }),
            ///  Power Reduction Register1
            PRR1: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction USART1
                PRUSART1: u1,
                ///  Power Reduction USART2
                PRUSART2: u1,
                ///  Power Reduction USART3
                PRUSART3: u1,
                ///  Power Reduction Timer/Counter3
                PRTIM3: u1,
                ///  Power Reduction Timer/Counter4
                PRTIM4: u1,
                ///  Power Reduction Timer/Counter5
                PRTIM5: u1,
                padding: u2,
            }),
            ///  Oscillator Calibration Value
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
            reserved54: [13]u8,
            ///  External Memory Control Register A
            XMCRA: mmio.Mmio(packed struct(u8) {
                ///  Wait state select bit lower page
                SRW0: packed union {
                    raw: u2,
                    value: CPU_WAIT_STATES,
                },
                ///  Wait state select bit upper page
                SRW1: packed union {
                    raw: u2,
                    value: CPU_WAIT_STATES,
                },
                ///  Wait state page limit
                SRL: packed union {
                    raw: u3,
                    value: CPU_SECTOR_LIMITS2,
                },
                ///  External SRAM Enable
                SRE: u1,
            }),
            ///  External Memory Control Register B
            XMCRB: mmio.Mmio(packed struct(u8) {
                ///  External Memory High Mask
                XMM: u3,
                reserved7: u4,
                ///  External Memory Bus Keeper Enable
                XMBK: u1,
            }),
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
