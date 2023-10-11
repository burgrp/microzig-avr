const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny26 = struct {
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
            IO_PINS: Handler = unhandled,
            ///  Timer/Counter1 Compare Match 1A
            TIMER1_CMPA: Handler = unhandled,
            ///  Timer/Counter1 Compare Match 1B
            TIMER1_CMPB: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIMER1_OVF1: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIMER0_OVF0: Handler = unhandled,
            ///  USI Start
            USI_STRT: Handler = unhandled,
            ///  USI Overflow
            USI_OVF: Handler = unhandled,
            ///  EEPROM Ready
            EE_RDY: Handler = unhandled,
            ///  Analog Comparator
            ANA_COMP: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @as(*volatile types.peripherals.FUSE, @ptrFromInt(0x0));
            ///  Lockbits
            pub const LOCKBIT = @as(*volatile types.peripherals.LOCKBIT, @ptrFromInt(0x0));
            ///  Analog-to-Digital Converter
            pub const ADC = @as(*volatile types.peripherals.ADC, @ptrFromInt(0x24));
            ///  Analog Comparator
            pub const AC = @as(*volatile types.peripherals.AC, @ptrFromInt(0x28));
            ///  Universal Serial Interface
            pub const USI = @as(*volatile types.peripherals.USI, @ptrFromInt(0x2d));
            ///  I/O Port
            pub const PORTB = @as(*volatile types.peripherals.PORT.PORTB, @ptrFromInt(0x36));
            ///  I/O Port
            pub const PORTA = @as(*volatile types.peripherals.PORT.PORTA, @ptrFromInt(0x39));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3c));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x41));
            ///  Timer/Counter, 8-bit
            pub const TC1 = @as(*volatile types.peripherals.TC8.TC1, @ptrFromInt(0x49));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x51));
            ///  Timer/Counter, 8-bit
            pub const TC0 = @as(*volatile types.peripherals.TC8.TC0, @ptrFromInt(0x52));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x5a));
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_PLLCK_SUT_CKSEL = enum(u8) {
                ///  PLL Clock; Start-up time: 1K CK + 0 ms
                PLLCLK_1KCK_0MS = 0x1,
                ///  PLL Clock; Start-up time: 1K CK + 4 ms
                PLLCLK_1KCK_4MS = 0x11,
                ///  PLL Clock; Start-up time: 1K CK + 64 ms
                PLLCLK_1KCK_64MS = 0x21,
                ///  PLL Clock; Start-up time: 16K CK + 64 ms
                PLLCLK_16KCK_64MS = 0x31,
                ///  Ext. Clock; Start-up time: 6 CK + 0 ms
                EXTCLK_6CK_0MS = 0x80,
                ///  Ext. Clock; Start-up time: 6 CK + 4 ms
                EXTCLK_6CK_4MS = 0x90,
                ///  Ext. Clock; Start-up time: 6 CK + 64 ms
                EXTCLK_6CK_64MS = 0xa0,
                ///  Int. RC Osc. 1 MHz; Start-up time: 6 CK + 0 ms
                INTRCOSC_1MHZ_6CK_0MS = 0x81,
                ///  Int. RC Osc. 1 MHz; Start-up time: 6 CK + 4 ms
                INTRCOSC_1MHZ_6CK_4MS = 0x91,
                ///  Int. RC Osc. 1 MHz; Start-up time: 6 CK + 64 ms
                INTRCOSC_1MHZ_6CK_64MS = 0xa1,
                ///  Int. RC Osc. 2 MHz; Start-up time: 6 CK + 0 ms
                INTRCOSC_2MHZ_6CK_0MS = 0x82,
                ///  Int. RC Osc. 2 MHz; Start-up time: 6 CK + 4 ms
                INTRCOSC_2MHZ_6CK_4MS = 0x92,
                ///  Int. RC Osc. 2 MHz; Start-up time: 6 CK + 64 ms
                INTRCOSC_2MHZ_6CK_64MS = 0xa2,
                ///  Int. RC Osc. 4 MHz; Start-up time: 6 CK + 0 ms
                INTRCOSC_4MHZ_6CK_0MS = 0x83,
                ///  Int. RC Osc. 4 MHz; Start-up time: 6 CK + 4 ms
                INTRCOSC_4MHZ_6CK_4MS = 0x93,
                ///  Int. RC Osc. 4 MHz; Start-up time: 6 CK + 64 ms
                INTRCOSC_4MHZ_6CK_64MS = 0xa3,
                ///  Int. RC Osc. 8 MHz; Start-up time: 6 CK + 0 ms
                INTRCOSC_8MHZ_6CK_0MS = 0x84,
                ///  Int. RC Osc. 8 MHz; Start-up time: 6 CK + 4 ms
                INTRCOSC_8MHZ_6CK_4MS = 0x94,
                ///  Int. RC Osc. 8 MHz; Start-up time: 6 CK + 64 ms
                INTRCOSC_8MHZ_6CK_64MS = 0xa4,
                ///  Ext. RC Osc. - 0.9 MHz; Start-up time: 18 CK + 0 ms
                EXTRCOSC_XX_0MHZ9_18CK_0MS = 0x85,
                ///  Ext. RC Osc. - 0.9 MHz; Start-up time: 18 CK + 4 ms
                EXTRCOSC_XX_0MHZ9_18CK_4MS = 0x95,
                ///  Ext. RC Osc. - 0.9 MHz; Start-up time: 18 CK + 64 ms
                EXTRCOSC_XX_0MHZ9_18CK_64MS = 0xa5,
                ///  Ext. RC Osc. - 0.9 MHz; Start-up time: 6 CK + 4 ms
                EXTRCOSC_XX_0MHZ9_6CK_4MS = 0xb5,
                ///  Ext. RC Osc. 0.9 MHz - 3.0 MHz; Start-up time: 18 CK + 0 ms
                EXTRCOSC_0MHZ9_3MHZ_18CK_0MS = 0x86,
                ///  Ext. RC Osc. 0.9 MHz - 3.0 MHz; Start-up time: 18 CK + 4 ms
                EXTRCOSC_0MHZ9_3MHZ_18CK_4MS = 0x96,
                ///  Ext. RC Osc. 0.9 MHz - 3.0 MHz; Start-up time: 18 CK + 64 ms
                EXTRCOSC_0MHZ9_3MHZ_18CK_64MS = 0xa6,
                ///  Ext. RC Osc. 0.9 MHz - 3.0 MHz; Start-up time: 6 CK + 4 ms
                EXTRCOSC_0MHZ9_3MHZ_6CK_4MS = 0xb6,
                ///  Ext. RC Osc. 3.0 MHz - 8.0 MHz; Start-up time: 18 CK + 0 ms
                EXTRCOSC_3MHZ_8MHZ_18CK_0MS = 0x87,
                ///  Ext. RC Osc. 3.0 MHz - 8.0 MHz; Start-up time: 18 CK + 4 ms
                EXTRCOSC_3MHZ_8MHZ_18CK_4MS = 0x97,
                ///  Ext. RC Osc. 3.0 MHz - 8.0 MHz; Start-up time: 18 CK + 64 ms
                EXTRCOSC_3MHZ_8MHZ_18CK_64MS = 0xa7,
                ///  Ext. RC Osc. 3.0 MHz - 8.0 MHz; Start-up time: 6 CK + 4 ms
                EXTRCOSC_3MHZ_8MHZ_6CK_4MS = 0xb7,
                ///  Ext. RC Osc. 8.0 MHz - 12.0 MHz; Start-up time: 18 CK + 0 ms
                EXTRCOSC_8MHZ_12MHZ_18CK_0MS = 0x88,
                ///  Ext. RC Osc. 8.0 MHz - 12.0 MHz; Start-up time: 18 CK + 4 ms
                EXTRCOSC_8MHZ_12MHZ_18CK_4MS = 0x98,
                ///  Ext. RC Osc. 8.0 MHz - 12.0 MHz; Start-up time: 18 CK + 64 ms
                EXTRCOSC_8MHZ_12MHZ_18CK_64MS = 0xa8,
                ///  Ext. RC Osc. 8.0 MHz - 12.0 MHz; Start-up time: 6 CK + 4 ms
                EXTRCOSC_8MHZ_12MHZ_6CK_4MS = 0xb8,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 4 ms
                EXTLOFXTAL_1KCK_4MS = 0x89,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 64 ms
                EXTLOFXTAL_1KCK_64MS = 0x99,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 64 ms
                EXTLOFXTAL_32KCK_64MS = 0xa9,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 258 CK + 4 ms
                EXTLOFXTALRES_258CK_4MS = 0x8a,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 258 CK + 64 ms
                EXTLOFXTALRES_258CK_64MS = 0x9a,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 1K CK + 0 ms
                EXTLOFXTALRES_1KCK_0MS = 0xaa,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 1K CK + 4 ms
                EXTLOFXTALRES_1KCK_4MS = 0xba,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 1K CK + 64 ms
                EXTLOFXTALRES_1KCK_64MS = 0x8b,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 16K CK + 0 ms
                EXTLOFXTALRES_16KCK_0MS = 0x9b,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 16K CK + 4 ms
                EXTLOFXTALRES_16KCK_4MS = 0xab,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 16K CK + 64 ms
                EXTLOFXTALRES_16KCK_64MS = 0xbb,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 258 CK + 4 ms
                EXTMEDFXTALRES_258CK_4MS = 0x8c,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 258 CK + 64 ms
                EXTMEDFXTALRES_258CK_64MS = 0x9c,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 1K CK + 0 ms
                EXTMEDFXTALRES_1KCK_0MS = 0xac,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 1K CK + 4 ms
                EXTMEDFXTALRES_1KCK_4MS = 0xbc,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 1K CK + 64 ms
                EXTMEDFXTALRES_1KCK_64MS = 0x8d,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 16K CK + 0 ms
                EXTMEDFXTALRES_16KCK_0MS = 0x9d,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 16K CK + 4 ms
                EXTMEDFXTALRES_16KCK_4MS = 0xad,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 16K CK + 64 ms
                EXTMEDFXTALRES_16KCK_64MS = 0xbd,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 258 CK + 4 ms
                EXTHIFXTALRES_258CK_4MS = 0x8e,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 258 CK + 64 ms
                EXTHIFXTALRES_258CK_64MS = 0x9e,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 1K CK + 0 ms
                EXTHIFXTALRES_1KCK_0MS = 0xae,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 1K CK + 4 ms
                EXTHIFXTALRES_1KCK_4MS = 0xbe,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 1K CK + 64 ms
                EXTHIFXTALRES_1KCK_64MS = 0x8f,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 16K CK + 0 ms
                EXTHIFXTALRES_16KCK_0MS = 0x9f,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 16K CK + 4 ms
                EXTHIFXTALRES_16KCK_4MS = 0xaf,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 16K CK + 64 ms
                EXTHIFXTALRES_16KCK_64MS = 0xbf,
                _,
            };

            pub const ENUM_BODLEVEL = enum(u1) {
                ///  Brown-out detection at VCC=4.0 V
                @"4V0" = 0x0,
                ///  Brown-out detection at VCC=2.7 V
                @"2V7" = 0x1,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock Source
                PLLCK_SUT_CKSEL_bit0: u1,
                ///  Select Clock Source
                PLLCK_SUT_CKSEL_bit1: u1,
                ///  Select Clock Source
                PLLCK_SUT_CKSEL_bit2: u1,
                ///  Select Clock Source
                PLLCK_SUT_CKSEL_bit3: u1,
                ///  Select Clock Source
                PLLCK_SUT_CKSEL_bit4: u1,
                ///  Select Clock Source
                PLLCK_SUT_CKSEL_bit5: u1,
                ///  CKOPT fuse (operation dependent of CKSEL fuses)
                CKOPT: u1,
                ///  Select Clock Source
                PLLCK_SUT_CKSEL_bit6: u1,
            }),
            HIGH: mmio.Mmio(packed struct(u8) {
                ///  Brown-out detection enabled
                BODEN: u1,
                ///  Brownout detector trigger level
                BODLEVEL: packed union {
                    raw: u1,
                    value: ENUM_BODLEVEL,
                },
                ///  Preserve EEPROM through the Chip Erase cycle
                EESAVE: u1,
                ///  Serial program downloading (SPI) enabled
                SPIEN: u1,
                ///  Reset Disabled (Enable PB7 as i/o pin)
                RSTDISBL: u1,
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
            pub const ANALOG_ADC_V_REF = enum(u2) {
                ///  AVCC
                AVCC = 0x0,
                ///  AREF
                AREF = 0x1,
                ///  Internal Voltage Referance
                INTERNAL_VOLTAGE_REFERANCE = 0x2,
                ///  Internal Voltage Reference With External Capacitor at AREF Pin.
                INTERNAL_VOLTAGE_REFERENCE_WITH_EXTERNAL_CAPACITOR_AT_AREF_PIN = 0x3,
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

            ///  ADC Data Register Bytes
            ADC: u16,
            ///  The ADC Control and Status register
            ADCSR: mmio.Mmio(packed struct(u8) {
                ///  ADC Prescaler Select Bits
                ADPS: packed union {
                    raw: u3,
                    value: ANALOG_ADC_PRESCALER,
                },
                ///  ADC Interrupt Enable
                ADIE: u1,
                ///  ADC Interrupt Flag
                ADIF: u1,
                ///  ADC Free Running Select
                ADFR: u1,
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
                REFS: packed union {
                    raw: u2,
                    value: ANALOG_ADC_V_REF,
                },
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

            ///  Analog Comparator Control And Status Register
            ACSR: mmio.Mmio(packed struct(u8) {
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

        ///  EEPROM
        pub const EEPROM = extern struct {
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
                padding: u4,
            }),
            ///  EEPROM Data Register
            EEDR: u8,
            ///  EEPROM Read/Write Access
            EEAR: u8,
        };

        ///  Watchdog Timer
        pub const WDT = extern struct {
            pub const WDOG_TIMER_PRESCALE_3BITS = enum(u3) {
                ///  Oscillator Cycles 16K
                OSCILLATOR_CYCLES_16K = 0x0,
                ///  Oscillator Cycles 32K
                OSCILLATOR_CYCLES_32K = 0x1,
                ///  Oscillator Cycles 64K
                OSCILLATOR_CYCLES_64K = 0x2,
                ///  Oscillator Cycles 128K
                OSCILLATOR_CYCLES_128K = 0x3,
                ///  Oscillator Cycles 256K
                OSCILLATOR_CYCLES_256K = 0x4,
                ///  Oscillator Cycles 512K
                OSCILLATOR_CYCLES_512K = 0x5,
                ///  Oscillator Cycles 1024K
                OSCILLATOR_CYCLES_1024K = 0x6,
                ///  Oscillator Cycles 2048K
                OSCILLATOR_CYCLES_2048K = 0x7,
            };

            ///  Watchdog Timer Control Register
            WDTCR: mmio.Mmio(packed struct(u8) {
                ///  Watch Dog Timer Prescaler bits
                WDP: packed union {
                    raw: u3,
                    value: WDOG_TIMER_PRESCALE_3BITS,
                },
                ///  Watch Dog Enable
                WDE: u1,
                ///  Watchdog Change Enable
                WDCE: u1,
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

            ///  Oscillator Calibration Values
            pub const OSCCAL_VALUE_ADDRESSES = enum(u2) {
                ///  1.0 MHz
                @"1_0_MHz" = 0x0,
                ///  2.0 MHz
                @"2_0_MHz" = 0x1,
                ///  4.0 MHz
                @"4_0_MHz" = 0x2,
                ///  8.0 MHz
                @"8_0_MHz" = 0x3,
            };

            ///  Status Register
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
            reserved3: [2]u8,
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
            reserved12: [7]u8,
            ///  Stack Pointer
            SP: u8,
            reserved14: [1]u8,
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
                ///  Timer Counter 0
                TCNT0: u8,
                ///  Timer/Counter0 Control Register
                TCCR0: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select0 bits
                    CS0: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Prescaler Reset Timer/Counter0
                    PSR0: u1,
                    padding: u4,
                }),
                reserved6: [4]u8,
                ///  Timer/Counter Interrupt Flag register
                TIFR: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  Timer/Counter0 Overflow Flag
                    TOV0: u1,
                    padding: u6,
                }),
                ///  Timer/Counter Interrupt Mask Register
                TIMSK: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  Timer/Counter0 Overflow Interrupt Enable
                    TOIE0: u1,
                    padding: u6,
                }),
            };

            ///  Timer/Counter, 8-bit
            pub const TC1 = extern struct {
                ///  PLL Control and Status Register
                PLLCSR: mmio.Mmio(packed struct(u8) {
                    ///  PLL Lock Detector
                    PLOCK: u1,
                    ///  PLL Enable
                    PLLE: u1,
                    ///  PCK Enable
                    PCKE: u1,
                    padding: u5,
                }),
                reserved2: [1]u8,
                ///  Output Compare Register
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
                    reserved6: u2,
                    ///  Prescaler Reset Timer/Counter1
                    PSR1: u1,
                    ///  Clear Timer/Counter on Compare Match
                    CTC1: u1,
                }),
                ///  Timer/Counter Control Register A
                TCCR1A: mmio.Mmio(packed struct(u8) {
                    ///  Pulse Width Modulator B Enable
                    PWM1B: u1,
                    ///  Pulse Width Modulator A Enable
                    PWM1A: u1,
                    ///  Force Output Compare Match 1B
                    FOC1B: u1,
                    ///  Force Output Compare Match 1A
                    FOC1A: u1,
                    ///  Comparator B Output Mode Bits
                    COM1B: packed union {
                        raw: u2,
                        value: CLK_COMP_MATCH_OUT_MODE,
                    },
                    ///  Comparator A Output Mode Bits
                    COM1A: packed union {
                        raw: u2,
                        value: CLK_COMP_MATCH_OUT_MODE,
                    },
                }),
                reserved15: [7]u8,
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
                    ///  Timer/Counter1 Output Compare Interrupt Enable
                    OCIE1B: u1,
                    ///  Timer/Counter1 Output Compare Interrupt Enable
                    OCIE1A: u1,
                    padding: u1,
                }),
            };
        };

        ///  External Interrupts
        pub const EXINT = extern struct {
            ///  General Interrupt Flag register
            GIFR: mmio.Mmio(packed struct(u8) {
                reserved5: u5,
                ///  Pin Change Interrupt Flag
                PCIF: u1,
                ///  External Interrupt Flag 0
                INTF0: u1,
                padding: u1,
            }),
            ///  General Interrupt Mask Register
            GIMSK: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  Pin Change Interrupt Enables
                PCIE: u2,
                ///  External Interrupt Request 0 Enable
                INT0: u1,
                padding: u1,
            }),
        };
    };
};
