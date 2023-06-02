const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny10 = struct {
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
            ///  Timer/Counter0 Input Capture
            TIM0_CAPT: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIM0_OVF: Handler = unhandled,
            ///  Timer/Counter Compare Match A
            TIM0_COMPA: Handler = unhandled,
            ///  Timer/Counter Compare Match B
            TIM0_COMPB: Handler = unhandled,
            ///  Analog Comparator
            ANA_COMP: Handler = unhandled,
            ///  Watchdog Time-out
            WDT: Handler = unhandled,
            ///  Vcc Voltage Level Monitor
            VLM: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  I/O Port
            pub const PORTB = @intToPtr(*volatile types.peripherals.PORT.PORTB, 0x0);
            ///  Fuses
            pub const FUSE = @intToPtr(*volatile types.peripherals.FUSE, 0x0);
            ///  Lockbits
            pub const LOCKBIT = @intToPtr(*volatile types.peripherals.LOCKBIT, 0x0);
            ///  External Interrupts
            pub const EXINT = @intToPtr(*volatile types.peripherals.EXINT, 0x10);
            ///  Analog-to-Digital Converter
            pub const ADC = @intToPtr(*volatile types.peripherals.ADC, 0x17);
            ///  Analog Comparator
            pub const AC = @intToPtr(*volatile types.peripherals.AC, 0x17);
            ///  Timer/Counter, 16-bit
            pub const TC0 = @intToPtr(*volatile types.peripherals.TC16.TC0, 0x22);
            ///  Watchdog Timer
            pub const WDT = @intToPtr(*volatile types.peripherals.WDT, 0x31);
            ///  CPU Registers
            pub const CPU = @intToPtr(*volatile types.peripherals.CPU, 0x32);
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            BYTE0: mmio.Mmio(packed struct(u8) {
                ///  Disable external reset
                RSTDISBL: u1,
                ///  Watch dog timer always on
                WDTON: u1,
                ///  Output external clock
                CKOUT: u1,
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

            pub const ANALOG_ADC_AUTO_TRIGGER_T10 = enum(u3) {
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
                ///  Timer/Counter0 Compare Match B
                TIMER_COUNTER0_COMPARE_MATCH_B = 0x5,
                ///  Pin Change Interrupt 0 Request
                PIN_CHANGE_INTERRUPT_0_REQUEST = 0x6,
                ///  Timer/Counter0 Capture Event
                TIMER_COUNTER0_CAPTURE_EVENT = 0x7,
            };

            ///  Digital Input Disable Register
            DIDR0: mmio.Mmio(packed struct(u8) {
                ADC0D: u1,
                ADC1D: u1,
                ADC2D: u1,
                ADC3D: u1,
                padding: u4,
            }),
            reserved2: [1]u8,
            ///  ADC Data Register
            ADCL: u8,
            reserved4: [1]u8,
            ///  The ADC multiplexer Selection Register
            ADMUX: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel Selection Bits
                MUX: u2,
                padding: u6,
            }),
            ///  The ADC Control and Status register B
            ADCSRB: mmio.Mmio(packed struct(u8) {
                ///  ADC Auto Trigger Source bits
                ADTS: packed union {
                    raw: u3,
                    value: ANALOG_ADC_AUTO_TRIGGER_T10,
                },
                padding: u5,
            }),
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

            DIDR0: mmio.Mmio(packed struct(u8) {
                ///  AIN0 Digital Input Disable
                AIN0D: u1,
                ///  AIN1 Digital Input Disable
                AIN1D: u1,
                padding: u6,
            }),
            reserved8: [7]u8,
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
                reserved7: u1,
                ///  Analog Comparator Disable
                ACD: u1,
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

            ///  Sleep Mode
            pub const CPU_SLEEP_MODE_3BITS = enum(u3) {
                ///  Idle
                IDLE = 0x0,
                ///  ADC Noise Reduction
                ADC = 0x1,
                ///  Power Down
                PDOWN = 0x2,
                ///  Reserved
                VAL_0x03 = 0x3,
                ///  Standby
                STDBY = 0x4,
                ///  Reserved
                VAL_0x05 = 0x5,
                ///  Reserved
                VAL_0x06 = 0x6,
                ///  Reserved
                VAL_0x07 = 0x7,
            };

            ///  Non-Volatile Memory Control and Status Register
            NVMCSR: mmio.Mmio(packed struct(u8) {
                reserved7: u7,
                ///  Non-Volatile Memory Busy
                NVMBSY: u1,
            }),
            ///  Non-Volatile Memory Command
            NVMCMD: u8,
            ///  Vcc Level Monitoring Control and Status Register
            VLMCSR: mmio.Mmio(packed struct(u8) {
                ///  Trigger Level of Voltage Level Monitor bits
                VLM: u3,
                reserved6: u3,
                ///  VLM Interrupt Enable
                VLMIE: u1,
                ///  VLM Flag
                VLMF: u1,
            }),
            ///  Power Reduction Register
            PRR: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction ADC
                PRADC: u1,
                padding: u6,
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
            reserved7: [1]u8,
            ///  Oscillator Calibration Value
            OSCCAL: u8,
            ///  Sleep Mode Control Register
            SMCR: mmio.Mmio(packed struct(u8) {
                ///  Sleep Enable
                SE: u1,
                ///  Sleep Mode Select Bits
                SM: packed union {
                    raw: u3,
                    value: CPU_SLEEP_MODE_3BITS,
                },
                padding: u4,
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
                reserved12: [8]u8,
                ///  Port Control Register
                PORTCR: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  Break-Before-Make Mode Enable
                    BBMB: u1,
                    padding: u6,
                }),
            };
        };

        ///  External Interrupts
        pub const EXINT = extern struct {
            ///  Pin Change Mask Register
            PCMSK: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Masks
                PCINT: u4,
                padding: u4,
            }),
            ///  Pin Change Interrupt Flag Register
            PCIFR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Flag 0
                PCIF0: u1,
                padding: u7,
            }),
            ///  Pin Change Interrupt Control Register
            PCICR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Enable 0
                PCIE0: u1,
                padding: u7,
            }),
            ///  External Interrupt Mask register
            EIMSK: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Request 0 Enable
                INT0: u1,
                padding: u7,
            }),
            ///  External Interrupt Flag register
            EIFR: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Flag 0
                INTF0: u1,
                padding: u7,
            }),
            ///  External Interrupt Control Register A
            EICRA: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Sense Control 0 Bit 0
                ISC00: u1,
                ///  Interrupt Sense Control 0 Bit 1
                ISC01: u1,
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
            pub const TC0 = extern struct {
                ///  Input Capture Register Bytes
                ICR0: u16,
                ///  Timer/Counter0 Output Compare Register B
                OCR0B: u16,
                ///  Timer/Counter 0 Output Compare Register A
                OCR0A: u16,
                ///  Timer/Counter0
                TCNT0: u16,
                ///  Overflow Interrupt Enable
                TIFR0: mmio.Mmio(packed struct(u8) {
                    ///  Timer Overflow Flag
                    TOV0: u1,
                    ///  Timer Output Compare Flag 0A
                    OCF0A: u1,
                    ///  Timer Output Compare Flag 0B
                    OCF0B: u1,
                    reserved5: u2,
                    ///  Input Capture Flag
                    ICF0: u1,
                    padding: u2,
                }),
                ///  Timer Interrupt Mask Register 0
                TIMSK0: mmio.Mmio(packed struct(u8) {
                    ///  Overflow Interrupt Enable
                    TOIE0: u1,
                    ///  Output Compare A Match Interrupt Enable
                    OCIE0A: u1,
                    ///  Output Compare B Match Interrupt Enable
                    OCIE0B: u1,
                    reserved5: u2,
                    ///  Input Capture Interrupt Enable
                    ICIE0: u1,
                    padding: u2,
                }),
                ///  Timer/Counter 0 Control Register C
                TCCR0C: mmio.Mmio(packed struct(u8) {
                    reserved6: u6,
                    ///  Force Output Compare for Channel B
                    FOC0B: u1,
                    ///  Force Output Compare for Channel A
                    FOC0A: u1,
                }),
                ///  Timer/Counter 0 Control Register B
                TCCR0B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select
                    CS0: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Waveform Generation Mode
                    WGM0: u2,
                    reserved6: u1,
                    ///  Input Capture Edge Select
                    ICES0: u1,
                    ///  Input Capture Noise Canceler
                    ICNC0: u1,
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
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset
                    PSR: u1,
                    reserved7: u6,
                    ///  Timer Synchronization Mode
                    TSM: u1,
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
    };
};
