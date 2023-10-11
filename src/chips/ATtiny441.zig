const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny441 = struct {
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
            ///  Analog Comparator 0
            ANA_COMP0: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  EEPROM Ready
            EE_RDY: Handler = unhandled,
            ///  Analog Comparator 1
            ANA_COMP1: Handler = unhandled,
            ///  Timer/Counter2 Capture Event
            TIMER2_CAPT: Handler = unhandled,
            ///  Timer/Counter2 Compare Match A
            TIMER2_COMPA: Handler = unhandled,
            ///  Timer/Counter2 Compare Match B
            TIMER2_COMPB: Handler = unhandled,
            ///  Timer/Counter2 Overflow
            TIMER2_OVF: Handler = unhandled,
            ///  Serial Peripheral Interface
            SPI: Handler = unhandled,
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
            ///  Two-wire Serial Interface
            TWI_SLAVE: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @as(*volatile types.peripherals.FUSE, @ptrFromInt(0x0));
            ///  Lockbits
            pub const LOCKBIT = @as(*volatile types.peripherals.LOCKBIT, @ptrFromInt(0x0));
            ///  Analog-to-Digital Converter
            pub const ADC = @as(*volatile types.peripherals.ADC, @ptrFromInt(0x24));
            ///  Analog Comparator
            pub const AC = @as(*volatile types.peripherals.AC, @ptrFromInt(0x2a));
            ///  Timer/Counter, 16-bit
            pub const TC1 = @as(*volatile types.peripherals.TC16.TC1, @ptrFromInt(0x2e));
            ///  Timer/Counter, 16-bit
            pub const TC2 = @as(*volatile types.peripherals.TC16.TC2, @ptrFromInt(0x30));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x32));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x33));
            ///  I/O Port
            pub const PORTB = @as(*volatile types.peripherals.PORT.PORTB, @ptrFromInt(0x36));
            ///  I/O Port
            pub const PORTA = @as(*volatile types.peripherals.PORT.PORTA, @ptrFromInt(0x39));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3c));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x41));
            ///  Timer/Counter, 8-bit
            pub const TC0 = @as(*volatile types.peripherals.TC8.TC0, @ptrFromInt(0x43));
            ///  USART
            pub const USART0 = @as(*volatile types.peripherals.USART.USART0, @ptrFromInt(0x65));
            ///  Serial Peripheral Interface
            pub const SPI = @as(*volatile types.peripherals.SPI, @ptrFromInt(0x65));
            ///  Timer/Counter Output Compare Pin
            pub const TOCPM = @as(*volatile types.peripherals.TOCPM, @ptrFromInt(0x66));
            ///  USART
            pub const USART1 = @as(*volatile types.peripherals.USART.USART1, @ptrFromInt(0x90));
            ///  Two Wire Serial Interface
            pub const TWI = @as(*volatile types.peripherals.TWI, @ptrFromInt(0xa0));
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
                ///  Int. ULP Osc.; Start-up time PWRDWN/RESET: 6 CK/16 CK + 16 ms
                INTULPOSC_32KHZ_6CK_16CK_16MS = 0x4,
                ///  Ext. Low-Freq. Crystal; Start-up time PWRDWN/RESET: 1K CK/16 CK + 16 ms
                EXTLOFXTAL_1KCK_16CK_16MS = 0x6,
                ///  Ext. Low-Freq. Crystal; Start-up time PWRDWN/RESET: 32K CK/16 CK + 16 ms
                EXTLOFXTAL_32KCK_14CK_16MS = 0x16,
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

            pub const ENUM_ULPOSCSEL = enum(u3) {
                ///  32 kHz
                ULPOSC_32KHZ = 0x7,
                ///  64 kHz
                ULPOSC_64KHZ = 0x6,
                ///  128 kHz
                ULPOSC_128KHZ = 0x5,
                ///  256 kHz
                ULPOSC_256KHZ = 0x4,
                ///  512 kHz
                ULPOSC_512KHZ = 0x3,
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
                ///  Frequency selection for internal ULP oscillator. The selection only affects system clock, watchdog and reset timeout always use 32 kHz clock.
                ULPOSCSEL: packed union {
                    raw: u3,
                    value: ENUM_ULPOSCSEL,
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
                ///  Port B Data register
                PINB: u8,
                ///  Data Direction Register, Port B
                DDRB: u8,
                ///  Input Pins, Port B
                PORTB: u8,
                reserved44: [41]u8,
                ///  Pull-up Enable Control Register
                PUEB: u8,
                reserved46: [1]u8,
                ///  Port Control Register
                PORTCR: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  Break-Before-Make Mode Enable
                    BBMB: u1,
                    padding: u6,
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
                reserved42: [39]u8,
                ///  Pull-up Enable Control Register
                PUEA: u8,
                ///  Port Control Register
                PORTCR: mmio.Mmio(packed struct(u8) {
                    ///  Break-Before-Make Mode Enable
                    BBMA: u1,
                    padding: u7,
                }),
                reserved49: [5]u8,
                ///  Port High Drive Enable Register
                PHDE: mmio.Mmio(packed struct(u8) {
                    ///  PortA High Drive Enable
                    PHDEA: u2,
                    padding: u6,
                }),
            };
        };

        ///  USART
        pub const USART = struct {
            pub const COMM_USART_MODE_2BIT = enum(u2) {
                ///  Asynchronous USART
                ASYNCHRONOUS_USART = 0x0,
                ///  Synchronous USART
                SYNCHRONOUS_USART = 0x1,
                ///  Master SPI
                MASTER_SPI = 0x3,
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

            ///  USART
            pub const USART0 = extern struct {
                ///  Remap Port Pins
                REMAP: mmio.Mmio(packed struct(u8) {
                    ///  USART0 Pin Mapping
                    U0MAP: u1,
                    padding: u7,
                }),
                reserved27: [26]u8,
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

        ///  Two Wire Serial Interface
        pub const TWI = extern struct {
            ///  TWI Slave Data Register
            TWSD: mmio.Mmio(packed struct(u8) {
                ///  TWI slave data bit
                TWSD: u8,
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
            ///  TWI Slave Control Register B
            TWSCRB: mmio.Mmio(packed struct(u8) {
                TWCMD: u2,
                ///  TWI Acknowledge Action
                TWAA: u1,
                ///  TWI High Noise Mode
                TWHNM: u1,
                padding: u4,
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

            pub const ANALOG_ADC_AUTO_TRIGGER_T841 = enum(u3) {
                ///  Free Running mode
                FREE_RUNNING_MODE = 0x0,
                ///  Analog Comparator 0
                ANALOG_COMPARATOR_0 = 0x1,
                ///  External Interrupt Request 0
                EXTERNAL_INTERRUPT_REQUEST_0 = 0x2,
                ///  Timer/Counter0 Compare Match A
                TIMER_COUNTER0_COMPARE_MATCH_A = 0x3,
                ///  Timer/Counter0 Overflow
                TIMER_COUNTER0_OVERFLOW = 0x4,
                ///  Timer/Counter1 Compare Match A
                TIMER_COUNTER1_COMPARE_MATCH_A = 0x5,
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
                    value: ANALOG_ADC_AUTO_TRIGGER_T841,
                },
                ADLAR: u1,
                padding: u4,
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
            ///  ADC Data Register Bytes
            ADC: u16,
            ///  The ADC multiplexer Selection Register B
            ADMUXB: mmio.Mmio(packed struct(u8) {
                ///  Gain Selection Bits
                GSEL: u2,
                reserved5: u3,
                ///  Reference Selection Bits
                REFS: u3,
            }),
            ///  The ADC multiplexer Selection Register A
            ADMUXA: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel and Gain Selection Bits
                MUX: u6,
                padding: u2,
            }),
            reserved60: [54]u8,
            ///  Digital Input Disable Register 0
            DIDR0: mmio.Mmio(packed struct(u8) {
                ///  ADC0/AREF Digital input Disable
                ADC0D: u1,
                ///  ADC1/AIN00 Digital input Disable
                ADC1D: u1,
                ///  ADC2/AIN01 Digital input Disable
                ADC2D: u1,
                ///  ADC3/AIN10 Digital Input Disable
                ADC3D: u1,
                ///  ADC4/AIN11 Digital input Disable
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
                ///  ADC11 Digital input Disable
                ADC11D: u1,
                ///  ADC10 Digital input Disable
                ADC10D: u1,
                ///  ADC8 Digital input Disable
                ADC8D: u1,
                ///  ADC9 Digital Input Disable
                ADC9D: u1,
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

            ///  Analog Comparator 0 Control And Status Register A
            ACSR0A: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator 0 Interrupt Mode Select bits
                ACIS0: packed union {
                    raw: u2,
                    value: ANALOG_COMP_INTERRUPT,
                },
                ///  Analog Comparator 0 Input Capture Enable
                ACIC0: u1,
                ///  Analog Comparator 0 Interrupt Enable
                ACIE0: u1,
                ///  Analog Comparator 0 Interrupt Flag
                ACI0: u1,
                ///  Analog Comparator 0 Output
                ACO0: u1,
                ///  Analog Comparator 0 Positive Input Multiplexer Bit 2
                ACPMUX2: u1,
                ///  Analog Comparator 0 Disable
                ACD0: u1,
            }),
            ///  Analog Comparator 0 Control And Status Register B
            ACSR0B: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator 0 Positive Input Multiplexer Bits 1:0
                ACPMUX: u2,
                ///  Analog Comparator 0 Negative Input Multiplexer
                ACNMUX: u2,
                ///  Analog Comparator 0 Output Pin Enable
                ACOE0: u1,
                reserved6: u1,
                ///  Analog Comparator 0 Hysteresis Level
                HLEV0: u1,
                ///  Analog Comparator 0 Hysteresis Select
                HSEL0: u1,
            }),
            ///  Analog Comparator 1 Control And Status Register A
            ACSR1A: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator 1 Interrupt Mode Select bits
                ACIS1: packed union {
                    raw: u2,
                    value: ANALOG_COMP_INTERRUPT,
                },
                ///  Analog Comparator 1 Input Capture Enable
                ACIC1: u1,
                ///  Analog Comparator 1 Interrupt Enable
                ACIE1: u1,
                ///  Analog Comparator 1 Interrupt Flag
                ACI1: u1,
                ///  Analog Comparator 1 Output
                ACO1: u1,
                ///  Analog Comparator 1 Bandgap Select
                ACBG1: u1,
                ///  Analog Comparator 1 Disable
                ACD1: u1,
            }),
            ///  Analog Comparator 1 Control And Status Register B
            ACSR1B: mmio.Mmio(packed struct(u8) {
                reserved2: u2,
                ///  Analog Comparator 1 Multiplexer Enable
                ACME1: u1,
                reserved4: u1,
                ///  Analog Comparator 1 Output Pin Enable
                ACOE1: u1,
                reserved6: u1,
                ///  Analog Comparator 1 Hysteresis Level
                HLEV1: u1,
                ///  Analog Comparator 1 Hysteresis Select
                HSEL1: u1,
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
                    ///  Timer/Counter1 Output Compare A Match Flag
                    OCF1A: u1,
                    ///  Timer/Counter1 Output Compare B Match Flag
                    OCF1B: u1,
                    reserved5: u2,
                    ///  Timer/Counter1 Input Capture Flag
                    ICF1: u1,
                    padding: u2,
                }),
                ///  Timer/Counter1 Interrupt Mask Register
                TIMSK1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Interrupt Enable
                    TOIE1: u1,
                    ///  Timer/Counter1 Output Compare A Match Interrupt Enable
                    OCIE1A: u1,
                    ///  Timer/Counter1 Output Compare B Match Interrupt Enable
                    OCIE1B: u1,
                    reserved5: u2,
                    ///  Timer/Counter1 Input Capture Interrupt Enable
                    ICIE1: u1,
                    padding: u2,
                }),
                reserved20: [18]u8,
                ///  Timer/Counter1 Control Register C
                TCCR1C: mmio.Mmio(packed struct(u8) {
                    reserved6: u6,
                    ///  Force Output Compare for Channel B
                    FOC1B: u1,
                    ///  Force Output Compare for Channel A
                    FOC1A: u1,
                }),
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset Timer/CounterN
                    PSR: u1,
                    reserved7: u6,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                ///  Timer/Counter1 Input Capture Register Bytes
                ICR1: u16,
                reserved26: [2]u8,
                ///  Timer/Counter1 Output Compare Register B Bytes
                OCR1B: u16,
                ///  Timer/Counter1 Output Compare Register A Bytes
                OCR1A: u16,
                ///  Timer/Counter1 Bytes
                TCNT1: u16,
                ///  Timer/Counter1 Control Register B
                TCCR1B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select bits
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

            ///  Timer/Counter, 16-bit
            pub const TC2 = extern struct {
                ///  Timer/Counter Interrupt Flag register
                TIFR2: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter2 Overflow Flag
                    TOV2: u1,
                    ///  Timer/Counter2 Output Compare A Match Flag
                    OCF2A: u1,
                    ///  Timer/Counter2 Output Compare B Match Flag
                    OCF2B: u1,
                    reserved5: u2,
                    ///  Timer/Counter2 Input Capture Flag
                    ICF2: u1,
                    padding: u2,
                }),
                ///  Timer/Counter2 Interrupt Mask Register
                TIMSK2: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter2 Overflow Interrupt Enable
                    TOIE2: u1,
                    ///  Timer/Counter2 Output Compare A Match Interrupt Enable
                    OCIE2A: u1,
                    ///  Timer/Counter2 Output Compare B Match Interrupt Enable
                    OCIE2B: u1,
                    reserved5: u2,
                    ///  Timer/Counter2 Input Capture Interrupt Enable
                    ICIE2: u1,
                    padding: u2,
                }),
                reserved19: [17]u8,
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset Timer/CounterN
                    PSR: u1,
                    reserved7: u6,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                reserved144: [124]u8,
                ///  Timer/Counter2 Input Capture Register Bytes
                ICR2: u16,
                ///  Timer/Counter2 Output Compare Register B Bytes
                OCR2B: u16,
                ///  Timer/Counter2 Output Compare Register A Bytes
                OCR2A: u16,
                ///  Timer/Counter2 Bytes
                TCNT2: u16,
                ///  Timer/Counter2 Control Register C
                TCCR2C: mmio.Mmio(packed struct(u8) {
                    reserved6: u6,
                    ///  Force Output Compare for Channel B
                    FOC2B: u1,
                    ///  Force Output Compare for Channel A
                    FOC2A: u1,
                }),
                ///  Timer/Counter2 Control Register B
                TCCR2B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select bits
                    CS2: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Waveform Generation Mode Bits
                    WGM2: u2,
                    reserved6: u1,
                    ///  Input Capture 2 Edge Select
                    ICES2: u1,
                    ///  Input Capture 2 Noise Canceler
                    ICNC2: u1,
                }),
                ///  Timer/Counter2 Control Register A
                TCCR2A: mmio.Mmio(packed struct(u8) {
                    ///  Pulse Width Modulator Select Bits
                    WGM2: u2,
                    reserved4: u2,
                    ///  Compare Output Mode 2B, bits
                    COM2B: u2,
                    ///  Compare Output Mode 2A, bits
                    COM2A: u2,
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
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset Timer/CounterN
                    PSR: u1,
                    reserved7: u6,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                reserved13: [12]u8,
                ///  Timer/Counter Control Register A
                TCCR0A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode bits
                    WGM0: u2,
                    reserved4: u2,
                    ///  Compare Match Output B Mode bits
                    COM0B: u2,
                    ///  Compare Match Output A Mode bits
                    COM0A: u2,
                }),
                reserved15: [1]u8,
                ///  Timer/Counter0
                TCNT0: u8,
                ///  Timer/Counter Control Register B
                TCCR0B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select bits
                    CS0: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    ///  Waveform Generation Mode bit 2
                    WGM02: u1,
                    reserved6: u2,
                    ///  Force Output Compare B
                    FOC0B: u1,
                    ///  Force Output Compare A
                    FOC0A: u1,
                }),
                reserved19: [2]u8,
                ///  Timer/Counter0 Output Compare Register A
                OCR0A: u8,
                reserved21: [1]u8,
                ///  Timer/Counter0 Interrupt Flag Register
                TIFR0: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Overflow Flag
                    TOV0: u1,
                    ///  Timer/Counter0 Output Compare Flag A
                    OCF0A: u1,
                    ///  Timer/Counter0 Output Compare Flag B
                    OCF0B: u1,
                    padding: u5,
                }),
                ///  Timer/Counter Interrupt Mask Register
                TIMSK0: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Overflow Interrupt Enable
                    TOIE0: u1,
                    ///  Timer/Counter0 Output Compare Match A Interrupt Enable
                    OCIE0A: u1,
                    ///  Timer/Counter0 Output Compare Match B Interrupt Enable
                    OCIE0B: u1,
                    padding: u5,
                }),
                reserved25: [2]u8,
                ///  Timer/Counter0 Output Compare Register B
                OCR0B: u8,
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
            reserved33: [30]u8,
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
                reserved3: u1,
                ///  Sleep Mode Select Bits
                SM: packed union {
                    raw: u2,
                    value: CPU_SLEEP_MODE,
                },
                ///  Sleep Enable
                SE: u1,
                padding: u2,
            }),
            reserved36: [1]u8,
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
            reserved42: [5]u8,
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
            reserved61: [16]u8,
            ///  Power Reduction Register
            PRR: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction ADC
                PRADC: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                ///  Power Reduction Timer/Counter2
                PRTIM2: u1,
                ///  Power Reduction SPI
                PRSPI: u1,
                ///  Power Reduction USART0
                PRUSART0: u1,
                ///  Power Reduction USART1
                PRUSART1: u1,
                ///  Power Reduction TWI
                PRTWI: u1,
            }),
            ///  Configuration Change Protection
            CCP: u8,
            ///  Clock Control Register
            CLKCR: mmio.Mmio(packed struct(u8) {
                ///  Clock Select Bits
                CKSEL: u4,
                ///  Start-up Time
                SUT: u1,
                ///  Clock Output (Copy). Active low.
                CKOUTC: u1,
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
            ///  Oscillator Calibration Register 8MHz
            OSCCAL0: u8,
            ///  Oscillator Temperature Calibration Register A
            OSCTCAL0A: u8,
            ///  Oscillator Temperature Calibration Register B
            OSCTCAL0B: u8,
            ///  Oscillator Calibration Register 32kHz
            OSCCAL1: u8,
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

        ///  Serial Peripheral Interface
        pub const SPI = extern struct {
            pub const COMM_SCK_RATE = enum(u2) {
                ///  fcl/4
                FCL_4 = 0x0,
                ///  fcl/16
                FCL_16 = 0x1,
                ///  fcl/64
                FCL_64 = 0x2,
                ///  fcl/128
                FCL_128 = 0x3,
            };

            ///  Remap Port Pins
            REMAP: mmio.Mmio(packed struct(u8) {
                reserved1: u1,
                ///  SPI Pin Mapping
                SPIMAP: u1,
                padding: u6,
            }),
            reserved75: [74]u8,
            ///  SPI Data Register
            SPDR: u8,
            ///  SPI Status Register
            SPSR: mmio.Mmio(packed struct(u8) {
                ///  Double SPI Speed Bit
                SPI2X: u1,
                reserved6: u5,
                ///  Write Collision Flag
                WCOL: u1,
                ///  SPI Interrupt Flag
                SPIF: u1,
            }),
            ///  SPI Control Register
            SPCR: mmio.Mmio(packed struct(u8) {
                ///  SPI Clock Rate Selects
                SPR: packed union {
                    raw: u2,
                    value: COMM_SCK_RATE,
                },
                ///  Clock Phase
                CPHA: u1,
                ///  Clock polarity
                CPOL: u1,
                ///  Master/Slave Select
                MSTR: u1,
                ///  Data Order
                DORD: u1,
                ///  SPI Enable
                SPE: u1,
                ///  SPI Interrupt Enable
                SPIE: u1,
            }),
        };
    };
};
