const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny2313 = struct {
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
            ///  External Interrupt Request 1
            INT1: Handler = unhandled,
            ///  Timer/Counter1 Capture Event
            TIMER1_CAPT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIMER1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  USART, Rx Complete
            USART_RX: Handler = unhandled,
            ///  USART Data Register Empty
            USART_UDRE: Handler = unhandled,
            ///  USART, Tx Complete
            USART_TX: Handler = unhandled,
            ///  Analog Comparator
            ANA_COMP: Handler = unhandled,
            PCINT: Handler = unhandled,
            TIMER1_COMPB: Handler = unhandled,
            TIMER0_COMPA: Handler = unhandled,
            TIMER0_COMPB: Handler = unhandled,
            ///  USI Start Condition
            USI_START: Handler = unhandled,
            ///  USI Overflow
            USI_OVERFLOW: Handler = unhandled,
            EEPROM_Ready: Handler = unhandled,
            ///  Watchdog Timer Overflow
            WDT_OVERFLOW: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @as(*volatile types.peripherals.FUSE, @ptrFromInt(0x0));
            ///  Lockbits
            pub const LOCKBIT = @as(*volatile types.peripherals.LOCKBIT, @ptrFromInt(0x0));
            ///  Analog Comparator
            pub const AC = @as(*volatile types.peripherals.AC, @ptrFromInt(0x21));
            ///  USART
            pub const USART = @as(*volatile types.peripherals.USART, @ptrFromInt(0x22));
            ///  Universal Serial Interface
            pub const USI = @as(*volatile types.peripherals.USI, @ptrFromInt(0x2d));
            ///  I/O Port
            pub const PORTD = @as(*volatile types.peripherals.PORT.PORTD, @ptrFromInt(0x30));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x33));
            ///  I/O Port
            pub const PORTB = @as(*volatile types.peripherals.PORT.PORTB, @ptrFromInt(0x36));
            ///  I/O Port
            pub const PORTA = @as(*volatile types.peripherals.PORT.PORTA, @ptrFromInt(0x39));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3c));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x41));
            ///  Timer/Counter, 16-bit
            pub const TC1 = @as(*volatile types.peripherals.TC16.TC1, @ptrFromInt(0x42));
            ///  Timer/Counter, 8-bit
            pub const TC0 = @as(*volatile types.peripherals.TC8.TC0, @ptrFromInt(0x50));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x5a));
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_SUT_CKSEL = enum(u6) {
                ///  Ext. Clock; Start-up time: 14 CK + 0 ms
                EXTCLK_14CK_0MS = 0x0,
                ///  Ext. Clock; Start-up time: 14 CK + 4.1 ms
                EXTCLK_14CK_4MS1 = 0x10,
                ///  Ext. Clock; Start-up time: 14 CK + 65 ms
                EXTCLK_14CK_65MS = 0x20,
                ///  Int. RC Osc. 4 MHz; Start-up time: 14 CK + 0 ms
                INTRCOSC_4MHZ_14CK_0MS = 0x2,
                ///  Int. RC Osc. 4 MHz; Start-up time: 14 CK + 4.1 ms
                INTRCOSC_4MHZ_14CK_4MS1 = 0x12,
                ///  Int. RC Osc. 4 MHz; Start-up time: 14 CK + 65 ms
                INTRCOSC_4MHZ_14CK_65MS = 0x22,
                ///  Int. RC Osc. 8 MHz; Start-up time: 14 CK + 0 ms
                INTRCOSC_8MHZ_14CK_0MS = 0x4,
                ///  Int. RC Osc. 8 MHz; Start-up time: 14 CK + 4.1 ms
                INTRCOSC_8MHZ_14CK_4MS1 = 0x14,
                ///  Int. RC Osc. 8 MHz; Start-up time: 14 CK + 65 ms
                INTRCOSC_8MHZ_14CK_65MS = 0x24,
                ///  Int. RC Osc. 128 kHz; Start-up time: 14 CK + 0 ms
                INTRCOSC_128KHZ_14CK_0MS = 0x6,
                ///  Int. RC Osc. 128 kHz; Start-up time: 14 CK + 4 ms
                INTRCOSC_128KHZ_14CK_4MS = 0x16,
                ///  Int. RC Osc. 128 kHz; Start-up time: 14 CK + 64 ms
                INTRCOSC_128KHZ_14CK_64MS = 0x26,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 14 CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_14CK_4MS1 = 0x8,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 14 CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_14CK_65MS = 0x18,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 14 CK + 0 ms
                EXTXOSC_0MHZ4_0MHZ9_14CK_0MS = 0x28,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 14 CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_14CK_4MS1 = 0x38,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 14 CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_14CK_65MS = 0x9,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 14 CK + 0 ms
                EXTXOSC_0MHZ4_0MHZ9_14CK_0MS = 0x19,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 14 CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_14CK_4MS1 = 0x29,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 14 CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_14CK_65MS = 0x39,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 14 CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_14CK_4MS1 = 0xa,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 14 CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_14CK_65MS = 0x1a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 14 CK + 0 ms
                EXTXOSC_0MHZ9_3MHZ_14CK_0MS = 0x2a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 14 CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_14CK_4MS1 = 0x3a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 14 CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_14CK_65MS = 0xb,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 14 CK + 0 ms
                EXTXOSC_0MHZ9_3MHZ_14CK_0MS = 0x1b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 14 CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_14CK_4MS1 = 0x2b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 14 CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_14CK_65MS = 0x3b,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 14 CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_14CK_4MS1 = 0xc,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 14 CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_14CK_65MS = 0x1c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 14 CK + 0 ms
                EXTXOSC_3MHZ_8MHZ_14CK_0MS = 0x2c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 14 CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_14CK_4MS1 = 0x3c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 14 CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_14CK_65MS = 0xd,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 14 CK + 0 ms
                EXTXOSC_3MHZ_8MHZ_14CK_0MS = 0x1d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 14 CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_14CK_4MS1 = 0x2d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 14 CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_14CK_65MS = 0x3d,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 14 CK + 4.1 ms
                EXTXOSC_8MHZ_XX_14CK_4MS1 = 0xe,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 14 CK + 65 ms
                EXTXOSC_8MHZ_XX_14CK_65MS = 0x1e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 14 CK + 0 ms
                EXTXOSC_8MHZ_XX_14CK_0MS = 0x2e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 14 CK + 4.1 ms
                EXTXOSC_8MHZ_XX_14CK_4MS1 = 0x3e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 14 CK + 65 ms
                EXTXOSC_8MHZ_XX_14CK_65MS = 0xf,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 14 CK + 0 ms
                EXTXOSC_8MHZ_XX_14CK_0MS = 0x1f,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 14 CK + 4.1 ms
                EXTXOSC_8MHZ_XX_14CK_4MS1 = 0x2f,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 14 CK + 65 ms
                EXTXOSC_8MHZ_XX_14CK_65MS = 0x3f,
                _,
            };

            pub const ENUM_EESAVE_BODLEVEL = enum(u3) {
                ///  Brown-out detection at VCC=4.3 V
                @"4V3" = 0x4,
                ///  Brown-out detection at VCC=2.7 V
                @"2V7" = 0x5,
                ///  Brown-out detection at VCC=1.8 V
                @"1V8" = 0x6,
                ///  Brown-out detection disabled
                DISABLED = 0x7,
                _,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock Source
                SUT_CKSEL: packed union {
                    raw: u6,
                    value: ENUM_SUT_CKSEL,
                },
                ///  Clock output on PORTD2
                CKOUT: u1,
                ///  Divide clock by 8 internally
                CKDIV8: u1,
            }),
            HIGH: mmio.Mmio(packed struct(u8) {
                ///  External reset disable
                RSTDISBL: u1,
                ///  Brown-out Detector trigger level
                BODLEVEL: packed union {
                    raw: u3,
                    value: ENUM_EESAVE_BODLEVEL,
                },
                ///  Watch-dog Timer always on
                WDTON: u1,
                ///  Serial program downloading (SPI) enable
                SPIEN: u1,
                ///  Preserve EEPROM through the Chip Erase cycle
                EESAVE: u1,
                ///  Debug Wire enable
                DWEN: u1,
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
                ///  Input Pins, Port D
                PIND: u8,
                ///  Data Direction Register, Port D
                DDRD: u8,
                ///  Data Register, Port D
                PORTD: u8,
            };

            ///  I/O Port
            pub const PORTA = extern struct {
                ///  Port A Input Pins
                PINA: u8,
                ///  Port A Data Direction Register
                DDRA: u8,
                ///  Port A Data Register
                PORTA: u8,
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
                ///  Timer/Counter Control Register A
                TCCR0A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM0: u2,
                    reserved4: u2,
                    ///  Compare Match Output B Mode
                    COM0B: u2,
                    ///  Compare Match Output A Mode
                    COM0A: u2,
                }),
                reserved2: [1]u8,
                ///  Timer/Counter0
                TCNT0: u8,
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
                    ///  Force Output Compare B
                    FOC0A: u1,
                }),
                reserved6: [2]u8,
                ///  Timer/Counter0 Output Compare Register
                OCR0A: u8,
                reserved8: [1]u8,
                ///  Timer/Counter Interrupt Flag register
                TIFR: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Output Compare Flag 0A
                    OCF0A: u1,
                    ///  Timer/Counter0 Overflow Flag
                    TOV0: u1,
                    ///  Timer/Counter0 Output Compare Flag 0B
                    OCF0B: u1,
                    padding: u5,
                }),
                ///  Timer/Counter Interrupt Mask Register
                TIMSK: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Output Compare Match A Interrupt Enable
                    OCIE0A: u1,
                    ///  Timer/Counter0 Overflow Interrupt Enable
                    TOIE0: u1,
                    ///  Timer/Counter0 Output Compare Match B Interrupt Enable
                    OCIE0B: u1,
                    padding: u5,
                }),
                reserved12: [2]u8,
                ///  Timer/Counter0 Output Compare Register
                OCR0B: u8,
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
                ///  Timer/Counter1 Control Register C
                TCCR1C: mmio.Mmio(packed struct(u8) {
                    reserved6: u6,
                    ///  Force Output Compare for Channel B
                    FOC1B: u1,
                    ///  Force Output Compare for Channel A
                    FOC1A: u1,
                }),
                reserved2: [1]u8,
                ///  Timer/Counter1 Input Capture Register Bytes
                ICR1: u16,
                reserved6: [2]u8,
                ///  Timer/Counter1 Output Compare Register Bytes
                OCR1B: u16,
                ///  Timer/Counter1 Output Compare Register Bytes
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
                    ///  Waveform Generation Mode Bits
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
                    reserved4: u2,
                    ///  Compare Output Mode 1B, bits
                    COM1B: u2,
                    ///  Compare Output Mode 1A, bits
                    COM1A: u2,
                }),
                reserved22: [8]u8,
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
                    ICIE1: u1,
                    reserved5: u1,
                    ///  Timer/Counter1 Output CompareB Match Interrupt Enable
                    OCIE1B: u1,
                    ///  Timer/Counter1 Output CompareA Match Interrupt Enable
                    OCIE1A: u1,
                    ///  Timer/Counter1 Overflow Interrupt Enable
                    TOIE1: u1,
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
            WDTCR: mmio.Mmio(packed struct(u8) {
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
            ///  Extended Interrupt Flag Register
            EIFR: mmio.Mmio(packed struct(u8) {
                reserved5: u5,
                PCIF: u1,
                ///  External Interrupt Flags
                INTF: u2,
            }),
            ///  General Interrupt Mask Register
            GIMSK: mmio.Mmio(packed struct(u8) {
                reserved5: u5,
                PCIE: u1,
                ///  External Interrupt Request 1 Enable
                INT: u2,
            }),
        };

        ///  USART
        pub const USART = extern struct {
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

            ///  USART Baud Rate Register High Byte
            UBRRH: u8,
            ///  USART Control and Status Register C
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
                UMSEL: packed union {
                    raw: u1,
                    value: COMM_USART_MODE,
                },
                padding: u1,
            }),
            reserved7: [5]u8,
            ///  USART Baud Rate Register Low Byte
            UBRRL: u8,
            ///  USART Control and Status Register B
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
                ///  USART Data register Empty Interrupt Enable
                UDRIE: u1,
                ///  TX Complete Interrupt Enable
                TXCIE: u1,
                ///  RX Complete Interrupt Enable
                RXCIE: u1,
            }),
            ///  USART Control and Status Register A
            UCSRA: mmio.Mmio(packed struct(u8) {
                ///  Multi-processor Communication Mode
                MPCM: u1,
                ///  Double the USART Transmission Speed
                U2X: u1,
                ///  USART Parity Error
                UPE: u1,
                ///  Data overRun
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
            ///  USART I/O Data Register
            UDR: u8,
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

            ///  Digital Input Disable Register 1
            DIDR: u8,
            reserved7: [6]u8,
            ///  Analog Comparator Control And Status Register
            ACSR: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator Interrupt Mode Select bits
                ACIS: packed union {
                    raw: u2,
                    value: ANALOG_COMP_INTERRUPT,
                },
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
                ///  EEProm Ready Interrupt Enable
                EERIE: u1,
                EEPM: packed union {
                    raw: u2,
                    value: EEP_MODE,
                },
                padding: u2,
            }),
            ///  EEPROM Data Register
            EEDR: u8,
            ///  EEPROM Read/Write Access
            EEAR: u8,
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
                ///  8 MHz
                @"8_MHz" = 0x0,
                ///  4 MHz
                @"4_MHz" = 0x1,
            };

            pub const CPU_SLEEP_MODE_2BITS = enum(u3) {
                ///  Idle
                IDLE = 0x0,
                ///  Power Down
                PDOWN2 = 0x1,
                ///  Standby
                STDBY = 0x4,
                ///  Power Down
                PDOWN = 0x5,
                _,
            };

            ///  General Purpose I/O Register 0
            GPIOR0: u8,
            ///  General Purpose I/O Register 1
            GPIOR1: u8,
            ///  General Purpose I/O Register 2
            GPIOR2: u8,
            reserved13: [10]u8,
            ///  Pin-Change Mask register
            PCMSK: u8,
            reserved16: [2]u8,
            ///  General Timer Counter Control Register
            GTCCR: mmio.Mmio(packed struct(u8) {
                PSR10: u1,
                padding: u7,
            }),
            reserved19: [2]u8,
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
            reserved30: [10]u8,
            ///  Oscillator Calibration Register
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
            reserved33: [2]u8,
            ///  MCU Status register
            MCUSR: mmio.Mmio(packed struct(u8) {
                ///  Power-On Reset Flag
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
                ///  Sleep Mode Select Bits
                SM_bit0: u1,
                ///  Sleep Enable
                SE: u1,
                ///  Sleep Mode Select Bits
                SM_bit1: u1,
                ///  Pull-up Disable
                PUD: u1,
            }),
            reserved36: [1]u8,
            ///  Store Program Memory Control and Status register
            SPMCSR: mmio.Mmio(packed struct(u8) {
                ///  Store Program Memory Enable
                SPMEN: u1,
                ///  Page Erase
                PGERS: u1,
                ///  Page Write
                PGWRT: u1,
                ///  Read Fuse and Lock Bits
                RFLB: u1,
                ///  Clear Temporary Page Buffer
                CTPB: u1,
                padding: u3,
            }),
            reserved42: [5]u8,
            ///  Stack Pointer Low Byte
            SPL: u8,
            reserved44: [1]u8,
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
    };
};
