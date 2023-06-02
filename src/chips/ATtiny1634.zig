const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny1634 = struct {
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
            ///  Pin Change Interrupt Request 0
            PCINT0: Handler = unhandled,
            ///  Pin Change Interrupt Request 1
            PCINT1: Handler = unhandled,
            ///  Pin Change Interrupt Request 2
            PCINT2: Handler = unhandled,
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
            ///  Analog Comparator
            ANA_COMP: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  USART0, Start
            USART0_START: Handler = unhandled,
            ///  USART0, Rx Complete
            USART0_RX: Handler = unhandled,
            ///  USART0 Data Register Empty
            USART0_UDRE: Handler = unhandled,
            ///  USART0, Tx Complete
            USART0_TX: Handler = unhandled,
            ///  USART1, Start
            USART1_START: Handler = unhandled,
            ///  USART1, Rx Complete
            USART1_RX: Handler = unhandled,
            ///  USART1 Data Register Empty
            USART1_UDRE: Handler = unhandled,
            ///  USART1, Tx Complete
            USART1_TX: Handler = unhandled,
            ///  USI Start Condition
            USI_START: Handler = unhandled,
            ///  USI Overflow
            USI_OVERFLOW: Handler = unhandled,
            ///  Two-wire Serial Interface
            TWI_SLAVE: Handler = unhandled,
            ///  EEPROM Ready
            EE_RDY: Handler = unhandled,
            ///  Touch Sensing
            QTRIP: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @intToPtr(*volatile types.peripherals.FUSE, 0x0);
            ///  Lockbits
            pub const LOCKBIT = @intToPtr(*volatile types.peripherals.LOCKBIT, 0x0);
            ///  Analog-to-Digital Converter
            pub const ADC = @intToPtr(*volatile types.peripherals.ADC, 0x20);
            ///  Analog Comparator
            pub const AC = @intToPtr(*volatile types.peripherals.AC, 0x25);
            ///  I/O Port
            pub const PORTC = @intToPtr(*volatile types.peripherals.PORT.PORTC, 0x27);
            ///  I/O Port
            pub const PORTB = @intToPtr(*volatile types.peripherals.PORT.PORTB, 0x2b);
            ///  I/O Port
            pub const PORTA = @intToPtr(*volatile types.peripherals.PORT.PORTA, 0x2f);
            ///  CPU Registers
            pub const CPU = @intToPtr(*volatile types.peripherals.CPU, 0x34);
            ///  Timer/Counter, 8-bit
            pub const TC0 = @intToPtr(*volatile types.peripherals.TC8.TC0, 0x37);
            ///  EEPROM
            pub const EEPROM = @intToPtr(*volatile types.peripherals.EEPROM, 0x3c);
            ///  USART
            pub const USART0 = @intToPtr(*volatile types.peripherals.USART.USART0, 0x40);
            ///  External Interrupts
            pub const EXINT = @intToPtr(*volatile types.peripherals.EXINT, 0x47);
            ///  Universal Serial Interface
            pub const USI = @intToPtr(*volatile types.peripherals.USI, 0x4a);
            ///  Watchdog Timer
            pub const WDT = @intToPtr(*volatile types.peripherals.WDT, 0x50);
            ///  Timer/Counter, 16-bit
            pub const TC1 = @intToPtr(*volatile types.peripherals.TC16.TC1, 0x59);
            ///  USART
            pub const USART1 = @intToPtr(*volatile types.peripherals.USART.USART1, 0x73);
            ///  Two Wire Serial Interface
            pub const TWI = @intToPtr(*volatile types.peripherals.TWI, 0x7a);
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_SUT_CKSEL = enum(u5) {
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 CK/16 CK + 16 ms
                EXTCLK_6CK_16CK_16MS = 0x0,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/16 CK + 16 ms
                INTRCOSC_8MHZ_6CK_16CK_16MS = 0x2,
                ///  Int. ULP Osc. 32 kHz; Start-up time PWRDWN/RESET: 6 CK/16 CK + 16 ms
                INTULPOSC_32KHZ_6CK_16CK_16MS = 0x4,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 258 CK/16 CK + 16 ms
                EXTCRES_0MHZ4_0MHZ9_258CK_16CK_16MS = 0x8,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1K CK/16 CK + 16 ms
                EXTCRES_0MHZ4_0MHZ9_1KCK_16CK_16MS = 0x18,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16 K CK/16 CK + 16 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_16CK_16MS = 0x9,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 258 CK/16 CK + 16 ms
                EXTCRES_0MHZ9_3MHZ_258CK_16CK_16MS = 0xa,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1K CK/16 CK + 16 ms
                EXTCRES_0MHZ9_3MHZ_1KCK_16CK_16MS = 0x1a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16 K CK/16 CK + 16 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_16CK_16MS = 0xb,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 258 CK/16 CK + 16 ms
                EXTCRES_3MHZ_8MHZ_258CK_16CK_16MS = 0xc,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1K CK/16 CK + 16 ms
                EXTCRES_3MHZ_8MHZ_1KCK_16CK_16MS = 0x1c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16 K CK/16 CK + 16 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_16CK_16MS = 0xd,
                ///  Ext. Ceramic Res. 8.0- MHz; Start-up time PWRDWN/RESET: 258 CK/16 CK + 16 ms
                EXTCRES_8MHZ_XX_258CK_16CK_16MS = 0xe,
                ///  Ext. Ceramic Res. 8.0- MHz; Start-up time PWRDWN/RESET: 1K CK/16 CK + 16 ms
                EXTCRES_8MHZ_XX_1KCK_16CK_16MS = 0x1e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 16 K CK/16 CK + 16 ms
                EXTXOSC_8MHZ_XX_16KCK_16CK_16MS = 0xf,
                _,
            };

            pub const ENUM_BODLEVEL = enum(u3) {
                ///  Brown-out detection at VCC=4.3 V
                @"4V3" = 0x4,
                ///  Brown-out detection at VCC=2.7 V
                @"2V7" = 0x5,
                ///  Brown-out detection at VCC=1.8 V
                @"1V8" = 0x6,
                _,
            };

            pub const ENUM_BODMODE = enum(u2) {
                ///  Sampled
                BOD_SAMPLED = 0x1,
                ///  Enabled
                BOD_ENABLED = 0x2,
                ///  Disabled
                BOD_DISABLED = 0x3,
                _,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock Source
                SUT_CKSEL: packed union {
                    raw: u5,
                    value: ENUM_SUT_CKSEL,
                },
                reserved6: u1,
                ///  Clock output on PORTC2
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
                ///  Reset Disabled (Enable PC2 as i/o pin)
                RSTDISBL: u1,
            }),
            EXTENDED: mmio.Mmio(packed struct(u8) {
                ///  Self Programming enable
                SELFPRGEN: u1,
                ///  BOD mode of operation when the device is active or idle
                BODACT: packed union {
                    raw: u2,
                    value: ENUM_BODMODE,
                },
                ///  BOD mode of operation when the device is in sleep mode
                BODPD: packed union {
                    raw: u2,
                    value: ENUM_BODMODE,
                },
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
                PUEB: mmio.Mmio(packed struct(u8) {
                    ///  Pull-up Enable Control bit
                    PUEB: u4,
                    padding: u4,
                }),
                reserved8: [4]u8,
                ///  Port Control Register
                PORTCR: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  Break-Before-Make Mode Enable
                    BBMB: u1,
                    padding: u6,
                }),
            };

            ///  I/O Port
            pub const PORTC = extern struct {
                ///  Port C Input Pins
                PINC: u8,
                ///  Data Direction Register, Port C
                DDRC: u8,
                ///  Port C Data Register
                PORTC: u8,
                ///  Pull-up Enable Control Register
                PUEC: mmio.Mmio(packed struct(u8) {
                    ///  Pull-up Enable Control bit
                    PUEC: u6,
                    padding: u2,
                }),
                reserved12: [8]u8,
                ///  Port Control Register
                PORTCR: mmio.Mmio(packed struct(u8) {
                    reserved2: u2,
                    ///  Break-Before-Make Mode Enable
                    BBMC: u1,
                    padding: u5,
                }),
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
                PUEA: mmio.Mmio(packed struct(u8) {
                    ///  Pull-up Enable Control bit
                    PUEA: u8,
                }),
                ///  Port Control Register
                PORTCR: mmio.Mmio(packed struct(u8) {
                    ///  Break-Before-Make Mode Enable
                    BBMA: u1,
                    padding: u7,
                }),
            };
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
            ///  ADC Control and Status Register B
            ADCSRB: mmio.Mmio(packed struct(u8) {
                ///  ADC Auto Trigger Sources
                ADTS: packed union {
                    raw: u3,
                    value: ANALOG_ADC_AUTO_TRIGGER,
                },
                ADLAR: u1,
                reserved6: u2,
                VDPD: u1,
                VDEN: u1,
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
            ///  The ADC multiplexer Selection Register
            ADMUX: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel and Gain Selection Bits
                MUX: u4,
                ADC0EN: u1,
                REFEN: u1,
                ///  Reference Selection Bit
                REFS: u2,
            }),
            reserved64: [59]u8,
            ///  Digital Input Disable Register 0
            DIDR0: mmio.Mmio(packed struct(u8) {
                ///  AREF Digital input Disable
                AREFD: u1,
                ///  AIN0 Digital input Disable
                AIN0D: u1,
                ///  AIN1 Digital input Disable
                AIN1D: u1,
                ///  ADC0 Digital Input Disable
                ADC0D: u1,
                ///  ADC1 Digital input Disable
                ADC1D: u1,
                ///  ADC2 Digital input Disable
                ADC2D: u1,
                ///  ADC3 Digital input Disable
                ADC3D: u1,
                ///  ADC4 Digital input Disable
                ADC4D: u1,
            }),
            ///  Digital Input Disable Register 1
            DIDR1: mmio.Mmio(packed struct(u8) {
                ///  ADC5 Digital input Disable
                ADC5D: u1,
                ///  ADC6 Digital input Disable
                ADC6D: u1,
                ///  ADC7 Digital input Disable
                ADC7D: u1,
                ///  ADC8 Digital Input Disable
                ADC8D: u1,
                padding: u4,
            }),
            ///  Digital Input Disable Register 2
            DIDR2: mmio.Mmio(packed struct(u8) {
                ///  ADC9 Digital input Disable
                ADC9D: u1,
                ///  ADC10 Digital input Disable
                ADC10D: u1,
                ///  ADC11 Digital input Disable
                ADC11D: u1,
                padding: u5,
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
                ACIRS: u2,
                ///  Analog Comparator Multiplexer Enable
                ACME: u1,
                ACCE: u1,
                reserved5: u1,
                ACLP: u1,
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
                ///  EEPROM Programming Mode Bits
                EEPM: packed union {
                    raw: u2,
                    value: EEP_MODE,
                },
                padding: u2,
            }),
            ///  EEPROM Data Register
            EEDR: u8,
            ///  EEPROM Read/Write Access
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
            pub const TC1 = extern struct {
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
                reserved14: [12]u8,
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset Timer/Counter1 and Timer/Counter0
                    PSR10: u1,
                    reserved7: u6,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                ///  Timer/Counter1 Input Capture Register Bytes
                ICR1: u16,
                ///  Timer/Counter1 Output Compare Register Bytes
                OCR1B: u16,
                ///  Timer/Counter1 Output Compare Register Bytes
                OCR1A: u16,
                ///  Timer/Counter1 Bytes
                TCNT1: u16,
                ///  Timer/Counter1 Control Register C
                TCCR1C: mmio.Mmio(packed struct(u8) {
                    reserved6: u6,
                    ///  Force Output Compare for Channel B
                    FOC1B: u1,
                    ///  Force Output Compare for Channel A
                    FOC1A: u1,
                }),
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
                reserved34: [29]u8,
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
                reserved48: [12]u8,
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset Timer/Counter1 and Timer/Counter0
                    PSR10: u1,
                    reserved7: u6,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
            };
        };

        ///  External Interrupts
        pub const EXINT = extern struct {
            ///  Pin Change Mask Register 0
            PCMSK0: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Masks
                PCINT: u8,
            }),
            ///  Pin Change Mask Register 1
            PCMSK1: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Masks
                PCINT: u4,
                padding: u4,
            }),
            ///  Pin Change Mask Register 2
            PCMSK2: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Masks
                PCINT: u6,
                padding: u2,
            }),
            reserved20: [17]u8,
            ///  General Interrupt Flag Register
            GIFR: mmio.Mmio(packed struct(u8) {
                reserved3: u3,
                ///  Pin Change Interrupt Flags
                PCIF: u3,
                ///  External Interrupt Flag 0
                INTF0: u1,
                padding: u1,
            }),
            ///  General Interrupt Mask Register
            GIMSK: mmio.Mmio(packed struct(u8) {
                reserved3: u3,
                ///  Pin Change Interrupt Enables
                PCIE: u3,
                ///  External Interrupt Request 0 Enable
                INT0: u1,
                padding: u1,
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

            pub const CPU_SLEEP_MODE = enum(u2) {
                ///  Idle
                IDLE = 0x0,
                ///  ADC Noise Reduction (If Available)
                ADC = 0x1,
                ///  Power Down
                PDOWN = 0x2,
                ///  Standby
                STDBY = 0x3,
            };

            ///  General Purpose I/O Register 0
            GPIOR0: u8,
            ///  General Purpose I/O Register 1
            GPIOR1: u8,
            ///  General Purpose I/O Register 2
            GPIOR2: u8,
            reserved27: [24]u8,
            ///  Configuration Change Protection
            CCP: u8,
            reserved30: [2]u8,
            ///  Clock Setting Register
            CLKSR: mmio.Mmio(packed struct(u8) {
                ///  Clock Select Bits
                CKSEL: u4,
                ///  Start-up Time
                SUT: u1,
                ///  Clock Output (active low)
                CKOUT_IO: u1,
                ///  Clock Switch Trigger
                CSTR: u1,
                ///  Oscillator Ready
                OSCRDY: u1,
            }),
            ///  Clock Prescale Register
            CLKPR: mmio.Mmio(packed struct(u8) {
                ///  Clock Prescaler Select Bits
                CLKPS: packed union {
                    raw: u4,
                    value: CPU_CLK_PRESCALE_4_BITS_SMALL,
                },
                padding: u4,
            }),
            ///  Power Reduction Register
            PRR: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction ADC
                PRADC: u1,
                ///  Power Reduction USART0
                PRUSART0: u1,
                ///  Power Reduction USART1
                PRUSART1: u1,
                ///  Power Reduction USI
                PRUSI: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                ///  Power Reduction TWI
                PRTWI: u1,
                padding: u1,
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
                padding: u4,
            }),
            ///  MCU Control Register
            MCUCR: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Sense Control 0 bits
                ISC0: u2,
                reserved4: u2,
                ///  Sleep Enable
                SE: u1,
                ///  Sleep Mode Select Bits
                SM: packed union {
                    raw: u2,
                    value: CPU_SLEEP_MODE,
                },
                padding: u1,
            }),
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
                ///  Read Device Signature Imprint Table
                RSIG: u1,
                padding: u2,
            }),
            reserved41: [5]u8,
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
            reserved47: [3]u8,
            ///  Oscillator Calibration Value
            OSCCAL0: u8,
            OSCTCAL0A: u8,
            OSCTCAL0B: u8,
            OSCCAL1: u8,
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
            ///  USI Buffer Register
            USIBR: u8,
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
                ///  USART I/O Data Register
                UDR0: u8,
                ///  USART Baud Rate Register Bytes
                UBRR0: u16,
                ///  USART Control and Status Register D
                UCSR0D: mmio.Mmio(packed struct(u8) {
                    reserved5: u5,
                    ///  USART RX Start Frame Detection Enable
                    SFDE0: u1,
                    ///  USART RX Start Flag
                    RXS0: u1,
                    ///  USART RX Start Interrupt Enable
                    RXSIE0: u1,
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
            };

            ///  USART
            pub const USART1 = extern struct {
                ///  USART I/O Data Register
                UDR1: u8,
                ///  USART Baud Rate Register Bytes
                UBRR1: u16,
                ///  USART Control and Status Register D
                UCSR1D: mmio.Mmio(packed struct(u8) {
                    reserved5: u5,
                    ///  USART RX Start Frame Detection Enable
                    SFDE1: u1,
                    ///  USART RX Start Flag
                    RXS1: u1,
                    ///  USART RX Start Interrupt Enable
                    RXSIE1: u1,
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
            };
        };

        ///  Watchdog Timer
        pub const WDT = extern struct {
            pub const WDOG_TIMER_PRESCALE_4BITS_32KHZ = enum(u4) {
                ///  Oscillator Cycles 512 (16 ms)
                OSCILLATOR_CYCLES_512_16_MS = 0x0,
                ///  Oscillator Cycles 1K (32 ms)
                OSCILLATOR_CYCLES_1K_32_MS = 0x1,
                ///  Oscillator Cycles 2K (64 ms)
                OSCILLATOR_CYCLES_2K_64_MS = 0x2,
                ///  Oscillator Cycles 4K (0.125 s)
                OSCILLATOR_CYCLES_4K_0_125_S = 0x3,
                ///  Oscillator Cycles 8K (0.25 s)
                OSCILLATOR_CYCLES_8K_0_25_S = 0x4,
                ///  Oscillator Cycles 16K (0.5 s)
                OSCILLATOR_CYCLES_16K_0_5_S = 0x5,
                ///  Oscillator Cycles 32K (1.0 s)
                OSCILLATOR_CYCLES_32K_1_0_S = 0x6,
                ///  Oscillator Cycles 64K (2.0 s)
                OSCILLATOR_CYCLES_64K_2_0_S = 0x7,
                ///  Oscillator Cycles 128K (4.0 s)
                OSCILLATOR_CYCLES_128K_4_0_S = 0x8,
                ///  Oscillator Cycles 256K (8.0 s)
                OSCILLATOR_CYCLES_256K_8_0_S = 0x9,
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
