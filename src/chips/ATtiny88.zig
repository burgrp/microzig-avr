const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny88 = struct {
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
            ///  Pin Change Interrupt Request 0
            PCINT0: Handler = unhandled,
            ///  Pin Change Interrupt Request 1
            PCINT1: Handler = unhandled,
            ///  Pin Change Interrupt Request 2
            PCINT2: Handler = unhandled,
            ///  Pin Change Interrupt Request 3
            PCINT3: Handler = unhandled,
            ///  Watchdog Time-out Interrupt
            WDT: Handler = unhandled,
            ///  Timer/Counter1 Capture Event
            TIMER1_CAPT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer/Counter1 Compare Match B
            TIMER1_COMPB: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIMER1_OVF: Handler = unhandled,
            ///  TimerCounter0 Compare Match A
            TIMER0_COMPA: Handler = unhandled,
            ///  TimerCounter0 Compare Match B
            TIMER0_COMPB: Handler = unhandled,
            ///  Timer/Couner0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  SPI Serial Transfer Complete
            SPI_STC: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  EEPROM Ready
            EE_RDY: Handler = unhandled,
            ///  Analog Comparator
            ANALOG_COMP: Handler = unhandled,
            ///  Two-wire Serial Interface
            TWI: Handler = unhandled,
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
            pub const PORTA = @as(*volatile types.peripherals.PORT.PORTA, @ptrFromInt(0x2c));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x32));
            ///  Timer/Counter, 8-bit
            pub const TC0 = @as(*volatile types.peripherals.TC8.TC0, @ptrFromInt(0x35));
            ///  Timer/Counter, 16-bit
            pub const TC1 = @as(*volatile types.peripherals.TC16.TC1, @ptrFromInt(0x36));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x3b));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3f));
            ///  Serial Peripheral Interface
            pub const SPI = @as(*volatile types.peripherals.SPI, @ptrFromInt(0x4c));
            ///  Analog Comparator
            pub const AC = @as(*volatile types.peripherals.AC, @ptrFromInt(0x50));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x60));
            ///  Analog-to-Digital Converter
            pub const ADC = @as(*volatile types.peripherals.ADC, @ptrFromInt(0x78));
            ///  Two Wire Serial Interface
            pub const TWI = @as(*volatile types.peripherals.TWI, @ptrFromInt(0xb8));
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_SUT_CKSEL = enum(u6) {
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 CK/14 CK + 0 ms
                EXTCLK_6CK_14CK_0MS = 0xc,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4.1 ms
                EXTCLK_6CK_14CK_4MS1 = 0x1c,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 CK/14 CK + 65 ms
                EXTCLK_6CK_14CK_65MS = 0x2c,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 0 ms
                INTRCOSC_8MHZ_6CK_14CK_0MS = 0xe,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4.1 ms
                INTRCOSC_8MHZ_6CK_14CK_4MS1 = 0x1e,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 65 ms; default value
                INTRCOSC_8MHZ_6CK_14CK_65MS_DEFAULT = 0x2e,
                ///  Int. RC Osc. 128kHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 0 ms
                INTRCOSC_128KHZ_6CK_14CK_0MS = 0xf,
                ///  Int. RC Osc. 128kHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4.1 ms
                INTRCOSC_128KHZ_6CK_14CK_4MS1 = 0x1f,
                ///  Int. RC Osc. 128kHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 65 ms
                INTRCOSC_128KHZ_6CK_14CK_65MS = 0x2f,
                _,
            };

            pub const ENUM_BODLEVEL = enum(u3) {
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
                ///  Clock output on PORTB0
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
                ///  Reset Disabled (Enable PC6 as i/o pin)
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
                TCNT1: u16,
                ///  Timer/Counter1 Input Capture Register Bytes
                ICR1: u16,
                ///  Timer/Counter1 Output Compare Register Bytes
                OCR1A: u16,
                ///  Timer/Counter1 Output Compare Register Bytes
                OCR1B: u16,
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
            reserved47: [46]u8,
            ///  Digital Input Disable Register 1
            DIDR1: mmio.Mmio(packed struct(u8) {
                ///  AIN0 Digital Input Disable
                AIN0D: u1,
                ///  AIN1 Digital Input Disable
                AIN1D: u1,
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
                PINC: u8,
                ///  Port C Data Direction Register
                DDRC: u8,
                ///  Port C Data Register
                PORTC: u8,
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
            ///  TWHSR
            TWHSR: mmio.Mmio(packed struct(u8) {
                TWHS: u1,
                padding: u7,
            }),
        };

        ///  Analog-to-Digital Converter
        pub const ADC = extern struct {
            pub const ANALOG_ADC_V_REF7 = enum(u1) {
                ///  Internal 1.1V Voltage Reference
                INTERNAL_1_1V_VOLTAGE_REFERENCE = 0x0,
                ///  AVcc Reference
                AVCC_REFERENCE = 0x1,
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

            pub const ANALOG_ADC_AUTO_TRIGGER = enum(u3) {
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
            };

            ///  ADC Data Register Bytes
            ADC: u16,
            ///  The ADC Control and Status register A
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
            ///  The ADC Control and Status register B
            ADCSRB: mmio.Mmio(packed struct(u8) {
                ///  ADC Auto Trigger Source bits
                ADTS: packed union {
                    raw: u3,
                    value: ANALOG_ADC_AUTO_TRIGGER,
                },
                reserved6: u3,
                ACME: u1,
                padding: u1,
            }),
            ///  The ADC multiplexer Selection Register
            ADMUX: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel and Gain Selection Bits
                MUX: u4,
                reserved5: u1,
                ///  Left Adjust Result
                ADLAR: u1,
                ///  Reference Selection Bit 0
                REFS0: packed union {
                    raw: u1,
                    value: ANALOG_ADC_V_REF7,
                },
                padding: u1,
            }),
            reserved6: [1]u8,
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
                AIN0D: u1,
                AIN1D: u1,
                padding: u6,
            }),
        };

        ///  External Interrupts
        pub const EXINT = extern struct {
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

            ///  Pin Change Interrupt Flag Register
            PCIFR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Flags
                PCIF: u4,
                padding: u4,
            }),
            ///  External Interrupt Flag Register
            EIFR: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Flags
                INTF: u2,
                padding: u6,
            }),
            ///  External Interrupt Mask Register
            EIMSK: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Request 1 Enable
                INT: u2,
                padding: u6,
            }),
            reserved45: [42]u8,
            PCICR: mmio.Mmio(packed struct(u8) {
                PCIE: u4,
                padding: u4,
            }),
            ///  External Interrupt Control Register
            EICRA: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Sense Control 0 Bits
                ISC0: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL2,
                },
                ///  External Interrupt Sense Control 1 Bits
                ISC1: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL2,
                },
                padding: u4,
            }),
            ///  Pin Change Mask Register 3
            PCMSK3: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Masks
                PCINT: u4,
                padding: u4,
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
                reserved16: [1]u8,
                ///  Timer/Counter Control Register A
                TCCR0A: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select
                    CS0: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Clear Timer on Compare Match
                    CTC0: u1,
                    padding: u4,
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
            ///  EEPROM Address Register Low Byte
            EEARL: u8,
        };
    };
};
