const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATmega8 = struct {
        pub const properties = struct {
            pub const family = "megaAVR";
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
            ///  Timer/Counter2 Compare Match
            TIMER2_COMP: Handler = unhandled,
            ///  Timer/Counter2 Overflow
            TIMER2_OVF: Handler = unhandled,
            ///  Timer/Counter1 Capture Event
            TIMER1_CAPT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer/Counter1 Compare Match B
            TIMER1_COMPB: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIMER1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  Serial Transfer Complete
            SPI_STC: Handler = unhandled,
            ///  USART, Rx Complete
            USART_RXC: Handler = unhandled,
            ///  USART Data Register Empty
            USART_UDRE: Handler = unhandled,
            ///  USART, Tx Complete
            USART_TXC: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  EEPROM Ready
            EE_RDY: Handler = unhandled,
            ///  Analog Comparator
            ANA_COMP: Handler = unhandled,
            ///  2-wire Serial Interface
            TWI: Handler = unhandled,
            ///  Store Program Memory Ready
            SPM_RDY: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @as(*volatile types.peripherals.FUSE, @ptrFromInt(0x0));
            ///  Lockbits
            pub const LOCKBIT = @as(*volatile types.peripherals.LOCKBIT, @ptrFromInt(0x0));
            ///  Two Wire Serial Interface
            pub const TWI = @as(*volatile types.peripherals.TWI, @ptrFromInt(0x20));
            ///  Analog-to-Digital Converter
            pub const ADC = @as(*volatile types.peripherals.ADC, @ptrFromInt(0x24));
            ///  Analog Comparator
            pub const AC = @as(*volatile types.peripherals.AC, @ptrFromInt(0x28));
            ///  USART
            pub const USART = @as(*volatile types.peripherals.USART, @ptrFromInt(0x29));
            ///  Serial Peripheral Interface
            pub const SPI = @as(*volatile types.peripherals.SPI, @ptrFromInt(0x2d));
            ///  I/O Port
            pub const PORTD = @as(*volatile types.peripherals.PORT.PORTD, @ptrFromInt(0x30));
            ///  I/O Port
            pub const PORTC = @as(*volatile types.peripherals.PORT.PORTC, @ptrFromInt(0x33));
            ///  I/O Port
            pub const PORTB = @as(*volatile types.peripherals.PORT.PORTB, @ptrFromInt(0x36));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3c));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x41));
            ///  Timer/Counter, 8-bit Async
            pub const TC2 = @as(*volatile types.peripherals.TC8_ASYNC.TC2, @ptrFromInt(0x42));
            ///  Timer/Counter, 16-bit
            pub const TC1 = @as(*volatile types.peripherals.TC16.TC1, @ptrFromInt(0x46));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x50));
            ///  Timer/Counter, 8-bit
            pub const TC0 = @as(*volatile types.peripherals.TC8.TC0, @ptrFromInt(0x52));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x55));
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_BODLEVEL = enum(u1) {
                ///  Brown-out detection at VCC=4.0 V
                @"4V0" = 0x0,
                ///  Brown-out detection at VCC=2.7 V
                @"2V7" = 0x1,
            };

            pub const ENUM_SUT_CKSEL = enum(u6) {
                ///  Ext. Clock; Start-up time: 6 CK + 0 ms
                EXTCLK_6CK_0MS = 0x0,
                ///  Ext. Clock; Start-up time: 6 CK + 4 ms
                EXTCLK_6CK_4MS = 0x10,
                ///  Ext. Clock; Start-up time: 6 CK + 64 ms
                EXTCLK_6CK_64MS = 0x20,
                ///  Int. RC Osc. 1 MHz; Start-up time: 6 CK + 0 ms
                INTRCOSC_1MHZ_6CK_0MS = 0x1,
                ///  Int. RC Osc. 1 MHz; Start-up time: 6 CK + 4 ms
                INTRCOSC_1MHZ_6CK_4MS = 0x11,
                ///  Int. RC Osc. 1 MHz; Start-up time: 6 CK + 64 ms; default value
                INTRCOSC_1MHZ_6CK_64MS_DEFAULT = 0x21,
                ///  Int. RC Osc. 2 MHz; Start-up time: 6 CK + 0 ms
                INTRCOSC_2MHZ_6CK_0MS = 0x2,
                ///  Int. RC Osc. 2 MHz; Start-up time: 6 CK + 4 ms
                INTRCOSC_2MHZ_6CK_4MS = 0x12,
                ///  Int. RC Osc. 2 MHz; Start-up time: 6 CK + 64 ms
                INTRCOSC_2MHZ_6CK_64MS = 0x22,
                ///  Int. RC Osc. 4 MHz; Start-up time: 6 CK + 0 ms
                INTRCOSC_4MHZ_6CK_0MS = 0x3,
                ///  Int. RC Osc. 4 MHz; Start-up time: 6 CK + 4 ms
                INTRCOSC_4MHZ_6CK_4MS = 0x13,
                ///  Int. RC Osc. 4 MHz; Start-up time: 6 CK + 64 ms
                INTRCOSC_4MHZ_6CK_64MS = 0x23,
                ///  Int. RC Osc. 8 MHz; Start-up time: 6 CK + 0 ms
                INTRCOSC_8MHZ_6CK_0MS = 0x4,
                ///  Int. RC Osc. 8 MHz; Start-up time: 6 CK + 4 ms
                INTRCOSC_8MHZ_6CK_4MS = 0x14,
                ///  Int. RC Osc. 8 MHz; Start-up time: 6 CK + 64 ms
                INTRCOSC_8MHZ_6CK_64MS = 0x24,
                ///  Ext. RC Osc. - 0.9 MHz; Start-up time: 18 CK + 0 ms
                EXTRCOSC_XX_0MHZ9_18CK_0MS = 0x5,
                ///  Ext. RC Osc. - 0.9 MHz; Start-up time: 18 CK + 4 ms
                EXTRCOSC_XX_0MHZ9_18CK_4MS = 0x15,
                ///  Ext. RC Osc. - 0.9 MHz; Start-up time: 18 CK + 64 ms
                EXTRCOSC_XX_0MHZ9_18CK_64MS = 0x25,
                ///  Ext. RC Osc. - 0.9 MHz; Start-up time: 6 CK + 4 ms
                EXTRCOSC_XX_0MHZ9_6CK_4MS = 0x35,
                ///  Ext. RC Osc. 0.9 MHz - 3.0 MHz; Start-up time: 18 CK + 0 ms
                EXTRCOSC_0MHZ9_3MHZ_18CK_0MS = 0x6,
                ///  Ext. RC Osc. 0.9 MHz - 3.0 MHz; Start-up time: 18 CK + 4 ms
                EXTRCOSC_0MHZ9_3MHZ_18CK_4MS = 0x16,
                ///  Ext. RC Osc. 0.9 MHz - 3.0 MHz; Start-up time: 18 CK + 64 ms
                EXTRCOSC_0MHZ9_3MHZ_18CK_64MS = 0x26,
                ///  Ext. RC Osc. 0.9 MHz - 3.0 MHz; Start-up time: 6 CK + 4 ms
                EXTRCOSC_0MHZ9_3MHZ_6CK_4MS = 0x36,
                ///  Ext. RC Osc. 3.0 MHz - 8.0 MHz; Start-up time: 18 CK + 0 ms
                EXTRCOSC_3MHZ_8MHZ_18CK_0MS = 0x7,
                ///  Ext. RC Osc. 3.0 MHz - 8.0 MHz; Start-up time: 18 CK + 4 ms
                EXTRCOSC_3MHZ_8MHZ_18CK_4MS = 0x17,
                ///  Ext. RC Osc. 3.0 MHz - 8.0 MHz; Start-up time: 18 CK + 64 ms
                EXTRCOSC_3MHZ_8MHZ_18CK_64MS = 0x27,
                ///  Ext. RC Osc. 3.0 MHz - 8.0 MHz; Start-up time: 6 CK + 4 ms
                EXTRCOSC_3MHZ_8MHZ_6CK_4MS = 0x37,
                ///  Ext. RC Osc. 8.0 MHz - 12.0 MHz; Start-up time: 18 CK + 0 ms
                EXTRCOSC_8MHZ_12MHZ_18CK_0MS = 0x8,
                ///  Ext. RC Osc. 8.0 MHz - 12.0 MHz; Start-up time: 18 CK + 4 ms
                EXTRCOSC_8MHZ_12MHZ_18CK_4MS = 0x18,
                ///  Ext. RC Osc. 8.0 MHz - 12.0 MHz; Start-up time: 18 CK + 64 ms
                EXTRCOSC_8MHZ_12MHZ_18CK_64MS = 0x28,
                ///  Ext. RC Osc. 8.0 MHz - 12.0 MHz; Start-up time: 6 CK + 4 ms
                EXTRCOSC_8MHZ_12MHZ_6CK_4MS = 0x38,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 4 ms
                EXTLOFXTAL_1KCK_4MS = 0x9,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 64 ms
                EXTLOFXTAL_1KCK_64MS = 0x19,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 64 ms
                EXTLOFXTAL_32KCK_64MS = 0x29,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 258 CK + 4 ms
                EXTLOFXTALRES_258CK_4MS = 0xa,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 258 CK + 64 ms
                EXTLOFXTALRES_258CK_64MS = 0x1a,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 1K CK + 0 ms
                EXTLOFXTALRES_1KCK_0MS = 0x2a,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 1K CK + 4 ms
                EXTLOFXTALRES_1KCK_4MS = 0x3a,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 1K CK + 64 ms
                EXTLOFXTALRES_1KCK_64MS = 0xb,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 16K CK + 0 ms
                EXTLOFXTALRES_16KCK_0MS = 0x1b,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 16K CK + 4 ms
                EXTLOFXTALRES_16KCK_4MS = 0x2b,
                ///  Ext. Crystal/Resonator Low Freq.; Start-up time: 16K CK + 64 ms
                EXTLOFXTALRES_16KCK_64MS = 0x3b,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 258 CK + 4 ms
                EXTMEDFXTALRES_258CK_4MS = 0xc,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 258 CK + 64 ms
                EXTMEDFXTALRES_258CK_64MS = 0x1c,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 1K CK + 0 ms
                EXTMEDFXTALRES_1KCK_0MS = 0x2c,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 1K CK + 4 ms
                EXTMEDFXTALRES_1KCK_4MS = 0x3c,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 1K CK + 64 ms
                EXTMEDFXTALRES_1KCK_64MS = 0xd,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 16K CK + 0 ms
                EXTMEDFXTALRES_16KCK_0MS = 0x1d,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 16K CK + 4 ms
                EXTMEDFXTALRES_16KCK_4MS = 0x2d,
                ///  Ext. Crystal/Resonator Medium Freq.; Start-up time: 16K CK + 64 ms
                EXTMEDFXTALRES_16KCK_64MS = 0x3d,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 258 CK + 4 ms
                EXTHIFXTALRES_258CK_4MS = 0xe,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 258 CK + 64 ms
                EXTHIFXTALRES_258CK_64MS = 0x1e,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 1K CK + 0 ms
                EXTHIFXTALRES_1KCK_0MS = 0x2e,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 1K CK + 4 ms
                EXTHIFXTALRES_1KCK_4MS = 0x3e,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 1K CK + 64 ms
                EXTHIFXTALRES_1KCK_64MS = 0xf,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 16K CK + 0 ms
                EXTHIFXTALRES_16KCK_0MS = 0x1f,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 16K CK + 4 ms
                EXTHIFXTALRES_16KCK_4MS = 0x2f,
                ///  Ext. Crystal/Resonator High Freq.; Start-up time: 16K CK + 64 ms
                EXTHIFXTALRES_16KCK_64MS = 0x3f,
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

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock Source
                SUT_CKSEL: packed union {
                    raw: u6,
                    value: ENUM_SUT_CKSEL,
                },
                ///  Brown-out detection enabled
                BODEN: u1,
                ///  Brownout detector trigger level
                BODLEVEL: packed union {
                    raw: u1,
                    value: ENUM_BODLEVEL,
                },
            }),
            HIGH: mmio.Mmio(packed struct(u8) {
                ///  Boot Reset vector Enabled
                BOOTRST: u1,
                ///  Select Boot Size
                BOOTSZ: packed union {
                    raw: u2,
                    value: ENUM_BOOTSZ,
                },
                ///  Preserve EEPROM through the Chip Erase cycle
                EESAVE: u1,
                ///  CKOPT fuse (operation dependent of CKSEL fuses)
                CKOPT: u1,
                ///  Serial program downloading (SPI) enabled
                SPIEN: u1,
                ///  Watch-dog Timer always on
                WDTON: u1,
                ///  Reset Disabled (Enable PC6 as i/o pin)
                RSTDISBL: u1,
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
            reserved40: [39]u8,
            ///  Special Function IO Register
            SFIOR: mmio.Mmio(packed struct(u8) {
                reserved3: u3,
                ///  Analog Comparator Multiplexer Enable
                ACME: u1,
                padding: u4,
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

            ///  MCU Control Register
            MCUCR: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Sense Control 0 Bits
                ISC0: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  Interrupt Sense Control 1 Bits
                ISC1: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                padding: u4,
            }),
            reserved5: [4]u8,
            ///  General Interrupt Flag Register
            GIFR: mmio.Mmio(packed struct(u8) {
                reserved6: u6,
                ///  External Interrupt Flags
                INTF: u2,
            }),
            ///  General Interrupt Control Register
            GICR: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Vector Change Enable
                IVCE: u1,
                ///  Interrupt Vector Select
                IVSEL: u1,
                reserved6: u4,
                ///  External Interrupt Request 1 Enable
                INT: u2,
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
                ///  Timer/Counter1 Input Capture Register Bytes
                ICR1: u16,
                ///  Timer/Counter1 Output Compare Register Bytes
                OCR1B: u16,
                ///  Timer/Counter1 Output Compare Register Bytes
                OCR1A: u16,
                ///  Timer/Counter1 Bytes
                TCNT1: u16,
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
                ///  Timer/Counter1 Control Register A
                TCCR1A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM1: u2,
                    ///  Force Output Compare 1B
                    FOC1B: u1,
                    ///  Force Output Compare 1A
                    FOC1A: u1,
                    ///  Compare Output Mode 1B, bits
                    COM1B: u2,
                    ///  Compare Output Mode 1A, bits
                    COM1A: u2,
                }),
                reserved18: [8]u8,
                ///  Timer/Counter Interrupt Flag register
                TIFR: mmio.Mmio(packed struct(u8) {
                    reserved2: u2,
                    ///  Timer/Counter1 Overflow Flag
                    TOV1: u1,
                    ///  Output Compare Flag 1B
                    OCF1B: u1,
                    ///  Output Compare Flag 1A
                    OCF1A: u1,
                    ///  Input Capture Flag 1
                    ICF1: u1,
                    padding: u2,
                }),
                ///  Timer/Counter Interrupt Mask Register
                TIMSK: mmio.Mmio(packed struct(u8) {
                    reserved2: u2,
                    ///  Timer/Counter1 Overflow Interrupt Enable
                    TOIE1: u1,
                    ///  Timer/Counter1 Output CompareB Match Interrupt Enable
                    OCIE1B: u1,
                    ///  Timer/Counter1 Output CompareA Match Interrupt Enable
                    OCIE1A: u1,
                    ///  Timer/Counter1 Input Capture Interrupt Enable
                    TICIE1: u1,
                    padding: u2,
                }),
            };
        };

        ///  USART
        pub const USART = extern struct {
            pub const COMM_USART_MODE = enum(u1) {
                ///  Asynchronous Operation
                ASYNCHRONOUS_OPERATION = 0x0,
                ///  Synchronous Operation
                SYNCHRONOUS_OPERATION = 0x1,
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

            ///  USART Baud Rate Register Low Byte
            UBRRL: u8,
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
            ///  USART I/O Data Register
            UDR: u8,
            reserved23: [19]u8,
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
                    raw: u1,
                    value: COMM_USART_MODE,
                },
                ///  Register Select
                URSEL: u1,
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
            reserved54: [50]u8,
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
            pub const PORTC = extern struct {
                ///  Port C Input Pins
                PINC: u8,
                ///  Port C Data Direction Register
                DDRC: u8,
                ///  Port C Data Register
                PORTC: u8,
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
                ///  EEPROM Ready Interrupt Enable
                EERIE: u1,
                padding: u4,
            }),
            ///  EEPROM Data Register
            EEDR: u8,
            ///  EEPROM Address Register Bytes
            EEAR: u16,
        };

        ///  CPU Registers
        pub const CPU = extern struct {
            pub const CPU_SLEEP_MODE_3BITS2 = enum(u3) {
                ///  Idle
                IDLE = 0x0,
                ///  ADC Noise Reduction (If Available)
                ADC = 0x1,
                ///  Power Down
                PDOWN = 0x2,
                ///  Power Save
                PSAVE = 0x3,
                ///  Reserved
                VAL_0x04 = 0x4,
                ///  Reserved
                VAL_0x05 = 0x5,
                ///  Standby
                STDBY = 0x6,
                ///  Reserved
                VAL_0x07 = 0x7,
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

            ///  Special Function IO Register
            SFIOR: mmio.Mmio(packed struct(u8) {
                ///  Prescaler Reset Timer/Counter1 and Timer/Counter0
                PSR10: u1,
                reserved2: u1,
                ///  Pull-up Disable
                PUD: u1,
                reserved4: u1,
                ///  ADC High Speed Mode
                ADHSM: u1,
                padding: u3,
            }),
            ///  Oscillator Calibration Value
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
            reserved4: [2]u8,
            ///  MCU Control And Status Register
            MCUCSR: mmio.Mmio(packed struct(u8) {
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
                ///  Interrupt Sense Control 0 Bits
                ISC0: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL2,
                },
                ///  Interrupt Sense Control 1 Bits
                ISC1: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL2,
                },
                ///  Sleep Mode Select
                SM: packed union {
                    raw: u3,
                    value: CPU_SLEEP_MODE_3BITS2,
                },
                ///  Sleep Enable
                SE: u1,
            }),
            reserved7: [1]u8,
            ///  Store Program Memory Control Register
            SPMCR: mmio.Mmio(packed struct(u8) {
                ///  Store Program Memory Enable
                SPMEN: u1,
                ///  Page Erase
                PGERS: u1,
                ///  Page Write
                PGWRT: u1,
                ///  Boot Lock Bit Set
                BLBSET: u1,
                ///  Read-While-Write Section Read Enable
                RWWSRE: u1,
                reserved6: u1,
                ///  Read-While-Write Section Busy
                RWWSB: u1,
                ///  SPM Interrupt Enable
                SPMIE: u1,
            }),
            reserved13: [5]u8,
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

        ///  Analog-to-Digital Converter
        pub const ADC = extern struct {
            pub const ANALOG_ADC_V_REF2 = enum(u2) {
                ///  AREF, Internal Vref turned off
                AREF_INTERNAL_VREF_TURNED_OFF = 0x0,
                ///  AVCC with external capacitor at AREF pin
                AVCC_WITH_EXTERNAL_CAPACITOR_AT_AREF_PIN = 0x1,
                ///  Reserved
                RESERVED = 0x2,
                ///  Internal 2.56V Voltage Reference with external capacitor at AREF pin
                INTERNAL_2_56V_VOLTAGE_REFERENCE_WITH_EXTERNAL_CAPACITOR_AT_AREF_PIN = 0x3,
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
                MUX: u4,
                reserved5: u1,
                ///  Left Adjust Result
                ADLAR: u1,
                ///  Reference Selection Bits
                REFS: packed union {
                    raw: u2,
                    value: ANALOG_ADC_V_REF2,
                },
            }),
        };
    };
};
