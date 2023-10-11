const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATmega162 = struct {
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
            ///  Pin Change Interrupt Request 0
            PCINT0: Handler = unhandled,
            ///  Pin Change Interrupt Request 1
            PCINT1: Handler = unhandled,
            ///  Timer/Counter3 Capture Event
            TIMER3_CAPT: Handler = unhandled,
            ///  Timer/Counter3 Compare Match A
            TIMER3_COMPA: Handler = unhandled,
            ///  Timer/Counter3 Compare Match B
            TIMER3_COMPB: Handler = unhandled,
            ///  Timer/Counter3 Overflow
            TIMER3_OVF: Handler = unhandled,
            ///  Timer/Counter2 Compare Match
            TIMER2_COMP: Handler = unhandled,
            ///  Timer/Counter2 Overflow
            TIMER2_OVF: Handler = unhandled,
            ///  Timer/Counter1 Capture Event
            TIMER1_CAPT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer/Counter Compare Match B
            TIMER1_COMPB: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIMER1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Compare Match
            TIMER0_COMP: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  SPI Serial Transfer Complete
            SPI_STC: Handler = unhandled,
            ///  USART0, Rx Complete
            USART0_RXC: Handler = unhandled,
            ///  USART1, Rx Complete
            USART1_RXC: Handler = unhandled,
            ///  USART0 Data register Empty
            USART0_UDRE: Handler = unhandled,
            ///  USART1, Data register Empty
            USART1_UDRE: Handler = unhandled,
            ///  USART0, Tx Complete
            USART0_TXC: Handler = unhandled,
            ///  USART1, Tx Complete
            USART1_TXC: Handler = unhandled,
            ///  EEPROM Ready
            EE_RDY: Handler = unhandled,
            ///  Analog Comparator
            ANA_COMP: Handler = unhandled,
            ///  Store Program Memory Read
            SPM_RDY: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @as(*volatile types.peripherals.FUSE, @ptrFromInt(0x0));
            ///  Lockbits
            pub const LOCKBIT = @as(*volatile types.peripherals.LOCKBIT, @ptrFromInt(0x0));
            ///  USART
            pub const USART1 = @as(*volatile types.peripherals.USART.USART1, @ptrFromInt(0x20));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x24));
            ///  JTAG Interface
            pub const JTAG = @as(*volatile types.peripherals.JTAG, @ptrFromInt(0x24));
            ///  I/O Port
            pub const PORTE = @as(*volatile types.peripherals.PORT.PORTE, @ptrFromInt(0x25));
            ///  Analog Comparator
            pub const AC = @as(*volatile types.peripherals.AC, @ptrFromInt(0x28));
            ///  USART
            pub const USART0 = @as(*volatile types.peripherals.USART.USART0, @ptrFromInt(0x29));
            ///  Serial Peripheral Interface
            pub const SPI = @as(*volatile types.peripherals.SPI, @ptrFromInt(0x2d));
            ///  I/O Port
            pub const PORTD = @as(*volatile types.peripherals.PORT.PORTD, @ptrFromInt(0x30));
            ///  I/O Port
            pub const PORTC = @as(*volatile types.peripherals.PORT.PORTC, @ptrFromInt(0x33));
            ///  I/O Port
            pub const PORTB = @as(*volatile types.peripherals.PORT.PORTB, @ptrFromInt(0x36));
            ///  I/O Port
            pub const PORTA = @as(*volatile types.peripherals.PORT.PORTA, @ptrFromInt(0x39));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3c));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x41));
            ///  Timer/Counter, 8-bit Async
            pub const TC2 = @as(*volatile types.peripherals.TC8_ASYNC.TC2, @ptrFromInt(0x42));
            ///  Timer/Counter, 16-bit
            pub const TC1 = @as(*volatile types.peripherals.TC16.TC1, @ptrFromInt(0x44));
            ///  Timer/Counter, 8-bit
            pub const TC0 = @as(*volatile types.peripherals.TC8.TC0, @ptrFromInt(0x51));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x55));
            ///  Bootloader
            pub const BOOT_LOAD = @as(*volatile types.peripherals.BOOT_LOAD, @ptrFromInt(0x57));
            ///  Timer/Counter, 16-bit
            pub const TC3 = @as(*volatile types.peripherals.TC16.TC3, @ptrFromInt(0x7c));
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
                ///  Boot Flash size=128 words start address=$1F80
                @"128W_1F80" = 0x3,
                ///  Boot Flash size=256 words start address=$1F00
                @"256W_1F00" = 0x2,
                ///  Boot Flash size=512 words start address=$1E00
                @"512W_1E00" = 0x1,
                ///  Boot Flash size=1024 words start address=$1C00
                @"1024W_1C00" = 0x0,
            };

            pub const ENUM_BODLEVEL = enum(u3) {
                ///  Brown-out detection disabled
                DISABLED = 0x7,
                ///  Brown-out detection at VCC=1.8 V
                @"1V8" = 0x6,
                ///  Brown-out detection at VCC=2.3 V
                @"2V3" = 0x3,
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
                ///  Clock output on PORTB0
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
                reserved1: u1,
                ///  Brownout detector trigger level
                BODLEVEL: packed union {
                    raw: u3,
                    value: ENUM_BODLEVEL,
                },
                ///  ATmega161 compability mode
                M161C: u1,
                padding: u3,
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

            pub const CLK_SEL_3BIT_SWAPPED = enum(u3) {
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
                ///  Running, CLK/16
                RUNNING_CLK_16 = 0x6,
                ///  Running, CLK/32
                RUNNING_CLK_32 = 0x7,
            };

            ///  Timer/Counter, 16-bit
            pub const TC1 = extern struct {
                ///  Timer/Counter1 Input Capture Register Bytes
                ICR1: u16,
                reserved4: [2]u8,
                ///  Timer/Counter1 Output Compare Register B Bytes
                OCR1B: u16,
                ///  Timer/Counter1 Output Compare Register A Bytes
                OCR1A: u16,
                ///  Timer/Counter1 Bytes
                TCNT1: u16,
                ///  Timer/Counter1 Control Register B
                TCCR1B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select1 bits
                    CS1: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Pulse Width Modulator Select Bits
                    WGM1: u2,
                    reserved6: u1,
                    ///  Input Capture 1 Edge Select
                    ICES1: u1,
                    ///  Input Capture 1 Noise Canceler
                    ICNC1: u1,
                }),
                ///  Timer/Counter1 Control Register A
                TCCR1A: mmio.Mmio(packed struct(u8) {
                    ///  Pulse Width Modulator Select Bits
                    WGM1: u2,
                    ///  Force Output Compare for Channel B
                    FOC1B: u1,
                    ///  Force Output Compare for Channel A
                    FOC1A: u1,
                    ///  Compare Output Mode 1B, bits
                    COM1B: u2,
                    ///  Compare Output Mode 1A, bits
                    COM1A: u2,
                }),
                reserved20: [8]u8,
                ///  Timer/Counter Interrupt Flag register
                TIFR: mmio.Mmio(packed struct(u8) {
                    reserved3: u3,
                    ///  Input Capture Flag 1
                    ICF1: u1,
                    reserved5: u1,
                    ///  Output Compare Flag 1B
                    OCF1B: u1,
                    ///  Output Compare Flag 1A
                    OCF1A: u1,
                    ///  Timer/Counter1 Overflow Flag
                    TOV1: u1,
                }),
                ///  Timer/Counter Interrupt Mask Register
                TIMSK: mmio.Mmio(packed struct(u8) {
                    reserved3: u3,
                    ///  Timer/Counter1 Input Capture Interrupt Enable
                    TICIE1: u1,
                    reserved5: u1,
                    ///  Timer/Counter1 Output CompareB Match Interrupt Enable
                    OCIE1B: u1,
                    ///  Timer/Counter1 Output CompareA Match Interrupt Enable
                    OCIE1A: u1,
                    ///  Timer/Counter1 Overflow Interrupt Enable
                    TOIE1: u1,
                }),
            };

            ///  Timer/Counter, 16-bit
            pub const TC3 = extern struct {
                ///  Extended Timer/Counter Interrupt Flag register
                ETIFR: mmio.Mmio(packed struct(u8) {
                    reserved2: u2,
                    ///  Timer/Counter3 Overflow Flag
                    TOV3: u1,
                    ///  Output Compare Flag 3B
                    OCF3B: u1,
                    ///  Output Compare Flag 3A
                    OCF3A: u1,
                    ///  Input Capture Flag 3
                    ICF3: u1,
                    padding: u2,
                }),
                ///  Extended Timer/Counter Interrupt Mask Register
                ETIMSK: mmio.Mmio(packed struct(u8) {
                    reserved2: u2,
                    ///  Timer/Counter3 Overflow Interrupt Enable
                    TOIE3: u1,
                    ///  Timer/Counter3 Output CompareB Match Interrupt Enable
                    OCIE3B: u1,
                    ///  Timer/Counter3 Output CompareA Match Interrupt Enable
                    OCIE3A: u1,
                    ///  Timer/Counter3 Input Capture Interrupt Enable
                    TICIE3: u1,
                    padding: u2,
                }),
                reserved4: [2]u8,
                ///  Timer/Counter3 Input Capture Register Bytes
                ICR3: u16,
                reserved8: [2]u8,
                ///  Timer/Counte3 Output Compare Register B Bytes
                OCR3B: u16,
                ///  Timer/Counter3 Output Compare Register A Bytes
                OCR3A: u16,
                ///  Timer/Counter3 Bytes
                TCNT3: u16,
                ///  Timer/Counter3 Control Register B
                TCCR3B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select3 bits
                    CS3: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_SWAPPED,
                    },
                    ///  Pulse Width Modulator Select Bits
                    WGM3: u2,
                    reserved6: u1,
                    ///  Input Capture 3 Edge Select
                    ICES3: u1,
                    ///  Input Capture 3 Noise Canceler
                    ICNC3: u1,
                }),
                ///  Timer/Counter3 Control Register A
                TCCR3A: mmio.Mmio(packed struct(u8) {
                    ///  Pulse Width Modulator Select Bits
                    WGM3: u2,
                    ///  Force Output Compare for Channel B
                    FOC3B: u1,
                    ///  Force Output Compare for Channel A
                    FOC3A: u1,
                    ///  Compare Output Mode 3B, bits
                    COM3B: u2,
                    ///  Compare Output Mode 3A, bits
                    COM3A: u2,
                }),
            };
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
        };

        ///  USART
        pub const USART = struct {
            pub const COMM_USART_MODE = enum(u1) {
                ///  Asynchronous Operation
                ASYNCHRONOUS_OPERATION = 0x0,
                ///  Synchronous Operation
                SYNCHRONOUS_OPERATION = 0x1,
            };

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

            ///  USART
            pub const USART0 = extern struct {
                ///  USART Baud Rate Register Low Byte
                UBRR0L: mmio.Mmio(packed struct(u8) {
                    ///  USART Baud Rate Register Low bits
                    UBRR0: u8,
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
                ///  USART I/O Data Register
                UDR0: u8,
                reserved23: [19]u8,
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
                        raw: u1,
                        value: COMM_USART_MODE,
                    },
                    ///  Register Select
                    URSEL0: u1,
                }),
            };

            ///  USART
            pub const USART1 = extern struct {
                ///  USART Baud Rate Register Low Byte
                UBRR1L: mmio.Mmio(packed struct(u8) {
                    ///  USART Baud Rate Register Low bits
                    UBRR1: u8,
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
                ///  USART I/O Data Register
                UDR1: u8,
                reserved60: [56]u8,
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
                        raw: u1,
                        value: COMM_USART_MODE,
                    },
                    ///  Register Select
                    URSEL1: u1,
                }),
            };
        };

        ///  CPU Registers
        pub const CPU = extern struct {
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

            pub const CPU_SECTOR_LIMITS = enum(u3) {
                ///  LS = N/A, US = 0x1100 - 0xFFFF
                LS_N_A_US_0X1100_0XFFFF = 0x0,
                ///  LS = 0x1100 - 0x1FFF, US = 0x2000 - 0xFFFF
                LS_0X1100_0X1FFF_US_0X2000_0XFFFF = 0x1,
                ///  LS = 0x1100 - 0x3FFF, US = 0x4000 - 0xFFFF
                LS_0X1100_0X3FFF_US_0X4000_0XFFFF = 0x2,
                ///  LS = 0x1100 - 0x5FFF, US = 0x6000 - 0xFFFF
                LS_0X1100_0X5FFF_US_0X6000_0XFFFF = 0x3,
                ///  LS = 0x1100 - 0x7FFF, US = 0x8000 - 0xFFFF
                LS_0X1100_0X7FFF_US_0X8000_0XFFFF = 0x4,
                ///  LS = 0x1100 - 0x9FFF, US = 0xA000 - 0xFFFF
                LS_0X1100_0X9FFF_US_0XA000_0XFFFF = 0x5,
                ///  LS = 0x1100 - 0xBFFF, US = 0xC000 - 0xFFFF
                LS_0X1100_0XBFFF_US_0XC000_0XFFFF = 0x6,
                ///  LS = 0x1100 - 0xDFFF, US = 0xE000 - 0xFFFF
                LS_0X1100_0XDFFF_US_0XE000_0XFFFF = 0x7,
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

            ///  Oscillator Calibration Values
            pub const OSCCAL_VALUE_ADDRESSES = enum(u1) {
                ///  8.0 MHz
                @"8_0_MHz" = 0x0,
                _,
            };

            ///  Oscillator Calibration Value
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
            reserved44: [43]u8,
            ///  Special Function IO Register
            SFIOR: mmio.Mmio(packed struct(u8) {
                ///  Prescaler Reset Timer/Counter3, Timer/Counter1 and Timer/Counter0
                PSR310: u1,
                ///  Prescaler Reset Timer/Counter2
                PSR2: u1,
                ///  Pull-up Disable
                PUD: u1,
                ///  External Memory High Mask Bits
                XMM: u3,
                ///  External Memory Bus Keeper Enable
                XMBK: u1,
                ///  Timer/Counter Synchronization Mode
                TSM: u1,
            }),
            reserved48: [3]u8,
            ///  MCU Control And Status Register
            MCUCSR: mmio.Mmio(packed struct(u8) {
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
                ///  Sleep Mode Select Bit 2
                SM2: u1,
                reserved7: u1,
                ///  JTAG Interface Disable
                JTD: u1,
            }),
            ///  MCU Control Register
            MCUCR: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Sense Control 0 bits
                ISC0: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL2,
                },
                ///  Interrupt Sense Control 1 bits
                ISC1: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL2,
                },
                ///  Sleep Mode Select
                SM1: u1,
                ///  Sleep Enable
                SE: u1,
                ///  External SRAM Wait State Select
                SRW10: u1,
                ///  External SRAM Enable
                SRE: u1,
            }),
            ///  Extended MCU Control Register
            EMCUCR: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Sense Control 2
                ISC2: u1,
                ///  Wait State Select Bit 1 for Upper Sector
                SRW11: u1,
                ///  Wait State Select Bit 1 for Lower Sector
                SRW0: packed union {
                    raw: u2,
                    value: CPU_WAIT_STATES,
                },
                ///  Wait State Sector Limit Bits
                SRL: packed union {
                    raw: u3,
                    value: CPU_SECTOR_LIMITS,
                },
                ///  Sleep mode Select Bit 0
                SM0: u1,
            }),
            reserved57: [6]u8,
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
            reserved61: [1]u8,
            ///  Clock prescale register
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
        };

        ///  JTAG Interface
        pub const JTAG = extern struct {
            ///  On-Chip Debug Related Register in I/O Memory
            OCDR: mmio.Mmio(packed struct(u8) {
                ///  On-Chip Debug Register Bits
                OCDR: u8,
            }),
            reserved48: [47]u8,
            ///  MCU Control And Status Register
            MCUCSR: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  JTAG Reset Flag
                JTRF: u1,
                reserved7: u2,
                ///  JTAG Interface Disable
                JTD: u1,
            }),
        };

        ///  Bootloader
        pub const BOOT_LOAD = extern struct {
            ///  Store Program Memory Control Register
            SPMCR: mmio.Mmio(packed struct(u8) {
                ///  Store Program Memory Enable
                SPMEN: u1,
                ///  Page Erase
                PGERS: u1,
                ///  Page Write
                PGWRT: u1,
                ///  Boot Lock Bit Set
                BLBSET: u1,
                ///  Read While Write secion read enable
                RWWSRE: u1,
                reserved6: u1,
                ///  Read While Write Section Busy
                RWWSB: u1,
                ///  SPM Interrupt Enable
                SPMIE: u1,
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
                padding: u4,
            }),
            ///  EEPROM Data Register
            EEDR: mmio.Mmio(packed struct(u8) {
                ///  EEPROM Data Register bits
                EEDR: u8,
            }),
            ///  EEPROM Address Register Bytes
            EEAR: mmio.Mmio(packed struct(u16) {
                ///  EEPROM Address Register bits
                EEAR: u9,
                padding: u7,
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
        };

        ///  Timer/Counter, 8-bit
        pub const TC8 = struct {
            pub const WAVEFORM_GEN_MODE = enum(u2) {
                ///  Normal
                NORMAL = 0x0,
                ///  PWM, Phase Correct
                PWM_PHASE_CORRECT = 0x2,
                ///  CTC
                CTC = 0x1,
                ///  Fast PWM
                FAST_PWM = 0x3,
            };

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
                ///  Timer/Counter 0 Output Compare Register
                OCR0: u8,
                ///  Timer/Counter 0 Register
                TCNT0: u8,
                ///  Timer/Counter 0 Control Register
                TCCR0: mmio.Mmio(packed struct(u8) {
                    ///  Clock Selects
                    CS0: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Waveform Generation Mode 1
                    WGM01: u1,
                    ///  Compare Match Output Modes
                    COM0: u2,
                    ///  Waveform Generation Mode 0
                    WGM00: packed union {
                        raw: u1,
                        value: WAVEFORM_GEN_MODE,
                    },
                    ///  Force Output Compare
                    FOC0: u1,
                }),
                reserved7: [4]u8,
                ///  Timer/Counter Interrupt Flag register
                TIFR: mmio.Mmio(packed struct(u8) {
                    ///  Output Compare Flag 0
                    OCF0: u1,
                    ///  Timer/Counter0 Overflow Flag
                    TOV0: u1,
                    padding: u6,
                }),
                ///  Timer/Counter Interrupt Mask Register
                TIMSK: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Output Compare Match Interrupt register
                    OCIE0: u1,
                    ///  Timer/Counter0 Overflow Interrupt Enable
                    TOIE0: u1,
                    padding: u6,
                }),
            };
        };

        ///  Watchdog Timer
        pub const WDT = extern struct {
            pub const WDOG_TIMER_PRESCALE_3BITS = enum(u3) {
                ///  Oscillator Cycles 16K
                OSCILLATOR_CYCLES_16K = 0x0,
                ///  Oscillator Cycles 32K
                OSCILLATOR_CYCLES_32K = 0x1,
                ///  Oscillator Cycles 64K
                OSCILLATOR_CYCLES_64K = 0x2,
                ///  Oscillator Cycles 128K
                OSCILLATOR_CYCLES_128K = 0x3,
                ///  Oscillator Cycles 256K
                OSCILLATOR_CYCLES_256K = 0x4,
                ///  Oscillator Cycles 512K
                OSCILLATOR_CYCLES_512K = 0x5,
                ///  Oscillator Cycles 1024K
                OSCILLATOR_CYCLES_1024K = 0x6,
                ///  Oscillator Cycles 2048K
                OSCILLATOR_CYCLES_2048K = 0x7,
            };

            ///  Watchdog Timer Control Register
            WDTCR: mmio.Mmio(packed struct(u8) {
                ///  Watch Dog Timer Prescaler bits
                WDP: packed union {
                    raw: u3,
                    value: WDOG_TIMER_PRESCALE_3BITS,
                },
                ///  Watch Dog Enable
                WDE: u1,
                ///  Watchdog Change Enable
                WDCE: u1,
                padding: u3,
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

            ///  MCU Control Register
            MCUCR: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Sense Control 0 Bits
                ISC0: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  Interrupt Sense Control 1 Bits
                ISC1: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                padding: u4,
            }),
            ///  Extended MCU Control Register
            EMCUCR: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Sense Control 2
                ISC2: u1,
                padding: u7,
            }),
            reserved5: [3]u8,
            ///  General Interrupt Flag Register
            GIFR: mmio.Mmio(packed struct(u8) {
                reserved3: u3,
                ///  Pin Change Interrupt Flags
                PCIF: u2,
                ///  External Interrupt Flag 2
                INTF2: u1,
                ///  External Interrupt Flags
                INTF: u2,
            }),
            ///  General Interrupt Control Register
            GICR: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Vector Change Enable
                IVCE: u1,
                ///  Interrupt Vector Select
                IVSEL: u1,
                reserved3: u1,
                ///  Pin Change Interrupt Enables
                PCIE: u2,
                ///  External Interrupt Request 2 Enable
                INT2: u1,
                ///  External Interrupt Request 0 Enable
                INT0: u1,
                ///  External Interrupt Request 1 Enable
                INT1: u1,
            }),
            reserved22: [15]u8,
            ///  Pin Change Enable Mask
            PCMSK0: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt mask bits
                PCINT: u8,
            }),
            ///  Pin Change Mask Register 1
            PCMSK1: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt mask bits
                PCINT: u8,
            }),
        };
    };
};
