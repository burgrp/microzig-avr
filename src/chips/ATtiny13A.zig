const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny13A = struct {
        pub const properties = struct {
            pub const family = "tinyAVR";
            pub const arch = "AVR8";
        };

        pub const VectorTable = extern struct {
            const Handler = micro.interrupt.Handler;
            const unhandled = micro.interrupt.unhandled;

            RESET: Handler = unhandled,
            ///  External Interrupt 0
            INT0: Handler = unhandled,
            ///  External Interrupt Request 0
            PCINT0: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIM0_OVF: Handler = unhandled,
            ///  EEPROM Ready
            EE_RDY: Handler = unhandled,
            ///  Analog Comparator
            ANA_COMP: Handler = unhandled,
            ///  Timer/Counter Compare Match A
            TIM0_COMPA: Handler = unhandled,
            ///  Timer/Counter Compare Match B
            TIM0_COMPB: Handler = unhandled,
            ///  Watchdog Time-out
            WDT: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @intToPtr(*volatile types.peripherals.FUSE, 0x0);
            ///  Lockbits
            pub const LOCKBIT = @intToPtr(*volatile types.peripherals.LOCKBIT, 0x0);
            ///  Analog-to-Digital Converter
            pub const ADC = @intToPtr(*volatile types.peripherals.ADC, 0x23);
            ///  Analog Comparator
            pub const AC = @intToPtr(*volatile types.peripherals.AC, 0x23);
            ///  External Interrupts
            pub const EXINT = @intToPtr(*volatile types.peripherals.EXINT, 0x35);
            ///  I/O Port
            pub const PORTB = @intToPtr(*volatile types.peripherals.PORT.PORTB, 0x36);
            ///  EEPROM
            pub const EEPROM = @intToPtr(*volatile types.peripherals.EEPROM, 0x3c);
            ///  Watchdog Timer
            pub const WDT = @intToPtr(*volatile types.peripherals.WDT, 0x41);
            ///  CPU Registers
            pub const CPU = @intToPtr(*volatile types.peripherals.CPU, 0x45);
            ///  Timer/Counter, 8-bit
            pub const TC0 = @intToPtr(*volatile types.peripherals.TC8.TC0, 0x48);
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_SUT_CKSEL = enum(u4) {
                ///  Ext. Clock; Start-up time: 14 CK + 0 ms
                EXTCLK_14CK_0MS = 0x0,
                ///  Ext. Clock; Start-up time: 14 CK + 4 ms
                EXTCLK_14CK_4MS = 0x4,
                ///  Ext. Clock; Start-up time: 14 CK + 64 ms
                EXTCLK_14CK_64MS = 0x8,
                ///  Int. RC Osc. 4.8 MHz; Start-up time: 14 CK + 0 ms
                INTRCOSC_4MHZ8_14CK_0MS = 0x1,
                ///  Int. RC Osc. 4.8 MHz; Start-up time: 14 CK + 4 ms
                INTRCOSC_4MHZ8_14CK_4MS = 0x5,
                ///  Int. RC Osc. 4.8 MHz; Start-up time: 14 CK + 64 ms
                INTRCOSC_4MHZ8_14CK_64MS = 0x9,
                ///  Int. RC Osc. 9.6 MHz; Start-up time: 14 CK + 0 ms
                INTRCOSC_9MHZ6_14CK_0MS = 0x2,
                ///  Int. RC Osc. 9.6 MHz; Start-up time: 14 CK + 4 ms
                INTRCOSC_9MHZ6_14CK_4MS = 0x6,
                ///  Int. RC Osc. 9.6 MHz; Start-up time: 14 CK + 64 ms
                INTRCOSC_9MHZ6_14CK_64MS = 0xa,
                ///  Int. RC Osc. 128 kHz; Start-up time: 14 CK + 0 ms
                INTRCOSC_128KHZ_14CK_0MS = 0x3,
                ///  Int. RC Osc. 128 kHz; Start-up time: 14 CK + 4 ms
                INTRCOSC_128KHZ_14CK_4MS = 0x7,
                ///  Int. RC Osc. 128 kHz; Start-up time: 14 CK + 64 ms
                INTRCOSC_128KHZ_14CK_64MS = 0xb,
                _,
            };

            pub const ENUM_BODLEVEL = enum(u2) {
                ///  Brown-out detection at VCC=4.3 V
                @"4V3" = 0x0,
                ///  Brown-out detection at VCC=2.7 V
                @"2V7" = 0x1,
                ///  Brown-out detection at VCC=1.8 V
                @"1V8" = 0x2,
                ///  Brown-out detection disabled
                DISABLED = 0x3,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock Source
                SUT_CKSEL: packed union {
                    raw: u4,
                    value: ENUM_SUT_CKSEL,
                },
                ///  Divide clock by 8 internally
                CKDIV8: u1,
                ///  Watch-dog Timer always on
                WDTON: u1,
                ///  Preserve EEPROM through the Chip Erase cycle
                EESAVE: u1,
                ///  Serial program downloading (SPI) enabled
                SPIEN: u1,
            }),
            HIGH: mmio.Mmio(packed struct(u8) {
                ///  Reset Disabled (Enable PB5 as i/o pin)
                RSTDISBL: u1,
                ///  Enable BOD and select level
                BODLEVEL: packed union {
                    raw: u2,
                    value: ENUM_BODLEVEL,
                },
                ///  Debug Wire enable
                DWEN: u1,
                ///  Self Programming enable
                SELFPRGEN: u1,
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

            LOCKBIT: mmio.Mmio(packed struct(u8) {
                ///  Memory Lock
                LB: packed union {
                    raw: u2,
                    value: ENUM_LB,
                },
                padding: u6,
            }),
        };

        ///  Analog-to-Digital Converter
        pub const ADC = extern struct {
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

            pub const ANALOG_ADC_AUTO_TRIGGER2 = enum(u3) {
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

            ///  ADC Control and Status Register B
            ADCSRB: mmio.Mmio(packed struct(u8) {
                ///  ADC Auto Trigger Sources
                ADTS: packed union {
                    raw: u3,
                    value: ANALOG_ADC_AUTO_TRIGGER2,
                },
                padding: u5,
            }),
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
            ///  The ADC multiplexer Selection Register
            ADMUX: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel and Gain Selection Bits
                MUX: u2,
                reserved5: u3,
                ///  Left Adjust Result
                ADLAR: u1,
                ///  Reference Selection Bit 0
                REFS0: u1,
                padding: u1,
            }),
            reserved17: [12]u8,
            ///  Digital Input Disable Register 0
            DIDR0: mmio.Mmio(packed struct(u8) {
                reserved2: u2,
                ///  ADC2 Digital input Disable
                ADC1D: u1,
                ///  ADC3 Digital input Disable
                ADC3D: u1,
                ///  ADC2 Digital input Disable
                ADC2D: u1,
                ///  ADC0 Digital input Disable
                ADC0D: u1,
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

            ///  ADC Control and Status Register B
            ADCSRB: mmio.Mmio(packed struct(u8) {
                reserved6: u6,
                ///  Analog Comparator Multiplexer Enable
                ACME: u1,
                padding: u1,
            }),
            reserved5: [4]u8,
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
            reserved17: [11]u8,
            DIDR0: mmio.Mmio(packed struct(u8) {
                ///  AIN0 Digital Input Disable
                AIN0D: u1,
                ///  AIN1 Digital Input Disable
                AIN1D: u1,
                padding: u6,
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

        ///  I/O Port
        pub const PORT = struct {
            ///  I/O Port
            pub const PORTB = extern struct {
                ///  Input Pins, Port B
                PINB: u8,
                ///  Data Direction Register, Port B
                DDRB: u8,
                ///  Data Register, Port B
                PORTB: u8,
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
                ///  General Timer Conuter Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset Timer/Counter0
                    PSR10: u1,
                    reserved7: u6,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                ///  Timer/Counter0 Output Compare Register
                OCR0B: u8,
                reserved7: [5]u8,
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
                reserved10: [2]u8,
                ///  Timer/Counter0
                TCNT0: u8,
                ///  Timer/Counter Control Register B
                TCCR0B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select
                    CS0: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Waveform Generation Mode
                    WGM02: u1,
                    reserved6: u2,
                    ///  Force Output Compare B
                    FOC0B: u1,
                    ///  Force Output Compare A
                    FOC0A: u1,
                }),
                reserved14: [2]u8,
                ///  Timer/Counter0 Output Compare Register
                OCR0A: u8,
                reserved16: [1]u8,
                ///  Timer/Counter0 Interrupt Flag register
                TIFR0: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  Timer/Counter0 Overflow Flag
                    TOV0: u1,
                    ///  Timer/Counter0 Output Compare Flag 0A
                    OCF0A: u1,
                    ///  Timer/Counter0 Output Compare Flag 0B
                    OCF0B: u1,
                    padding: u4,
                }),
                ///  Timer/Counter0 Interrupt Mask Register
                TIMSK0: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  Timer/Counter0 Overflow Interrupt Enable
                    TOIE0: u1,
                    ///  Timer/Counter0 Output Compare Match A Interrupt Enable
                    OCIE0A: u1,
                    ///  Timer/Counter0 Output Compare Match B Interrupt Enable
                    OCIE0B: u1,
                    padding: u4,
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
                WDTIE: u1,
                ///  Watchdog Timeout Interrupt Flag
                WDTIF: u1,
            }),
        };

        ///  CPU Registers
        pub const CPU = extern struct {
            pub const CPU_SLEEP_MODE2 = enum(u2) {
                ///  Idle
                IDLE = 0x0,
                ///  ADC Noise Reduction (If Available)
                ADC = 0x1,
                ///  Power Down
                PDOWN = 0x2,
                ///  Reserved
                VAL_0x03 = 0x3,
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
                ///  9.6 MHz
                @"9_6_MHz" = 0x0,
                ///  4.8 MHz
                @"4_8_MHz" = 0x1,
            };

            ///  Power Reduction Register
            PRR: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction ADC
                PRADC: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                padding: u6,
            }),
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
            reserved9: [7]u8,
            ///  Debug Wire Data Register
            DWDR: u8,
            reserved11: [1]u8,
            ///  BOD Control Register
            BODCR: mmio.Mmio(packed struct(u8) {
                ///  BOD Power-Down Sleep Enable
                BODSE: u1,
                ///  BOD Power-Down in Power-Down Sleep
                BODS: u1,
                padding: u6,
            }),
            ///  Oscillator Calibration Register
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
            reserved15: [2]u8,
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
                reserved3: u1,
                ///  Sleep Mode Select Bits
                SM: packed union {
                    raw: u2,
                    value: CPU_SLEEP_MODE2,
                },
                ///  Sleep Enable
                SE: u1,
                ///  Pull-up Disable
                PUD: u1,
                padding: u1,
            }),
            reserved18: [1]u8,
            ///  Store Program Memory Control and Status Register
            SPMCSR: mmio.Mmio(packed struct(u8) {
                ///  Store program Memory Enable
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
            reserved24: [5]u8,
            ///  Stack Pointer Low Byte
            SPL: u8,
            reserved26: [1]u8,
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
    };
};
