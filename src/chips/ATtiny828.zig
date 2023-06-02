const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny828 = struct {
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
            ///  Timer/Counter0 Compare Match A
            TIMER0_COMPA: Handler = unhandled,
            ///  Timer/Counter0 Compare Match B
            TIMER0_COMPB: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  SPI Serial Transfer Complete
            SPI_STC: Handler = unhandled,
            ///  USART, Start
            USART_START: Handler = unhandled,
            ///  USART Rx Complete
            USART_RX: Handler = unhandled,
            ///  USART, Data Register Empty
            USART_UDRE: Handler = unhandled,
            ///  USART Tx Complete
            USART_TX: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  EEPROM Ready
            EE_READY: Handler = unhandled,
            ///  Analog Comparator
            ANALOG_COMP: Handler = unhandled,
            ///  Two-wire Serial Interface
            TWI_SLAVE: Handler = unhandled,
            ///  Store Program Memory Read
            SPM_Ready: Handler = unhandled,
            ///  Touch Sensing
            QTRIP: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @intToPtr(*volatile types.peripherals.FUSE, 0x0);
            ///  Lockbits
            pub const LOCKBIT = @intToPtr(*volatile types.peripherals.LOCKBIT, 0x0);
            ///  I/O Port
            pub const PORTA = @intToPtr(*volatile types.peripherals.PORT.PORTA, 0x20);
            ///  I/O Port
            pub const PORTB = @intToPtr(*volatile types.peripherals.PORT.PORTB, 0x24);
            ///  I/O Port
            pub const PORTC = @intToPtr(*volatile types.peripherals.PORT.PORTC, 0x28);
            ///  I/O Port
            pub const PORTD = @intToPtr(*volatile types.peripherals.PORT.PORTD, 0x2c);
            ///  Timer/Counter, 8-bit
            pub const TC0 = @intToPtr(*volatile types.peripherals.TC8.TC0, 0x35);
            ///  Timer/Counter, 16-bit
            pub const TC1 = @intToPtr(*volatile types.peripherals.TC16.TC1, 0x36);
            ///  External Interrupts
            pub const EXINT = @intToPtr(*volatile types.peripherals.EXINT, 0x3b);
            ///  CPU Registers
            pub const CPU = @intToPtr(*volatile types.peripherals.CPU, 0x3e);
            ///  EEPROM
            pub const EEPROM = @intToPtr(*volatile types.peripherals.EEPROM, 0x3f);
            ///  Serial Peripheral Interface
            pub const SPI = @intToPtr(*volatile types.peripherals.SPI, 0x4c);
            ///  Analog Comparator
            pub const AC = @intToPtr(*volatile types.peripherals.AC, 0x4f);
            ///  Watchdog Timer
            pub const WDT = @intToPtr(*volatile types.peripherals.WDT, 0x60);
            ///  Analog-to-Digital Converter
            pub const ADC = @intToPtr(*volatile types.peripherals.ADC, 0x78);
            ///  Two Wire Serial Interface
            pub const TWI = @intToPtr(*volatile types.peripherals.TWI, 0xb8);
            ///  USART
            pub const USART = @intToPtr(*volatile types.peripherals.USART, 0xc0);
            ///  Timer/Counter Output Compare Pin
            pub const TOCPM = @intToPtr(*volatile types.peripherals.TOCPM, 0xe2);
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_SUT_CKSEL = enum(u6) {
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 + 14 CK + 0 ms
                EXTCLK_6CK_14CK_0MS = 0x0,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 + 14 CK + 0 ms
                EXTCLK_6CK_14CK_0MS = 0x1,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 + 14 CK + 4.1 ms
                EXTCLK_6CK_14CK_4MS1 = 0x10,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 + 14 CK + 4.1 ms
                EXTCLK_6CK_14CK_4MS1 = 0x11,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 + 14 CK + 65 ms
                EXTCLK_6CK_14CK_65MS = 0x20,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 + 14 CK + 65 ms
                EXTCLK_6CK_14CK_65MS = 0x30,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 + 14 CK + 65 ms
                EXTCLK_6CK_14CK_65MS = 0x21,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 + 14 CK + 65 ms
                EXTCLK_6CK_14CK_65MS = 0x31,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 + 14 CK + 0 ms
                INTRCOSC_8MHZ_6CK_14CK_0MS = 0x2,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 + 14 CK + 4.1 ms
                INTRCOSC_8MHZ_6CK_14CK_4MS1 = 0x12,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 + 14 CK + 65 ms
                INTRCOSC_8MHZ_6CK_14CK_65MS = 0x22,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 + 14 CK + 65 ms
                INTRCOSC_8MHZ_6CK_14CK_65MS = 0x32,
                ///  Int. ULP Osc. 32kHz; Start-up time PWRDWN/RESET: 6 + 14 CK + 0 ms
                INTULPOSC_32KHZ_6CK_14CK_0MS = 0x3,
                ///  Int. ULP Osc. 32kHz; Start-up time PWRDWN/RESET: 6 + 14 CK + 4.1 ms
                INTULPOSC_32KHZ_6CK_14CK_4MS1 = 0x13,
                ///  Int. ULP Osc. 32kHz; Start-up time PWRDWN/RESET: 6 + 14 CK + 65 ms
                INTULPOSC_32KHZ_6CK_14CK_65MS = 0x23,
                ///  Int. ULP Osc. 32kHz; Start-up time PWRDWN/RESET: 6 + 14 CK + 65 ms
                INTULPOSC_32KHZ_6CK_14CK_65MS = 0x33,
                _,
            };

            pub const ENUM_BODLEVEL = enum(u3) {
                ///  Brown-out detection disabled
                DISABLED = 0x7,
                ///  Brown-out detection at VCC=4.3 V
                @"4V3" = 0x4,
                ///  Brown-out detection at VCC=2.7 V
                @"2V7" = 0x5,
                ///  Brown-out detection at VCC=1.8 V
                @"1V8" = 0x6,
                _,
            };

            pub const ENUM_BOOTSZ = enum(u2) {
                ///  Boot Flash size=128 words Boot address=$0F80
                @"128W_0F80" = 0x3,
                ///  Boot Flash size=256 words Boot address=$0F00
                @"256W_0F00" = 0x2,
                ///  Boot Flash size=512 words Boot address=$0E00
                @"512W_0E00" = 0x1,
                ///  Boot Flash size=1024 words Boot address=$0C00
                @"1024W_0C00" = 0x0,
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
                SUT_CKSEL_bit0: u1,
                ///  Select Clock Source
                SUT_CKSEL_bit1: u1,
                reserved4: u2,
                ///  Select Clock Source
                SUT_CKSEL_bit2: u1,
                ///  Select Clock Source
                SUT_CKSEL_bit3: u1,
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
                ///  Reset Disabled (Enable PC6 as i/o pin)]
                RSTDISBL: u1,
            }),
            EXTENDED: mmio.Mmio(packed struct(u8) {
                ///  Boot Reset vector Enabled
                BOOTRST: u1,
                ///  Select boot size
                BOOTSZ: packed union {
                    raw: u2,
                    value: ENUM_BOOTSZ,
                },
                reserved4: u1,
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

        ///  I/O Port
        pub const PORT = struct {
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
            };

            ///  I/O Port
            pub const PORTB = extern struct {
                ///  Port B Input Pins
                PINB: u8,
                ///  Data Direction Register, Port B
                DDRB: u8,
                ///  Port B Data Register
                PORTB: u8,
                ///  Pull-up Enable Control Register
                PUEB: u8,
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
                PUEC: u8,
                reserved12: [8]u8,
                ///  Port High Drive Enable Register
                PHDE: mmio.Mmio(packed struct(u8) {
                    reserved2: u2,
                    ///  Port C High Drive Enable
                    PHDEC: u1,
                    padding: u5,
                }),
            };

            ///  I/O Port
            pub const PORTD = extern struct {
                ///  Port D Input Pins
                PIND: u8,
                ///  Data Direction Register, Port D
                DDRD: u8,
                ///  Port D Data Register
                PORTD: u8,
                ///  Pull-up Enable Control Register
                PUED: u8,
            };
        };

        ///  CPU Registers
        pub const CPU = extern struct {
            ///  Oscillator Calibration Values
            pub const OSCCAL_VALUE_ADDRESSES = enum(u2) {
                ///  8.0 MHz
                @"8_0_MHz" = 0x0,
                ///  32 kHz
                @"32_kHz" = 0x3,
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

            ///  General Purpose I/O Register 0
            GPIOR0: u8,
            reserved12: [11]u8,
            ///  General Purpose I/O Register 1
            GPIOR1: u8,
            ///  General Purpose I/O Register 2
            GPIOR2: u8,
            reserved21: [7]u8,
            ///  Sleep Mode Control Register
            SMCR: mmio.Mmio(packed struct(u8) {
                ///  Sleep Enable
                SE: u1,
                ///  Sleep Mode Select Bits
                SM: packed union {
                    raw: u2,
                    value: CPU_SLEEP_MODE2,
                },
                padding: u5,
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
                reserved1: u1,
                ///  Interrupt Vector Select
                IVSEL: u1,
                padding: u6,
            }),
            ///  Configuration Change Protection
            CCP: u8,
            ///  Store Program Memory Control and Status Register
            SPMCSR: mmio.Mmio(packed struct(u8) {
                ///  Store Program Memory Enable
                SPMEN: u1,
                ///  Page Erase
                PGERS: u1,
                ///  Page Write
                PGWRT: u1,
                ///  Read/Write Fuse and Lock Bits
                RWFLB: u1,
                ///  Read-While-Write section read enable
                RWWSRE: u1,
                ///  Read Device Signature Imprint Table
                RSIG: u1,
                ///  Read-While-Write Section Busy
                RWWSB: u1,
                ///  SPM Interrupt Enable
                SPMIE: u1,
            }),
            reserved31: [5]u8,
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
                padding: u4,
            }),
            reserved38: [2]u8,
            ///  Power Reduction Register
            PRR: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction ADC
                PRADC: u1,
                ///  Power Reduction USART 0
                PRUSART0: u1,
                ///  Power Reduction SPI
                PRSPI: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                reserved5: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                reserved7: u1,
                ///  Power Reduction TWI
                PRTWI: u1,
            }),
            reserved40: [1]u8,
            ///  Oscillator Calibration Register 8MHz
            OSCCAL0: u8,
            ///  Oscillator Calibration Register 32kHz
            OSCCAL1: u8,
            reserved178: [136]u8,
            ///  Oscillator Temperature Calibration Register A
            OSCTCAL0A: u8,
            ///  Oscillator Temperature Calibration Register B
            OSCTCAL0B: u8,
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

        ///  Timer/Counter Output Compare Pin
        pub const TOCPM = extern struct {
            ///  Timer Output Compare Pin Mux Channel Output Enable
            TOCPMCOE: mmio.Mmio(packed struct(u8) {
                ///  Timer Output Compare Channel 0 Output Enable
                TOCC0OE: u1,
                ///  Timer Output Compare Channel 1 Output Enable
                TOCC1OE: u1,
                ///  Timer Output Compare Channel 2 Output Enable
                TOCC2OE: u1,
                ///  Timer Output Compare Channel 3 Output Enable
                TOCC3OE: u1,
                ///  Timer Output Compare Channel 4 Output Enable
                TOCC4OE: u1,
                ///  Timer Output Compare Channel 5 Output Enable
                TOCC5OE: u1,
                ///  Timer Output Compare Channel 6 Output Enable
                TOCC6OE: u1,
                ///  Timer Output Compare Channel 7 Output Enable
                TOCC7OE: u1,
            }),
            reserved6: [5]u8,
            ///  Timer Output Compare Pin Mux Selection 0
            TOCPMSA0: mmio.Mmio(packed struct(u8) {
                ///  Timer Output Compare Channel 0 Selection Bits
                TOCC0S: u2,
                ///  Timer Output Compare Channel 1 Selection Bits
                TOCC1S: u2,
                ///  Timer Output Compare Channel 2 Selection Bits
                TOCC2S: u2,
                ///  Timer Output Compare Channel 3 Selection Bits
                TOCC3S: u2,
            }),
            ///  Timer Output Compare Pin Mux Selection 1
            TOCPMSA1: mmio.Mmio(packed struct(u8) {
                ///  Timer Output Compare Channel 4 Selection Bits
                TOCC4S: u2,
                ///  Timer Output Compare Channel 5 Selection Bits
                TOCC5S: u2,
                ///  Timer Output Compare Channel 6 Selection Bits
                TOCC6S: u2,
                ///  Timer Output Compare Channel 7 Selection Bits
                TOCC7S: u2,
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
                ADTS: packed union {
                    raw: u3,
                    value: ANALOG_ADC_AUTO_TRIGGER,
                },
                ADLAR: u1,
                padding: u4,
            }),
            ///  The ADC multiplexer Selection Register A
            ADMUXA: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel Selection Bits 4:0
                MUX: u5,
                padding: u3,
            }),
            ///  The ADC multiplexer Selection Register B
            ADMUXB: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel Selection Bit 5
                MUX5: u1,
                reserved5: u4,
                ///  Reference Selection Bit
                REFS: u1,
                padding: u2,
            }),
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
            ///  Digital Input Disable Register 1
            DIDR1: mmio.Mmio(packed struct(u8) {
                ///  ADC8 Digital input Disable
                ADC8D: u1,
                ///  ADC9 Digital input Disable
                ADC9D: u1,
                ///  ADC10 Digital input Disable
                ADC10D: u1,
                ///  ADC11 Digital input Disable
                ADC11D: u1,
                ///  ADC12 Digital input Disable
                ADC12D: u1,
                ///  ADC13 Digital input Disable
                ADC13D: u1,
                ///  ADC14 Digital input Disable
                ADC14D: u1,
                ///  ADC15 Digital input Disable
                ADC15D: u1,
            }),
            reserved102: [94]u8,
            ///  Digital Input Disable Register 2
            DIDR2: mmio.Mmio(packed struct(u8) {
                ///  ADC16 Digital input Disable
                ADC16D: u1,
                ///  ADC17 Digital input Disable
                ADC17D: u1,
                ///  ADC18 Digital input Disable
                ADC18D: u1,
                ///  ADC19 Digital input Disable
                ADC19D: u1,
                ///  ADC20 Digital input Disable
                ADC20D: u1,
                ///  ADC21 Digital input Disable
                ADC21D: u1,
                ///  ADC22 Digital input Disable
                ADC22D: u1,
                ///  ADC23 Digital input Disable
                ADC23D: u1,
            }),
            ///  Digital Input Disable Register 2
            DIDR3: mmio.Mmio(packed struct(u8) {
                ///  ADC24 Digital input Disable
                ADC24D: u1,
                ///  ADC25 Digital input Disable
                ADC25D: u1,
                ///  ADC26 Digital input Disable
                ADC26D: u1,
                ///  ADC27 Digital input Disable
                ADC27D: u1,
                padding: u4,
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
                ///  Analog Comparator Positive Input Multiplexer Bits 1:0
                ACPMUX: u2,
                ///  Analog Comparator Negative Input Multiplexer
                ACNMUX: u2,
                reserved6: u2,
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
                ///  Analog Comparator Positive Input Multiplexer Bit 2
                ACPMUX2: u1,
                ///  Analog Comparator Disable
                ACD: u1,
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
                ///  External Interrupt Request Enables
                INT: u2,
                padding: u6,
            }),
            reserved45: [42]u8,
            ///  Pin Change Interrupt Control Register
            PCICR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Enables
                PCIE: u4,
                padding: u4,
            }),
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
                padding: u4,
            }),
            reserved48: [1]u8,
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
            reserved56: [5]u8,
            ///  Pin Change Mask Register 3
            PCMSK3: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Masks
                PCINT: u4,
                padding: u4,
            }),
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
            EEAR: u8,
        };

        ///  Two Wire Serial Interface
        pub const TWI = extern struct {
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
            ///  TWI Slave Control Register B
            TWSCRB: mmio.Mmio(packed struct(u8) {
                TWCMD: u2,
                ///  TWI Acknowledge Action
                TWAA: u1,
                ///  TWI High Noise Mode
                TWHNM: u1,
                padding: u4,
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
                ///  TWI Data Interrupt Flag.
                TWDIF: u1,
            }),
            ///  TWI Slave Address Mask Register
            TWSAM: mmio.Mmio(packed struct(u8) {
                ///  TWI Address Enable
                TWAE: u1,
                ///  TWI Address Mask Bits
                TWSAM: u7,
            }),
            ///  TWI Slave Address Register
            TWSA: u8,
            ///  TWI Slave Data Register
            TWSD: mmio.Mmio(packed struct(u8) {
                ///  TWI slave data bit
                TWSD: u8,
            }),
        };

        ///  USART
        pub const USART = extern struct {
            pub const COMM_USART_MODE = enum(u2) {
                ///  Asynchronous Operation
                ASYNCHRONOUS_OPERATION = 0x0,
                ///  Synchronous Operation
                SYNCHRONOUS_OPERATION = 0x1,
                _,
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

            ///  USART Control and Status Register A
            UCSRA: mmio.Mmio(packed struct(u8) {
                ///  Multi-processor Communication Mode
                MPCM: u1,
                ///  Double the USART transmission speed
                U2X: u1,
                ///  Parity Error
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
            ///  USART Control and Status Register C
            UCSRC: mmio.Mmio(packed struct(u8) {
                ///  Clock Polarity
                UCPOL: u1,
                ///  Character Size
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
                    raw: u2,
                    value: COMM_USART_MODE,
                },
            }),
            ///  USART Control and Status Register D
            UCSRD: mmio.Mmio(packed struct(u8) {
                reserved5: u5,
                ///  USART RX Start Frame Detection Enable
                SFDE: u1,
                ///  USART RX Start Flag
                RXS: u1,
                ///  USART RX Start Interrupt Enable
                RXSIE: u1,
            }),
            ///  USART Baud Rate Register Bytes
            UBRR: u16,
            ///  USART I/O Data Register
            UDR: u8,
        };
    };
};
