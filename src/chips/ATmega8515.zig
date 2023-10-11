const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATmega8515 = struct {
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
            ///  Timer/Counter1 Capture Event
            TIMER1_CAPT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer/Counter1 Compare MatchB
            TIMER1_COMPB: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIMER1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  Serial Transfer Complete
            SPI_STC: Handler = unhandled,
            ///  USART, Rx Complete
            USART_RX: Handler = unhandled,
            ///  USART Data Register Empty
            USART_UDRE: Handler = unhandled,
            ///  USART, Tx Complete
            USART_TX: Handler = unhandled,
            ///  Analog Comparator
            ANA_COMP: Handler = unhandled,
            ///  External Interrupt Request 2
            INT2: Handler = unhandled,
            ///  Timer 0 Compare Match
            TIMER0_COMP: Handler = unhandled,
            ///  EEPROM Ready
            EE_RDY: Handler = unhandled,
            ///  Store Program Memory Ready
            SPM_RDY: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @as(*volatile types.peripherals.FUSE, @ptrFromInt(0x0));
            ///  Lockbits
            pub const LOCKBIT = @as(*volatile types.peripherals.LOCKBIT, @ptrFromInt(0x0));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x24));
            ///  I/O Port
            pub const PORTE = @as(*volatile types.peripherals.PORT.PORTE, @ptrFromInt(0x25));
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
            ///  I/O Port
            pub const PORTA = @as(*volatile types.peripherals.PORT.PORTA, @ptrFromInt(0x39));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3c));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x41));
            ///  Timer/Counter, 16-bit
            pub const TC1 = @as(*volatile types.peripherals.TC16.TC1, @ptrFromInt(0x44));
            ///  Timer/Counter, 8-bit
            pub const TC0 = @as(*volatile types.peripherals.TC8.TC0, @ptrFromInt(0x51));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x5a));
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
                ///  Int. RC Osc. 1 MHz; Start-up time: 6 CK + 64 ms
                INTRCOSC_1MHZ_6CK_64MS = 0x21,
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
                ///  Boot Flashsize=128 words Boot address=$0F80
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
                ///  CKOPT fuse (operation dependent of CKSEL fuses)]
                CKOPT: u1,
                ///  Serial program downloading (SPI) enabled
                SPIEN: u1,
                ///  Watch-dog Timer always on
                WDTON: u1,
                ///  AT90S4414/8515 compatibility mode
                S8515C: u1,
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
                ///  Character Size Bit 2
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
                ///  Character Size Bits
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

        ///  CPU Registers
        pub const CPU = extern struct {
            pub const CPU_SECTOR_LIMITS = enum(u3) {
                ///  LS = N/A, US = 0x1100 - 0xFFFF
                LS_N_A_US_0X1100_0XFFFF = 0x0,
                ///  LS = 0x1100 - 0x1FFF, US = 0x2000 - 0xFFFF
                LS_0X1100_0X1FFF_US_0X2000_0XFFFF = 0x1,
                ///  LS = 0x1100 - 0x3FFF, US = 0x4000 - 0xFFFF
                LS_0X1100_0X3FFF_US_0X4000_0XFFFF = 0x2,
                ///  LS = 0x1100 - 0x5FFF, US = 0x6000 - 0xFFFF
                LS_0X1100_0X5FFF_US_0X6000_0XFFFF = 0x3,
                ///  LS = 0x1100 - 0x7FFF, US = 0x8000 - 0xFFFF
                LS_0X1100_0X7FFF_US_0X8000_0XFFFF = 0x4,
                ///  LS = 0x1100 - 0x9FFF, US = 0xA000 - 0xFFFF
                LS_0X1100_0X9FFF_US_0XA000_0XFFFF = 0x5,
                ///  LS = 0x1100 - 0xBFFF, US = 0xC000 - 0xFFFF
                LS_0X1100_0XBFFF_US_0XC000_0XFFFF = 0x6,
                ///  LS = 0x1100 - 0xDFFF, US = 0xE000 - 0xFFFF
                LS_0X1100_0XDFFF_US_0XE000_0XFFFF = 0x7,
            };

            pub const CPU_WAIT_STATES = enum(u2) {
                ///  No wait-states
                NO_WAIT_STATES = 0x0,
                ///  Wait one cycle during read/write strobe
                WAIT_ONE_CYCLE_DURING_READ_WRITE_STROBE = 0x1,
                ///  Wait two cycles during read/write strobe
                WAIT_TWO_CYCLES_DURING_READ_WRITE_STROBE = 0x2,
                ///  Wait two cycles during read/write and wait one cycle before driving out new address
                WAIT_TWO_CYCLES_DURING_READ_WRITE_AND_WAIT_ONE_CYCLE_BEFORE_DRIVING_OUT_NEW_ADDRESS = 0x3,
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
                ///  1 Mhz
                @"1_Mhz" = 0x0,
                ///  2 Mhz
                @"2_Mhz" = 0x1,
                ///  4 Mhz
                @"4_Mhz" = 0x2,
                ///  8 Mhz
                @"8_Mhz" = 0x3,
            };

            ///  Oscillator Calibration Value
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
            reserved44: [43]u8,
            ///  Special Function IO Register
            SFIOR: mmio.Mmio(packed struct(u8) {
                ///  Prescaler Reset Timer / Counter 1 and Timer / Counter 0
                PSR10: u1,
                reserved2: u1,
                ///  Pull-up Disable
                PUD: u1,
                ///  External Memory High Mask Bits
                XMM: u3,
                ///  External Memory Bus Keeper Enable
                XMBK: u1,
                padding: u1,
            }),
            reserved48: [3]u8,
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
                reserved5: u1,
                ///  Sleep Mode Select Bit 2
                SM2: u1,
                padding: u2,
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
                ///  Sleep Mode Select Bit 1
                SM1: u1,
                ///  Sleep Enable
                SE: u1,
                ///  Wait State Select Bits for Upper Sector, bit 0
                SRW10: u1,
                ///  External SRAM/XMEM Enable
                SRE: u1,
            }),
            ///  Extended MCU Control Register
            EMCUCR: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Sense Control 2
                ISC2: u1,
                ///  Wait State Select Bits for Upper Sector, bit 1
                SRW11: u1,
                ///  Wait State Select Bits for Lower Sector, bits
                SRW0: packed union {
                    raw: u2,
                    value: CPU_WAIT_STATES,
                },
                ///  Wait State Selector Limit bits
                SRL: packed union {
                    raw: u3,
                    value: CPU_SECTOR_LIMITS,
                },
                ///  Sleep Mode Select Bit 0
                SM0: u1,
            }),
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
            reserved57: [5]u8,
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

        ///  External Interrupts
        pub const EXINT = extern struct {
            ///  General Interrupt Flag Register
            GIFR: mmio.Mmio(packed struct(u8) {
                reserved5: u5,
                ///  External Interrupt Flag 2
                INTF2: u1,
                ///  External Interrupt Flags
                INTF: u2,
            }),
            ///  General Interrupt Control Register
            GICR: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Vector Change Enable
                IVCE: u1,
                ///  Interrupt Vector Select
                IVSEL: u1,
                reserved5: u3,
                ///  External Interrupt Request 2 Enable
                INT2: u1,
                ///  External Interrupt Request 0 Enable
                INT0: u1,
                ///  External Interrupt Request 1 Enable
                INT1: u1,
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
                reserved4: [2]u8,
                ///  Timer/Counter1 Output Compare Register B Bytes
                OCR1B: u16,
                ///  Timer/Counter1 Output Compare Register A Bytes
                OCR1A: u16,
                ///  Timer/Counter1 Bytes
                TCNT1: u16,
                ///  Timer/Counter1 Control Register B
                TCCR1B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select1 bits
                    CS1: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Pulse Width Modulator Select Bits
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
                    ///  Force Output Compare for Channel B
                    FOC1B: u1,
                    ///  Force Output Compare for Channel A
                    FOC1A: u1,
                    ///  Compare Output Mode 1B, bits
                    COM1B: u2,
                    ///  Compare Output Mode 1A, bits
                    COM1A: u2,
                }),
                reserved20: [8]u8,
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
                    TICIE1: u1,
                    reserved5: u1,
                    ///  Timer/Counter1 Output CompareB Match Interrupt Enable
                    OCIE1B: u1,
                    ///  Timer/Counter1 Output CompareA Match Interrupt Enable
                    OCIE1A: u1,
                    ///  Timer/Counter1 Overflow Interrupt Enable
                    TOIE1: u1,
                }),
            };
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

            ///  I/O Port
            pub const PORTE = extern struct {
                ///  Port E Input Pins
                PINE: u8,
                ///  Port E Data Direction Register
                DDRE: u8,
                ///  Port E Data Register
                PORTE: u8,
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
    };
};
