const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny40 = struct {
        pub const properties = struct {
            pub const family = "tinyAVR";
            pub const arch = "AVR8L";
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
            ///  Pin Change Interrupt Request 2
            PCINT2: Handler = unhandled,
            ///  Watchdog Time-out
            WDT: Handler = unhandled,
            ///  Timer/Counter1 Input Capture
            TIM1_CAPT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match A
            TIM1_COMPA: Handler = unhandled,
            ///  Timer/Counter1 Compare Match B
            TIM1_COMPB: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIM1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Compare Match A
            TIM0_COMPA: Handler = unhandled,
            ///  Timer/Counter0 Compare Match B
            TIM0_COMPB: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIM0_OVF: Handler = unhandled,
            ///  Analog Comparator
            ANA_COMP: Handler = unhandled,
            ///  Conversion Complete
            ADC: Handler = unhandled,
            ///  Two-Wire Interface
            TWI_SLAVE: Handler = unhandled,
            ///  Serial Peripheral Interface
            SPI: Handler = unhandled,
            ///  Touch Sensing
            QTRIP: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  I/O Port
            pub const PORTA = @intToPtr(*volatile types.peripherals.PORT.PORTA, 0x0);
            ///  Fuses
            pub const FUSE = @intToPtr(*volatile types.peripherals.FUSE, 0x0);
            ///  Lockbits
            pub const LOCKBIT = @intToPtr(*volatile types.peripherals.LOCKBIT, 0x0);
            ///  I/O Port
            pub const PORTB = @intToPtr(*volatile types.peripherals.PORT.PORTB, 0x4);
            ///  I/O Port
            pub const PORTC = @intToPtr(*volatile types.peripherals.PORT.PORTC, 0x8);
            ///  External Interrupts
            pub const EXINT = @intToPtr(*volatile types.peripherals.EXINT, 0x9);
            ///  Analog-to-Digital Converter
            pub const ADC = @intToPtr(*volatile types.peripherals.ADC, 0xd);
            ///  Analog Comparator
            pub const AC = @intToPtr(*volatile types.peripherals.AC, 0x13);
            ///  Timer/Counter, 8-bit
            pub const TC0 = @intToPtr(*volatile types.peripherals.TC8.TC0, 0x15);
            ///  CPU Registers
            pub const CPU = @intToPtr(*volatile types.peripherals.CPU, 0x1f);
            ///  Two Wire Serial Interface
            pub const TWI = @intToPtr(*volatile types.peripherals.TWI, 0x28);
            ///  Serial Peripheral Interface
            pub const SPI = @intToPtr(*volatile types.peripherals.SPI, 0x2e);
            ///  Watchdog Timer
            pub const WDT = @intToPtr(*volatile types.peripherals.WDT, 0x31);
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_BODLEVEL = enum(u3) {
                ///  Brown-out detection disabled; [BODLEVEL=111]
                DISABLED = 0x7,
                ///  Brown-out detection at VCC=1.8 V
                @"1V8" = 0x6,
                ///  Brown-out detection at VCC=2.7 V
                @"2V7" = 0x5,
                ///  Brown-out detection at VCC=4.3 V
                @"4V3" = 0x4,
                _,
            };

            BYTE0: mmio.Mmio(packed struct(u8) {
                ///  Disable external reset
                RSTDISBL: u1,
                ///  Watch dog timer always on
                WDTON: u1,
                ///  Output external clock
                CKOUT: u1,
                reserved4: u1,
                ///  Brown-out Detector trigger level
                BODLEVEL: packed union {
                    raw: u3,
                    value: ENUM_BODLEVEL,
                },
                padding: u1,
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

            ///  Watchdog Timer Control and Status Register
            WDTCSR: mmio.Mmio(packed struct(u8) {
                ///  Watchdog Timer Prescaler Bits
                WDP_bit0: u1,
                ///  Watchdog Timer Prescaler Bits
                WDP_bit1: u1,
                ///  Watchdog Timer Prescaler Bits
                WDP_bit2: u1,
                ///  Watch Dog Enable
                WDE: u1,
                reserved5: u1,
                ///  Watchdog Timer Prescaler Bits
                WDP_bit3: u1,
                ///  Watchdog Timer Interrupt Enable
                WDIE: u1,
                ///  Watchdog Timer Interrupt Flag
                WDIF: u1,
            }),
        };

        ///  Analog-to-Digital Converter
        pub const ADC = extern struct {
            pub const ANALOG_ADC_V_REF = enum(u1) {
                ///  Vcc used as internal reference
                VCC_USED_AS_INTERNAL_REFERENCE = 0x0,
                ///  Internal 1.1V Referemce
                INTERNAL_1_1V_REFEREMCE = 0x1,
            };

            pub const ADC_MUX = enum(u4) {
                ///  ADC0
                ADC0 = 0x0,
                ///  ADC1
                ADC1 = 0x1,
                ///  ADC2
                ADC2 = 0x2,
                ///  ADC3
                ADC3 = 0x3,
                ///  ADC4
                ADC4 = 0x4,
                ///  ADC5
                ADC5 = 0x5,
                ///  ADC6
                ADC6 = 0x6,
                ///  ADC7
                ADC7 = 0x7,
                ///  ADC8
                ADC8 = 0x8,
                ///  ADC9
                ADC9 = 0x9,
                ///  ADC10
                ADC10 = 0xa,
                ///  ADC11
                ADC11 = 0xb,
                ///  0V (AGND)
                ADC_GND = 0xc,
                ///  1.1V Internal Reference
                ADC_VBG = 0xd,
                ///  Temperature sensor
                TEMPSENS = 0xe,
                _,
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

            pub const ANALOG_ADC_AUTO_TRIGGER3 = enum(u3) {
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
                ///  Watchdog Interrupt Request
                WATCHDOG_INTERRUPT_REQUEST = 0x7,
            };

            ///  Digital Input Disable Register 0
            DIDR0: mmio.Mmio(packed struct(u8) {
                ///  ADC0 Digital input Disable
                ADC0D: u1,
                ///  ADC1 Digital input Disable
                ADC1D: u1,
                ///  ADC2 Digital input Disable
                ADC2D: u1,
                ///  AREF Digital Input Disable
                ADC3D: u1,
                ///  ADC3 Digital input Disable
                ADC4D: u1,
                ///  ADC4 Digital input Disable
                ADC5D: u1,
                ///  ADC5 Digital input Disable
                ADC6D: u1,
                ///  ADC6 Digital input Disable
                ADC7D: u1,
            }),
            ///  ADC Data Register Bytes
            ADC: u16,
            ///  The ADC multiplexer Selection Register
            ADMUX: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel and Gain Selection Bits
                MUX: packed union {
                    raw: u4,
                    value: ADC_MUX,
                },
                reserved6: u2,
                ///  Reference Selection Bit
                REFS: packed union {
                    raw: u1,
                    value: ANALOG_ADC_V_REF,
                },
                padding: u1,
            }),
            ///  ADC Control and Status Register B
            ADCSRB: mmio.Mmio(packed struct(u8) {
                ///  ADC Auto Trigger Sources
                ADTS: packed union {
                    raw: u3,
                    value: ANALOG_ADC_AUTO_TRIGGER3,
                },
                ADLAR: u1,
                padding: u4,
            }),
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

            ///  Analog Comparator Control And Status Register B
            ACSRB: mmio.Mmio(packed struct(u8) {
                reserved2: u2,
                ///  Analog Comparator Multiplexer Enable
                ACME: u1,
                reserved6: u3,
                ///  Hysteresis Level
                HLEV: u1,
                ///  Hysteresis Select
                HSEL: u1,
            }),
            ///  Analog Comparator Control And Status Register A
            ACSRA: mmio.Mmio(packed struct(u8) {
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

        ///  Two Wire Serial Interface
        pub const TWI = extern struct {
            ///  TWI Slave Data Register
            TWSD: mmio.Mmio(packed struct(u8) {
                ///  TWI slave data bit
                TWSD: u8,
            }),
            ///  TWI Slave Address Mask Register
            TWSAM: u8,
            ///  TWI Slave Address Register
            TWSA: mmio.Mmio(packed struct(u8) {
                ///  TWI slave address bit
                TWSA: u8,
            }),
            ///  TWI Slave Status Register A
            TWSSRA: mmio.Mmio(packed struct(u8) {
                ///  TWI Address or Stop
                TWAS: u1,
                ///  TWI Read/Write Direction
                TWDIR: u1,
                ///  TWI Bus Error
                TWBE: u1,
                ///  TWI Collision
                TWC: u1,
                ///  TWI Receive Acknowledge
                TWRA: u1,
                ///  TWI Clock Hold
                TWCH: u1,
                ///  TWI Address/Stop Interrupt Flag
                TWASIF: u1,
                ///  TWI Data Interrupt Flag
                TWDIF: u1,
            }),
            ///  TWI Slave Control Register B
            TWSCRB: mmio.Mmio(packed struct(u8) {
                TWCMD: u2,
                ///  TWI Acknowledge Action
                TWAA: u1,
                padding: u5,
            }),
            ///  TWI Slave Control Register A
            TWSCRA: mmio.Mmio(packed struct(u8) {
                ///  TWI Smart Mode Enable
                TWSME: u1,
                ///  TWI Promiscuous Mode Enable
                TWPME: u1,
                ///  TWI Stop Interrupt Enable
                TWSIE: u1,
                ///  Two-Wire Interface Enable
                TWEN: u1,
                ///  TWI Address/Stop Interrupt Enable
                TWASIE: u1,
                ///  TWI Data Interrupt Enable
                TWDIE: u1,
                reserved7: u1,
                ///  TWI SDA Hold Time Enable
                TWSHE: u1,
            }),
        };

        ///  CPU Registers
        pub const CPU = extern struct {
            ///  Sleep Mode
            pub const CPU_SLEEP_MODE = enum(u3) {
                ///  Idle
                IDLE = 0x0,
                ///  ADC noise reduction
                ADC = 0x1,
                ///  Power-down
                PDOWN = 0x2,
                ///  Standby
                STDBY = 0x4,
                _,
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

            ///  RAM Data Register
            RAMDR: u8,
            ///  RAM Address Register
            RAMAR: u8,
            reserved19: [17]u8,
            ///  Non-Volatile Memory Control and Status Register
            NVMCSR: mmio.Mmio(packed struct(u8) {
                reserved7: u7,
                ///  Non-Volatile Memory Busy
                NVMBSY: u1,
            }),
            ///  Non-Volatile Memory Command
            NVMCMD: u8,
            reserved22: [1]u8,
            ///  Power Reduction Register
            PRR: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction ADC
                PRADC: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                ///  Power Reduction Serial Peripheral Interface
                PRSPI: u1,
                ///  Power Reduction TWI
                PRTWI: u1,
                padding: u3,
            }),
            ///  Clock Prescale Register
            CLKPSR: mmio.Mmio(packed struct(u8) {
                ///  Clock Prescaler Select Bits
                CLKPS: packed union {
                    raw: u4,
                    value: CPU_CLK_PRESCALE_4_BITS_SMALL,
                },
                padding: u4,
            }),
            ///  Clock Main Settings Register
            CLKMSR: mmio.Mmio(packed struct(u8) {
                ///  Clock Main Select Bits
                CLKMS: u2,
                padding: u6,
            }),
            reserved26: [1]u8,
            ///  Oscillator Calibration Value
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
            ///  MCU Control Register
            MCUCR: mmio.Mmio(packed struct(u8) {
                ///  Sleep Enable
                SE: u1,
                ///  Sleep Mode
                SM: packed union {
                    raw: u3,
                    value: CPU_SLEEP_MODE,
                },
                ///  BOD Sleep
                BODS: u1,
                padding: u3,
            }),
            ///  Reset Flag Register
            RSTFLR: mmio.Mmio(packed struct(u8) {
                ///  Power-on Reset Flag
                PORF: u1,
                ///  External Reset Flag
                EXTRF: u1,
                reserved3: u1,
                ///  Watchdog Reset Flag
                WDRF: u1,
                padding: u4,
            }),
            ///  Configuration Change Protection
            CCP: u8,
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
        };

        ///  I/O Port
        pub const PORT = struct {
            ///  I/O Port
            pub const PORTB = extern struct {
                ///  Port B Data register
                PINB: u8,
                ///  Data Direction Register, Port B
                DDRB: u8,
                ///  Input Pins, Port B
                PORTB: u8,
                ///  Pull-up Enable Control Register
                PUEB: u8,
                ///  Port Control Register
                PORTCR: mmio.Mmio(packed struct(u8) {
                    ///  Break-Before-Make Mode Enable
                    BBMA: u1,
                    ///  Break-Before-Make Mode Enable
                    BBMB: u1,
                    ///  Break-Before-Make Mode Enable
                    BBMC: u1,
                    reserved4: u1,
                    ADC8D: u1,
                    ADC9D: u1,
                    ADC10D: u1,
                    ADC11D: u1,
                }),
            };

            ///  I/O Port
            pub const PORTC = extern struct {
                ///  Port Control Register
                PORTCR: mmio.Mmio(packed struct(u8) {
                    reserved2: u2,
                    ///  Break-Before-Make Mode Enable
                    BBMC: u1,
                    reserved4: u1,
                    ADC8D: u1,
                    ADC9D: u1,
                    ADC10D: u1,
                    ADC11D: u1,
                }),
                reserved19: [18]u8,
                ///  Port C Input Pins
                PINC: u8,
                ///  Data Direction Register, Port C
                DDRC: u8,
                ///  Port C Data Register
                PORTC: u8,
                ///  Pull-up Enable Control Register
                PUEC: u8,
            };

            ///  I/O Port
            pub const PORTA = extern struct {
                ///  Port A Input Pins
                PINA: u8,
                ///  Data Direction Register, Port A
                DDRA: u8,
                ///  Port A Data Register
                PORTA: u8,
                ///  Pull-up Enable Control Register
                PUEA: u8,
                reserved8: [4]u8,
                ///  Port Control Register
                PORTCR: mmio.Mmio(packed struct(u8) {
                    ///  Break-Before-Make Mode Enable
                    BBMA: u1,
                    padding: u7,
                }),
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
                ///  Timer/Counter0 Output Compare Register
                OCR0B: u8,
                ///  Timer/Counter0 Output Compare Register
                OCR0A: u8,
                ///  Timer/Counter0
                TCNT0: u8,
                ///  Timer/Counter 0 Control Register B
                TCCR0B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select
                    CS0: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Waveform Generation Mode
                    WGM02: u1,
                    ///  Prescaler Reset Timer/Counter
                    PSR: u1,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                    ///  Force Output Compare B
                    FOC0B: u1,
                    ///  Force Output Compare A
                    FOC0A: u1,
                }),
                ///  Timer/Counter 0 Control Register A
                TCCR0A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM0: u2,
                    reserved4: u2,
                    ///  Compare Output Mode for Channel B bits
                    COM0B: u2,
                    ///  Compare Output Mode for Channel A bits
                    COM0A: u2,
                }),
                reserved12: [7]u8,
                ///  Timer/Counter 1 Output Compare Register B
                OCR1B: u8,
                ///  Timer/Counter 1 Output Compare Register A
                OCR1A: u8,
                ///  Timer/Counter1 Low
                TCNT1L: u8,
                ///  Timer/Counter1 Control Register A
                TCCR1A: mmio.Mmio(packed struct(u8) {
                    ///  The Clock Select1 bits 2, 1, and 0 define the prescaling source of Timer1.
                    CS1: u3,
                    ///  Waveform Generation Mode
                    CTC1: u1,
                    ///  Input Capture Edge Select
                    ICES1: u1,
                    ///  : Input Capture Noise Canceler
                    ICNC1: u1,
                    ///  Input Capture Mode Enable
                    ICEN1: u1,
                    ///  Timer/Counter1 Width
                    TCW1: u1,
                }),
                ///  Overflow Interrupt Enable
                TIFR: mmio.Mmio(packed struct(u8) {
                    ///  Timer Overflow Flag
                    TOV_bit0: u1,
                    ///  Output Compare Flag 0 A
                    OCF0A: u1,
                    ///  Output Compare Flag 0 B
                    OCF0B: u1,
                    ///  Timer Overflow Flag
                    TOV_bit1: u1,
                    ///  Timer Output Compare Flag 1A
                    OCF1A: u1,
                    ///  Timer Output Compare Flag 1B
                    OCF1B: u1,
                    reserved7: u1,
                    ///  Input Capture Flag
                    ICF1: u1,
                }),
                ///  Timer Interrupt Mask Register
                TIMSK: mmio.Mmio(packed struct(u8) {
                    ///  Overflow Interrupt Enable
                    TOIE_bit0: u1,
                    ///  Timer/Counter0 Output Compare Match A Interrupt Enable
                    OCIE0A: u1,
                    ///  Timer/Counter Output Compare Match B Interrupt Enable
                    OCIE0B: u1,
                    ///  Overflow Interrupt Enable
                    TOIE_bit1: u1,
                    ///  Output Compare A Match Interrupt Enable
                    OCIE1A: u1,
                    ///  Output Compare B Match Interrupt Enable
                    OCIE1B: u1,
                    reserved7: u1,
                    ///  Input Capture Interrupt Enable
                    ICIE1: u1,
                }),
                ///  Timer/Counter1 High
                TCNT1H: u8,
            };
        };

        ///  Serial Peripheral Interface
        pub const SPI = extern struct {
            pub const COMM_SCK_RATE = enum(u2) {
                ///  fcl/4
                FCL_4 = 0x0,
                ///  fcl/16
                FCL_16 = 0x1,
                ///  fcl/64
                FCL_64 = 0x2,
                ///  fcl/128
                FCL_128 = 0x3,
            };

            ///  SPI Data Register
            SPDR: u8,
            ///  SPI Status Register
            SPSR: mmio.Mmio(packed struct(u8) {
                ///  Double SPI Speed Bit
                SPI2X: u1,
                reserved6: u5,
                ///  Write Collision Flag
                WCOL: u1,
                ///  SPI Interrupt Flag
                SPIF: u1,
            }),
            ///  SPI Control Register
            SPCR: mmio.Mmio(packed struct(u8) {
                ///  SPI Clock Rate Selects
                SPR: packed union {
                    raw: u2,
                    value: COMM_SCK_RATE,
                },
                ///  Clock Phase
                CPHA: u1,
                ///  Clock polarity
                CPOL: u1,
                ///  Master/Slave Select
                MSTR: u1,
                ///  Data Order
                DORD: u1,
                ///  SPI Enable
                SPE: u1,
                ///  SPI Interrupt Enable
                SPIE: u1,
            }),
        };
    };
};
