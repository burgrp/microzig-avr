const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny25 = struct {
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
            ///  Pin change Interrupt Request 0
            PCINT0: Handler = unhandled,
            ///  Timer/Counter1 Compare Match 1A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIMER1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  EEPROM Ready
            EE_RDY: Handler = unhandled,
            ///  Analog comparator
            ANA_COMP: Handler = unhandled,
            ///  ADC Conversion ready
            ADC: Handler = unhandled,
            ///  Timer/Counter1 Compare Match B
            TIMER1_COMPB: Handler = unhandled,
            ///  Timer/Counter0 Compare Match A
            TIMER0_COMPA: Handler = unhandled,
            ///  Timer/Counter0 Compare Match B
            TIMER0_COMPB: Handler = unhandled,
            ///  Watchdog Time-out
            WDT: Handler = unhandled,
            ///  USI START
            USI_START: Handler = unhandled,
            ///  USI Overflow
            USI_OVF: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @intToPtr(*volatile types.peripherals.FUSE, 0x0);
            ///  Lockbits
            pub const LOCKBIT = @intToPtr(*volatile types.peripherals.LOCKBIT, 0x0);
            ///  Analog Comparator
            pub const AC = @intToPtr(*volatile types.peripherals.AC, 0x23);
            ///  Analog-to-Digital Converter
            pub const ADC = @intToPtr(*volatile types.peripherals.ADC, 0x23);
            ///  Universal Serial Interface
            pub const USI = @intToPtr(*volatile types.peripherals.USI, 0x2d);
            ///  CPU Registers
            pub const CPU = @intToPtr(*volatile types.peripherals.CPU, 0x31);
            ///  External Interrupts
            pub const EXINT = @intToPtr(*volatile types.peripherals.EXINT, 0x35);
            ///  I/O Port
            pub const PORTB = @intToPtr(*volatile types.peripherals.PORT.PORTB, 0x36);
            ///  EEPROM
            pub const EEPROM = @intToPtr(*volatile types.peripherals.EEPROM, 0x3c);
            ///  Watchdog Timer
            pub const WDT = @intToPtr(*volatile types.peripherals.WDT, 0x41);
            ///  Timer/Counter, 8-bit
            pub const TC1 = @intToPtr(*volatile types.peripherals.TC8.TC1, 0x43);
            ///  Timer/Counter, 8-bit
            pub const TC0 = @intToPtr(*volatile types.peripherals.TC8.TC0, 0x48);
            ///  Bootloader
            pub const BOOT_LOAD = @intToPtr(*volatile types.peripherals.BOOT_LOAD, 0x57);
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
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4.1 ms
                EXTCLK_6CK_14CK_4MS1 = 0x10,
                ///  Ext. Clock; Start-up time PWRDWN/RESET: 6 CK/14 CK + 65 ms
                EXTCLK_6CK_14CK_65MS = 0x20,
                ///  PLL Clock; Start-up time PWRDWN/RESET: 1K CK/14 CK + 4 ms
                PLLCLK_1KCK_14CK_4MS = 0x1,
                ///  PLL Clock; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4 ms
                PLLCLK_16KCK_14CK_4MS = 0x11,
                ///  PLL Clock; Start-up time PWRDWN/RESET: 1K CK/14 CK + 64 ms
                PLLCLK_1KCK_14CK_64MS = 0x21,
                ///  PLL Clock; Start-up time PWRDWN/RESET: 16K CK/14 CK + 64 ms
                PLLCLK_16KCK_14CK_64MS = 0x31,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 0 ms
                INTRCOSC_8MHZ_6CK_14CK_0MS = 0x2,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4 ms
                INTRCOSC_8MHZ_6CK_14CK_4MS = 0x12,
                ///  Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 64 ms
                INTRCOSC_8MHZ_6CK_14CK_64MS = 0x22,
                ///  ATtiny15 Comp: Int. RC Osc. 6.4 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 64 ms
                INTRCOSC_6MHZ4_6CK_14CK_64MS = 0x3,
                ///  ATtiny15 Comp: Int. RC Osc. 6.4 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4 ms
                INTRCOSC_6MHZ4_6CK_14CK_4MS = 0x23,
                ///  ATtiny15 Comp: Int. RC Osc. 6.4 MHz; Start-up time PWRDWN/RESET: 1 CK/14 CK + 0 ms
                INTRCOSC_6MHZ4_1CK_14CK_0MS = 0x33,
                ///  WD. Osc. 128 kHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 0 ms
                WDOSC_128KHZ_6CK_14CK_0MS = 0x4,
                ///  WD. Osc. 128 kHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 4 ms
                WDOSC_128KHZ_6CK_14CK_4MS = 0x14,
                ///  WD. Osc. 128 kHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 64 ms
                WDOSC_128KHZ_6CK_14CK_64MS = 0x24,
                ///  Ext. Low-Freq. Crystal; Start-up time PWRDWN/RESET: 1K CK/14 CK + 0 ms
                EXTLOFXTAL_1KCK_14CK_0MS = 0x6,
                ///  Ext. Low-Freq. Crystal; Start-up time PWRDWN/RESET: 1K CK/14 CK + 4 ms
                EXTLOFXTAL_1KCK_14CK_4MS = 0x16,
                ///  Ext. Low-Freq. Crystal; Start-up time PWRDWN/RESET: 32K CK/14 CK + 64 ms
                EXTLOFXTAL_32KCK_14CK_64MS = 0x26,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_258CK_14CK_4MS1 = 0x8,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_258CK_14CK_65MS = 0x18,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTXOSC_0MHZ4_0MHZ9_1KCK_14CK_0MS = 0x28,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_1KCK_14CK_4MS1 = 0x38,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_1KCK_14CK_65MS = 0x9,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_0MS = 0x19,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_4MS1 = 0x29,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_65MS = 0x39,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_258CK_14CK_4MS1 = 0xa,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_258CK_14CK_65MS = 0x1a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTXOSC_0MHZ9_3MHZ_1KCK_14CK_0MS = 0x2a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_1KCK_14CK_4MS1 = 0x3a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_1KCK_14CK_65MS = 0xb,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_0MS = 0x1b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_4MS1 = 0x2b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_65MS = 0x3b,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_258CK_14CK_4MS1 = 0xc,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_258CK_14CK_65MS = 0x1c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTXOSC_3MHZ_8MHZ_1KCK_14CK_0MS = 0x2c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_1KCK_14CK_4MS1 = 0x3c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_1KCK_14CK_65MS = 0xd,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_0MS = 0x1d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_4MS1 = 0x2d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_65MS = 0x3d,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTXOSC_8MHZ_XX_258CK_14CK_4MS1 = 0xe,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTXOSC_8MHZ_XX_258CK_14CK_65MS = 0x1e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 0 ms
                EXTXOSC_8MHZ_XX_1KCK_14CK_0MS = 0x2e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 4.1 ms
                EXTXOSC_8MHZ_XX_1KCK_14CK_4MS1 = 0x3e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 1K CK /14 CK + 65 ms
                EXTXOSC_8MHZ_XX_1KCK_14CK_65MS = 0xf,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 0 ms
                EXTXOSC_8MHZ_XX_16KCK_14CK_0MS = 0x1f,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 4.1 ms
                EXTXOSC_8MHZ_XX_16KCK_14CK_4MS1 = 0x2f,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time PWRDWN/RESET: 16K CK/14 CK + 65 ms
                EXTXOSC_8MHZ_XX_16KCK_14CK_65MS = 0x3f,
                _,
            };

            pub const ENUM_BODLEVEL = enum(u3) {
                ///  Brown-out detection disabled
                DISABLED = 0x7,
                ///  Brown-out detection at VCC=1.8 V
                @"1V8" = 0x6,
                ///  Brown-out detection at VCC=2.7 V
                @"2V7" = 0x5,
                ///  Brown-out detection at VCC=4.3 V
                @"4V3" = 0x4,
                _,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock source
                SUT_CKSEL: packed union {
                    raw: u6,
                    value: ENUM_SUT_CKSEL,
                },
                ///  Clock output on PORTB4
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
                ///  Reset Disabled (Enable PB5 as i/o pin)
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
            pub const PORTB = extern struct {
                ///  Input Pins, Port B
                PINB: u8,
                ///  Data Direction Register, Port B
                DDRB: u8,
                ///  Data Register, Port B
                PORTB: u8,
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
                reserved5: u2,
                ///  Input Polarity Mode
                IPR: u1,
                reserved7: u1,
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
                MUX: u4,
                ///  Reference Selection Bit 2
                REFS2: u1,
                ///  Left Adjust Result
                ADLAR: u1,
                ///  Reference Selection Bits
                REFS: u2,
            }),
            reserved17: [12]u8,
            ///  Digital Input Disable Register 0
            DIDR0: mmio.Mmio(packed struct(u8) {
                reserved2: u2,
                ///  ADC1 Digital input Disable
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

            pub const CLK_COMP_MATCH_OUT_MODE = enum(u2) {
                ///  Disconnected from OCn/PWMn
                DISCONNECTED_FROM_OCN_PWMN = 0x0,
                ///  Toggle OCn/PWMn output line
                TOGGLE_OCN_PWMN_OUTPUT_LINE = 0x1,
                ///  Clear OCn/PWMn output line
                CLEAR_OCN_PWMN_OUTPUT_LINE = 0x2,
                ///  set OCn/PWMn output line
                SET_OCN_PWMN_OUTPUT_LINE = 0x3,
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

            ///  Timer/Counter, 8-bit
            pub const TC0 = extern struct {
                ///  Timer/Counter0 Output Compare Register
                OCR0B: u8,
                ///  Timer/Counter0 Output Compare Register
                OCR0A: u8,
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
                reserved4: [1]u8,
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset Timer/Counter1 and Timer/Counter0
                    PSR0: u1,
                    reserved7: u6,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                reserved10: [5]u8,
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
                    ///  Force Output Compare A
                    FOC0A: u1,
                }),
                reserved16: [4]u8,
                ///  Timer/Counter0 Interrupt Flag register
                TIFR: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
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
                    reserved1: u1,
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

            ///  Timer/Counter, 8-bit
            pub const TC1 = extern struct {
                ///  Dead time prescaler register
                DTPS: mmio.Mmio(packed struct(u8) {
                    DTPS: u2,
                    padding: u6,
                }),
                ///  Dead time value B
                DT1B: mmio.Mmio(packed struct(u8) {
                    DTVL: u4,
                    DTVH: u4,
                }),
                ///  Dead time value register
                DT1A: mmio.Mmio(packed struct(u8) {
                    DTVL: u4,
                    DTVH: u4,
                }),
                reserved8: [5]u8,
                ///  Output Compare Register
                OCR1B: u8,
                ///  Timer counter control register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  Prescaler Reset Timer/Counter1
                    PSR1: u1,
                    ///  Force Output Compare 1A
                    FOC1A: u1,
                    ///  Force Output Compare Match 1B
                    FOC1B: u1,
                    ///  Comparator B Output Mode
                    COM1B: u2,
                    ///  Pulse Width Modulator B Enable
                    PWM1B: u1,
                    padding: u1,
                }),
                ///  Output compare register
                OCR1C: u8,
                ///  Output Compare Register
                OCR1A: u8,
                ///  Timer/Counter Register
                TCNT1: u8,
                ///  Timer/Counter Control Register
                TCCR1: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select Bits
                    CS1: packed union {
                        raw: u4,
                        value: CLK_SEL_4BIT,
                    },
                    ///  Compare Output Mode, Bits
                    COM1A: packed union {
                        raw: u2,
                        value: CLK_COMP_MATCH_OUT_MODE,
                    },
                    ///  Pulse Width Modulator Enable
                    PWM1A: u1,
                    ///  Clear Timer/Counter on Compare Match
                    CTC1: u1,
                }),
                reserved21: [7]u8,
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
                    padding: u1,
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
                    padding: u1,
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
                ///  Read Device Signature Imprint Table
                RSIG: u1,
                padding: u2,
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
                ///  8.0 MHz
                @"8_0_MHz" = 0x0,
                ///  6.4 MHz
                @"6_4_MHz" = 0x1,
            };

            ///  General purpose register 0
            GPIOR0: u8,
            ///  General Purpose register 1
            GPIOR1: u8,
            ///  General Purpose IO register 2
            GPIOR2: u8,
            reserved15: [12]u8,
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
            reserved17: [1]u8,
            ///  debugWire data register
            DWDR: u8,
            reserved21: [3]u8,
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
            reserved32: [9]u8,
            ///  Oscillator Calibration Register
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
            reserved35: [2]u8,
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
            reserved44: [7]u8,
            ///  Stack Pointer Low Byte
            SPL: u8,
            reserved46: [1]u8,
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
