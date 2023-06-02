const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATmega128A = struct {
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
            ///  External Interrupt Request 2
            INT2: Handler = unhandled,
            ///  External Interrupt Request 3
            INT3: Handler = unhandled,
            ///  External Interrupt Request 4
            INT4: Handler = unhandled,
            ///  External Interrupt Request 5
            INT5: Handler = unhandled,
            ///  External Interrupt Request 6
            INT6: Handler = unhandled,
            ///  External Interrupt Request 7
            INT7: Handler = unhandled,
            ///  Timer/Counter2 Compare Match
            TIMER2_COMP: Handler = unhandled,
            ///  Timer/Counter2 Overflow
            TIMER2_OVF: Handler = unhandled,
            ///  Timer/Counter1 Capture Event
            TIMER1_CAPT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer/Counter Compare Match B
            TIMER1_COMPB: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIMER1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Compare Match
            TIMER0_COMP: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  SPI Serial Transfer Complete
            SPI_STC: Handler = unhandled,
            ///  USART0, Rx Complete
            USART0_RX: Handler = unhandled,
            ///  USART0 Data Register Empty
            USART0_UDRE: Handler = unhandled,
            ///  USART0, Tx Complete
            USART0_TX: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  EEPROM Ready
            EE_READY: Handler = unhandled,
            ///  Analog Comparator
            ANALOG_COMP: Handler = unhandled,
            ///  Timer/Counter1 Compare Match C
            TIMER1_COMPC: Handler = unhandled,
            ///  Timer/Counter3 Capture Event
            TIMER3_CAPT: Handler = unhandled,
            ///  Timer/Counter3 Compare Match A
            TIMER3_COMPA: Handler = unhandled,
            ///  Timer/Counter3 Compare Match B
            TIMER3_COMPB: Handler = unhandled,
            ///  Timer/Counter3 Compare Match C
            TIMER3_COMPC: Handler = unhandled,
            ///  Timer/Counter3 Overflow
            TIMER3_OVF: Handler = unhandled,
            ///  USART1, Rx Complete
            USART1_RX: Handler = unhandled,
            ///  USART1, Data Register Empty
            USART1_UDRE: Handler = unhandled,
            ///  USART1, Tx Complete
            USART1_TX: Handler = unhandled,
            ///  2-wire Serial Interface
            TWI: Handler = unhandled,
            ///  Store Program Memory Read
            SPM_READY: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @intToPtr(*volatile types.peripherals.FUSE, 0x0);
            ///  Lockbits
            pub const LOCKBIT = @intToPtr(*volatile types.peripherals.LOCKBIT, 0x0);
            ///  I/O Port
            pub const PORTF = @intToPtr(*volatile types.peripherals.PORT.PORTF, 0x20);
            ///  I/O Port
            pub const PORTE = @intToPtr(*volatile types.peripherals.PORT.PORTE, 0x21);
            ///  Analog-to-Digital Converter
            pub const ADC = @intToPtr(*volatile types.peripherals.ADC, 0x24);
            ///  Analog Comparator
            pub const AC = @intToPtr(*volatile types.peripherals.AC, 0x28);
            ///  USART
            pub const USART0 = @intToPtr(*volatile types.peripherals.USART.USART0, 0x29);
            ///  Serial Peripheral Interface
            pub const SPI = @intToPtr(*volatile types.peripherals.SPI, 0x2d);
            ///  I/O Port
            pub const PORTD = @intToPtr(*volatile types.peripherals.PORT.PORTD, 0x30);
            ///  I/O Port
            pub const PORTC = @intToPtr(*volatile types.peripherals.PORT.PORTC, 0x33);
            ///  I/O Port
            pub const PORTB = @intToPtr(*volatile types.peripherals.PORT.PORTB, 0x36);
            ///  I/O Port
            pub const PORTA = @intToPtr(*volatile types.peripherals.PORT.PORTA, 0x39);
            ///  EEPROM
            pub const EEPROM = @intToPtr(*volatile types.peripherals.EEPROM, 0x3c);
            ///  Other Registers
            pub const MISC = @intToPtr(*volatile types.peripherals.MISC, 0x40);
            ///  Timer/Counter, 8-bit Async
            pub const TC0 = @intToPtr(*volatile types.peripherals.TC8_ASYNC.TC0, 0x40);
            ///  Timer/Counter, 16-bit
            pub const TC1 = @intToPtr(*volatile types.peripherals.TC16.TC1, 0x40);
            ///  Timer/Counter, 16-bit
            pub const TC3 = @intToPtr(*volatile types.peripherals.TC16.TC3, 0x40);
            ///  Watchdog Timer
            pub const WDT = @intToPtr(*volatile types.peripherals.WDT, 0x41);
            ///  JTAG Interface
            pub const JTAG = @intToPtr(*volatile types.peripherals.JTAG, 0x42);
            ///  Timer/Counter, 8-bit
            pub const TC2 = @intToPtr(*volatile types.peripherals.TC8.TC2, 0x43);
            ///  CPU Registers
            pub const CPU = @intToPtr(*volatile types.peripherals.CPU, 0x54);
            ///  External Interrupts
            pub const EXINT = @intToPtr(*volatile types.peripherals.EXINT, 0x58);
            ///  I/O Port
            pub const PORTG = @intToPtr(*volatile types.peripherals.PORT.PORTG, 0x63);
            ///  Bootloader
            pub const BOOT_LOAD = @intToPtr(*volatile types.peripherals.BOOT_LOAD, 0x68);
            ///  Two Wire Serial Interface
            pub const TWI = @intToPtr(*volatile types.peripherals.TWI, 0x70);
            ///  USART
            pub const USART1 = @intToPtr(*volatile types.peripherals.USART.USART1, 0x98);
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_BODLEVEL = enum(u1) {
                ///  Brown-out detection level at VCC=4.0 V
                @"4V0" = 0x0,
                ///  Brown-out detection level at VCC=2.7 V
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
                ///  Boot Flash size=512 words start address=$FE00
                @"512W_FE00" = 0x3,
                ///  Boot Flash size=1024 words start address=$FC00
                @"1024W_FC00" = 0x2,
                ///  Boot Flashsize=2048 words start address=$F800
                @"2048W_F800" = 0x1,
                ///  Boot Flash size=4096 words start address=$F000
                @"4096W_F000" = 0x0,
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
                ///  JTAG Interface Enabled
                JTAGEN: u1,
                ///  On-Chip Debug Enabled
                OCDEN: u1,
            }),
            EXTENDED: mmio.Mmio(packed struct(u8) {
                ///  Watchdog Timer always on
                WDTON: u1,
                ///  ATmega103 Compatibility Mode
                M103C: u1,
                padding: u6,
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
            reserved24: [23]u8,
            ///  Special Function IO Register
            SFIOR: mmio.Mmio(packed struct(u8) {
                reserved3: u3,
                ///  Analog Comparator Multiplexer Enable
                ACME: u1,
                padding: u4,
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

        ///  USART
        pub const USART = struct {
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

            ///  USART
            pub const USART0 = extern struct {
                ///  USART Baud Rate Register Low Byte
                UBRR0L: u8,
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
                ///  USART I/O Data Register
                UDR0: u8,
                reserved103: [99]u8,
                ///  USART Baud Rate Register Hight Byte
                UBRR0H: u8,
                reserved108: [4]u8,
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
                        raw: u1,
                        value: COMM_USART_MODE,
                    },
                    padding: u1,
                }),
            };

            ///  USART
            pub const USART1 = extern struct {
                ///  USART Baud Rate Register Hight Byte
                UBRR1H: u8,
                ///  USART Baud Rate Register Low Byte
                UBRR1L: u8,
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
                ///  USART I/O Data Register
                UDR1: u8,
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
                        raw: u1,
                        value: COMM_USART_MODE,
                    },
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
                ///  Boot Lock Bit Set
                BLBSET: u1,
                ///  Read While Write section read enable
                RWWSRE: u1,
                reserved6: u1,
                ///  Read While Write Section Busy
                RWWSB: u1,
                ///  SPM Interrupt Enable
                SPMIE: u1,
            }),
        };

        ///  JTAG Interface
        pub const JTAG = extern struct {
            ///  On-Chip Debug Related Register in I/O Memory
            OCDR: mmio.Mmio(packed struct(u8) {
                ///  On-Chip Debug Register Bits
                OCDR: u8,
            }),
            reserved18: [17]u8,
            ///  MCU Control And Status Register
            MCUCSR: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  JTAG Reset Flag
                JTRF: u1,
                reserved7: u2,
                ///  JTAG Interface Disable
                JTD: u1,
            }),
        };

        ///  Other Registers
        pub const MISC = extern struct {
            ///  Special Function IO Register
            SFIOR: mmio.Mmio(packed struct(u8) {
                ///  Prescaler Reset Timer/Counter3, Timer/Counter2, and Timer/Counter1
                PSR321: u1,
                ///  Prescaler Reset Timer/Counter0
                PSR0: u1,
                ///  Pull Up Disable
                PUD: u1,
                ///  Analog Comparator Multiplexer Enable
                ACME: u1,
                reserved7: u3,
                ///  Timer/Counter Synchronization Mode
                TSM: u1,
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
                INTF: u8,
            }),
            ///  External Interrupt Mask Register
            EIMSK: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Request 7 Enable
                INT: u8,
            }),
            ///  External Interrupt Control Register B
            EICRB: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt 7-4 Sense Control Bit
                ISC4: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt 7-4 Sense Control Bit
                ISC5: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt 7-4 Sense Control Bit
                ISC6: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt 7-4 Sense Control Bit
                ISC7: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
            }),
            reserved18: [15]u8,
            ///  External Interrupt Control Register A
            EICRA: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Sense Control Bit
                ISC0: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt Sense Control Bit
                ISC1: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt Sense Control Bit
                ISC2: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt Sense Control Bit
                ISC3: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
            }),
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
            ///  EEPROM Read/Write Access Bytes
            EEAR: u16,
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
                ///  Input Pins, Port E
                PINE: u8,
                ///  Data Direction Register, Port E
                DDRE: u8,
                ///  Data Register, Port E
                PORTE: u8,
            };

            ///  I/O Port
            pub const PORTF = extern struct {
                ///  Input Pins, Port F
                PINF: u8,
                reserved65: [64]u8,
                ///  Data Direction Register, Port F
                DDRF: u8,
                ///  Data Register, Port F
                PORTF: u8,
            };

            ///  I/O Port
            pub const PORTG = extern struct {
                ///  Input Pins, Port G
                PING: u8,
                ///  Data Direction Register, Port G
                DDRG: u8,
                ///  Data Register, Port G
                PORTG: u8,
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
                ///  Special Function IO Register
                SFIOR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset, T/C3, T/C2, T/C1
                    PSR321: u1,
                    reserved7: u6,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                reserved6: [5]u8,
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
                    ///  Clock Select1 bits
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
                    ///  Waveform Generation Mode Bits
                    WGM1: u2,
                    ///  Compare Output Mode 1C, bits
                    COM1C: u2,
                    ///  Compare Output Mode 1B, bits
                    COM1B: u2,
                    ///  Compare Output Mode 1A, bits
                    COM1A: u2,
                }),
                reserved22: [6]u8,
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
                reserved56: [32]u8,
                ///  Timer/Counter1 Output Compare Register Bytes
                OCR1C: u16,
                ///  Timer/Counter1 Control Register C
                TCCR1C: mmio.Mmio(packed struct(u8) {
                    reserved5: u5,
                    ///  Force Output Compare for channel C
                    FOC1C: u1,
                    ///  Force Output Compare for channel B
                    FOC1B: u1,
                    ///  Force Output Compare for channel A
                    FOC1A: u1,
                }),
                reserved60: [1]u8,
                ///  Extended Timer/Counter Interrupt Flag register
                ETIFR: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter 1, Output Compare C Match Flag
                    OCF1C: u1,
                    padding: u7,
                }),
                ///  Extended Timer/Counter Interrupt Mask Register
                ETIMSK: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter 1, Output Compare Match C Interrupt Enable
                    OCIE1C: u1,
                    padding: u7,
                }),
            };

            ///  Timer/Counter, 16-bit
            pub const TC3 = extern struct {
                ///  Special Function IO Register
                SFIOR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset, T/C3, T/C2, T/C1
                    PSR321: u1,
                    reserved7: u6,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                reserved60: [59]u8,
                ///  Extended Timer/Counter Interrupt Flag register
                ETIFR: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  Timer/Counter3 Output Compare C Match Flag
                    OCF3C: u1,
                    ///  Timer/Counter3 Overflow Flag
                    TOV3: u1,
                    ///  Output Compare Flag 3B
                    OCF3B: u1,
                    ///  Output Compare Flag 3A
                    OCF3A: u1,
                    ///  Input Capture Flag 3
                    ICF3: u1,
                    padding: u2,
                }),
                ///  Extended Timer/Counter Interrupt Mask Register
                ETIMSK: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  Timer/Counter3, Output Compare Match Interrupt Enable
                    OCIE3C: u1,
                    ///  Timer/Counter3 Overflow Interrupt Enable
                    TOIE3: u1,
                    ///  Timer/Counter3 Output CompareB Match Interrupt Enable
                    OCIE3B: u1,
                    ///  Timer/Counter3 Output CompareA Match Interrupt Enable
                    OCIE3A: u1,
                    ///  Timer/Counter3 Input Capture Interrupt Enable
                    TICIE3: u1,
                    padding: u2,
                }),
                reserved64: [2]u8,
                ///  Timer/Counter3 Input Capture Register Bytes
                ICR3: u16,
                ///  Timer/Counter3 Output compare Register C Bytes
                OCR3C: u16,
                ///  Timer/Counter3 Output Compare Register B Bytes
                OCR3B: u16,
                ///  Timer/Counter3 Output Compare Register A Bytes
                OCR3A: u16,
                ///  Timer/Counter3 Bytes
                TCNT3: u16,
                ///  Timer/Counter3 Control Register B
                TCCR3B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select3 bits
                    CS3: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Waveform Generation Mode
                    WGM3: u2,
                    reserved6: u1,
                    ///  Input Capture 3 Edge Select
                    ICES3: u1,
                    ///  Input Capture 3 Noise Canceler
                    ICNC3: u1,
                }),
                ///  Timer/Counter3 Control Register A
                TCCR3A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode Bits
                    WGM3: u2,
                    ///  Compare Output Mode 3C, bits
                    COM3C: u2,
                    ///  Compare Output Mode 3B, bits
                    COM3B: u2,
                    ///  Compare Output Mode 3A, bits
                    COM3A: u2,
                }),
                ///  Timer/Counter3 Control Register C
                TCCR3C: mmio.Mmio(packed struct(u8) {
                    reserved5: u5,
                    ///  Force Output Compare for channel C
                    FOC3C: u1,
                    ///  Force Output Compare for channel B
                    FOC3B: u1,
                    ///  Force Output Compare for channel A
                    FOC3A: u1,
                }),
            };
        };

        ///  Timer/Counter, 8-bit
        pub const TC8 = struct {
            pub const WAVEFORM_GEN_MODE = enum(u2) {
                ///  Normal
                NORMAL = 0x0,
                ///  PWM, Phase Correct
                PWM_PHASE_CORRECT = 0x2,
                ///  CTC
                CTC = 0x1,
                ///  Fast PWM
                FAST_PWM = 0x3,
            };

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
            pub const TC2 = extern struct {
                ///  Output Compare Register
                OCR2: u8,
                ///  Timer/Counter Register
                TCNT2: u8,
                ///  Timer/Counter Control Register
                TCCR2: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select
                    CS2: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Waveform Generation Mode
                    WGM21: u1,
                    ///  Compare Match Output Mode
                    COM2: u2,
                    ///  Wafeform Generation Mode
                    WGM20: packed union {
                        raw: u1,
                        value: WAVEFORM_GEN_MODE,
                    },
                    ///  Force Output Compare
                    FOC2: u1,
                }),
                reserved19: [16]u8,
                ///  Timer/Counter Interrupt Flag Register
                TIFR: mmio.Mmio(packed struct(u8) {
                    reserved6: u6,
                    ///  Timer/Counter2 Overflow Flag
                    TOV2: u1,
                    ///  Output Compare Flag 2
                    OCF2: u1,
                }),
                TIMSK: mmio.Mmio(packed struct(u8) {
                    reserved6: u6,
                    TOIE2: u1,
                    OCIE2: u1,
                }),
            };
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
                MUX: u5,
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
