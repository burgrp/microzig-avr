const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny861 = struct {
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
            ///  Pin Change Interrupt
            PCINT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match 1A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer/Counter1 Compare Match 1B
            TIMER1_COMPB: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIMER1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  USI Start
            USI_START: Handler = unhandled,
            ///  USI Overflow
            USI_OVF: Handler = unhandled,
            ///  EEPROM Ready
            EE_RDY: Handler = unhandled,
            ///  Analog Comparator
            ANA_COMP: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  Watchdog Time-Out
            WDT: Handler = unhandled,
            ///  External Interrupt 1
            INT1: Handler = unhandled,
            ///  Timer/Counter0 Compare Match A
            TIMER0_COMPA: Handler = unhandled,
            ///  Timer/Counter0 Compare Match B
            TIMER0_COMPB: Handler = unhandled,
            ///  ADC Conversion Complete
            TIMER0_CAPT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match D
            TIMER1_COMPD: Handler = unhandled,
            ///  Timer/Counter1 Fault Protection
            FAULT_PROTECTION: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @as(*volatile types.peripherals.FUSE, @ptrFromInt(0x0));
            ///  Lockbits
            pub const LOCKBIT = @as(*volatile types.peripherals.LOCKBIT, @ptrFromInt(0x0));
            ///  Timer/Counter, 16-bit
            pub const TC1 = @as(*volatile types.peripherals.TC16.TC1, @ptrFromInt(0x20));
            ///  Analog-to-Digital Converter
            pub const ADC = @as(*volatile types.peripherals.ADC, @ptrFromInt(0x21));
            ///  Analog Comparator
            pub const AC = @as(*volatile types.peripherals.AC, @ptrFromInt(0x28));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x2a));
            ///  Universal Serial Interface
            pub const USI = @as(*volatile types.peripherals.USI, @ptrFromInt(0x2d));
            ///  Timer/Counter, 8-bit
            pub const TC0 = @as(*volatile types.peripherals.TC8.TC0, @ptrFromInt(0x32));
            ///  I/O Port
            pub const PORTB = @as(*volatile types.peripherals.PORT.PORTB, @ptrFromInt(0x36));
            ///  I/O Port
            pub const PORTA = @as(*volatile types.peripherals.PORT.PORTA, @ptrFromInt(0x39));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3c));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x41));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x42));
            ///  Bootloader
            pub const BOOT_LOAD = @as(*volatile types.peripherals.BOOT_LOAD, @ptrFromInt(0x57));
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_SUT_CKSEL = enum(u6) {
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 CK/14 CK + 0 ms
                EXTCLK_6CK_14CK_0MS = 0x0,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4 ms
                EXTCLK_6CK_14CK_4MS = 0x10,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 CK/14 CK + 64 ms
                EXTCLK_6CK_14CK_64MS = 0x20,
                ///  PLL Clock; Start-up time PWRDWN/RESET: 1K CK/14 CK + 8 ms
                PLLCLK_1KCK_14CK_8MS = 0x1,
                ///  PLL Clock; Start-up time PWRDWN/RESET: 16K CK/14 CK + 8 ms
                PLLCLK_16KCK_14CK_8MS = 0x11,
                ///  PLL Clock; Start-up time PWRDWN/RESET: 1K CK/14 CK + 68 ms
                PLLCLK_1KCK_14CK_68MS = 0x21,
                ///  PLL Clock; Start-up time PWRDWN/RESET: 16K CK/14 CK + 68 ms
                PLLCLK_16KCK_14CK_68MS = 0x31,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 0 ms
                INTRCOSC_8MHZ_6CK_14CK_0MS = 0x2,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4 ms
                INTRCOSC_8MHZ_6CK_14CK_4MS = 0x12,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 64 ms
                INTRCOSC_8MHZ_6CK_14CK_64MS = 0x22,
                ///  WD. Osc. 128 kHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 0 ms
                WDOSC_128KHZ_6CK_14CK_0MS = 0x3,
                ///  WD. Osc. 128 kHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4 ms
                WDOSC_128KHZ_6CK_14CK_4MS = 0x13,
                ///  WD. Osc. 128 kHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 64 ms
                WDOSC_128KHZ_6CK_14CK_64MS = 0x23,
                ///  Ext. Low-Freq. Crystal; Start-up time PWRDWN/RESET: 1 CK 4 ms
                EXTLOFXTAL_1CK_4MS = 0x4,
                ///  Ext. Low-Freq. Crystal; Start-up time PWRDWN/RESET: 1 CK + 64 ms
                EXTLOFXTAL_1CK_64MS = 0x14,
                ///  Ext. Low-Freq. Crystal; Start-up time PWRDWN/RESET: 32 CK + 64 ms
                EXTLOFXTAL_32CK_64MS = 0x24,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTCRES_0MHZ4_0MHZ9_258CK_14CK_4MS1 = 0x8,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTCRES_0MHZ4_0MHZ9_258CK_14CK_65MS = 0x18,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTCRES_0MHZ4_0MHZ9_1KCK_14CK_0MS = 0x28,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTCRES_0MHZ4_0MHZ9_1KCK_14CK_4MS1 = 0x38,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTCRES_0MHZ4_0MHZ9_1KCK_14CK_65MS = 0x9,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_0MS = 0x19,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_4MS1 = 0x29,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_65MS = 0x39,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTCRES_0MHZ9_3MHZ_258CK_14CK_4MS1 = 0xa,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTCRES_0MHZ9_3MHZ_258CK_14CK_65MS = 0x1a,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTCRES_0MHZ9_3MHZ_1KCK_14CK_0MS = 0x2a,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTCRES_0MHZ9_3MHZ_1KCK_14CK_4MS1 = 0x3a,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTCRES_0MHZ9_3MHZ_1KCK_14CK_65MS = 0xb,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_0MS = 0x1b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_4MS1 = 0x2b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_65MS = 0x3b,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTCRES_3MHZ_8MHZ_258CK_14CK_4MS1 = 0xc,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTCRES_3MHZ_8MHZ_258CK_14CK_65MS = 0x1c,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTCRES_3MHZ_8MHZ_1KCK_14CK_0MS = 0x2c,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTCRES_3MHZ_8MHZ_1KCK_14CK_4MS1 = 0x3c,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTCRES_3MHZ_8MHZ_1KCK_14CK_65MS = 0xd,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_0MS = 0x1d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_4MS1 = 0x2d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_65MS = 0x3d,
                ///  Ext. Ceramic Res. 8.0- MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTCRES_8MHZ_XX_258CK_14CK_4MS1 = 0xe,
                ///  Ext. Ceramic Res. 8.0- MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTCRES_8MHZ_XX_258CK_14CK_65MS = 0x1e,
                ///  Ext. Ceramic Res. 8.0- MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTCRES_8MHZ_XX_1KCK_14CK_0MS = 0x2e,
                ///  Ext. Ceramic Res. 8.0- MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTCRES_8MHZ_XX_1KCK_14CK_4MS1 = 0x3e,
                ///  Ext. Ceramic Res. 8.0- MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTCRES_8MHZ_XX_1KCK_14CK_65MS = 0xf,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_8MHZ_XX_16KCK_14CK_0MS = 0x1f,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_8MHZ_XX_16KCK_14CK_4MS1 = 0x2f,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_8MHZ_XX_16KCK_14CK_65MS = 0x3f,
                _,
            };

            pub const ENUM_BODLEVEL = enum(u3) {
                ///  Brown-out detection at VCC=4.3 V
                @"4V3" = 0x4,
                ///  Brown-out detection at VCC=2.7 V
                @"2V7" = 0x5,
                ///  Brown-out detection at VCC=1.8 V
                @"1V8" = 0x6,
                ///  Brown-out detection at VCC=2.3 V
                @"2V3" = 0x3,
                ///  Brown-out detection at VCC=2.2 V
                @"2V2" = 0x2,
                ///  Brown-out detection at VCC=1.9 V
                @"1V9" = 0x1,
                ///  Brown-out detection at VCC=2.0 V
                @"2V0" = 0x0,
                ///  Brown-out detection disabled
                DISABLED = 0x7,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock source
                SUT_CKSEL: packed union {
                    raw: u6,
                    value: ENUM_SUT_CKSEL,
                },
                ///  Clock output on PORTB5
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
                ///  Reset Disabled (Enable PB7 as i/o pin)
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
                AREFD: u1,
                ///  ADC3 Digital input Disable
                ADC3D: u1,
                ///  ADC4 Digital input Disable
                ADC4D: u1,
                ///  ADC5 Digital input Disable
                ADC5D: u1,
                ///  ADC6 Digital input Disable
                ADC6D: u1,
            }),
            ///  Digital Input Disable Register 1
            DIDR1: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  ADC7 Digital input Disable
                ADC7D: u1,
                ///  ADC8 Digital input Disable
                ADC8D: u1,
                ///  ADC9 Digital input Disable
                ADC9D: u1,
                ///  ADC10 Digital input Disable
                ADC10D: u1,
            }),
            ///  ADC Control and Status Register B
            ADCSRB: mmio.Mmio(packed struct(u8) {
                ///  ADC Auto Trigger Sources
                ADTS: packed union {
                    raw: u3,
                    value: ANALOG_ADC_AUTO_TRIGGER3,
                },
                ///  Analog Channel and Gain Selection Bit 5
                MUX5: u1,
                ///  Reference Selection Bit
                REFS2: u1,
                ///  Input Polarity Mode
                IPR: u1,
                ///  Gain Select
                GSEL: u1,
                ///  Bipolar Input Mode
                BIN: u1,
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
                MUX: u5,
                ///  Left Adjust Result
                ADLAR: u1,
                ///  Reference Selection Bits
                REFS: u2,
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

            ///  Analog Comparator Control And Status Register A
            ACSRA: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator Interrupt Mode Select bits
                ACIS: packed union {
                    raw: u2,
                    value: ANALOG_COMP_INTERRUPT,
                },
                ///  Analog Comparator Multiplexer Enable
                ACME: u1,
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
            ///  Analog Comparator Control And Status Register B
            ACSRB: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator Multiplexer
                ACM: u3,
                reserved6: u3,
                ///  Hysteresis Level
                HLEV: u1,
                ///  Hysteresis Select
                HSEL: u1,
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
            ///  USI Buffer Register
            USIBR: u8,
            ///  USI Pin Position
            USIPP: u8,
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
            ///  EEPROM Address Register Bytes
            EEAR: u16,
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
                ///  Timer/Counter0 High
                TCNT0H: u8,
                ///  Timer/Counter Control Register A
                TCCR0A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM00: u1,
                    reserved3: u2,
                    ///  Analog Comparator Input Capture Enable
                    ACIC0: u1,
                    ///  Input Capture Edge Select
                    ICES0: u1,
                    ///  Input Capture Noice Canceler
                    ICNC0: u1,
                    ///  Input Capture Mode Enable
                    ICEN0: u1,
                    ///  Timer/Counter 0 Width
                    TCW0: u1,
                }),
                reserved32: [28]u8,
                ///  Timer/Counter0 Low
                TCNT0L: u8,
                ///  Timer/Counter Control Register B
                TCCR0B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select
                    CS0: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Timer/Counter 0 Prescaler Reset
                    PSR0: u1,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                    padding: u3,
                }),
                reserved38: [4]u8,
                ///  Timer/Counter0 Interrupt Flag register
                TIFR: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Input Capture Flag
                    ICF0: u1,
                    ///  Timer/Counter0 Overflow Flag
                    TOV0: u1,
                    reserved3: u1,
                    ///  Timer/Counter0 Output Compare Flag 0B
                    OCF0B: u1,
                    ///  Timer/Counter0 Output Compare Flag 0A
                    OCF0A: u1,
                    padding: u3,
                }),
                ///  Timer/Counter Interrupt Mask Register
                TIMSK: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Input Capture Interrupt Enable
                    TICIE0: u1,
                    ///  Timer/Counter0 Overflow Interrupt Enable
                    TOIE0: u1,
                    reserved3: u1,
                    ///  Timer/Counter0 Output Compare Match B Interrupt Enable
                    OCIE0B: u1,
                    ///  Timer/Counter0 Output Compare Match A Interrupt Enable
                    OCIE0A: u1,
                    padding: u3,
                }),
            };
        };

        ///  Timer/Counter, 16-bit
        pub const TC16 = struct {
            pub const MISC_2BIT_SCALE = enum(u2) {
                ///  1x
                @"1X" = 0x0,
                ///  2x
                @"2X" = 0x1,
                ///  4x
                @"4X" = 0x2,
                ///  8x
                @"8X" = 0x3,
            };

            pub const CLK_SEL_4BIT = enum(u4) {
                ///  No Clock Source (Stopped)
                NO_CLOCK_SOURCE_STOPPED = 0x0,
                ///  Running, No Prescaling
                RUNNING_NO_PRESCALING = 0x1,
                ///  Running, CLK/2
                RUNNING_CLK_2 = 0x2,
                ///  Running, CLK/4
                RUNNING_CLK_4 = 0x3,
                ///  Running, CLK/8
                RUNNING_CLK_8 = 0x4,
                ///  Running, CLK/16
                RUNNING_CLK_16 = 0x5,
                ///  Running, CLK/32
                RUNNING_CLK_32 = 0x6,
                ///  Running, CLK/64
                RUNNING_CLK_64 = 0x7,
                ///  Running, CLK/128
                RUNNING_CLK_128 = 0x8,
                ///  Running, CLK/256
                RUNNING_CLK_256 = 0x9,
                ///  Running, CLK/512
                RUNNING_CLK_512 = 0xa,
                ///  Running, CLK/1024
                RUNNING_CLK_1024 = 0xb,
                ///  Running, CLK/2048
                RUNNING_CLK_2048 = 0xc,
                ///  Running, CLK/4096
                RUNNING_CLK_4096 = 0xd,
                ///  Running, CLK/8192
                RUNNING_CLK_8192 = 0xe,
                ///  Running, CLK/16384
                RUNNING_CLK_16384 = 0xf,
            };

            pub const PULSE_WIDTH_MODU2 = enum(u2) {
                ///  Fast PWM (NB! PWMx must be set!)
                FAST_PWM_NB_PWMX_MUST_BE_SET = 0x0,
                ///  Phase and Frequency Correct PWM
                PHASE_AND_FREQUENCY_CORRECT_PWM = 0x1,
                ///  PWM6/Single-slope
                PWM6_SINGLE_SLOPE = 0x2,
                ///  PWM6/Dual-slope
                PWM6_DUAL_SLOPE = 0x3,
            };

            ///  Timer/Counter, 16-bit
            pub const TC1 = extern struct {
                ///  Timer/Counter1 Control Register E
                TCCR1E: mmio.Mmio(packed struct(u8) {
                    ///  Ouput Compare Override Enable Bits
                    OC1OE: u6,
                    padding: u2,
                }),
                reserved36: [35]u8,
                ///  Timer/Counter 1 Dead Time Value
                DT1: mmio.Mmio(packed struct(u8) {
                    DT1L: u4,
                    DT1H: u4,
                }),
                ///  Timer/Counter 1 Register High
                TC1H: u8,
                ///  Timer/Counter Control Register D
                TCCR1D: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode Bit
                    WGM1: packed union {
                        raw: u2,
                        value: PULSE_WIDTH_MODU2,
                    },
                    ///  Fault Protection Interrupt Flag
                    FPF1: u1,
                    ///  Fault Protection Analog Comparator Enable
                    FPAC1: u1,
                    ///  Fault Protection Edge Select
                    FPES1: u1,
                    ///  Fault Protection Noise Canceler
                    FPNC1: u1,
                    ///  Fault Protection Mode Enable
                    FPEN1: u1,
                    ///  Fault Protection Interrupt Enable
                    FPIE1: u1,
                }),
                ///  Timer/Counter Control Register C
                TCCR1C: mmio.Mmio(packed struct(u8) {
                    ///  Pulse Width Modulator D Enable
                    PWM1D: u1,
                    ///  Force Output Compare Match 1D
                    FOC1D: u1,
                    ///  Comparator D output mode
                    COM1D: u2,
                    ///  COM1B0 Shadow Bit
                    COM1B0S: u1,
                    ///  COM1B1 Shadow Bit
                    COM1B1S: u1,
                    ///  COM1A0 Shadow Bit
                    COM1A0S: u1,
                    ///  COM1A1 Shadow Bit
                    COM1A1S: u1,
                }),
                reserved42: [2]u8,
                ///  Output compare register
                OCR1D: u8,
                ///  Output compare register
                OCR1C: u8,
                ///  Output Compare Register
                OCR1B: u8,
                ///  Output Compare Register
                OCR1A: u8,
                ///  Timer/Counter Register
                TCNT1: u8,
                ///  Timer/Counter Control Register B
                TCCR1B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select Bits
                    CS1: packed union {
                        raw: u4,
                        value: CLK_SEL_4BIT,
                    },
                    ///  Dead Time Prescaler
                    DTPS1: packed union {
                        raw: u2,
                        value: MISC_2BIT_SCALE,
                    },
                    ///  Timer/Counter 1 Prescaler reset
                    PSR1: u1,
                    ///  PWM Inversion Mode
                    PWM1X: u1,
                }),
                ///  Timer/Counter Control Register A
                TCCR1A: mmio.Mmio(packed struct(u8) {
                    ///  Pulse Width Modulator Enable
                    PWM1B: u1,
                    ///  Pulse Width Modulator Enable
                    PWM1A: u1,
                    ///  Force Output Compare Match 1B
                    FOC1B: u1,
                    ///  Force Output Compare Match 1A
                    FOC1A: u1,
                    ///  Compare Output Mode, Bits
                    COM1B: u2,
                    ///  Compare Output Mode, Bits
                    COM1A: u2,
                }),
                reserved56: [7]u8,
                ///  Timer/Counter Interrupt Flag Register
                TIFR: mmio.Mmio(packed struct(u8) {
                    reserved2: u2,
                    ///  Timer/Counter1 Overflow Flag
                    TOV1: u1,
                    reserved5: u2,
                    ///  Timer/Counter1 Output Compare Flag 1B
                    OCF1B: u1,
                    ///  Timer/Counter1 Output Compare Flag 1A
                    OCF1A: u1,
                    ///  Timer/Counter1 Output Compare Flag 1D
                    OCF1D: u1,
                }),
                ///  Timer/Counter Interrupt Mask Register
                TIMSK: mmio.Mmio(packed struct(u8) {
                    reserved2: u2,
                    ///  Timer/Counter1 Overflow Interrupt Enable
                    TOIE1: u1,
                    reserved5: u2,
                    ///  OCIE1A: Timer/Counter1 Output Compare B Interrupt Enable
                    OCIE1B: u1,
                    ///  OCIE1A: Timer/Counter1 Output Compare Interrupt Enable
                    OCIE1A: u1,
                    ///  OCIE1D: Timer/Counter1 Output Compare Interrupt Enable
                    OCIE1D: u1,
                }),
            };
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
                ///  Read fuse and lock bits
                RFLB: u1,
                ///  Clear temporary page buffer
                CTPB: u1,
                padding: u3,
            }),
        };

        ///  CPU Registers
        pub const CPU = extern struct {
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
                ///  8.0 MHz
                @"8_0_MHz" = 0x0,
                _,
            };

            ///  General purpose register 0
            GPIOR0: u8,
            ///  General Purpose register 1
            GPIOR1: u8,
            ///  General Purpose IO register 2
            GPIOR2: u8,
            reserved22: [19]u8,
            ///  debugWire data register
            DWDR: u8,
            reserved30: [7]u8,
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
            ///  PLL Control and status register
            PLLCSR: mmio.Mmio(packed struct(u8) {
                ///  PLL Lock detector
                PLOCK: u1,
                ///  PLL Enable
                PLLE: u1,
                ///  PCK Enable
                PCKE: u1,
                reserved7: u4,
                ///  Low speed mode
                LSM: u1,
            }),
            reserved39: [7]u8,
            ///  Oscillator Calibration Register
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
            reserved42: [2]u8,
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
                    value: CPU_SLEEP_MODE,
                },
                ///  Sleep Enable
                SE: u1,
                ///  Pull-up Disable
                PUD: u1,
                padding: u1,
            }),
            ///  Power Reduction Register
            PRR: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction ADC
                PRADC: u1,
                ///  Power Reduction USI
                PRUSI: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                padding: u4,
            }),
            reserved51: [6]u8,
            ///  Stack Pointer Bytes
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
    };
};
