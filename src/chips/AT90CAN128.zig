const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const AT90CAN128 = struct {
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
            ///  Timer/Counter1 Compare Match C
            TIMER1_COMPC: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIMER1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Compare Match
            TIMER0_COMP: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  CAN Transfer Complete or Error
            CANIT: Handler = unhandled,
            ///  CAN Timer Overrun
            OVRIT: Handler = unhandled,
            ///  SPI Serial Transfer Complete
            SPI_STC: Handler = unhandled,
            ///  USART0, Rx Complete
            USART0_RX: Handler = unhandled,
            ///  USART0 Data Register Empty
            USART0_UDRE: Handler = unhandled,
            ///  USART0, Tx Complete
            USART0_TX: Handler = unhandled,
            ///  Analog Comparator
            ANALOG_COMP: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  EEPROM Ready
            EE_READY: Handler = unhandled,
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
            pub const FUSE = @as(*volatile types.peripherals.FUSE, @ptrFromInt(0x0));
            ///  Lockbits
            pub const LOCKBIT = @as(*volatile types.peripherals.LOCKBIT, @ptrFromInt(0x0));
            ///  I/O Port
            pub const PORTA = @as(*volatile types.peripherals.PORT.PORTA, @ptrFromInt(0x20));
            ///  I/O Port
            pub const PORTB = @as(*volatile types.peripherals.PORT.PORTB, @ptrFromInt(0x23));
            ///  I/O Port
            pub const PORTC = @as(*volatile types.peripherals.PORT.PORTC, @ptrFromInt(0x26));
            ///  I/O Port
            pub const PORTD = @as(*volatile types.peripherals.PORT.PORTD, @ptrFromInt(0x29));
            ///  I/O Port
            pub const PORTE = @as(*volatile types.peripherals.PORT.PORTE, @ptrFromInt(0x2c));
            ///  I/O Port
            pub const PORTF = @as(*volatile types.peripherals.PORT.PORTF, @ptrFromInt(0x2f));
            ///  I/O Port
            pub const PORTG = @as(*volatile types.peripherals.PORT.PORTG, @ptrFromInt(0x32));
            ///  Timer/Counter, 8-bit
            pub const TC0 = @as(*volatile types.peripherals.TC8.TC0, @ptrFromInt(0x35));
            ///  Timer/Counter, 16-bit
            pub const TC1 = @as(*volatile types.peripherals.TC16.TC1, @ptrFromInt(0x36));
            ///  Timer/Counter, 8-bit Async
            pub const TC2 = @as(*volatile types.peripherals.TC8_ASYNC.TC2, @ptrFromInt(0x37));
            ///  Timer/Counter, 16-bit
            pub const TC3 = @as(*volatile types.peripherals.TC16.TC3, @ptrFromInt(0x38));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x3c));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x3e));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3f));
            ///  Serial Peripheral Interface
            pub const SPI = @as(*volatile types.peripherals.SPI, @ptrFromInt(0x4c));
            ///  Analog Comparator
            pub const AC = @as(*volatile types.peripherals.AC, @ptrFromInt(0x50));
            ///  JTAG Interface
            pub const JTAG = @as(*volatile types.peripherals.JTAG, @ptrFromInt(0x51));
            ///  Bootloader
            pub const BOOT_LOAD = @as(*volatile types.peripherals.BOOT_LOAD, @ptrFromInt(0x57));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x60));
            ///  Analog-to-Digital Converter
            pub const ADC = @as(*volatile types.peripherals.ADC, @ptrFromInt(0x78));
            ///  Two Wire Serial Interface
            pub const TWI = @as(*volatile types.peripherals.TWI, @ptrFromInt(0xb8));
            ///  USART
            pub const USART0 = @as(*volatile types.peripherals.USART.USART0, @ptrFromInt(0xc0));
            ///  USART
            pub const USART1 = @as(*volatile types.peripherals.USART.USART1, @ptrFromInt(0xc8));
            ///  Controller Area Network
            pub const CAN = @as(*volatile types.peripherals.CAN, @ptrFromInt(0xd8));
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_SUT_CKSEL = enum(u6) {
                ///  Ext. Clock; Start-up time: 6 CK + 0 ms
                EXTCLK_6CK_0MS = 0x0,
                ///  Ext. Clock; Start-up time: 6 CK + 4.1 ms
                EXTCLK_6CK_4MS1 = 0x10,
                ///  Ext. Clock; Start-up time: 6 CK + 65 ms
                EXTCLK_6CK_65MS = 0x20,
                ///  Int. RC Osc.; Start-up time: 6 CK + 0 ms
                INTRCOSC_6CK_0MS = 0x2,
                ///  Int. RC Osc.; Start-up time: 6 CK + 4.1 ms
                INTRCOSC_6CK_4MS1 = 0x12,
                ///  Int. RC Osc.; Start-up time: 6 CK + 65 ms
                INTRCOSC_6CK_65MS = 0x22,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 0 ms; Int. Cap.
                EXTLOFXTAL_32KCK_0MS_INTCAP = 0x7,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 4.1 ms; Int. Cap.
                EXTLOFXTAL_32KCK_4MS1_INTCAP = 0x17,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 65 ms; Int. Cap.
                EXTLOFXTAL_32KCK_65MS_INTCAP = 0x27,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 0 ms; Int. Cap.
                EXTLOFXTAL_1KCK_0MS_INTCAP = 0x6,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 4.1 ms; Int. Cap.
                EXTLOFXTAL_1KCK_4MS1_INTCAP = 0x16,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 65 ms; Int. Cap.
                EXTLOFXTAL_1KCK_65MS_INTCAP = 0x26,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 0 ms
                EXTLOFXTAL_32KCK_0MS = 0x5,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 4.1 ms
                EXTLOFXTAL_32KCK_4MS1 = 0x15,
                ///  Ext. Low-Freq. Crystal; Start-up time: 32K CK + 65 ms
                EXTLOFXTAL_32KCK_65MS = 0x25,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 0 ms
                EXTLOFXTAL_1KCK_0MS = 0x4,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 4.1 ms
                EXTLOFXTAL_1KCK_4MS1 = 0x14,
                ///  Ext. Low-Freq. Crystal; Start-up time: 1K CK + 65 ms
                EXTLOFXTAL_1KCK_65MS = 0x24,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 258 CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_258CK_4MS1 = 0x8,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 258 CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_258CK_65MS = 0x18,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 1K CK + 0 ms
                EXTXOSC_0MHZ4_0MHZ9_1KCK_0MS = 0x28,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 1K CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_1KCK_4MS1 = 0x38,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 1K CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_1KCK_65MS = 0x9,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 16K CK + 0 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_0MS = 0x19,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 16K CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_4MS1 = 0x29,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time: 16K CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_65MS = 0x39,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 258 CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_258CK_4MS1 = 0xa,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 258 CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_258CK_65MS = 0x1a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 1K CK + 0 ms
                EXTXOSC_0MHZ9_3MHZ_1KCK_0MS = 0x2a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 1K CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_1KCK_4MS1 = 0x3a,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 1K CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_1KCK_65MS = 0xb,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 16K CK + 0 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_0MS = 0x1b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 16K CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_4MS1 = 0x2b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time: 16K CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_65MS = 0x3b,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 258 CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_258CK_4MS1 = 0xc,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 258 CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_258CK_65MS = 0x1c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 1K CK + 0 ms
                EXTXOSC_3MHZ_8MHZ_1KCK_0MS = 0x2c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 1K CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_1KCK_4MS1 = 0x3c,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 1K CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_1KCK_65MS = 0xd,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 16K CK + 0 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_0MS = 0x1d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 16K CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_4MS1 = 0x2d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time: 16K CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_65MS = 0x3d,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 258 CK + 4.1 ms
                EXTXOSC_8MHZ_XX_258CK_4MS1 = 0xe,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 258 CK + 65 ms
                EXTXOSC_8MHZ_XX_258CK_65MS = 0x1e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 1K CK + 0 ms
                EXTXOSC_8MHZ_XX_1KCK_0MS = 0x2e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 1K CK + 4.1 ms
                EXTXOSC_8MHZ_XX_1KCK_4MS1 = 0x3e,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 1K CK + 65 ms
                EXTXOSC_8MHZ_XX_1KCK_65MS = 0xf,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 16K CK + 0 ms
                EXTXOSC_8MHZ_XX_16KCK_0MS = 0x1f,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 16K CK + 4.1 ms
                EXTXOSC_8MHZ_XX_16KCK_4MS1 = 0x2f,
                ///  Ext. Crystal Osc. 8.0- MHz; Start-up time: 16K CK + 65 ms
                EXTXOSC_8MHZ_XX_16KCK_65MS = 0x3f,
                _,
            };

            pub const ENUM_BOOTSZ = enum(u2) {
                ///  Boot Flash size=512 words start address=$FE00
                @"512W_FE00" = 0x3,
                ///  Boot Flash size=1024 words start address=$FC00
                @"1024W_FC00" = 0x2,
                ///  Boot Flash size=2048 words start address=$F800
                @"2048W_F800" = 0x1,
                ///  Boot Flash size=4096 words start address=$F000
                @"4096W_F000" = 0x0,
            };

            pub const ENUM_BODLEVEL = enum(u3) {
                ///  Brown-out detection disabled
                DISABLED = 0x7,
                ///  Brown-out detection at VCC=4.1 V
                @"4V1" = 0x6,
                ///  Brown-out detection at VCC=4.0 V
                @"4V0" = 0x5,
                ///  Brown-out detection at VCC=3.9 V
                @"3V9" = 0x4,
                ///  Brown-out detection at VCC=3.8 V
                @"3V8" = 0x3,
                ///  Brown-out detection at VCC=2.7 V
                @"2V7" = 0x2,
                ///  Brown-out detection at VCC=2.6 V
                @"2V6" = 0x1,
                ///  Brown-out detection at VCC=2.5 V
                @"2V5" = 0x0,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock Source
                SUT_CKSEL: packed union {
                    raw: u6,
                    value: ENUM_SUT_CKSEL,
                },
                ///  Clock output on PORTC7; [CKOUT=0]
                CKOUT: u1,
                ///  Divide clock by 8 internally; [CKDIV8=0]
                CKDIV8: u1,
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
                ///  Watchdog timer always on
                WDTON: u1,
                ///  Serial program downloading (SPI) enabled
                SPIEN: u1,
                ///  JTAG Interface Enabled
                JTAGEN: u1,
                ///  On-Chip Debug Enabled
                OCDEN: u1,
            }),
            EXTENDED: mmio.Mmio(packed struct(u8) {
                ///  Reserved for factory tests
                TA0SEL: u1,
                ///  Brown-out Detector trigger level
                BODLEVEL: packed union {
                    raw: u3,
                    value: ENUM_BODLEVEL,
                },
                padding: u4,
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

        ///  JTAG Interface
        pub const JTAG = extern struct {
            ///  On-Chip Debug Related Register in I/O Memory
            OCDR: u8,
            reserved3: [2]u8,
            ///  MCU Status Register
            MCUSR: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  JTAG Reset Flag
                JTRF: u1,
                padding: u3,
            }),
            ///  MCU Control Register
            MCUCR: mmio.Mmio(packed struct(u8) {
                reserved7: u7,
                ///  JTAG Interface Disable
                JTD: u1,
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
                reserved4: [1]u8,
                ///  USART Baud Rate Register t Bytes
                UBRR0: u16,
                ///  USART I/O Data Register
                UDR0: u8,
            };

            ///  USART
            pub const USART1 = extern struct {
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
                reserved4: [1]u8,
                ///  USART Baud Rate Register t Bytes
                UBRR1: u16,
                ///  USART I/O Data Register
                UDR1: u8,
            };
        };

        ///  CPU Registers
        pub const CPU = extern struct {
            pub const CPU_SECTOR_LIMITS_XMEM = enum(u3) {
                ///  LS = N/A, US = 0x1100 - 0xFFFF
                LS_N_A_US_0X1100_0XFFFF = 0x0,
                ///  LS = XMEMSTART - 0x1FFF, US = 0x2000 - 0xFFFF
                LS_XMEMSTART_0X1FFF_US_0X2000_0XFFFF = 0x1,
                ///  LS = XMEMSTART - 0x3FFF, US = 0x4000 - 0xFFFF
                LS_XMEMSTART_0X3FFF_US_0X4000_0XFFFF = 0x2,
                ///  LS = XMEMSTART - 0x5FFF, US = 0x6000 - 0xFFFF
                LS_XMEMSTART_0X5FFF_US_0X6000_0XFFFF = 0x3,
                ///  LS = XMEMSTART - 0x7FFF, US = 0x8000 - 0xFFFF
                LS_XMEMSTART_0X7FFF_US_0X8000_0XFFFF = 0x4,
                ///  LS = XMEMSTART - 0x9FFF, US = 0xA000 - 0xFFFF
                LS_XMEMSTART_0X9FFF_US_0XA000_0XFFFF = 0x5,
                ///  LS = XMEMSTART - 0xBFFF, US = 0xC000 - 0xFFFF
                LS_XMEMSTART_0XBFFF_US_0XC000_0XFFFF = 0x6,
                ///  LS = XMEMSTART - 0xDFFF, US = 0xE000 - 0xFFFF
                LS_XMEMSTART_0XDFFF_US_0XE000_0XFFFF = 0x7,
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

            ///  Oscillator Calibration Values
            pub const OSCCAL_VALUE_ADDRESSES = enum(u1) {
                ///  8.0 MHz
                @"8_0_MHz" = 0x0,
                _,
            };

            ///  General Purpose IO Register 0
            GPIOR0: mmio.Mmio(packed struct(u8) {
                ///  General Purpose IO Register 0 bit 0
                GPIOR00: u1,
                ///  General Purpose IO Register 0 bit 1
                GPIOR01: u1,
                ///  General Purpose IO Register 0 bit 2
                GPIOR02: u1,
                ///  General Purpose IO Register 0 bit 3
                GPIOR03: u1,
                ///  General Purpose IO Register 0 bit 4
                GPIOR04: u1,
                ///  General Purpose IO Register 0 bit 5
                GPIOR05: u1,
                ///  General Purpose IO Register 0 bit 6
                GPIOR06: u1,
                ///  General Purpose IO Register 0 bit 7
                GPIOR07: u1,
            }),
            reserved12: [11]u8,
            ///  General Purpose IO Register 1
            GPIOR1: mmio.Mmio(packed struct(u8) {
                ///  General Purpose IO Register 1 bis
                GPIOR: u8,
            }),
            ///  General Purpose IO Register 2
            GPIOR2: mmio.Mmio(packed struct(u8) {
                ///  General Purpose IO Register 2 bis
                GPIOR: u8,
            }),
            reserved21: [7]u8,
            ///  Sleep Mode Control Register
            SMCR: mmio.Mmio(packed struct(u8) {
                ///  Sleep Enable
                SE: u1,
                ///  Sleep Mode Select bits
                SM: packed union {
                    raw: u3,
                    value: CPU_SLEEP_MODE_3BITS2,
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
                BORF: u1,
                ///  Watchdog Reset Flag
                WDRF: u1,
                ///  JTAG Reset Flag
                JTRF: u1,
                padding: u3,
            }),
            ///  MCU Control Register
            MCUCR: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Vector Change Enable
                IVCE: u1,
                ///  Interrupt Vector Select
                IVSEL: u1,
                reserved4: u2,
                ///  Pull-up disable
                PUD: u1,
                padding: u3,
            }),
            reserved29: [5]u8,
            ///  RAM Page Z Select Register
            RAMPZ: mmio.Mmio(packed struct(u8) {
                ///  RAM Page Z Select Register Bit 0
                RAMPZ0: u1,
                padding: u7,
            }),
            reserved31: [1]u8,
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
                CLKPS: packed union {
                    raw: u4,
                    value: CPU_CLK_PRESCALE_4_BITS_SMALL,
                },
                reserved7: u3,
                CLKPCE: u1,
            }),
            reserved40: [4]u8,
            ///  Oscillator Calibration Value
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
            reserved54: [13]u8,
            ///  External Memory Control Register A
            XMCRA: mmio.Mmio(packed struct(u8) {
                ///  Wait state select bit lower page
                SRW0: packed union {
                    raw: u2,
                    value: CPU_WAIT_STATES,
                },
                ///  Wait state select bit upper page
                SRW1: packed union {
                    raw: u2,
                    value: CPU_WAIT_STATES,
                },
                ///  Wait state page limit
                SRL: packed union {
                    raw: u3,
                    value: CPU_SECTOR_LIMITS_XMEM,
                },
                ///  External SRAM Enable
                SRE: u1,
            }),
            ///  External Memory Control Register B
            XMCRB: mmio.Mmio(packed struct(u8) {
                ///  External Memory High Mask
                XMM: u3,
                reserved7: u4,
                ///  External Memory Bus Keeper Enable
                XMBK: u1,
            }),
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
            reserved45: [43]u8,
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
            EEDR: mmio.Mmio(packed struct(u8) {
                ///  EEPROM Data bits
                EEDR: u8,
            }),
            ///  EEPROM Read/Write Access Bytes
            EEAR: mmio.Mmio(packed struct(u16) {
                ///  EEPROM Address bits
                EEAR: u12,
                padding: u4,
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
                ///  Timer/Counter Interrupt Flag register
                TIFR1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Flag
                    TOV1: u1,
                    ///  Output Compare Flag 1A
                    OCF1A: u1,
                    ///  Output Compare Flag 1B
                    OCF1B: u1,
                    ///  Output Compare Flag 1C
                    OCF1C: u1,
                    reserved5: u1,
                    ///  Input Capture Flag 1
                    ICF1: u1,
                    padding: u2,
                }),
                reserved57: [56]u8,
                ///  Timer/Counter Interrupt Mask Register
                TIMSK1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Interrupt Enable
                    TOIE1: u1,
                    ///  Timer/Counter1 Output CompareA Match Interrupt Enable
                    OCIE1A: u1,
                    ///  Timer/Counter1 Output CompareB Match Interrupt Enable
                    OCIE1B: u1,
                    ///  Timer/Counter1 Output CompareC Match Interrupt Enable
                    OCIE1C: u1,
                    reserved5: u1,
                    ///  Timer/Counter1 Input Capture Interrupt Enable
                    ICIE1: u1,
                    padding: u2,
                }),
                reserved74: [16]u8,
                ///  Timer/Counter1 Control Register A
                TCCR1A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM1: u2,
                    ///  Compare Output Mode 1C, bits
                    COM1C: u2,
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
                ///  Timer/Counter 1 Control Register C
                TCCR1C: mmio.Mmio(packed struct(u8) {
                    reserved5: u5,
                    ///  Force Output Compare 1C
                    FOC1C: u1,
                    ///  Force Output Compare 1B
                    FOC1B: u1,
                    ///  Force Output Compare 1A
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
                ///  Timer/Counter1 Output Compare Register Bytes
                OCR1C: u16,
            };

            ///  Timer/Counter, 16-bit
            pub const TC3 = extern struct {
                ///  Timer/Counter Interrupt Flag register
                TIFR3: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter3 Overflow Flag
                    TOV3: u1,
                    ///  Output Compare Flag 3A
                    OCF3A: u1,
                    ///  Output Compare Flag 3B
                    OCF3B: u1,
                    ///  Output Compare Flag 3C
                    OCF3C: u1,
                    reserved5: u1,
                    ///  Input Capture Flag 3
                    ICF3: u1,
                    padding: u2,
                }),
                reserved57: [56]u8,
                ///  Timer/Counter Interrupt Mask Register
                TIMSK3: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter3 Overflow Interrupt Enable
                    TOIE3: u1,
                    ///  Timer/Counter3 Output CompareA Match Interrupt Enable
                    OCIE3A: u1,
                    ///  Timer/Counter3 Output CompareB Match Interrupt Enable
                    OCIE3B: u1,
                    ///  Timer/Counter3 Output CompareC Match Interrupt Enable
                    OCIE3C: u1,
                    reserved5: u1,
                    ///  Timer/Counter3 Input Capture Interrupt Enable
                    ICIE3: u1,
                    padding: u2,
                }),
                reserved88: [30]u8,
                ///  Timer/Counter3 Control Register A
                TCCR3A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM3: u2,
                    ///  Compare Output Mode 3C, bits
                    COM3C: u2,
                    ///  Compare Output Mode 3B, bits
                    COM3B: u2,
                    ///  Compare Output Mode 3A, bits
                    COM3A: u2,
                }),
                ///  Timer/Counter3 Control Register B
                TCCR3B: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler source of Timer/Counter 3
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
                ///  Timer/Counter 3 Control Register C
                TCCR3C: mmio.Mmio(packed struct(u8) {
                    reserved5: u5,
                    ///  Force Output Compare 3C
                    FOC3C: u1,
                    ///  Force Output Compare 3B
                    FOC3B: u1,
                    ///  Force Output Compare 3A
                    FOC3A: u1,
                }),
                reserved92: [1]u8,
                ///  Timer/Counter3 Bytes
                TCNT3: u16,
                ///  Timer/Counter3 Input Capture Register Bytes
                ICR3: u16,
                ///  Timer/Counter3 Output Compare Register Bytes
                OCR3A: u16,
                ///  Timer/Counter3 Output Compare Register Bytes
                OCR3B: u16,
                ///  Timer/Counter3 Output Compare Register Bytes
                OCR3C: u16,
            };
        };

        ///  Timer/Counter, 8-bit Async
        pub const TC8_ASYNC = struct {
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

            pub const CLK_SEL_3BIT = enum(u3) {
                ///  No Clock Source (Stopped)
                NO_CLOCK_SOURCE_STOPPED = 0x0,
                ///  Running, No Prescaling
                RUNNING_NO_PRESCALING = 0x1,
                ///  Running, CLK/8
                RUNNING_CLK_8 = 0x2,
                ///  Running, CLK/32
                RUNNING_CLK_32 = 0x3,
                ///  Running, CLK/64
                RUNNING_CLK_64 = 0x4,
                ///  Running, CLK/128
                RUNNING_CLK_128 = 0x5,
                ///  Running, CLK/256
                RUNNING_CLK_256 = 0x6,
                ///  Running, CLK/1024
                RUNNING_CLK_1024 = 0x7,
            };

            ///  Timer/Counter, 8-bit Async
            pub const TC2 = extern struct {
                ///  Timer/Counter Interrupt Flag Register
                TIFR2: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter2 Overflow Flag
                    TOV2: u1,
                    ///  Output Compare Flag 2
                    OCF2A: u1,
                    padding: u6,
                }),
                reserved12: [11]u8,
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  Prescaler Reset Timer/Counter2
                    PSR2: u1,
                    padding: u6,
                }),
                reserved57: [44]u8,
                ///  Timer/Counter Interrupt Mask register
                TIMSK2: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter2 Overflow Interrupt Enable
                    TOIE2: u1,
                    ///  Timer/Counter2 Output Compare Match Interrupt Enable
                    OCIE2A: u1,
                    padding: u6,
                }),
                reserved121: [63]u8,
                ///  Timer/Counter2 Control Register
                TCCR2A: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select bits
                    CS2: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT,
                    },
                    ///  Waveform Generation Mode
                    WGM21: u1,
                    ///  Compare Output Mode bits
                    COM2A: u2,
                    ///  Waveform Genration Mode
                    WGM20: packed union {
                        raw: u1,
                        value: WAVEFORM_GEN_MODE,
                    },
                    ///  Force Output Compare
                    FOC2A: u1,
                }),
                reserved123: [1]u8,
                ///  Timer/Counter2
                TCNT2: u8,
                ///  Timer/Counter2 Output Compare Register
                OCR2A: u8,
                reserved127: [2]u8,
                ///  Asynchronous Status Register
                ASSR: mmio.Mmio(packed struct(u8) {
                    ///  TCR2UB: Timer/Counter Control Register2 Update Busy
                    TCR2UB: u1,
                    ///  Output Compare Register2 Update Busy
                    OCR2UB: u1,
                    ///  TCN2UB: Timer/Counter2 Update Busy
                    TCN2UB: u1,
                    ///  AS2: Asynchronous Timer/Counter2
                    AS2: u1,
                    ///  Enable External Clock Interrupt
                    EXCLK: u1,
                    padding: u3,
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
                    value: ANALOG_ADC_AUTO_TRIGGER2,
                },
                reserved7: u4,
                ///  ADC High Speed Mode
                ADHSM: u1,
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
            reserved6: [1]u8,
            ///  Digital Input Disable Register 1
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
            reserved43: [42]u8,
            ///  ADC Control and Status Register B
            ADCSRB: mmio.Mmio(packed struct(u8) {
                reserved6: u6,
                ///  Analog Comparator Multiplexer Enable
                ACME: u1,
                padding: u1,
            }),
            reserved47: [3]u8,
            DIDR1: mmio.Mmio(packed struct(u8) {
                ///  AIN0 Digital Input Disable
                AIN0D: u1,
                ///  AIN1 Digital Input Disable
                AIN1D: u1,
                padding: u6,
            }),
        };

        ///  Controller Area Network
        pub const CAN = extern struct {
            ///  CAN General Control Register
            CANGCON: mmio.Mmio(packed struct(u8) {
                ///  Software Reset Request
                SWRES: u1,
                ///  Enable / Standby
                ENASTB: u1,
                ///  Test Mode
                TEST: u1,
                ///  Listening Mode
                LISTEN: u1,
                ///  Synchronization of TTC
                SYNTTC: u1,
                ///  Time Trigger Communication
                TTC: u1,
                ///  Overload Frame Request
                OVRQ: u1,
                ///  Abort Request
                ABRQ: u1,
            }),
            ///  CAN General Status Register
            CANGSTA: mmio.Mmio(packed struct(u8) {
                ///  Error Passive Mode
                ERRP: u1,
                ///  Bus Off Mode
                BOFF: u1,
                ///  Enable Flag
                ENFG: u1,
                ///  Receiver Busy
                RXBSY: u1,
                ///  Transmitter Busy
                TXBSY: u1,
                reserved6: u1,
                ///  Overload Frame Flag
                OVRG: u1,
                padding: u1,
            }),
            ///  CAN General Interrupt Register
            CANGIT: mmio.Mmio(packed struct(u8) {
                ///  Ackknowledgement Error General
                AERG: u1,
                ///  Form Error General
                FERG: u1,
                ///  CRC Error General
                CERG: u1,
                ///  Stuff Error General
                SERG: u1,
                ///  Burst Receive Interrupt
                BXOK: u1,
                ///  Overrun CAN Timer
                OVRTIM: u1,
                ///  Bus Off Interrupt Flag
                BOFFIT: u1,
                ///  General Interrupt Flag
                CANIT: u1,
            }),
            ///  CAN General Interrupt Enable Register
            CANGIE: mmio.Mmio(packed struct(u8) {
                ///  Enable CAN Timer Overrun Interrupt
                ENOVRT: u1,
                ///  Enable General Error Interrupt
                ENERG: u1,
                ///  Enable Burst Receive Interrupt
                ENBX: u1,
                ///  Enable MOb Error Interrupt
                ENERR: u1,
                ///  Enable Transmitt Interrupt
                ENTX: u1,
                ///  Enable Receive Interrupt
                ENRX: u1,
                ///  Enable Bus Off INterrupt
                ENBOFF: u1,
                ///  Enable all Interrupts
                ENIT: u1,
            }),
            ///  Enable MOb Register
            CANEN2: mmio.Mmio(packed struct(u8) {
                ///  Enable MOb
                ENMOB: u8,
            }),
            ///  Enable MOb Register
            CANEN1: mmio.Mmio(packed struct(u8) {
                ///  Enable MOb
                ENMOB: u7,
                padding: u1,
            }),
            ///  Enable Interrupt MOb Register
            CANIE2: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Enable by MOb
                IEMOB: u8,
            }),
            ///  Enable Interrupt MOb Register
            CANIE1: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Enable by MOb
                IEMOB: u7,
                padding: u1,
            }),
            ///  CAN Status Interrupt MOb Register
            CANSIT2: mmio.Mmio(packed struct(u8) {
                ///  Status of Interrupt by MOb
                SIT: u8,
            }),
            ///  CAN Status Interrupt MOb Register
            CANSIT1: mmio.Mmio(packed struct(u8) {
                ///  Status of Interrupt by MOb
                SIT: u7,
                padding: u1,
            }),
            ///  Bit Timing Register 1
            CANBT1: mmio.Mmio(packed struct(u8) {
                reserved1: u1,
                ///  Baud Rate Prescaler bits
                BRP: u6,
                padding: u1,
            }),
            ///  Bit Timing Register 2
            CANBT2: mmio.Mmio(packed struct(u8) {
                reserved1: u1,
                ///  Propagation Time Segment
                PRS: u3,
                reserved5: u1,
                ///  Re-Sync Jump Width
                SJW: u2,
                padding: u1,
            }),
            ///  Bit Timing Register 3
            CANBT3: mmio.Mmio(packed struct(u8) {
                ///  Sample Type
                SMP: u1,
                ///  Phase Segment 1
                PHS1: u3,
                ///  Phase Segments
                PHS2: u3,
                padding: u1,
            }),
            ///  Timer Control Register
            CANTCON: mmio.Mmio(packed struct(u8) {
                ///  CAN Timer Prescaler
                TPRSC: u8,
            }),
            ///  Timer Register
            CANTIM: mmio.Mmio(packed struct(u16) {
                ///  CAN Timer Count
                CANTIM: u16,
            }),
            ///  TTC Timer Register
            CANTTC: mmio.Mmio(packed struct(u16) {
                ///  TTC Timer Count
                TIMTTC: u16,
            }),
            ///  Transmit Error Counter Register
            CANTEC: mmio.Mmio(packed struct(u8) {
                ///  Trasnmit Error Count
                TEC: u8,
            }),
            ///  Receive Error Counter Register
            CANREC: mmio.Mmio(packed struct(u8) {
                ///  Receive Error Count
                REC: u8,
            }),
            ///  Highest Priority MOb Register
            CANHPMOB: mmio.Mmio(packed struct(u8) {
                ///  CAN General purpose bits
                CGP: u4,
                ///  Highest Priority MOb number
                HPMOB: u4,
            }),
            ///  Page MOb Register
            CANPAGE: mmio.Mmio(packed struct(u8) {
                ///  Data Buffer Index Bits
                INDX: u3,
                ///  MOb Data Buffer Auto Increment
                AINC: u1,
                ///  MOb Number Bits
                MOBNB: u4,
            }),
            ///  MOb Status Register
            CANSTMOB: mmio.Mmio(packed struct(u8) {
                ///  Ackknowledgement Error
                AERR: u1,
                ///  Form Error
                FERR: u1,
                ///  CRC Error
                CERR: u1,
                ///  Stuff Error
                SERR: u1,
                ///  Bit Error
                BERR: u1,
                ///  Receive OK
                RXOK: u1,
                ///  Transmit OK
                TXOK: u1,
                ///  Data Length Code Warning
                DLCW: u1,
            }),
            ///  MOb Control and DLC Register
            CANCDMOB: mmio.Mmio(packed struct(u8) {
                ///  Data Length Code Bits
                DLC: u4,
                ///  Identifier Extension
                IDE: u1,
                ///  Reply Valid
                RPLV: u1,
                ///  MOb Config Bits
                CONMOB: u2,
            }),
            ///  Identifier Tag Register 4
            CANIDT4: mmio.Mmio(packed struct(u8) {
                ///  Reserved Bit 0 Tag
                RB0TAG: u1,
                ///  Reserved Bit 1 Tag
                RB1TAG: u1,
                ///  Remote Trasnmission Request Tag
                RTRTAG: u1,
                ///  Identifier Tag
                IDT: u5,
            }),
            ///  Identifier Tag Register 3
            CANIDT3: mmio.Mmio(packed struct(u8) {
                ///  Identifier Tag
                IDT: u8,
            }),
            ///  Identifier Tag Register 2
            CANIDT2: mmio.Mmio(packed struct(u8) {
                ///  Identifier Tag
                IDT: u8,
            }),
            ///  Identifier Tag Register 1
            CANIDT1: mmio.Mmio(packed struct(u8) {
                ///  Identifier Tag
                IDT: u8,
            }),
            ///  Identifier Mask Register 4
            CANIDM4: mmio.Mmio(packed struct(u8) {
                ///  Identifier Extension Mask
                IDEMSK: u1,
                reserved2: u1,
                ///  Remote Transmission Request Mask
                RTRMSK: u1,
                ///  Identifier Mask
                IDMSK: u5,
            }),
            ///  Identifier Mask Register 3
            CANIDM3: mmio.Mmio(packed struct(u8) {
                ///  Identifier Mask
                IDMSK: u8,
            }),
            ///  Identifier Mask Register 2
            CANIDM2: mmio.Mmio(packed struct(u8) {
                ///  Identifier Mask
                IDMSK: u8,
            }),
            ///  Identifier Mask Register 1
            CANIDM1: mmio.Mmio(packed struct(u8) {
                ///  Identifier Mask
                IDMSK: u8,
            }),
            ///  Time Stamp Register
            CANSTM: mmio.Mmio(packed struct(u16) {
                ///  Time Stamp Count
                TIMSTM: u16,
            }),
            ///  Message Data Register
            CANMSG: mmio.Mmio(packed struct(u8) {
                ///  Message Data
                MSG: u8,
            }),
        };
    };
};
