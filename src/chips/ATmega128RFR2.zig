const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATmega128RFR2 = struct {
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
            ///  Pin Change Interrupt Request 0
            PCINT0: Handler = unhandled,
            ///  Pin Change Interrupt Request 1
            PCINT1: Handler = unhandled,
            ///  Pin Change Interrupt Request 2
            PCINT2: Handler = unhandled,
            ///  Watchdog Time-out Interrupt
            WDT: Handler = unhandled,
            ///  Timer/Counter2 Compare Match A
            TIMER2_COMPA: Handler = unhandled,
            ///  Timer/Counter2 Compare Match B
            TIMER2_COMPB: Handler = unhandled,
            ///  Timer/Counter2 Overflow
            TIMER2_OVF: Handler = unhandled,
            ///  Timer/Counter1 Capture Event
            TIMER1_CAPT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer/Counter1 Compare Match B
            TIMER1_COMPB: Handler = unhandled,
            ///  Timer/Counter1 Compare Match C
            TIMER1_COMPC: Handler = unhandled,
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
            ///  USART0, Rx Complete
            USART0_RX: Handler = unhandled,
            ///  USART0 Data register Empty
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
            ///  USART1 Data register Empty
            USART1_UDRE: Handler = unhandled,
            ///  USART1, Tx Complete
            USART1_TX: Handler = unhandled,
            ///  2-wire Serial Interface
            TWI: Handler = unhandled,
            ///  Store Program Memory Read
            SPM_READY: Handler = unhandled,
            ///  Timer/Counter4 Capture Event
            TIMER4_CAPT: Handler = unhandled,
            ///  Timer/Counter4 Compare Match A
            TIMER4_COMPA: Handler = unhandled,
            ///  Timer/Counter4 Compare Match B
            TIMER4_COMPB: Handler = unhandled,
            ///  Timer/Counter4 Compare Match C
            TIMER4_COMPC: Handler = unhandled,
            ///  Timer/Counter4 Overflow
            TIMER4_OVF: Handler = unhandled,
            ///  Timer/Counter5 Capture Event
            TIMER5_CAPT: Handler = unhandled,
            ///  Timer/Counter5 Compare Match A
            TIMER5_COMPA: Handler = unhandled,
            ///  Timer/Counter5 Compare Match B
            TIMER5_COMPB: Handler = unhandled,
            ///  Timer/Counter5 Compare Match C
            TIMER5_COMPC: Handler = unhandled,
            ///  Timer/Counter5 Overflow
            TIMER5_OVF: Handler = unhandled,
            reserved51: [6]u16 = undefined,
            ///  TRX24 - PLL lock interrupt
            TRX24_PLL_LOCK: Handler = unhandled,
            ///  TRX24 - PLL unlock interrupt
            TRX24_PLL_UNLOCK: Handler = unhandled,
            ///  TRX24 - Receive start interrupt
            TRX24_RX_START: Handler = unhandled,
            ///  TRX24 - RX_END interrupt
            TRX24_RX_END: Handler = unhandled,
            ///  TRX24 - CCA/ED done interrupt
            TRX24_CCA_ED_DONE: Handler = unhandled,
            ///  TRX24 - XAH - AMI
            TRX24_XAH_AMI: Handler = unhandled,
            ///  TRX24 - TX_END interrupt
            TRX24_TX_END: Handler = unhandled,
            ///  TRX24 AWAKE - tranceiver is reaching state TRX_OFF
            TRX24_AWAKE: Handler = unhandled,
            ///  Symbol counter - compare match 1 interrupt
            SCNT_CMP1: Handler = unhandled,
            ///  Symbol counter - compare match 2 interrupt
            SCNT_CMP2: Handler = unhandled,
            ///  Symbol counter - compare match 3 interrupt
            SCNT_CMP3: Handler = unhandled,
            ///  Symbol counter - overflow interrupt
            SCNT_OVFL: Handler = unhandled,
            ///  Symbol counter - backoff interrupt
            SCNT_BACKOFF: Handler = unhandled,
            ///  AES engine ready interrupt
            AES_READY: Handler = unhandled,
            ///  Battery monitor indicates supply voltage below threshold
            BAT_LOW: Handler = unhandled,
            ///  TRX24 TX start interrupt
            TRX24_TX_START: Handler = unhandled,
            ///  Address match interrupt of address filter 0
            TRX24_AMI0: Handler = unhandled,
            ///  Address match interrupt of address filter 1
            TRX24_AMI1: Handler = unhandled,
            ///  Address match interrupt of address filter 2
            TRX24_AMI2: Handler = unhandled,
            ///  Address match interrupt of address filter 3
            TRX24_AMI3: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @intToPtr(*volatile types.peripherals.FUSE, 0x0);
            ///  Lockbits
            pub const LOCKBIT = @intToPtr(*volatile types.peripherals.LOCKBIT, 0x0);
            ///  I/O Port
            pub const PORTA = @intToPtr(*volatile types.peripherals.PORT.PORTA, 0x20);
            ///  I/O Port
            pub const PORTB = @intToPtr(*volatile types.peripherals.PORT.PORTB, 0x23);
            ///  I/O Port
            pub const PORTC = @intToPtr(*volatile types.peripherals.PORT.PORTC, 0x26);
            ///  I/O Port
            pub const PORTD = @intToPtr(*volatile types.peripherals.PORT.PORTD, 0x29);
            ///  I/O Port
            pub const PORTE = @intToPtr(*volatile types.peripherals.PORT.PORTE, 0x2c);
            ///  I/O Port
            pub const PORTF = @intToPtr(*volatile types.peripherals.PORT.PORTF, 0x2f);
            ///  I/O Port
            pub const PORTG = @intToPtr(*volatile types.peripherals.PORT.PORTG, 0x32);
            ///  Timer/Counter, 8-bit
            pub const TC0 = @intToPtr(*volatile types.peripherals.TC8.TC0, 0x35);
            ///  Timer/Counter, 16-bit
            pub const TC1 = @intToPtr(*volatile types.peripherals.TC16.TC1, 0x36);
            ///  Timer/Counter, 8-bit Async
            pub const TC2 = @intToPtr(*volatile types.peripherals.TC8_ASYNC.TC2, 0x37);
            ///  Timer/Counter, 16-bit
            pub const TC3 = @intToPtr(*volatile types.peripherals.TC16.TC3, 0x38);
            ///  Timer/Counter, 16-bit
            pub const TC4 = @intToPtr(*volatile types.peripherals.TC16.TC4, 0x39);
            ///  Timer/Counter, 16-bit
            pub const TC5 = @intToPtr(*volatile types.peripherals.TC16.TC5, 0x3a);
            ///  External Interrupts
            pub const EXINT = @intToPtr(*volatile types.peripherals.EXINT, 0x3b);
            ///  CPU Registers
            pub const CPU = @intToPtr(*volatile types.peripherals.CPU, 0x3e);
            ///  EEPROM
            pub const EEPROM = @intToPtr(*volatile types.peripherals.EEPROM, 0x3f);
            ///  Serial Peripheral Interface
            pub const SPI = @intToPtr(*volatile types.peripherals.SPI.SPI, 0x4c);
            ///  Analog Comparator
            pub const AC = @intToPtr(*volatile types.peripherals.AC, 0x50);
            ///  JTAG Interface
            pub const JTAG = @intToPtr(*volatile types.peripherals.JTAG, 0x51);
            ///  Power Controller
            pub const PWRCTRL = @intToPtr(*volatile types.peripherals.PWRCTRL, 0x55);
            ///  Bootloader
            pub const BOOT_LOAD = @intToPtr(*volatile types.peripherals.BOOT_LOAD, 0x57);
            ///  Watchdog Timer
            pub const WDT = @intToPtr(*volatile types.peripherals.WDT, 0x60);
            ///  FLASH Controller
            pub const FLASH = @intToPtr(*volatile types.peripherals.FLASH, 0x67);
            ///  Analog-to-Digital Converter
            pub const ADC = @intToPtr(*volatile types.peripherals.ADC, 0x77);
            ///  Two Wire Serial Interface
            pub const TWI = @intToPtr(*volatile types.peripherals.TWI, 0xb8);
            ///  Low-Power 2.4 GHz Transceiver
            pub const TRX24 = @intToPtr(*volatile types.peripherals.TRX24, 0xbe);
            ///  USART
            pub const USART0 = @intToPtr(*volatile types.peripherals.USART.USART0, 0xc0);
            ///  Serial Peripheral Interface
            pub const USART0_SPI = @intToPtr(*volatile types.peripherals.SPI.USART0_SPI, 0xc0);
            ///  USART
            pub const USART1 = @intToPtr(*volatile types.peripherals.USART.USART1, 0xc8);
            ///  Serial Peripheral Interface
            pub const USART1_SPI = @intToPtr(*volatile types.peripherals.SPI.USART1_SPI, 0xc8);
            ///  MAC Symbol Counter
            pub const SYMCNT = @intToPtr(*volatile types.peripherals.SYMCNT, 0xd7);
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
                ///  Int. 128kHz RC Osc.; Start-up time: 6 CK + 0 ms
                INTRCOSC_128KHZ_6CK_0MS = 0x3,
                ///  Int. 128kHz RC Osc.; Start-up time: 6 CK + 4.1 ms
                INTRCOSC_128KHZ_6CK_4MS1 = 0x13,
                ///  Int. 128kHz RC Osc.; Start-up time: 6 CK + 65 ms
                INTRCOSC_128KHZ_6CK_65MS = 0x23,
                ///  Tranceiver Oscillator; Start-up time: 258 CK + 4.1 ms
                TOSC_258CK_4MS1 = 0x6,
                ///  Tranceiver Oscillator; Start-up time: 258 CK + 65 ms
                TOSC_258CK_65MS = 0x16,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 0 ms
                TOSC_1KCK_0MS = 0x26,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 4.1 ms
                TOSC_1KCK_4MS1 = 0x36,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 65 ms
                TOSC_1KCK_65MS = 0x7,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 0 ms
                TOSC_16KCK_0MS = 0x17,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 4.1 ms
                TOSC_16KCK_4MS1 = 0x27,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 65 ms
                TOSC_16KCK_65MS = 0x37,
                ///  Tranceiver Oscillator; Start-up time: 258 CK + 4.1 ms
                TOSC_258CK_4MS1 = 0x8,
                ///  Tranceiver Oscillator; Start-up time: 258 CK + 65 ms
                TOSC_258CK_65MS = 0x18,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 0 ms
                TOSC_1KCK_0MS = 0x28,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 4.1 ms
                TOSC_1KCK_4MS1 = 0x38,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 65 ms
                TOSC_1KCK_65MS = 0x9,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 0 ms
                TOSC_16KCK_0MS = 0x19,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 4.1 ms
                TOSC_16KCK_4MS1 = 0x29,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 65 ms
                TOSC_16KCK_65MS = 0x39,
                ///  Tranceiver Oscillator; Start-up time: 258 CK + 4.1 ms
                TOSC_258CK_4MS1 = 0xa,
                ///  Tranceiver Oscillator; Start-up time: 258 CK + 65 ms
                TOSC_258CK_65MS = 0x1a,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 0 ms
                TOSC_1KCK_0MS = 0x2a,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 4.1 ms
                TOSC_1KCK_4MS1 = 0x3a,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 65 ms
                TOSC_1KCK_65MS = 0xb,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 0 ms
                TOSC_16KCK_0MS = 0x1b,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 4.1 ms
                TOSC_16KCK_4MS1 = 0x2b,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 65 ms
                TOSC_16KCK_65MS = 0x3b,
                ///  Tranceiver Oscillator; Start-up time: 258 CK + 4.1 ms
                TOSC_258CK_4MS1 = 0xc,
                ///  Tranceiver Oscillator; Start-up time: 258 CK + 65 ms
                TOSC_258CK_65MS = 0x1c,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 0 ms
                TOSC_1KCK_0MS = 0x2c,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 4.1 ms
                TOSC_1KCK_4MS1 = 0x3c,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 65 ms
                TOSC_1KCK_65MS = 0xd,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 0 ms
                TOSC_16KCK_0MS = 0x1d,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 4.1 ms
                TOSC_16KCK_4MS1 = 0x2d,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 65 ms
                TOSC_16KCK_65MS = 0x3d,
                ///  Tranceiver Oscillator; Start-up time: 258 CK + 4.1 ms
                TOSC_258CK_4MS1 = 0xe,
                ///  Tranceiver Oscillator; Start-up time: 258 CK + 65 ms
                TOSC_258CK_65MS = 0x1e,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 0 ms
                TOSC_1KCK_0MS = 0x2e,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 4.1 ms
                TOSC_1KCK_4MS1 = 0x3e,
                ///  Tranceiver Oscillator; Start-up time: 1K CK + 65 ms
                TOSC_1KCK_65MS = 0xf,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 0 ms
                TOSC_16KCK_0MS = 0x1f,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 4.1 ms
                TOSC_16KCK_4MS1 = 0x2f,
                ///  Tranceiver Oscillator; Start-up time: 16K CK + 65 ms
                TOSC_16KCK_65MS = 0x3f,
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
                ///  Brown-out detection at VCC=1.8 V
                @"1V8" = 0x6,
                ///  Brown-out detection at VCC=1.9 V
                @"1V9" = 0x5,
                ///  Brown-out detection at VCC=2.0 V
                @"2V0" = 0x4,
                ///  Brown-out detection at VCC=2.1 V
                @"2V1" = 0x3,
                ///  Brown-out detection at VCC=2.2 V
                @"2V2" = 0x2,
                ///  Brown-out detection at VCC=2.3 V
                @"2V3" = 0x1,
                ///  Brown-out detection at VCC=2.4 V
                @"2V4" = 0x0,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock Source : Start-up time
                CKSEL_SUT: packed union {
                    raw: u6,
                    value: ENUM_SUT_CKSEL,
                },
                ///  Clock output on PORTE7
                CKOUT: u1,
                ///  Divide clock by 8 internally
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
                ///  Brown-out Detector trigger level
                BODLEVEL: packed union {
                    raw: u3,
                    value: ENUM_BODLEVEL,
                },
                padding: u5,
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
                ///  Analog Comparator Interrupt Mode Select
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
            ///  Digital Input Disable Register 1
            DIDR1: mmio.Mmio(packed struct(u8) {
                ///  AIN0 Digital Input Disable
                AIN0D: u1,
                ///  AIN1 Digital Input Disable
                AIN1D: u1,
                padding: u6,
            }),
        };

        ///  Serial Peripheral Interface
        pub const SPI = struct {
            pub const SPI_CPOL_BITF = enum(u1) {
                ///  Rising (Leading Edge), Falling (Trailing Edge)
                RISING_LEADING_EDGE_FALLING_TRAILING_EDGE = 0x0,
                ///  Falling (Leading Egde), Rising (Trailing Edge)
                FALLING_LEADING_EGDE_RISING_TRAILING_EDGE = 0x1,
            };

            pub const SPI_CPHA_BITF = enum(u1) {
                ///  Sample (Leading Edge), Setup (Trailing Edge)
                SAMPLE_LEADING_EDGE_SETUP_TRAILING_EDGE = 0x0,
                ///  Setup (Leading Edge), Sample (Trailing Edge)
                SETUP_LEADING_EDGE_SAMPLE_TRAILING_EDGE = 0x1,
            };

            pub const COMM_SCK_RATE_SPI2X = enum(u2) {
                ///  fosc/4 / fosc/2 (SPI2X=0/1)
                FOSC_4_FOSC_2_SPI2X_0_1 = 0x0,
                ///  fosc/16 / fosc/8 (SPI2X=0/1)
                FOSC_16_FOSC_8_SPI2X_0_1 = 0x1,
                ///  fosc/64 / fosc/32 (SPI2X=0/1)
                FOSC_64_FOSC_32_SPI2X_0_1 = 0x2,
                ///  fosc/128 / fosc/64 (SPI2X=0/1)
                FOSC_128_FOSC_64_SPI2X_0_1 = 0x3,
            };

            ///  Serial Peripheral Interface
            pub const SPI = extern struct {
                ///  SPI Control Register
                SPCR: mmio.Mmio(packed struct(u8) {
                    ///  SPI Clock Rate Select 1 and 0
                    SPR: packed union {
                        raw: u2,
                        value: COMM_SCK_RATE_SPI2X,
                    },
                    ///  Clock Phase
                    CPHA: packed union {
                        raw: u1,
                        value: SPI_CPHA_BITF,
                    },
                    ///  Clock polarity
                    CPOL: packed union {
                        raw: u1,
                        value: SPI_CPOL_BITF,
                    },
                    ///  Master/Slave Select
                    MSTR: u1,
                    ///  Data Order
                    DORD: u1,
                    ///  SPI Enable
                    SPE: u1,
                    ///  SPI Interrupt Enable
                    SPIE: u1,
                }),
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
                ///  SPI Data Register
                SPDR: u8,
            };

            ///  Serial Peripheral Interface
            pub const USART0_SPI = extern struct {
                ///  USART0 MSPIM Control and Status Register A
                UCSR0A: mmio.Mmio(packed struct(u8) {
                    reserved5: u5,
                    ///  USART Data Register Empty
                    UDRE0: u1,
                    ///  USART Transmit Complete
                    TXC0: u1,
                    ///  USART Receive Complete
                    RXC0: u1,
                }),
                ///  USART0 MSPIM Control and Status Register B
                UCSR0B: mmio.Mmio(packed struct(u8) {
                    reserved3: u3,
                    ///  Transmitter Enable
                    TXEN0: u1,
                    ///  Receiver Enable
                    RXEN0: u1,
                    ///  USART Data Register Empty Interrupt Enable
                    UDRIE0: u1,
                    ///  TX Complete Interrupt Enable
                    TXCIE0: u1,
                    ///  RX Complete Interrupt Enable
                    RXCIE0: u1,
                }),
                ///  USART0 MSPIM Control and Status Register C
                UCSR0C: mmio.Mmio(packed struct(u8) {
                    ///  Clock Polarity
                    UCPOL0: u1,
                    ///  Clock Phase
                    UCPHA0: u1,
                    ///  Data Order
                    UDORD0: u1,
                    padding: u5,
                }),
            };

            ///  Serial Peripheral Interface
            pub const USART1_SPI = extern struct {
                ///  USART1 MSPIM Control and Status Register A
                UCSR1A: mmio.Mmio(packed struct(u8) {
                    reserved5: u5,
                    ///  USART Data Register Empty
                    UDRE1: u1,
                    ///  USART Transmit Complete
                    TXC1: u1,
                    ///  USART Receive Complete
                    RXC1: u1,
                }),
                ///  USART1 MSPIM Control and Status Register B
                UCSR1B: mmio.Mmio(packed struct(u8) {
                    reserved3: u3,
                    ///  Transmitter Enable
                    TXEN1: u1,
                    ///  Receiver Enable
                    RXEN1: u1,
                    ///  USART Data Register Empty Interrupt Enable
                    UDRIE1: u1,
                    ///  TX Complete Interrupt Enable
                    TXCIE1: u1,
                    ///  RX Complete Interrupt Enable
                    RXCIE1: u1,
                }),
                ///  USART1 MSPIM Control and Status Register C
                UCSR1C: mmio.Mmio(packed struct(u8) {
                    ///  Clock Polarity
                    UCPOL1: u1,
                    ///  Clock Phase
                    UCPHA1: u1,
                    ///  Data Order
                    UDORD1: u1,
                    padding: u5,
                }),
            };
        };

        ///  I/O Port
        pub const PORT = struct {
            ///  I/O Port
            pub const PORTA = extern struct {
                ///  Port A Input Pins Address
                PINA: u8,
                ///  Port A Data Direction Register
                DDRA: u8,
                ///  Port A Data Register
                PORTA: u8,
            };

            ///  I/O Port
            pub const PORTB = extern struct {
                ///  Port B Input Pins Address
                PINB: u8,
                ///  Port B Data Direction Register
                DDRB: u8,
                ///  Port B Data Register
                PORTB: u8,
            };

            ///  I/O Port
            pub const PORTC = extern struct {
                ///  Port C Input Pins Address
                PINC: u8,
                ///  Port C Data Direction Register
                DDRC: u8,
                ///  Port C Data Register
                PORTC: u8,
            };

            ///  I/O Port
            pub const PORTD = extern struct {
                ///  Port D Input Pins Address
                PIND: u8,
                ///  Port D Data Direction Register
                DDRD: u8,
                ///  Port D Data Register
                PORTD: u8,
            };

            ///  I/O Port
            pub const PORTE = extern struct {
                ///  Port E Input Pins Address
                PINE: u8,
                ///  Port E Data Direction Register
                DDRE: u8,
                ///  Port E Data Register
                PORTE: u8,
            };

            ///  I/O Port
            pub const PORTF = extern struct {
                ///  Port F Input Pins Address
                PINF: u8,
                ///  Port F Data Direction Register
                DDRF: u8,
                ///  Port F Data Register
                PORTF: u8,
            };

            ///  I/O Port
            pub const PORTG = extern struct {
                ///  Port G Input Pins Address
                PING: u8,
                ///  Port G Data Direction Register
                DDRG: u8,
                ///  Port G Data Register
                PORTG: u8,
            };
        };

        ///  Timer/Counter, 8-bit Async
        pub const TC8_ASYNC = struct {
            pub const TC2_COM2A_BITF = enum(u2) {
                ///  Normal port operation, OC2A disconnected
                NORMAL_PORT_OPERATION_OC2A_DISCONNECTED = 0x0,
                ///  Toggle OC2A on Compare Match
                TOGGLE_OC2A_ON_COMPARE_MATCH = 0x1,
                ///  Clear OC2A on Compare Match
                CLEAR_OC2A_ON_COMPARE_MATCH = 0x2,
                ///  Set OC2A on Compare Match
                SET_OC2A_ON_COMPARE_MATCH = 0x3,
            };

            pub const TC2_COM2B_BITF = enum(u2) {
                ///  Normal port operation, OC2B disconnected
                NORMAL_PORT_OPERATION_OC2B_DISCONNECTED = 0x0,
                ///  Toggle OC2B on Compare Match
                TOGGLE_OC2B_ON_COMPARE_MATCH = 0x1,
                ///  Clear OC2B on Compare Match
                CLEAR_OC2B_ON_COMPARE_MATCH = 0x2,
                ///  Set OC2B on Compare Match
                SET_OC2B_ON_COMPARE_MATCH = 0x3,
            };

            pub const TC0_WGM_BITF = enum(u3) {
                ///  Normal mode of operation
                NORMAL_MODE_OF_OPERATION = 0x0,
                ///  PWM, phase correct, TOP=0xFF
                PWM_PHASE_CORRECT_TOP_0XFF = 0x1,
                ///  CTC, TOP = OCRA
                CTC_TOP_OCRA = 0x2,
                ///  Fast PWM, TOP=0xFF
                FAST_PWM_TOP_0XFF = 0x3,
                ///  Reserved
                RESERVED = 0x4,
                ///  PWM, Phase correct, TOP = OCRA
                PWM_PHASE_CORRECT_TOP_OCRA = 0x5,
                ///  Reserved
                RESERVED = 0x6,
                ///  Fast PWM, TOP=OCRA
                FAST_PWM_TOP_OCRA = 0x7,
            };

            pub const TC2_CLK_SEL_3BIT = enum(u3) {
                ///  No clock source (Timer/Counter2 stopped)
                NO_CLOCK_SOURCE_TIMER_COUNTER2_STOPPED = 0x0,
                ///  clk_T2S/1 (no prescaling)
                CLK_T2S_1_NO_PRESCALING = 0x1,
                ///  clk_T2S/8 (from prescaler)
                CLK_T2S_8_FROM_PRESCALER = 0x2,
                ///  clk_T2S/32 (from prescaler)
                CLK_T2S_32_FROM_PRESCALER = 0x3,
                ///  clk_T2S/64 (from prescaler)
                CLK_T2S_64_FROM_PRESCALER = 0x4,
                ///  clk_T2S/128 (from prescaler)
                CLK_T2S_128_FROM_PRESCALER = 0x5,
                ///  clk_T2S/256 (from prescaler)
                CLK_T2S_256_FROM_PRESCALER = 0x6,
                ///  clk_T2S/1024 (from prescaler)
                CLK_T2S_1024_FROM_PRESCALER = 0x7,
            };

            ///  Timer/Counter, 8-bit Async
            pub const TC2 = extern struct {
                ///  Timer/Counter Interrupt Flag Register
                TIFR2: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter2 Overflow Flag
                    TOV2: u1,
                    ///  Output Compare Flag 2 A
                    OCF2A: u1,
                    ///  Output Compare Flag 2 B
                    OCF2B: u1,
                    ///  Reserved Bit
                    Res: u5,
                }),
                reserved12: [11]u8,
                ///  General Timer Counter Control register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    reserved1: u1,
                    ///  Prescaler Reset Timer/Counter2
                    PSRASY: u1,
                    reserved7: u5,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                reserved57: [44]u8,
                ///  Timer/Counter Interrupt Mask register
                TIMSK2: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter2 Overflow Interrupt Enable
                    TOIE2: u1,
                    ///  Timer/Counter2 Output Compare Match A Interrupt Enable
                    OCIE2A: u1,
                    ///  Timer/Counter2 Output Compare Match B Interrupt Enable
                    OCIE2B: u1,
                    ///  Reserved Bit
                    Res: u5,
                }),
                reserved121: [63]u8,
                ///  Timer/Counter2 Control Register A
                TCCR2A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode
                    WGM2: packed union {
                        raw: u2,
                        value: TC0_WGM_BITF,
                    },
                    reserved4: u2,
                    ///  Compare Match Output B Mode
                    COM2B: packed union {
                        raw: u2,
                        value: TC2_COM2B_BITF,
                    },
                    ///  Compare Match Output A Mode
                    COM2A: packed union {
                        raw: u2,
                        value: TC2_COM2A_BITF,
                    },
                }),
                ///  Timer/Counter2 Control Register B
                TCCR2B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select
                    CS2: packed union {
                        raw: u3,
                        value: TC2_CLK_SEL_3BIT,
                    },
                    ///  Waveform Generation Mode
                    WGM22: u1,
                    reserved6: u2,
                    ///  Force Output Compare B
                    FOC2B: u1,
                    ///  Force Output Compare A
                    FOC2A: u1,
                }),
                ///  Timer/Counter2
                TCNT2: u8,
                ///  Timer/Counter2 Output Compare Register A
                OCR2A: u8,
                ///  Timer/Counter2 Output Compare Register B
                OCR2B: u8,
                reserved127: [1]u8,
                ///  Asynchronous Status Register
                ASSR: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter2 Control Register B Update Busy
                    TCR2BUB: u1,
                    ///  Timer/Counter2 Control Register A Update Busy
                    TCR2AUB: u1,
                    ///  Timer/Counter2 Output Compare Register B Update Busy
                    OCR2BUB: u1,
                    ///  Timer/Counter2 Output Compare Register A Update Busy
                    OCR2AUB: u1,
                    ///  Timer/Counter2 Update Busy
                    TCN2UB: u1,
                    ///  Timer/Counter2 Asynchronous Mode
                    AS2: u1,
                    ///  Enable External Clock Input
                    EXCLK: u1,
                    ///  Enable External Clock Input for AMR
                    EXCLKAMR: u1,
                }),
            };
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
            WDTCSR: mmio.Mmio(packed struct(u8) {
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

        ///  MAC Symbol Counter
        pub const SYMCNT = extern struct {
            pub const SCCKDIV_BITF = enum(u3) {
                ///  Transceiver Clock divided by 256, (62.5kHz)
                TRANSCEIVER_CLOCK_DIVIDED_BY_256_62_5KHZ = 0x0,
                ///  Transceiver Clock divided by 128, (125kHz)
                TRANSCEIVER_CLOCK_DIVIDED_BY_128_125KHZ = 0x1,
                ///  Transceiver Clock divided by 64, (250kHz)
                TRANSCEIVER_CLOCK_DIVIDED_BY_64_250KHZ = 0x2,
                ///  Transceiver Clock divided by 32, (500kHz)
                TRANSCEIVER_CLOCK_DIVIDED_BY_32_500KHZ = 0x3,
                ///  Transceiver Clock divided by 16, (1MHz)
                TRANSCEIVER_CLOCK_DIVIDED_BY_16_1MHZ = 0x4,
                ///  Transceiver Clock divided by 8, (2MHz)
                TRANSCEIVER_CLOCK_DIVIDED_BY_8_2MHZ = 0x5,
                ///  Transceiver Clock divided by 4, (4MHz)
                TRANSCEIVER_CLOCK_DIVIDED_BY_4_4MHZ = 0x6,
                _,
            };

            pub const SCCS3_BITF = enum(u2) {
                ///  Compare Unit 3 Relative Compare Source = Beacon Timestamp Register
                COMPARE_UNIT_3_RELATIVE_COMPARE_SOURCE_BEACON_TIMESTAMP_REGISTER = 0x0,
                ///  Compare Unit 3 Relative Compare Source = Transmit Frame Timestamp Register
                COMPARE_UNIT_3_RELATIVE_COMPARE_SOURCE_TRANSMIT_FRAME_TIMESTAMP_REGISTER = 0x1,
                ///  Compare Unit 3 Relative Compare Source = Received Frame Timestamp Register
                COMPARE_UNIT_3_RELATIVE_COMPARE_SOURCE_RECEIVED_FRAME_TIMESTAMP_REGISTER = 0x2,
                _,
            };

            pub const SCCS2_BITF = enum(u2) {
                ///  Compare Unit 2 Relative Compare Source = Beacon Timestamp Register
                COMPARE_UNIT_2_RELATIVE_COMPARE_SOURCE_BEACON_TIMESTAMP_REGISTER = 0x0,
                ///  Compare Unit 2 Relative Compare Source = Transmit Frame Timestamp Register
                COMPARE_UNIT_2_RELATIVE_COMPARE_SOURCE_TRANSMIT_FRAME_TIMESTAMP_REGISTER = 0x1,
                ///  Compare Unit 2 Relative Compare Source = Received Frame Timestamp Register
                COMPARE_UNIT_2_RELATIVE_COMPARE_SOURCE_RECEIVED_FRAME_TIMESTAMP_REGISTER = 0x2,
                _,
            };

            pub const SCCS1_BITF = enum(u2) {
                ///  Compare Unit 1 Relative Compare Source = Beacon Timestamp Register
                COMPARE_UNIT_1_RELATIVE_COMPARE_SOURCE_BEACON_TIMESTAMP_REGISTER = 0x0,
                ///  Compare Unit 1 Relative Compare Source = Transmit Frame Timestamp Register
                COMPARE_UNIT_1_RELATIVE_COMPARE_SOURCE_TRANSMIT_FRAME_TIMESTAMP_REGISTER = 0x1,
                ///  Compare Unit 1 Relative Compare Source = Received Frame Timestamp Register
                COMPARE_UNIT_1_RELATIVE_COMPARE_SOURCE_RECEIVED_FRAME_TIMESTAMP_REGISTER = 0x2,
                _,
            };

            ///  Symbol Counter Received Frame Timestamp Register LL-Byte
            SCRSTRLL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Received Frame Timestamp Register LL-Byte
                SCRSTRLL: u8,
            }),
            ///  Symbol Counter Received Frame Timestamp Register LH-Byte
            SCRSTRLH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Received Frame Timestamp Register LH-Byte
                SCRSTRLH: u8,
            }),
            ///  Symbol Counter Received Frame Timestamp Register HL-Byte
            SCRSTRHL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Received Frame Timestamp Register HL-Byte
                SCRSTRHL: u8,
            }),
            ///  Symbol Counter Received Frame Timestamp Register HH-Byte
            SCRSTRHH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Received Frame Timestamp Register HH-Byte
                SCRSTRHH: u8,
            }),
            ///  Symbol Counter Compare Source Register
            SCCSR: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Compare Source select register for Compare Units
                SCCS1: packed union {
                    raw: u2,
                    value: SCCS1_BITF,
                },
                ///  Symbol Counter Compare Source select register for Compare Unit 2
                SCCS2: packed union {
                    raw: u2,
                    value: SCCS2_BITF,
                },
                ///  Symbol Counter Compare Source select register for Compare Unit 3
                SCCS3: packed union {
                    raw: u2,
                    value: SCCS3_BITF,
                },
                ///  Reserved Bit
                Res: u2,
            }),
            ///  Symbol Counter Control Register 0
            SCCR0: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Compare Unit 3 Mode select
                SCCMP: u3,
                ///  Symbol Counter Automatic Timestamping enable
                SCTSE: u1,
                ///  Symbol Counter Clock Source select
                SCCKSEL: u1,
                ///  Symbol Counter enable
                SCEN: u1,
                ///  Manual Beacon Timestamp
                SCMBTS: u1,
                ///  Symbol Counter Synchronization
                SCRES: u1,
            }),
            ///  Symbol Counter Control Register 1
            SCCR1: mmio.Mmio(packed struct(u8) {
                ///  Backoff Slot Counter enable
                SCENBO: u1,
                ///  Enable External Clock Source on PG2
                SCEECLK: u1,
                ///  Clock divider for synchronous clock source (16MHz Transceiver Clock)
                SCCKDIV: packed union {
                    raw: u3,
                    value: SCCKDIV_BITF,
                },
                ///  Symbol Counter Beacon Timestamp Mask Register
                SCBTSM: u1,
                ///  Reserved Bit
                Res: u2,
            }),
            ///  Symbol Counter Status Register
            SCSR: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter busy
                SCBSY: u1,
                ///  Reserved Bit
                Res: u7,
            }),
            ///  Symbol Counter Interrupt Mask Register
            SCIRQM: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Compare Match 3 IRQ enable
                IRQMCP: u3,
                ///  Symbol Counter Overflow IRQ enable
                IRQMOF: u1,
                ///  Backoff Slot Counter IRQ enable
                IRQMBO: u1,
                ///  Reserved Bit
                Res: u3,
            }),
            ///  Symbol Counter Interrupt Status Register
            SCIRQS: mmio.Mmio(packed struct(u8) {
                ///  Compare Unit 3 Compare Match IRQ
                IRQSCP: u3,
                ///  Symbol Counter Overflow IRQ
                IRQSOF: u1,
                ///  Backoff Slot Counter IRQ
                IRQSBO: u1,
                ///  Reserved Bit
                Res: u3,
            }),
            ///  Symbol Counter Register LL-Byte
            SCCNTLL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Register LL-Byte
                SCCNTLL: u8,
            }),
            ///  Symbol Counter Register LH-Byte
            SCCNTLH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Register LH-Byte
                SCCNTLH: u8,
            }),
            ///  Symbol Counter Register HL-Byte
            SCCNTHL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Register HL-Byte
                SCCNTHL: u8,
            }),
            ///  Symbol Counter Register HH-Byte
            SCCNTHH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Register HH-Byte
                SCCNTHH: u8,
            }),
            ///  Symbol Counter Beacon Timestamp Register LL-Byte
            SCBTSRLL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Beacon Timestamp Register LL-Byte
                SCBTSRLL: u8,
            }),
            ///  Symbol Counter Beacon Timestamp Register LH-Byte
            SCBTSRLH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Beacon Timestamp Register LH-Byte
                SCBTSRLH: u8,
            }),
            ///  Symbol Counter Beacon Timestamp Register HL-Byte
            SCBTSRHL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Beacon Timestamp Register HL-Byte
                SCBTSRHL: u8,
            }),
            ///  Symbol Counter Beacon Timestamp Register HH-Byte
            SCBTSRHH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Beacon Timestamp Register HH-Byte
                SCBTSRHH: u8,
            }),
            ///  Symbol Counter Frame Timestamp Register LL-Byte
            SCTSRLL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Frame Timestamp Register LL-Byte
                SCTSRLL: u8,
            }),
            ///  Symbol Counter Frame Timestamp Register LH-Byte
            SCTSRLH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Frame Timestamp Register LH-Byte
                SCTSRLH: u8,
            }),
            ///  Symbol Counter Frame Timestamp Register HL-Byte
            SCTSRHL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Frame Timestamp Register HL-Byte
                SCTSRHL: u8,
            }),
            ///  Symbol Counter Frame Timestamp Register HH-Byte
            SCTSRHH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Frame Timestamp Register HH-Byte
                SCTSRHH: u8,
            }),
            ///  Symbol Counter Output Compare Register 3 LL-Byte
            SCOCR3LL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Output Compare Register 3 LL-Byte
                SCOCR3LL: u8,
            }),
            ///  Symbol Counter Output Compare Register 3 LH-Byte
            SCOCR3LH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Output Compare Register 3 LH-Byte
                SCOCR3LH: u8,
            }),
            ///  Symbol Counter Output Compare Register 3 HL-Byte
            SCOCR3HL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Output Compare Register 3 HL-Byte
                SCOCR3HL: u8,
            }),
            ///  Symbol Counter Output Compare Register 3 HH-Byte
            SCOCR3HH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Output Compare Register 3 HH-Byte
                SCOCR3HH: u8,
            }),
            ///  Symbol Counter Output Compare Register 2 LL-Byte
            SCOCR2LL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Output Compare Register 2 LL-Byte
                SCOCR2LL: u8,
            }),
            ///  Symbol Counter Output Compare Register 2 LH-Byte
            SCOCR2LH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Output Compare Register 2 LH-Byte
                SCOCR2LH: u8,
            }),
            ///  Symbol Counter Output Compare Register 2 HL-Byte
            SCOCR2HL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Output Compare Register 2 HL-Byte
                SCOCR2HL: u8,
            }),
            ///  Symbol Counter Output Compare Register 2 HH-Byte
            SCOCR2HH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Output Compare Register 2 HH-Byte
                SCOCR2HH: u8,
            }),
            ///  Symbol Counter Output Compare Register 1 LL-Byte
            SCOCR1LL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Output Compare Register 1 LL-Byte
                SCOCR1LL: u8,
            }),
            ///  Symbol Counter Output Compare Register 1 LH-Byte
            SCOCR1LH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Output Compare Register 1 LH-Byte
                SCOCR1LH: u8,
            }),
            ///  Symbol Counter Output Compare Register 1 HL-Byte
            SCOCR1HL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Output Compare Register 1 HL-Byte
                SCOCR1HL: u8,
            }),
            ///  Symbol Counter Output Compare Register 1 HH-Byte
            SCOCR1HH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Output Compare Register 1 HH-Byte
                SCOCR1HH: u8,
            }),
            ///  Symbol Counter Transmit Frame Timestamp Register LL-Byte
            SCTSTRLL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Transmit Frame Timestamp Register LL-Byte
                SCTSTRLL: u8,
            }),
            ///  Symbol Counter Transmit Frame Timestamp Register LH-Byte
            SCTSTRLH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Transmit Frame Timestamp Register LH-Byte
                SCTSTRLH: u8,
            }),
            ///  Symbol Counter Transmit Frame Timestamp Register HL-Byte
            SCTSTRHL: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Transmit Frame Timestamp Register HL-Byte
                SCTSTRHL: u8,
            }),
            ///  Symbol Counter Transmit Frame Timestamp Register HH-Byte
            SCTSTRHH: mmio.Mmio(packed struct(u8) {
                ///  Symbol Counter Transmit Frame Timestamp Register HH-Byte
                SCTSTRHH: u8,
            }),
        };

        ///  EEPROM
        pub const EEPROM = extern struct {
            pub const EEP_MODE2 = enum(u2) {
                ///  Erase and Write in one operation (Atomic Operation)
                ERASE_AND_WRITE_IN_ONE_OPERATION_ATOMIC_OPERATION = 0x0,
                ///  Erase only
                ERASE_ONLY = 0x1,
                ///  Write only
                WRITE_ONLY = 0x2,
                ///  Reserved for future use
                RESERVED_FOR_FUTURE_USE = 0x3,
            };

            ///  EEPROM Control Register
            EECR: mmio.Mmio(packed struct(u8) {
                ///  EEPROM Read Enable
                EERE: u1,
                ///  EEPROM Programming Enable
                EEPE: u1,
                ///  EEPROM Master Write Enable
                EEMPE: u1,
                ///  EEPROM Ready Interrupt Enable
                EERIE: u1,
                ///  EEPROM Programming Mode
                EEPM: packed union {
                    raw: u2,
                    value: EEP_MODE2,
                },
                padding: u2,
            }),
            ///  EEPROM Data Register
            EEDR: u8,
            ///  EEPROM Address Register Bytes
            EEAR: u16,
        };

        ///  JTAG Interface
        pub const JTAG = extern struct {
            pub const OCDR_DATA_BITF = enum(u8) {
                ///  Refer to the debugger documentation for further information on how to use this register.
                REFER_TO_THE_DEBUGGER_DOCUMENTATION_FOR_FURTHER_INFORMATION_ON_HOW_TO_USE_THIS_REGISTER = 0x0,
                _,
            };

            ///  On-Chip Debug Register
            OCDR: mmio.Mmio(packed struct(u8) {
                ///  On-Chip Debug Register Data
                OCDR: packed union {
                    raw: u8,
                    value: OCDR_DATA_BITF,
                },
            }),
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

        ///  External Interrupts
        pub const EXINT = extern struct {
            pub const INTERRUPT_SENSE_CONTROL3 = enum(u2) {
                ///  The low level of INTn generates an interrupt request.
                THE_LOW_LEVEL_OF_INTN_GENERATES_AN_INTERRUPT_REQUEST = 0x0,
                ///  Any edge of INTn generates asynchronously an interrupt request.
                ANY_EDGE_OF_INTN_GENERATES_ASYNCHRONOUSLY_AN_INTERRUPT_REQUEST = 0x1,
                ///  The falling edge of INTn generates asynchronously an interrupt request.
                THE_FALLING_EDGE_OF_INTN_GENERATES_ASYNCHRONOUSLY_AN_INTERRUPT_REQUEST = 0x2,
                ///  The rising edge of INTn generates asynchronously an interrupt request.
                THE_RISING_EDGE_OF_INTN_GENERATES_ASYNCHRONOUSLY_AN_INTERRUPT_REQUEST = 0x3,
            };

            pub const INTERRUPT_REQ_ENABLE_BITF = enum(u8) {
                ///  All external pin interrupts are disabled.
                ALL_EXTERNAL_PIN_INTERRUPTS_ARE_DISABLED = 0x0,
                ///  All external pin interrupts are enabled.
                ALL_EXTERNAL_PIN_INTERRUPTS_ARE_ENABLED = 0xff,
                _,
            };

            pub const INTERRUPT_EXT_FLAG_BITF = enum(u8) {
                ///  No edge or logic change on INT7:0 occurred.
                NO_EDGE_OR_LOGIC_CHANGE_ON_INT7_0_OCCURRED = 0x0,
                ///  A edge or logic change on INT0 occurred and triggered an interrupt request.
                A_EDGE_OR_LOGIC_CHANGE_ON_INT0_OCCURRED_AND_TRIGGERED_AN_INTERRUPT_REQUEST = 0x1,
                ///  ...
                RESERVED = 0x2,
                ///  A edge or logic change on INT7 occurred and triggered an interrupt request.
                A_EDGE_OR_LOGIC_CHANGE_ON_INT7_OCCURRED_AND_TRIGGERED_AN_INTERRUPT_REQUEST = 0x80,
                _,
            };

            ///  Pin Change Interrupt Flag Register
            PCIFR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Flags
                PCIF: u3,
                ///  Reserved Bit
                Res: u5,
            }),
            ///  External Interrupt Flag Register
            EIFR: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Flag
                INTF: packed union {
                    raw: u8,
                    value: INTERRUPT_EXT_FLAG_BITF,
                },
            }),
            ///  External Interrupt Mask Register
            EIMSK: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Request Enable
                INT: packed union {
                    raw: u8,
                    value: INTERRUPT_REQ_ENABLE_BITF,
                },
            }),
            reserved45: [42]u8,
            ///  Pin Change Interrupt Control Register
            PCICR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Enables
                PCIE: u3,
                ///  Reserved Bit
                Res: u5,
            }),
            ///  External Interrupt Control Register A
            EICRA: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt 0 Sense Control Bit
                ISC0: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL3,
                },
                ///  External Interrupt 1 Sense Control Bit
                ISC1: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL3,
                },
                ///  External Interrupt 2 Sense Control Bit
                ISC2: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL3,
                },
                ///  External Interrupt 3 Sense Control Bit
                ISC3: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL3,
                },
            }),
            ///  External Interrupt Control Register B
            EICRB: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt 4 Sense Control Bit
                ISC4: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL3,
                },
                ///  External Interrupt 5 Sense Control Bit
                ISC5: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL3,
                },
                ///  External Interrupt 6 Sense Control Bit
                ISC6: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL3,
                },
                ///  External Interrupt 7 Sense Control Bit
                ISC7: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL3,
                },
            }),
            ///  Pin Change Mask Register 0
            PCMSK0: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Mask
                PCINT: u8,
            }),
            ///  Pin Change Mask Register 1
            PCMSK1: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Mask
                PCINT: u8,
            }),
            ///  Pin Change Mask Register 2
            PCMSK2: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Mask
                PCINT: u8,
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
                ///  Read While Write Section Read Enable
                RWWSRE: u1,
                ///  Signature Row Read
                SIGRD: u1,
                ///  Read While Write Section Busy
                RWWSB: u1,
                ///  SPM Interrupt Enable
                SPMIE: u1,
            }),
        };

        ///  CPU Registers
        pub const CPU = extern struct {
            pub const OSCCAL_BITF = enum(u8) {
                ///  Calibration value for lowest oscillator frequency
                CALIBRATION_VALUE_FOR_LOWEST_OSCILLATOR_FREQUENCY = 0x0,
                ///  End value of low frequency range calibration
                END_VALUE_OF_LOW_FREQUENCY_RANGE_CALIBRATION = 0x7f,
                ///  Start value of high frequency range calibration
                START_VALUE_OF_HIGH_FREQUENCY_RANGE_CALIBRATION = 0x80,
                ///  Calibration value for highest oscillator frequency
                CALIBRATION_VALUE_FOR_HIGHEST_OSCILLATOR_FREQUENCY = 0xff,
                _,
            };

            pub const CPU_CLK_PRESCALE_4_BITS_SMALL_MEGARF = enum(u4) {
                ///  Division factor 1 / RC-Oscillator 2
                DIVISION_FACTOR_1_RC_OSCILLATOR_2 = 0x0,
                ///  Division factor 2 / RC-Oscillator 4
                DIVISION_FACTOR_2_RC_OSCILLATOR_4 = 0x1,
                ///  Division factor 4 / RC-Oscillator 8
                DIVISION_FACTOR_4_RC_OSCILLATOR_8 = 0x2,
                ///  Division factor 8 / RC-Oscillator 16
                DIVISION_FACTOR_8_RC_OSCILLATOR_16 = 0x3,
                ///  Division factor 16 / RC-Oscillator 32
                DIVISION_FACTOR_16_RC_OSCILLATOR_32 = 0x4,
                ///  Division factor 32 / RC-Oscillator 64
                DIVISION_FACTOR_32_RC_OSCILLATOR_64 = 0x5,
                ///  Division factor 64 / RC-Oscillator 128
                DIVISION_FACTOR_64_RC_OSCILLATOR_128 = 0x6,
                ///  Division factor 128 / RC-Oscillator 256
                DIVISION_FACTOR_128_RC_OSCILLATOR_256 = 0x7,
                ///  Division factor 256 / RC-Oscillator 512
                DIVISION_FACTOR_256_RC_OSCILLATOR_512 = 0x8,
                ///  Reserved
                RESERVED = 0x9,
                ///  Reserved
                RESERVED = 0xa,
                ///  Reserved
                RESERVED = 0xb,
                ///  Reserved
                RESERVED = 0xc,
                ///  Reserved
                RESERVED = 0xd,
                ///  Reserved
                RESERVED = 0xe,
                ///  Division factor 1 only permitted for RC-Oscillator. Flash and EEPROM programming is not allowed.
                DIVISION_FACTOR_1_ONLY_PERMITTED_FOR_RC_OSCILLATOR_FLASH_AND_EEPROM_PROGRAMMING_IS_NOT_ALLOWED = 0xf,
            };

            pub const CPU_SLEEP_MODE_3BITS = enum(u3) {
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
                ///  Extended Standby
                ESTDBY = 0x7,
            };

            pub const RAMPZ_BITF = enum(u1) {
                ///  Default value of Z-pointer MSB's.
                DEFAULT_VALUE_OF_Z_POINTER_MSB_S = 0x0,
                _,
            };

            ///  Oscillator Calibration Values
            pub const OSCCAL_VALUE_ADDRESSES = enum(u1) {
                ///  8.0 MHz
                @"8_0_MHz" = 0x0,
                _,
            };

            ///  General Purpose IO Register 0
            GPIOR0: mmio.Mmio(packed struct(u8) {
                ///  General Purpose I/O Register 0 Value
                GPIOR00: u1,
                ///  General Purpose I/O Register 0 Value
                GPIOR01: u1,
                ///  General Purpose I/O Register 0 Value
                GPIOR02: u1,
                ///  General Purpose I/O Register 0 Value
                GPIOR03: u1,
                ///  General Purpose I/O Register 0 Value
                GPIOR04: u1,
                ///  General Purpose I/O Register 0 Value
                GPIOR05: u1,
                ///  General Purpose I/O Register 0 Value
                GPIOR06: u1,
                ///  General Purpose I/O Register 0 Value
                GPIOR07: u1,
            }),
            reserved12: [11]u8,
            ///  General Purpose IO Register 1
            GPIOR1: mmio.Mmio(packed struct(u8) {
                ///  General Purpose I/O Register 1 Value
                GPIOR: u8,
            }),
            ///  General Purpose I/O Register 2
            GPIOR2: mmio.Mmio(packed struct(u8) {
                ///  General Purpose I/O Register 2 Value
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
                    value: CPU_SLEEP_MODE_3BITS,
                },
                padding: u4,
            }),
            ///  MCU Status Register
            MCUSR: mmio.Mmio(packed struct(u8) {
                ///  Power-on Reset Flag
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
                ///  Pull-up Disable
                PUD: u1,
                reserved7: u2,
                ///  JTAG Interface Disable
                JTD: u1,
            }),
            reserved29: [5]u8,
            ///  Extended Z-pointer Register for ELPM/SPM
            RAMPZ: mmio.Mmio(packed struct(u8) {
                ///  Extended Z-Pointer Value
                RAMPZ0: packed union {
                    raw: u1,
                    value: RAMPZ_BITF,
                },
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
                ///  Clock Prescaler Select Bits
                CLKPS: packed union {
                    raw: u4,
                    value: CPU_CLK_PRESCALE_4_BITS_SMALL_MEGARF,
                },
                reserved7: u3,
                ///  Clock Prescaler Change Enable
                CLKPCE: u1,
            }),
            reserved37: [1]u8,
            ///  Power Reduction Register 2
            PRR2: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction SRAM0
                PRRAM0: u1,
                ///  Power Reduction SRAM1
                PRRAM1: u1,
                ///  Power Reduction SRAM2
                PRRAM2: u1,
                ///  Power Reduction SRAM3
                PRRAM3: u1,
                ///  Reserved Bit
                Res: u4,
            }),
            ///  Power Reduction Register0
            PRR0: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction ADC
                PRADC: u1,
                ///  Power Reduction USART
                PRUSART0: u1,
                ///  Power Reduction Serial Peripheral Interface
                PRSPI: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                ///  Power Reduction PGA
                PRPGA: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction Timer/Counter2
                PRTIM2: u1,
                ///  Power Reduction TWI
                PRTWI: u1,
            }),
            ///  Power Reduction Register 1
            PRR1: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction USART1
                PRUSART1: u1,
                reserved3: u2,
                ///  Power Reduction Timer/Counter3
                PRTIM3: u1,
                ///  Power Reduction Timer/Counter4
                PRTIM4: u1,
                ///  Power Reduction Timer/Counter5
                PRTIM5: u1,
                ///  Power Reduction Transceiver
                PRTRX24: u1,
                ///  Reserved Bit
                Res: u1,
            }),
            ///  Oscillator Calibration Value
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration Tuning Value
                CAL: packed union {
                    raw: u8,
                    value: OSCCAL_BITF,
                },
            }),
        };

        ///  FLASH Controller
        pub const FLASH = extern struct {
            pub const NEMCR_ADDRESS_BITF = enum(u2) {
                ///  Factory Row
                FACTORY_ROW = 0x0,
                ///  User Row 1
                USER_ROW_1 = 0x1,
                ///  User Row 2
                USER_ROW_2 = 0x2,
                ///  User Row 3
                USER_ROW_3 = 0x3,
            };

            pub const BGCAL_FINE_BITF = enum(u4) {
                ///  Center value
                CENTER_VALUE = 0x0,
                ///  Voltage step up
                VOLTAGE_STEP_UP = 0x1,
                ///  Voltage step down
                VOLTAGE_STEP_DOWN = 0x8,
                ///  Setting for highest voltage
                SETTING_FOR_HIGHEST_VOLTAGE = 0x7,
                ///  Setting for lowest voltage
                SETTING_FOR_LOWEST_VOLTAGE = 0xf,
                _,
            };

            pub const BGCAL_BITF = enum(u3) {
                ///  Center value
                CENTER_VALUE = 0x4,
                ///  Voltage step up
                VOLTAGE_STEP_UP = 0x3,
                ///  Voltage step down
                VOLTAGE_STEP_DOWN = 0x5,
                ///  Setting for highest voltage
                SETTING_FOR_HIGHEST_VOLTAGE = 0x0,
                ///  Setting for lowest voltage
                SETTING_FOR_LOWEST_VOLTAGE = 0x7,
                _,
            };

            ///  Reference Voltage Calibration Register
            BGCR: mmio.Mmio(packed struct(u8) {
                ///  Coarse Calibration Bits
                BGCAL: packed union {
                    raw: u3,
                    value: BGCAL_BITF,
                },
                ///  Fine Calibration Bits
                BGCAL_FINE: packed union {
                    raw: u4,
                    value: BGCAL_FINE_BITF,
                },
                ///  Reserved Bit
                Res: u1,
            }),
            reserved14: [13]u8,
            ///  Flash Extended-Mode Control-Register
            NEMCR: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  Address for Extended Address Mode of Extra Rows
                AEAM: packed union {
                    raw: u2,
                    value: NEMCR_ADDRESS_BITF,
                },
                ///  Enable Extended Address Mode for Extra Rows
                ENEAM: u1,
                padding: u1,
            }),
        };

        ///  Power Controller
        pub const PWRCTRL = extern struct {
            pub const LLDRL_VALUE_BITF = enum(u4) {
                ///  Calibration limit for fast process corner/high output voltage
                CALIBRATION_LIMIT_FOR_FAST_PROCESS_CORNER_HIGH_OUTPUT_VOLTAGE = 0x0,
                ///  Calibration limit for slow process corner/low output voltage
                CALIBRATION_LIMIT_FOR_SLOW_PROCESS_CORNER_LOW_OUTPUT_VOLTAGE = 0x8,
                _,
            };

            pub const LLDRH_VALUE_BITF = enum(u5) {
                ///  Calibration limit for fast process corner/high output voltage
                CALIBRATION_LIMIT_FOR_FAST_PROCESS_CORNER_HIGH_OUTPUT_VOLTAGE = 0x0,
                ///  Calibration limit for slow process corner/low output voltage
                CALIBRATION_LIMIT_FOR_SLOW_PROCESS_CORNER_LOW_OUTPUT_VOLTAGE = 0x10,
                _,
            };

            pub const PAD_IO_bitf = enum(u2) {
                ///  2 mA
                PAD_IO_2MA = 0x0,
                ///  4 mA
                PAD_IO_4MA = 0x1,
                ///  6 mA
                PAD_IO_6MA = 0x2,
                ///  8 mA
                PAD_IO_8MA = 0x3,
            };

            ///  MCU Control Register
            MCUCR: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  Pull-up Disable
                PUD: u1,
                padding: u3,
            }),
            reserved218: [217]u8,
            ///  Low Leakage Voltage Regulator Control Register
            LLCR: mmio.Mmio(packed struct(u8) {
                ///  Enable Automatic Calibration
                LLENCAL: u1,
                ///  Short Lower Calibration Circuit
                LLSHORT: u1,
                ///  Temperature Coefficient of Current Source
                LLTCO: u1,
                ///  Calibration Active
                LLCAL: u1,
                ///  Comparator Output
                LLCOMP: u1,
                ///  Calibration Done
                LLDONE: u1,
                ///  Reserved Bit
                Res: u2,
            }),
            ///  Low Leakage Voltage Regulator Data Register (Low-Byte)
            LLDRL: mmio.Mmio(packed struct(u8) {
                ///  Low-Byte Data Register Bits
                LLDRL: packed union {
                    raw: u4,
                    value: LLDRL_VALUE_BITF,
                },
                padding: u4,
            }),
            ///  Low Leakage Voltage Regulator Data Register (High-Byte)
            LLDRH: mmio.Mmio(packed struct(u8) {
                ///  High-Byte Data Register Bits
                LLDRH: packed union {
                    raw: u5,
                    value: LLDRH_VALUE_BITF,
                },
                padding: u3,
            }),
            ///  Data Retention Configuration Register #3
            DRTRAM3: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  Enable SRAM Data Retention
                ENDRT: u1,
                ///  DRT Switch OK
                DRTSWOK: u1,
                padding: u2,
            }),
            ///  Data Retention Configuration Register #2
            DRTRAM2: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  Enable SRAM Data Retention
                ENDRT: u1,
                ///  DRT Switch OK
                DRTSWOK: u1,
                ///  Reserved Bit
                Res: u1,
                padding: u1,
            }),
            ///  Data Retention Configuration Register #1
            DRTRAM1: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  Enable SRAM Data Retention
                ENDRT: u1,
                ///  DRT Switch OK
                DRTSWOK: u1,
                padding: u2,
            }),
            ///  Data Retention Configuration Register #0
            DRTRAM0: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  Enable SRAM Data Retention
                ENDRT: u1,
                ///  DRT Switch OK
                DRTSWOK: u1,
                padding: u2,
            }),
            ///  Port Driver Strength Register 0
            DPDS0: mmio.Mmio(packed struct(u8) {
                ///  Driver Strength Port B
                PBDRV: packed union {
                    raw: u2,
                    value: PAD_IO_bitf,
                },
                ///  Driver Strength Port D
                PDDRV: packed union {
                    raw: u2,
                    value: PAD_IO_bitf,
                },
                ///  Driver Strength Port E
                PEDRV: packed union {
                    raw: u2,
                    value: PAD_IO_bitf,
                },
                ///  Driver Strength Port F
                PFDRV: packed union {
                    raw: u2,
                    value: PAD_IO_bitf,
                },
            }),
            ///  Port Driver Strength Register 1
            DPDS1: mmio.Mmio(packed struct(u8) {
                ///  Driver Strength Port G
                PGDRV: packed union {
                    raw: u2,
                    value: PAD_IO_bitf,
                },
                padding: u6,
            }),
            reserved228: [1]u8,
            ///  Transceiver Pin Register
            TRXPR: mmio.Mmio(packed struct(u8) {
                ///  Force Transceiver Reset
                TRXRST: u1,
                ///  Multi-purpose Transceiver Control Bit
                SLPTR: u1,
                padding: u6,
            }),
        };
    };
};
