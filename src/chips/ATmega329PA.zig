const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATmega329PA = struct {
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
            ///  Pin Change Interrupt Request 0
            PCINT0: Handler = unhandled,
            ///  Pin Change Interrupt Request 1
            PCINT1: Handler = unhandled,
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
            USART0_RX: Handler = unhandled,
            ///  USART0 Data register Empty
            USART0_UDRE: Handler = unhandled,
            ///  USART0, Tx Complete
            USART0_TX: Handler = unhandled,
            ///  USI Start Condition
            USI_START: Handler = unhandled,
            ///  USI Overflow
            USI_OVERFLOW: Handler = unhandled,
            ///  Analog Comparator
            ANALOG_COMP: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  EEPROM Ready
            EE_READY: Handler = unhandled,
            ///  Store Program Memory Read
            SPM_READY: Handler = unhandled,
            ///  LCD Start of Frame
            LCD: Handler = unhandled,
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
            ///  External Interrupts
            pub const EXINT = @intToPtr(*volatile types.peripherals.EXINT, 0x3c);
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
            ///  Universal Serial Interface
            pub const USI = @intToPtr(*volatile types.peripherals.USI, 0xb8);
            ///  USART
            pub const USART0 = @intToPtr(*volatile types.peripherals.USART.USART0, 0xc0);
            ///  Liquid Crystal Display
            pub const LCD = @intToPtr(*volatile types.peripherals.LCD, 0xe4);
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
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 0 ms
                EXTLOFXTAL_32KCK_0MS = 0x7,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 4.1 ms
                EXTLOFXTAL_32KCK_4MS1 = 0x17,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 65 ms
                EXTLOFXTAL_32KCK_65MS = 0x27,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 0 ms
                EXTLOFXTAL_1KCK_0MS = 0x6,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 4.1 ms
                EXTLOFXTAL_1KCK_4MS1 = 0x16,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 65 ms
                EXTLOFXTAL_1KCK_65MS = 0x26,
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
                ///  Boot Flash size=256 words Boot address=$3F00
                @"256W_3F00" = 0x3,
                ///  Boot Flash size=512 words Boot address=$3E00
                @"512W_3E00" = 0x2,
                ///  Boot Flash size=1024 words Boot address=$3C00
                @"1024W_3C00" = 0x1,
                ///  Boot Flash size=2048 words Boot address=$3800
                @"2048W_3800" = 0x0,
            };

            pub const ENUM_BODLEVEL = enum(u2) {
                ///  Brown-out detection disabled
                DISABLED = 0x3,
                ///  Brown-out detection at VCC=1.8 V
                @"1V8" = 0x2,
                ///  Brown-out detection at VCC=2.7 V
                @"2V7" = 0x1,
                ///  Brown-out detection at VCC=4.3 V
                @"4V3" = 0x0,
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
                ///  Preserve EEPROM memory through the Chip Erase cycle
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
                ///  External Reset Disable
                RSTDISBL: u1,
                ///  Brown-out Detector trigger level
                BODLEVEL: packed union {
                    raw: u2,
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
                    reserved5: u2,
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
                ///  Timer/Counter 1 Control Register C
                TCCR1C: mmio.Mmio(packed struct(u8) {
                    reserved6: u6,
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
            };
        };

        ///  Timer/Counter, 8-bit Async
        pub const TC8_ASYNC = struct {
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
                ///  Timer/Counter2 Interrupt Flag Register
                TIFR2: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter2 Overflow Flag
                    TOV2: u1,
                    ///  Timer/Counter2 Output Compare Flag 2
                    OCF2A: u1,
                    padding: u6,
                }),
                reserved12: [11]u8,
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  Prescaler Reset Timer/Counter2
                    PSR2: u1,
                    padding: u6,
                }),
                reserved57: [44]u8,
                ///  Timer/Counter2 Interrupt Mask register
                TIMSK2: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter2 Overflow Interrupt Enable
                    TOIE2: u1,
                    ///  Timer/Counter2 Output Compare Match Interrupt Enable
                    OCIE2A: u1,
                    padding: u6,
                }),
                reserved121: [63]u8,
                ///  Timer/Counter2 Control Register
                TCCR2A: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select bits
                    CS2: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT,
                    },
                    ///  Waveform Generation Mode
                    WGM21: u1,
                    ///  Compare Output Mode bits
                    COM2A: u2,
                    ///  Waveform Generation Mode
                    WGM20: packed union {
                        raw: u1,
                        value: WAVEFORM_GEN_MODE,
                    },
                    ///  Force Output Compare A
                    FOC2A: u1,
                }),
                reserved123: [1]u8,
                ///  Timer/Counter2
                TCNT2: u8,
                ///  Timer/Counter2 Output Compare Register
                OCR2A: u8,
                reserved127: [2]u8,
                ///  Asynchronous Status Register
                ASSR: mmio.Mmio(packed struct(u8) {
                    ///  TCR2UB: Timer/Counter Control Register2 Update Busy
                    TCR2UB: u1,
                    ///  Output Compare Register2 Update Busy
                    OCR2UB: u1,
                    ///  TCN2UB: Timer/Counter2 Update Busy
                    TCN2UB: u1,
                    ///  AS2: Asynchronous Timer/Counter2
                    AS2: u1,
                    ///  Enable External Clock Interrupt
                    EXCLK: u1,
                    padding: u3,
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
            EEDR: u8,
            ///  EEPROM Read/Write Access Bytes
            EEAR: u16,
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
                ///  Port G Input Pins
                PING: u8,
                ///  Port G Data Direction Register
                DDRG: u8,
                ///  Port G Data Register
                PORTG: u8,
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

        ///  Liquid Crystal Display
        pub const LCD = extern struct {
            pub const LCD_DISP_CONF_DRIVE = enum(u3) {
                ///  300us
                @"300US" = 0x0,
                ///  70us
                @"70US" = 0x1,
                ///  150us
                @"150US" = 0x2,
                ///  450us
                @"450US" = 0x3,
                ///  575us
                @"575US" = 0x4,
                ///  850us
                @"850US" = 0x5,
                ///  1150us
                @"1150US" = 0x6,
                ///  50% of LCD clock
                @"50_PERCENT_OF_LCD_CLOCK" = 0x7,
            };

            pub const LCD_CONTRAST = enum(u4) {
                ///  2.60V
                @"2_60V" = 0x0,
                ///  2.65V
                @"2_65V" = 0x1,
                ///  2.70V
                @"2_70V" = 0x2,
                ///  2.75V
                @"2_75V" = 0x3,
                ///  2.80V
                @"2_80V" = 0x4,
                ///  2.85V
                @"2_85V" = 0x5,
                ///  2.90V
                @"2_90V" = 0x6,
                ///  2.95V
                @"2_95V" = 0x7,
                ///  3.00V
                @"3_00V" = 0x8,
                ///  3.05V
                @"3_05V" = 0x9,
                ///  3.10V
                @"3_10V" = 0xa,
                ///  3.15V
                @"3_15V" = 0xb,
                ///  3.20V
                @"3_20V" = 0xc,
                ///  3.25V
                @"3_25V" = 0xd,
                ///  3.30V
                @"3_30V" = 0xe,
                ///  3.35V
                @"3_35V" = 0xf,
            };

            pub const LCD_PRESCALE = enum(u3) {
                ///  ClkLCD/16
                CLKLCD_16 = 0x0,
                ///  ClkLCD/64
                CLKLCD_64 = 0x1,
                ///  ClkLCD/128
                CLKLCD_128 = 0x2,
                ///  ClkLCD/256
                CLKLCD_256 = 0x3,
                ///  ClkLCD/512
                CLKLCD_512 = 0x4,
                ///  ClkLCD/1024
                CLKLCD_1024 = 0x5,
                ///  ClkLCD/2048
                CLKLCD_2048 = 0x6,
                ///  ClkLCD/4096
                CLKLCD_4096 = 0x7,
            };

            pub const MISC_3BIT_COUNT = enum(u3) {
                ///  1
                @"1" = 0x0,
                ///  2
                @"2" = 0x1,
                ///  3
                @"3" = 0x2,
                ///  4
                @"4" = 0x3,
                ///  5
                @"5" = 0x4,
                ///  6
                @"6" = 0x5,
                ///  7
                @"7" = 0x6,
                ///  8
                @"8" = 0x7,
            };

            pub const LCD_PORT_MASK_4BIT = enum(u4) {
                ///  SEG0:12
                SEG0_12 = 0x0,
                ///  SEG0:14
                SEG0_14 = 0x1,
                ///  SEG0:15
                SEG0_15 = 0x2,
                ///  SEG0:18
                SEG0_18 = 0x3,
                ///  SEG0:20
                SEG0_20 = 0x4,
                ///  SEG0:22
                SEG0_22 = 0x5,
                ///  SEG0:23
                SEG0_23 = 0x6,
                ///  SEG0:24
                SEG0_24 = 0x7,
                ///  SEG0:26
                SEG0_26 = 0x8,
                ///  SEG0:28
                SEG0_28 = 0x9,
                ///  SEG0:30
                SEG0_30 = 0xa,
                ///  SEG0:32
                SEG0_32 = 0xb,
                ///  SEG0:34
                SEG0_34 = 0xc,
                ///  SEG0:36
                SEG0_36 = 0xd,
                ///  SEG0:38
                SEG0_38 = 0xe,
                ///  SEG0:39
                SEG0_39 = 0xf,
            };

            ///  LCD Control Register A
            LCDCRA: mmio.Mmio(packed struct(u8) {
                ///  LCD Blanking
                LCDBL: u1,
                ///  LCD Contrast Control Disable
                LCDCCD: u1,
                ///  LCD Buffer Disable
                LCDBD: u1,
                ///  LCD Interrupt Enable
                LCDIE: u1,
                ///  LCD Interrupt Flag
                LCDIF: u1,
                reserved6: u1,
                ///  LCD A or B waveform
                LCDAB: u1,
                ///  LCD Enable
                LCDEN: u1,
            }),
            ///  LCD Control and Status Register B
            LCDCRB: mmio.Mmio(packed struct(u8) {
                ///  LCD Port Masks
                LCDPM: packed union {
                    raw: u4,
                    value: LCD_PORT_MASK_4BIT,
                },
                ///  LCD Mux Selects
                LCDMUX: u2,
                ///  LCD 1/2 Bias Select
                LCD2B: u1,
                ///  LCD CLock Select
                LCDCS: u1,
            }),
            ///  LCD Frame Rate Register
            LCDFRR: mmio.Mmio(packed struct(u8) {
                ///  LCD Clock Dividers
                LCDCD: packed union {
                    raw: u3,
                    value: MISC_3BIT_COUNT,
                },
                reserved4: u1,
                ///  LCD Prescaler Selects
                LCDPS: packed union {
                    raw: u3,
                    value: LCD_PRESCALE,
                },
                padding: u1,
            }),
            ///  LCD Contrast Control Register
            LCDCCR: mmio.Mmio(packed struct(u8) {
                ///  LCD Contrast Controls
                LCDCC: packed union {
                    raw: u4,
                    value: LCD_CONTRAST,
                },
                ///  LCD Maximum Drive Time
                LCDMDT: u1,
                ///  LCD Display Configuration
                LCDDC: packed union {
                    raw: u3,
                    value: LCD_DISP_CONF_DRIVE,
                },
            }),
            reserved8: [4]u8,
            ///  LCD Data Register 0
            LCDDR00: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG000: u1,
                ///  LCD memory bit segment
                SEG001: u1,
                ///  LCD memory bit segment
                SEG002: u1,
                ///  LCD memory bit segment
                SEG003: u1,
                ///  LCD memory bit segment
                SEG004: u1,
                ///  LCD memory bit segment
                SEG005: u1,
                ///  LCD memory bit segment
                SEG006: u1,
                ///  LCD memory bit segment
                SEG007: u1,
            }),
            ///  LCD Data Register 1
            LCDDR01: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG008: u1,
                ///  LCD memory bit segment
                SEG009: u1,
                ///  LCD memory bit segment
                SEG010: u1,
                ///  LCD memory bit segment
                SEG011: u1,
                ///  LCD memory bit segment
                SEG012: u1,
                ///  LCD memory bit segment
                SEG013: u1,
                ///  LCD memory bit segment
                SEG014: u1,
                ///  LCD memory bit segment
                SEG015: u1,
            }),
            ///  LCD Data Register 2
            LCDDR02: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG016: u1,
                ///  LCD memory bit segment
                SEG017: u1,
                ///  LCD memory bit segment
                SEG018: u1,
                ///  LCD memory bit segment
                SEG019: u1,
                ///  LCD memory bit segment
                SEG020: u1,
                ///  LCD memory bit segment
                SEG021: u1,
                ///  LCD memory bit segment
                SEG022: u1,
                ///  LCD memory bit segment
                SEG023: u1,
            }),
            ///  LCD Data Register 3
            LCDDR03: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG024: u1,
                ///  LCD memory bit segment
                SEG025: u1,
                ///  LCD memory bit segment
                SEG026: u1,
                ///  LCD memory bit segment
                SEG027: u1,
                ///  LCD memory bit segment
                SEG028: u1,
                ///  LCD memory bit segment
                SEG029: u1,
                ///  LCD memory bit segment
                SEG030: u1,
                ///  LCD memory bit segment
                SEG031: u1,
            }),
            reserved13: [1]u8,
            ///  LCD Data Register 5
            LCDDR05: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG100: u1,
                ///  LCD memory bit segment
                SEG101: u1,
                ///  LCD memory bit segment
                SEG102: u1,
                ///  LCD memory bit segment
                SEG103: u1,
                ///  LCD memory bit segment
                SEG104: u1,
                ///  LCD memory bit segment
                SEG105: u1,
                ///  LCD memory bit segment
                SEG106: u1,
                ///  LCD memory bit segment
                SEG107: u1,
            }),
            ///  LCD Data Register 6
            LCDDR06: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG108: u1,
                ///  LCD memory bit segment
                SEG109: u1,
                ///  LCD memory bit segment
                SEG110: u1,
                ///  LCD memory bit segment
                SEG111: u1,
                ///  LCD memory bit segment
                SEG112: u1,
                ///  LCD memory bit segment
                SEG113: u1,
                ///  LCD memory bit segment
                SEG114: u1,
                ///  LCD memory bit segment
                SEG115: u1,
            }),
            ///  LCD Data Register 7
            LCDDR07: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG116: u1,
                ///  LCD memory bit segment
                SEG117: u1,
                ///  LCD memory bit segment
                SEG118: u1,
                ///  LCD memory bit segment
                SEG119: u1,
                ///  LCD memory bit segment
                SEG120: u1,
                ///  LCD memory bit segment
                SEG121: u1,
                ///  LCD memory bit segment
                SEG122: u1,
                ///  LCD memory bit segment
                SEG123: u1,
            }),
            ///  LCD Data Register 8
            LCDDR08: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG124: u1,
                ///  LCD memory bit segment
                SEG125: u1,
                ///  LCD memory bit segment
                SEG126: u1,
                ///  LCD memory bit segment
                SEG127: u1,
                ///  LCD memory bit segment
                SEG128: u1,
                ///  LCD memory bit segment
                SEG129: u1,
                ///  LCD memory bit segment
                SEG130: u1,
                ///  LCD memory bit segment
                SEG131: u1,
            }),
            reserved18: [1]u8,
            ///  LCD Data Register 10
            LCDDR10: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG200: u1,
                ///  LCD memory bit segment
                SEG201: u1,
                ///  LCD memory bit segment
                SEG202: u1,
                ///  LCD memory bit segment
                SEG203: u1,
                ///  LCD memory bit segment
                SEG204: u1,
                ///  LCD memory bit segment
                SEG205: u1,
                ///  LCD memory bit segment
                SEG206: u1,
                ///  LCD memory bit segment
                SEG207: u1,
            }),
            ///  LCD Data Register 11
            LCDDR11: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG208: u1,
                ///  LCD memory bit segment
                SEG209: u1,
                ///  LCD memory bit segment
                SEG210: u1,
                ///  LCD memory bit segment
                SEG211: u1,
                ///  LCD memory bit segment
                SEG212: u1,
                ///  LCD memory bit segment
                SEG213: u1,
                ///  LCD memory bit segment
                SEG214: u1,
                ///  LCD memory bit segment
                SEG215: u1,
            }),
            ///  LCD Data Register 12
            LCDDR12: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG216: u1,
                ///  LCD memory bit segment
                SEG217: u1,
                ///  LCD memory bit segment
                SEG218: u1,
                ///  LCD memory bit segment
                SEG219: u1,
                ///  LCD memory bit segment
                SEG220: u1,
                ///  LCD memory bit segment
                SEG221: u1,
                ///  LCD memory bit segment
                SEG222: u1,
                ///  LCD memory bit segment
                SEG223: u1,
            }),
            ///  LCD Data Register 13
            LCDDR13: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG224: u1,
                ///  LCD memory bit segment
                SEG225: u1,
                ///  LCD memory bit segment
                SEG226: u1,
                ///  LCD memory bit segment
                SEG227: u1,
                ///  LCD memory bit segment
                SEG228: u1,
                ///  LCD memory bit segment
                SEG229: u1,
                ///  LCD memory bit segment
                SEG230: u1,
                ///  LCD memory bit segment
                SEG231: u1,
            }),
            reserved23: [1]u8,
            ///  LCD Data Register 15
            LCDDR15: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG300: u1,
                ///  LCD memory bit segment
                SEG301: u1,
                ///  LCD memory bit segment
                SEG302: u1,
                ///  LCD memory bit segment
                SEG303: u1,
                ///  LCD memory bit segment
                SEG304: u1,
                ///  LCD memory bit segment
                SEG305: u1,
                ///  LCD memory bit segment
                SEG306: u1,
                ///  LCD memory bit segment
                SEG307: u1,
            }),
            ///  LCD Data Register 16
            LCDDR16: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG308: u1,
                ///  LCD memory bit segment
                SEG309: u1,
                ///  LCD memory bit segment
                SEG310: u1,
                ///  LCD memory bit segment
                SEG311: u1,
                ///  LCD memory bit segment
                SEG312: u1,
                ///  LCD memory bit segment
                SEG313: u1,
                ///  LCD memory bit segment
                SEG314: u1,
                ///  LCD memory bit segment
                SEG315: u1,
            }),
            ///  LCD Data Register 17
            LCDDR17: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG316: u1,
                ///  LCD memory bit segment
                SEG317: u1,
                ///  LCD memory bit segment
                SEG318: u1,
                ///  LCD memory bit segment
                SEG319: u1,
                ///  LCD memory bit segment
                SEG320: u1,
                ///  LCD memory bit segment
                SEG321: u1,
                ///  LCD memory bit segment
                SEG322: u1,
                ///  LCD memory bit segment
                SEG323: u1,
            }),
            ///  LCD Data Register 18
            LCDDR18: mmio.Mmio(packed struct(u8) {
                ///  LCD memory bit segment
                SEG324: u1,
                ///  LCD memory bit segment
                SEG325: u1,
                ///  LCD memory bit segment
                SEG326: u1,
                ///  LCD memory bit segment
                SEG327: u1,
                ///  LCD memory bit segment
                SEG328: u1,
                ///  LCD memory bit segment
                SEG329: u1,
                ///  LCD memory bit segment
                SEG330: u1,
                ///  LCD memory bit segment
                SEG331: u1,
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

            pub const CPU_SLEEP_MODE_3BITS2 = enum(u3) {
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
                ///  Reserved
                VAL_0x07 = 0x7,
            };

            ///  Oscillator Calibration Values
            pub const OSCCAL_VALUE_ADDRESSES = enum(u1) {
                ///  8.0 MHz
                @"8_0_MHz" = 0x0,
                _,
            };

            ///  General Purpose IO Register 0
            GPIOR0: u8,
            reserved12: [11]u8,
            ///  General Purpose IO Register 1
            GPIOR1: u8,
            ///  General Purpose IO Register 2
            GPIOR2: u8,
            reserved21: [7]u8,
            ///  Sleep Mode Control Register
            SMCR: mmio.Mmio(packed struct(u8) {
                ///  Sleep Enable
                SE: u1,
                ///  Sleep Mode Select bits
                SM: packed union {
                    raw: u3,
                    value: CPU_SLEEP_MODE_3BITS2,
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
                ///  BOD Sleep Enable
                BODSE: u1,
                ///  BOD Sleep
                BODS: u1,
                ///  JTAG Interface Disable
                JTD: u1,
            }),
            reserved31: [7]u8,
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
            reserved38: [2]u8,
            ///  Power Reduction Register
            PRR: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction ADC
                PRADC: u1,
                ///  Power Reduction USART
                PRUSART0: u1,
                ///  Power Reduction Serial Peripheral Interface
                PRSPI: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                ///  Power Reduction LCD
                PRLCD: u1,
                padding: u3,
            }),
            reserved40: [1]u8,
            ///  Oscillator Calibration Value
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
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
        };

        ///  Analog-to-Digital Converter
        pub const ADC = extern struct {
            pub const ANALOG_ADC_V_REF3 = enum(u2) {
                ///  AREF, Internal Vref turned off
                AREF_INTERNAL_VREF_TURNED_OFF = 0x0,
                ///  AVCC with external capacitor at AREF pin
                AVCC_WITH_EXTERNAL_CAPACITOR_AT_AREF_PIN = 0x1,
                ///  Reserved
                RESERVED = 0x2,
                ///  Internal 1.1V Voltage Reference with external capacitor at AREF pin
                INTERNAL_1_1V_VOLTAGE_REFERENCE_WITH_EXTERNAL_CAPACITOR_AT_AREF_PIN = 0x3,
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

            ///  ADC Data Register Bytes
            ADC: u16,
            ///  The ADC Control and Status register
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
            ///  ADC Control and Status Register B
            ADCSRB: mmio.Mmio(packed struct(u8) {
                ///  ADC Auto Trigger Sources
                ADTS: u3,
                padding: u5,
            }),
            ///  The ADC multiplexer Selection Register
            ADMUX: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel and Gain Selection Bits
                MUX: u5,
                ///  Left Adjust Result
                ADLAR: u1,
                ///  Reference Selection Bits
                REFS: packed union {
                    raw: u2,
                    value: ANALOG_ADC_V_REF3,
                },
            }),
            reserved6: [1]u8,
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
                ///  USART Control and Status Register A
                UCSR0A: mmio.Mmio(packed struct(u8) {
                    ///  Multi-processor Communication Mode
                    MPCM0: u1,
                    ///  Double the USART Transmission Speed
                    U2X0: u1,
                    ///  USART Parity Error
                    UPE0: u1,
                    ///  Data OverRun
                    DOR0: u1,
                    ///  Framing Error
                    FE0: u1,
                    ///  USART Data Register Empty
                    UDRE0: u1,
                    ///  USART Transmit Complete
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
                    ///  USART Data Register Empty Interrupt Enable
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
                        raw: u1,
                        value: COMM_USART_MODE,
                    },
                    padding: u1,
                }),
                reserved4: [1]u8,
                ///  USART Baud Rate Register Bytes
                UBRR0: u16,
                ///  USART I/O Data Register
                UDR0: u8,
            };
        };
    };
};
