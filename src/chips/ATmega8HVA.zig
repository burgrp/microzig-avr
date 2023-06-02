const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATmega8HVA = struct {
        pub const properties = struct {
            pub const family = "megaAVR";
            pub const arch = "AVR8";
        };

        pub const VectorTable = extern struct {
            const Handler = micro.interrupt.Handler;
            const unhandled = micro.interrupt.unhandled;

            RESET: Handler = unhandled,
            ///  Battery Protection Interrupt
            BPINT: Handler = unhandled,
            ///  Voltage regulator monitor interrupt
            VREGMON: Handler = unhandled,
            ///  External Interrupt Request 0
            INT0: Handler = unhandled,
            ///  External Interrupt Request 1
            INT1: Handler = unhandled,
            ///  External Interrupt Request 2
            INT2: Handler = unhandled,
            ///  Watchdog Timeout Interrupt
            WDT: Handler = unhandled,
            ///  Timer 1 Input capture
            TIMER1_IC: Handler = unhandled,
            ///  Timer 1 Compare Match A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer 1 Compare Match B
            TIMER1_COMPB: Handler = unhandled,
            ///  Timer 1 overflow
            TIMER1_OVF: Handler = unhandled,
            ///  Timer 0 Input Capture
            TIMER0_IC: Handler = unhandled,
            ///  Timer 0 Comapre Match A
            TIMER0_COMPA: Handler = unhandled,
            ///  Timer 0 Compare Match B
            TIMER0_COMPB: Handler = unhandled,
            ///  Timer 0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  SPI Serial transfer complete
            SPI_STC: Handler = unhandled,
            ///  Voltage ADC Conversion Complete
            VADC: Handler = unhandled,
            ///  Coulomb Counter ADC Conversion Complete
            CCADC_CONV: Handler = unhandled,
            ///  Coloumb Counter ADC Regular Current
            CCADC_REG_CUR: Handler = unhandled,
            ///  Coloumb Counter ADC Accumulator
            CCADC_ACC: Handler = unhandled,
            ///  EEPROM Ready
            EE_READY: Handler = unhandled,
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
            ///  Timer/Counter, 16-bit
            pub const TC0 = @intToPtr(*volatile types.peripherals.TC16.TC0, 0x35);
            ///  Timer/Counter, 16-bit
            pub const TC1 = @intToPtr(*volatile types.peripherals.TC16.TC1, 0x36);
            ///  CPU Registers
            pub const CPU = @intToPtr(*volatile types.peripherals.CPU, 0x37);
            ///  External Interrupts
            pub const EXINT = @intToPtr(*volatile types.peripherals.EXINT, 0x3c);
            ///  EEPROM
            pub const EEPROM = @intToPtr(*volatile types.peripherals.EEPROM, 0x3f);
            ///  Serial Peripheral Interface
            pub const SPI = @intToPtr(*volatile types.peripherals.SPI, 0x4c);
            ///  Bootloader
            pub const BOOT_LOAD = @intToPtr(*volatile types.peripherals.BOOT_LOAD, 0x57);
            ///  Watchdog Timer
            pub const WDT = @intToPtr(*volatile types.peripherals.WDT, 0x60);
            ///  Analog-to-Digital Converter
            pub const ADC = @intToPtr(*volatile types.peripherals.ADC, 0x78);
            ///  Voltage Regulator
            pub const VOLTAGE_REGULATOR = @intToPtr(*volatile types.peripherals.VOLTAGE_REGULATOR, 0xc8);
            ///  Bandgap
            pub const BANDGAP = @intToPtr(*volatile types.peripherals.BANDGAP, 0xd0);
            ///  Coulomb Counter
            pub const COULOMB_COUNTER = @intToPtr(*volatile types.peripherals.COULOMB_COUNTER, 0xe0);
            ///  FET Control
            pub const FET = @intToPtr(*volatile types.peripherals.FET, 0xf0);
            ///  Battery Protection
            pub const BATTERY_PROTECTION = @intToPtr(*volatile types.peripherals.BATTERY_PROTECTION, 0xf2);
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_SUT = enum(u3) {
                ///  Start-up time 6 CK/14 CK + 4 ms
                @"6CK_14CK_4MS" = 0x0,
                ///  Start-up time 6 CK/14 CK + 8 ms
                @"6CK_14CK_8MS" = 0x1,
                ///  Start-up time 6 CK/14 CK + 16 ms
                @"6CK_14CK_16MS" = 0x2,
                ///  Start-up time 6 CK/14 CK + 32 ms
                @"6CK_14CK_32MS" = 0x3,
                ///  Start-up time 6 CK/14 CK + 64 ms
                @"6CK_14CK_64MS" = 0x4,
                ///  Start-up time 6 CK/14 CK + 128 ms
                @"6CK_14CK_128MS" = 0x5,
                ///  Start-up time 6 CK/14 CK + 256 ms
                @"6CK_14CK_256MS" = 0x6,
                ///  Start-up time 6 CK/14 CK + 512 ms
                @"6CK_14CK_512MS" = 0x7,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select start-up time
                SUT: packed union {
                    raw: u3,
                    value: ENUM_SUT,
                },
                ///  Self Programming enable
                SELFPRGEN: u1,
                ///  Debug Wire enable
                DWEN: u1,
                ///  Serial program downloading (SPI) enabled
                SPIEN: u1,
                ///  Preserve EEPROM through the Chip Erase cycle
                EESAVE: u1,
                ///  Watch-dog Timer always on
                WDTON: u1,
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
            ///  VADC Data Register Bytes
            VADC: u16,
            ///  The VADC Control and Status register
            VADCSR: mmio.Mmio(packed struct(u8) {
                ///  VADC Conversion Complete Interrupt Enable
                VADCCIE: u1,
                ///  VADC Conversion Complete Interrupt Flag
                VADCCIF: u1,
                ///  VADC Satrt Conversion
                VADSC: u1,
                ///  VADC Enable
                VADEN: u1,
                padding: u4,
            }),
            reserved4: [1]u8,
            ///  The VADC multiplexer Selection Register
            VADMUX: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel and Gain Selection Bits
                VADMUX: u4,
                padding: u4,
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

        ///  Bandgap
        pub const BANDGAP = extern struct {
            ///  Bandgap Calibration Register
            BGCCR: mmio.Mmio(packed struct(u8) {
                ///  BG Calibration of PTAT Current Bits
                BGCC: u6,
                reserved7: u1,
                ///  Setting the BGD bit to one will disable the bandgap voltage reference. This bit must be cleared before enabling CC-ADC or V-ADC, and must remain unset while either ADC is enabled.
                BGD: u1,
            }),
            ///  Bandgap Calibration of Resistor Ladder
            BGCRR: mmio.Mmio(packed struct(u8) {
                ///  Bandgap calibration bits
                BGCR: u8,
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

            ///  External Interrupt Flag Register
            EIFR: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Flags
                INTF: u3,
                padding: u5,
            }),
            ///  External Interrupt Mask Register
            EIMSK: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Request 2 Enable
                INT: u3,
                padding: u5,
            }),
            reserved45: [43]u8,
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
                ///  External Interrupt Sense Control 2 Bits
                ISC2: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                padding: u2,
            }),
        };

        ///  I/O Port
        pub const PORT = struct {
            ///  I/O Port
            pub const PORTC = extern struct {
                ///  Port C Input Pins
                PINC: u8,
                reserved2: [1]u8,
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

        ///  FET Control
        pub const FET = extern struct {
            ///  FET Control and Status Register
            FCSR: mmio.Mmio(packed struct(u8) {
                ///  Charge FET Enable
                CFE: u1,
                ///  Discharge FET Enable
                DFE: u1,
                ///  Current Protection Status
                CPS: u1,
                ///  Deep Under-Voltage Recovery Disable
                DUVRD: u1,
                padding: u4,
            }),
        };

        ///  Bootloader
        pub const BOOT_LOAD = extern struct {
            ///  Store Program Memory Control and Status Register
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
                ///  Signature Row Read
                SIGRD: u1,
                padding: u2,
            }),
        };

        ///  CPU Registers
        pub const CPU = extern struct {
            pub const CPU_SLEEP_MODE_3BITS = enum(u3) {
                ///  Idle
                IDLE = 0x0,
                ///  ADC Noise Reduction (If Available)
                ADC = 0x1,
                ///  Reserved
                VAL_0x02 = 0x2,
                ///  Power Save
                PSAVE = 0x3,
                ///  Power Off
                POFF = 0x4,
                ///  Reserved
                VAL_0x05 = 0x5,
                ///  Reserved
                VAL_0x06 = 0x6,
                ///  Reserved
                VAL_0x07 = 0x7,
            };

            ///  Oscillator Sampling Interface Control and Status Register
            OSICSR: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Sampling Interface Enable
                OSIEN: u1,
                ///  Oscillator Sampling Interface Status
                OSIST: u1,
                reserved4: u2,
                ///  Oscillator Sampling Interface Select 0
                OSISEL0: u1,
                padding: u3,
            }),
            reserved7: [6]u8,
            ///  General Purpose IO Register 0
            GPIOR0: u8,
            reserved19: [11]u8,
            ///  General Purpose IO Register 1
            GPIOR1: u8,
            ///  General Purpose IO Register 2
            GPIOR2: u8,
            reserved28: [7]u8,
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
                BODRF: u1,
                ///  Watchdog Reset Flag
                WDRF: u1,
                ///  OCD Reset Flag
                OCDRF: u1,
                padding: u3,
            }),
            ///  MCU Control Register
            MCUCR: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  Pull-up disable
                PUD: u1,
                ///  Clock Output Enable
                CKOE: u1,
                padding: u2,
            }),
            reserved38: [7]u8,
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
            reserved42: [1]u8,
            ///  Clock Prescale Register
            CLKPR: mmio.Mmio(packed struct(u8) {
                ///  Clock Prescaler Select Bits
                CLKPS: u2,
                reserved7: u5,
                ///  Clock Prescaler Change Enable
                CLKPCE: u1,
            }),
            reserved45: [2]u8,
            ///  Power Reduction Register 0
            PRR0: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction V-ADC
                PRVADC: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                ///  Power reduction SPI
                PRSPI: u1,
                reserved5: u1,
                ///  Power Reduction Voltage Regulator Monitor
                PRVRM: u1,
                padding: u2,
            }),
            reserved47: [1]u8,
            ///  Fast Oscillator Calibration Value
            FOSCCAL: u8,
            reserved71: [23]u8,
            ///  Digital Input Disable Register
            DIDR0: mmio.Mmio(packed struct(u8) {
                ///  When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.
                PA0DID: u1,
                ///  When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.
                PA1DID: u1,
                padding: u6,
            }),
        };

        ///  Battery Protection
        pub const BATTERY_PROTECTION = extern struct {
            ///  Battery Protection Interrupt Mask Register
            BPIMSK: mmio.Mmio(packed struct(u8) {
                ///  Charger High-current Protection Activated Interrupt
                CHCIE: u1,
                ///  Discharger High-current Protection Activated Interrupt
                DHCIE: u1,
                ///  Charge Over-current Protection Activated Interrupt Enable
                COCIE: u1,
                ///  Discharge Over-current Protection Activated Interrupt Enable
                DOCIE: u1,
                ///  Short-circuit Protection Activated Interrupt Enable
                SCIE: u1,
                padding: u3,
            }),
            ///  Battery Protection Interrupt Flag Register
            BPIFR: mmio.Mmio(packed struct(u8) {
                ///  Charge High-current Protection Activated Interrupt
                CHCIF: u1,
                ///  Disharge High-current Protection Activated Interrupt
                DHCIF: u1,
                ///  Charge Over-current Protection Activated Interrupt Flag
                COCIF: u1,
                ///  Discharge Over-current Protection Activated Interrupt Flag
                DOCIF: u1,
                ///  Short-circuit Protection Activated Interrupt Flag
                SCIF: u1,
                padding: u3,
            }),
            reserved3: [1]u8,
            ///  Battery Protection Short-Circuit Detection Level Register
            BPSCD: u8,
            ///  Battery Protection Discharge-Over-current Detection Level Register
            BPDOCD: u8,
            ///  Battery Protection Charge-Over-current Detection Level Register
            BPCOCD: u8,
            ///  Battery Protection Discharge-High-current Detection Level Register
            BPDHCD: u8,
            ///  Battery Protection Charge-High-current Detection Level Register
            BPCHCD: u8,
            ///  Battery Protection Short-current Timing Register
            BPSCTR: u8,
            ///  Battery Protection Over-current Timing Register
            BPOCTR: u8,
            ///  Battery Protection Short-current Timing Register
            BPHCTR: u8,
            ///  Battery Protection Control Register
            BPCR: mmio.Mmio(packed struct(u8) {
                ///  Charge High-current Protection Disable
                CHCD: u1,
                ///  Discharge High-current Protection Disable
                DHCD: u1,
                ///  Charge Over-current Protection Disabled
                COCD: u1,
                ///  Discharge Over-current Protection Disabled
                DOCD: u1,
                ///  Short Circuit Protection Disabled
                SCD: u1,
                padding: u3,
            }),
            ///  Battery Protection Parameter Lock Register
            BPPLR: mmio.Mmio(packed struct(u8) {
                ///  Battery Protection Parameter Lock
                BPPL: u1,
                ///  Battery Protection Parameter Lock Enable
                BPPLE: u1,
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

        ///  Timer/Counter, 16-bit
        pub const TC16 = struct {
            ///  Timer/Counter, 16-bit
            pub const TC1 = extern struct {
                ///  Timer/Counter Interrupt Flag register
                TIFR1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Flag
                    TOV1: u1,
                    ///  Timer/Counter1 Output Compare Flag A
                    OCF1A: u1,
                    ///  Timer/Counter1 Output Compare Flag B
                    OCF1B: u1,
                    ///  Timer/Counter 1 Input Capture Flag
                    ICF1: u1,
                    padding: u4,
                }),
                reserved13: [12]u8,
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset
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
                    ///  Timer/Counter1 Output Compare A Interrupt Enable
                    OCIE1A: u1,
                    ///  Timer/Counter1 Output Compare B Interrupt Enable
                    OCIE1B: u1,
                    ///  Timer/Counter n Input Capture Interrupt Enable
                    ICIE1: u1,
                    padding: u4,
                }),
                reserved74: [16]u8,
                ///  Timer/Counter 1 Control Register A
                TCCR1A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM10: u1,
                    reserved3: u2,
                    ///  Input Capture Select
                    ICS1: u1,
                    ///  Input Capture Edge Select
                    ICES1: u1,
                    ///  Input Capture Noise Canceler
                    ICNC1: u1,
                    ///  Input Capture Mode Enable
                    ICEN1: u1,
                    ///  Timer/Counter Width
                    TCW1: u1,
                }),
                ///  Timer/Counter1 Control Register B
                TCCR1B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select1 bis
                    CS: u3,
                    padding: u5,
                }),
                reserved78: [2]u8,
                ///  Timer Counter 1 Bytes
                TCNT1: u16,
                reserved82: [2]u8,
                ///  Output Compare Register 1A
                OCR1A: u8,
                ///  Output Compare Register B
                OCR1B: u8,
            };

            ///  Timer/Counter, 16-bit
            pub const TC0 = extern struct {
                ///  Timer/Counter Interrupt Flag register
                TIFR0: mmio.Mmio(packed struct(u8) {
                    ///  Overflow Flag
                    TOV0: u1,
                    ///  Output Compare Flag
                    OCF0A: u1,
                    ///  Output Compare Flag
                    OCF0B: u1,
                    ///  Timer/Counter Interrupt Flag Register
                    ICF0: u1,
                    padding: u4,
                }),
                reserved15: [14]u8,
                ///  Timer/Counter0 Control Register
                TCCR0A: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select0 bit 0
                    WGM00: u1,
                    reserved3: u2,
                    ///  Input Capture Select
                    ICS0: u1,
                    ///  Input Capture Edge Select
                    ICES0: u1,
                    ///  Input Capture Noise Canceler
                    ICNC0: u1,
                    ///  Input Capture Mode Enable
                    ICEN0: u1,
                    ///  Timer/Counter Width
                    TCW0: u1,
                }),
                ///  Timer/Counter0 Control Register
                TCCR0B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select0 bit 0
                    CS00: u1,
                    ///  Clock Select0 bit 1
                    CS01: u1,
                    ///  Clock Select0 bit 2
                    CS02: u1,
                    padding: u5,
                }),
                ///  Timer Counter 0 Bytes
                TCNT0: u16,
                ///  Output compare Register A
                OCR0A: u8,
                ///  Output compare Register B
                OCR0B: u8,
                reserved57: [36]u8,
                ///  Timer/Counter Interrupt Mask Register
                TIMSK0: mmio.Mmio(packed struct(u8) {
                    ///  Overflow Interrupt Enable
                    TOIE0: u1,
                    ///  Output Compare Interrupt Enable
                    OCIE0A: u1,
                    ///  Output Compare Interrupt Enable
                    OCIE0B: u1,
                    ///  Timer/Counter n Input Capture Interrupt Enable
                    ICIE0: u1,
                    padding: u4,
                }),
            };
        };

        ///  Coulomb Counter
        pub const COULOMB_COUNTER = extern struct {
            ///  ADC Accumulate Current
            CADAC0: u8,
            ///  ADC Accumulate Current
            CADAC1: u8,
            ///  ADC Accumulate Current
            CADAC2: u8,
            ///  ADC Accumulate Current
            CADAC3: u8,
            ///  CC-ADC Control and Status Register A
            CADCSRA: mmio.Mmio(packed struct(u8) {
                ///  When the CADSE bit is written to one, the ongoing CC-ADC conversion is aborted, and the CC-ADC enters Regular Current detection mode.
                CADSE: u1,
                ///  The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
                CADSI: u2,
                ///  CC_ADC Accumulate Current Select Bits
                CADAS: u2,
                ///  CC_ADC Update Busy
                CADUB: u1,
                CADPOL: u1,
                ///  When the CADEN bit is cleared (zero), the CC-ADC is disabled. When the CADEN bit is set (one), the CC-ADC will continuously measure the voltage drop over the external sense resistor RSENSE. In Power-down, only the Regular Current detection is active. In Power-off, the CC-ADC is always disabled.
                CADEN: u1,
            }),
            ///  CC-ADC Control and Status Register B
            CADCSRB: mmio.Mmio(packed struct(u8) {
                ///  CC-ADC Instantaneous Current Interrupt Flag
                CADICIF: u1,
                ///  CC-ADC Accumulate Current Interrupt Flag
                CADRCIF: u1,
                ///  CC-ADC Accumulate Current Interrupt Flag
                CADACIF: u1,
                reserved4: u1,
                ///  CAD Instantenous Current Interrupt Enable
                CADICIE: u1,
                ///  Regular Current Interrupt Enable
                CADRCIE: u1,
                CADACIE: u1,
                padding: u1,
            }),
            ///  CC-ADC Regular Current
            CADRC: u8,
            reserved8: [1]u8,
            ///  CC-ADC Instantaneous Current
            CADIC: u16,
        };

        ///  Voltage Regulator
        pub const VOLTAGE_REGULATOR = extern struct {
            ///  Regulator Operating Condition Register
            ROCR: mmio.Mmio(packed struct(u8) {
                ///  ROC Warning Interrupt Enable
                ROCWIE: u1,
                ///  ROC Warning Interrupt Flag
                ROCWIF: u1,
                reserved7: u5,
                ///  ROC Status
                ROCS: u1,
            }),
        };
    };
};
