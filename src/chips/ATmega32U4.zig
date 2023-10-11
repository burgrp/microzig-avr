const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATmega32U4 = struct {
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
            ///  Reserved1
            Reserved1: Handler = unhandled,
            ///  Reserved2
            Reserved2: Handler = unhandled,
            ///  External Interrupt Request 6
            INT6: Handler = unhandled,
            ///  Reserved3
            Reserved3: Handler = unhandled,
            ///  Pin Change Interrupt Request 0
            PCINT0: Handler = unhandled,
            ///  USB General Interrupt Request
            USB_GEN: Handler = unhandled,
            ///  USB Endpoint/Pipe Interrupt Communication Request
            USB_COM: Handler = unhandled,
            ///  Watchdog Time-out Interrupt
            WDT: Handler = unhandled,
            ///  Reserved4
            Reserved4: Handler = unhandled,
            ///  Reserved5
            Reserved5: Handler = unhandled,
            ///  Reserved6
            Reserved6: Handler = unhandled,
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
            ///  USART1, Rx Complete
            USART1_RX: Handler = unhandled,
            ///  USART1 Data register Empty
            USART1_UDRE: Handler = unhandled,
            ///  USART1, Tx Complete
            USART1_TX: Handler = unhandled,
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
            ///  2-wire Serial Interface
            TWI: Handler = unhandled,
            ///  Store Program Memory Read
            SPM_READY: Handler = unhandled,
            ///  Timer/Counter4 Compare Match A
            TIMER4_COMPA: Handler = unhandled,
            ///  Timer/Counter4 Compare Match B
            TIMER4_COMPB: Handler = unhandled,
            ///  Timer/Counter4 Compare Match D
            TIMER4_COMPD: Handler = unhandled,
            ///  Timer/Counter4 Overflow
            TIMER4_OVF: Handler = unhandled,
            ///  Timer/Counter4 Fault Protection Interrupt
            TIMER4_FPF: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Fuses
            pub const FUSE = @as(*volatile types.peripherals.FUSE, @ptrFromInt(0x0));
            ///  Lockbits
            pub const LOCKBIT = @as(*volatile types.peripherals.LOCKBIT, @ptrFromInt(0x0));
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
            ///  Timer/Counter, 8-bit
            pub const TC0 = @as(*volatile types.peripherals.TC8.TC0, @ptrFromInt(0x35));
            ///  Timer/Counter, 16-bit
            pub const TC1 = @as(*volatile types.peripherals.TC16.TC1, @ptrFromInt(0x36));
            ///  Timer/Counter, 16-bit
            pub const TC3 = @as(*volatile types.peripherals.TC16.TC3, @ptrFromInt(0x38));
            ///  Timer/Counter, 10-bit
            pub const TC4 = @as(*volatile types.peripherals.TC10.TC4, @ptrFromInt(0x39));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x3b));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x3e));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3f));
            ///  Phase Locked Loop
            pub const PLL = @as(*volatile types.peripherals.PLL, @ptrFromInt(0x49));
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
            pub const USART1 = @as(*volatile types.peripherals.USART.USART1, @ptrFromInt(0xc8));
            ///  USB Device Registers
            pub const USB_DEVICE = @as(*volatile types.peripherals.USB_DEVICE, @ptrFromInt(0xd7));
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
                ///  Boot Flash size=256 words start address=$3F00
                @"256W_3F00" = 0x3,
                ///  Boot Flash size=512 words start address=$3E00
                @"512W_3E00" = 0x2,
                ///  Boot Flash size=1024 words start address=$3C00
                @"1024W_3C00" = 0x1,
                ///  Boot Flash size=2048 words start address=$3800
                @"2048W_3800" = 0x0,
            };

            pub const ENUM_BODLEVEL = enum(u3) {
                ///  Brown-out detection disabled; [BODLEVEL=111]
                DISABLED = 0x7,
                ///  Brown-out detection at VCC=2.0 V
                @"2V0" = 0x6,
                ///  Brown-out detection at VCC=2.2 V
                @"2V2" = 0x5,
                ///  Brown-out detection at VCC=2.4 V
                @"2V4" = 0x4,
                ///  Brown-out detection at VCC=2.6 V
                @"2V6" = 0x3,
                ///  Brown-out detection at VCC=3.4 V
                @"3V4" = 0x2,
                ///  Brown-out detection at VCC=3.5 V
                @"3V5" = 0x1,
                ///  Brown-out detection at VCC=4.3 V
                @"4V3" = 0x0,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Select Clock Source
                SUT_CKSEL: packed union {
                    raw: u6,
                    value: ENUM_SUT_CKSEL,
                },
                ///  Clock output on PORTC7
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
                ///  Hardware Boot Enable
                HWBE: u1,
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

        ///  I/O Port
        pub const PORT = struct {
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
                        raw: u2,
                        value: COMM_USART_MODE_2BIT,
                    },
                }),
                ///  USART Control and Status Register D
                UCSR1D: mmio.Mmio(packed struct(u8) {
                    ///  RTS Enable
                    RTSEN: u1,
                    ///  CTS Enable
                    CTSEN: u1,
                    padding: u6,
                }),
                ///  USART Baud Rate Register Bytes
                UBRR1: u16,
                ///  USART I/O Data Register
                UDR1: u8,
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
                ///  Signature Row Read
                SIGRD: u1,
                ///  Read While Write Section Busy
                RWWSB: u1,
                ///  SPM Interrupt Enable
                SPMIE: u1,
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
            ///  EEPROM Address Register Low Bytes
            EEAR: u16,
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
                    ///  Prescaler Reset for Synchronous Timer/Counters
                    PSRSYNC: u1,
                    ///  Prescaler Reset for Asynchronous Timer/Counters
                    PSRASY: u1,
                    reserved7: u5,
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

        ///  Timer/Counter, 10-bit
        pub const TC10 = struct {
            ///  Timer/Counter, 10-bit
            pub const TC4 = extern struct {
                ///  Timer/Counter4 Interrupt Flag register
                TIFR4: mmio.Mmio(packed struct(u8) {
                    reserved2: u2,
                    ///  Timer/Counter4 Overflow Flag
                    TOV4: u1,
                    reserved5: u2,
                    ///  Output Compare Flag 4B
                    OCF4B: u1,
                    ///  Output Compare Flag 4A
                    OCF4A: u1,
                    ///  Output Compare Flag 4D
                    OCF4D: u1,
                }),
                reserved57: [56]u8,
                ///  Timer/Counter4 Interrupt Mask Register
                TIMSK4: mmio.Mmio(packed struct(u8) {
                    reserved2: u2,
                    ///  Timer/Counter4 Overflow Interrupt Enable
                    TOIE4: u1,
                    reserved5: u2,
                    ///  Timer/Counter4 Output Compare B Match Interrupt Enable
                    OCIE4B: u1,
                    ///  Timer/Counter4 Output Compare A Match Interrupt Enable
                    OCIE4A: u1,
                    ///  Timer/Counter4 Output Compare D Match Interrupt Enable
                    OCIE4D: u1,
                }),
                reserved133: [75]u8,
                ///  Timer/Counter4 Low Bytes
                TCNT4: u8,
                ///  Timer/Counter4
                TC4H: u8,
                ///  Timer/Counter4 Control Register A
                TCCR4A: mmio.Mmio(packed struct(u8) {
                    PWM4B: u1,
                    PWM4A: u1,
                    ///  Force Output Compare Match 4B
                    FOC4B: u1,
                    ///  Force Output Compare Match 4A
                    FOC4A: u1,
                    ///  Compare Output Mode 4B, bits
                    COM4B: u2,
                    ///  Compare Output Mode 1A, bits
                    COM4A: u2,
                }),
                ///  Timer/Counter4 Control Register B
                TCCR4B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select Bits
                    CS4: u4,
                    ///  Dead Time Prescaler Bits
                    DTPS4: u2,
                    ///  Prescaler Reset Timer/Counter 4
                    PSR4: u1,
                    ///  PWM Inversion Mode
                    PWM4X: u1,
                }),
                ///  Timer/Counter 4 Control Register C
                TCCR4C: mmio.Mmio(packed struct(u8) {
                    ///  Pulse Width Modulator D Enable
                    PWM4D: u1,
                    ///  Force Output Compare Match 4D
                    FOC4D: u1,
                    ///  Comparator D Output Mode
                    COM4D: u2,
                    ///  Comparator B Output Mode
                    COM4B0S: u1,
                    ///  Comparator B Output Mode
                    COM4B1S: u1,
                    ///  Comparator A Output Mode
                    COM4A0S: u1,
                    ///  Comparator A Output Mode
                    COM4A1S: u1,
                }),
                ///  Timer/Counter 4 Control Register D
                TCCR4D: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Generation Mode bits
                    WGM4: u2,
                    ///  Fault Protection Interrupt Flag
                    FPF4: u1,
                    ///  Fault Protection Analog Comparator Enable
                    FPAC4: u1,
                    ///  Fault Protection Edge Select
                    FPES4: u1,
                    ///  Fault Protection Noise Canceler
                    FPNC4: u1,
                    ///  Fault Protection Mode Enable
                    FPEN4: u1,
                    ///  Fault Protection Interrupt Enable
                    FPIE4: u1,
                }),
                ///  Timer/Counter 4 Control Register E
                TCCR4E: mmio.Mmio(packed struct(u8) {
                    ///  Output Compare Override Enable bit
                    OC4OE: u6,
                    ///  Enhanced Compare/PWM Mode
                    ENHC4: u1,
                    ///  Register Update Lock
                    TLOCK4: u1,
                }),
                reserved150: [10]u8,
                ///  Timer/Counter4 Output Compare Register A
                OCR4A: u8,
                ///  Timer/Counter4 Output Compare Register B
                OCR4B: u8,
                ///  Timer/Counter4 Output Compare Register C
                OCR4C: u8,
                ///  Timer/Counter4 Output Compare Register D
                OCR4D: u8,
                reserved155: [1]u8,
                ///  Timer/Counter 4 Dead Time Value
                DT4: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter 4 Dead Time Value Bits
                    DT4L: u8,
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
            pub const TC3 = extern struct {
                ///  Timer/Counter3 Interrupt Flag register
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
                ///  Timer/Counter3 Interrupt Mask Register
                TIMSK3: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter3 Overflow Interrupt Enable
                    TOIE3: u1,
                    ///  Timer/Counter3 Output Compare A Match Interrupt Enable
                    OCIE3A: u1,
                    ///  Timer/Counter3 Output Compare B Match Interrupt Enable
                    OCIE3B: u1,
                    ///  Timer/Counter3 Output Compare C Match Interrupt Enable
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
                    ///  Compare Output Mode 1A, bits
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
                ///  Timer/Counter3 Output Compare Register A Bytes
                OCR3A: u16,
                ///  Timer/Counter3 Output Compare Register B Bytes
                OCR3B: u16,
                ///  Timer/Counter3 Output Compare Register B Bytes
                OCR3C: u16,
            };

            ///  Timer/Counter, 16-bit
            pub const TC1 = extern struct {
                ///  Timer/Counter1 Interrupt Flag register
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
                ///  Timer/Counter1 Interrupt Mask Register
                TIMSK1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Interrupt Enable
                    TOIE1: u1,
                    ///  Timer/Counter1 Output Compare A Match Interrupt Enable
                    OCIE1A: u1,
                    ///  Timer/Counter1 Output Compare B Match Interrupt Enable
                    OCIE1B: u1,
                    ///  Timer/Counter1 Output Compare C Match Interrupt Enable
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
                ///  Timer/Counter1 Output Compare Register A Bytes
                OCR1A: u16,
                ///  Timer/Counter1 Output Compare Register B Bytes
                OCR1B: u16,
                ///  Timer/Counter1 Output Compare Register C Bytes
                OCR1C: u16,
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
                ///  Pin Change Interrupt Flag 0
                PCIF0: u1,
                padding: u7,
            }),
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
            reserved45: [42]u8,
            ///  Pin Change Interrupt Control Register
            PCICR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Enable 0
                PCIE0: u1,
                padding: u7,
            }),
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
            ///  Pin Change Mask Register 0
            PCMSK0: u8,
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
            ///  TWI (Slave) Address Mask Register
            TWAMR: mmio.Mmio(packed struct(u8) {
                reserved1: u1,
                TWAM: u7,
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

            pub const ANALOG_ADC_AUTO_TRIGGER2 = enum(u4) {
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
                ///  Timer/Counter4 Overflow
                TIMER_COUNTER4_OVERFLOW = 0x8,
                ///  Timer/Counter4 Compare Match A
                TIMER_COUNTER4_COMPARE_MATCH_A = 0x9,
                ///  Timer/Counter4 Compare Match B
                TIMER_COUNTER4_COMPARE_MATCH_B = 0xa,
                ///  Timer/Counter4 Compare Match D
                TIMER_COUNTER4_COMPARE_MATCH_D = 0xb,
                _,
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
                    raw: u4,
                    value: ANALOG_ADC_AUTO_TRIGGER2,
                },
                reserved5: u1,
                ///  Analog Channel and Gain Selection Bits
                MUX5: u1,
                reserved7: u1,
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
            ///  Digital Input Disable Register 2
            DIDR2: mmio.Mmio(packed struct(u8) {
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

        ///  CPU Registers
        pub const CPU = extern struct {
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

            pub const RAMPZ_BITF = enum(u2) {
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
                    value: CPU_SLEEP_MODE_3BITS,
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
                reserved7: u2,
                ///  JTAG Interface Disable
                JTD: u1,
            }),
            reserved29: [5]u8,
            ///  Extended Z-pointer Register for ELPM/SPM
            RAMPZ: mmio.Mmio(packed struct(u8) {
                ///  Extended Z-Pointer Value
                RAMPZ: packed union {
                    raw: u2,
                    value: RAMPZ_BITF,
                },
                ///  Reserved
                Res: u6,
            }),
            ///  Extended Indirect Register
            EIND: u8,
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
            CLKPR: mmio.Mmio(packed struct(u8) {
                CLKPS: packed union {
                    raw: u4,
                    value: CPU_CLK_PRESCALE_4_BITS_SMALL,
                },
                reserved7: u3,
                CLKPCE: u1,
            }),
            reserved38: [2]u8,
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
                reserved5: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction Timer/Counter2
                PRTIM2: u1,
                ///  Power Reduction TWI
                PRTWI: u1,
            }),
            ///  Power Reduction Register1
            PRR1: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction USART1
                PRUSART1: u1,
                reserved3: u2,
                ///  Power Reduction Timer/Counter3
                PRTIM3: u1,
                ///  Power Reduction Timer/Counter4
                PRTIM4: u1,
                reserved7: u2,
                ///  Power Reduction USB
                PRUSB: u1,
            }),
            ///  Oscillator Calibration Value
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
            ///  Oscillator Control Register
            RCCTRL: mmio.Mmio(packed struct(u8) {
                RCFREQ: u1,
                padding: u7,
            }),
            reserved135: [93]u8,
            CLKSEL0: mmio.Mmio(packed struct(u8) {
                CLKS: u1,
                reserved2: u1,
                EXTE: u1,
                RCE: u1,
                EXSUT: u2,
                RCSUT: u2,
            }),
            CLKSEL1: mmio.Mmio(packed struct(u8) {
                EXCKSEL: u4,
                RCCKSEL: u4,
            }),
            CLKSTA: mmio.Mmio(packed struct(u8) {
                EXTON: u1,
                RCON: u1,
                padding: u6,
            }),
        };

        ///  Phase Locked Loop
        pub const PLL = extern struct {
            ///  PLL Status and Control register
            PLLCSR: mmio.Mmio(packed struct(u8) {
                ///  PLL Lock Status Bit
                PLOCK: u1,
                ///  PLL Enable Bit
                PLLE: u1,
                reserved4: u2,
                ///  PLL prescaler Bit 2
                PINDIV: u1,
                padding: u3,
            }),
            reserved9: [8]u8,
            ///  PLL Frequency Control Register
            PLLFRQ: mmio.Mmio(packed struct(u8) {
                PDIV: u4,
                PLLTM: u2,
                PLLUSB: u1,
                PINMUX: u1,
            }),
        };

        ///  USB Device Registers
        pub const USB_DEVICE = extern struct {
            UHWCON: mmio.Mmio(packed struct(u8) {
                UVREGE: u1,
                padding: u7,
            }),
            ///  USB General Control Register
            USBCON: mmio.Mmio(packed struct(u8) {
                VBUSTE: u1,
                reserved4: u3,
                OTGPADE: u1,
                FRZCLK: u1,
                reserved7: u1,
                USBE: u1,
            }),
            USBSTA: mmio.Mmio(packed struct(u8) {
                VBUS: u1,
                reserved3: u2,
                SPEED: u1,
                padding: u4,
            }),
            USBINT: mmio.Mmio(packed struct(u8) {
                VBUSTI: u1,
                padding: u7,
            }),
            reserved9: [5]u8,
            UDCON: mmio.Mmio(packed struct(u8) {
                DETACH: u1,
                RMWKUP: u1,
                ///  USB low speed mode
                LSM: u1,
                RSTCPU: u1,
                padding: u4,
            }),
            UDINT: mmio.Mmio(packed struct(u8) {
                SUSPI: u1,
                reserved2: u1,
                SOFI: u1,
                EORSTI: u1,
                WAKEUPI: u1,
                EORSMI: u1,
                UPRSMI: u1,
                padding: u1,
            }),
            UDIEN: mmio.Mmio(packed struct(u8) {
                SUSPE: u1,
                reserved2: u1,
                SOFE: u1,
                EORSTE: u1,
                WAKEUPE: u1,
                EORSME: u1,
                UPRSME: u1,
                padding: u1,
            }),
            UDADDR: mmio.Mmio(packed struct(u8) {
                UADD: u7,
                ADDEN: u1,
            }),
            UDFNUM: u16,
            UDMFN: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                FNCERR: u1,
                padding: u3,
            }),
            reserved17: [1]u8,
            UEINTX: mmio.Mmio(packed struct(u8) {
                TXINI: u1,
                STALLEDI: u1,
                RXOUTI: u1,
                RXSTPI: u1,
                NAKOUTI: u1,
                RWAL: u1,
                NAKINI: u1,
                FIFOCON: u1,
            }),
            UENUM: u8,
            UERST: mmio.Mmio(packed struct(u8) {
                EPRST: u7,
                padding: u1,
            }),
            UECONX: mmio.Mmio(packed struct(u8) {
                EPEN: u1,
                reserved3: u2,
                RSTDT: u1,
                STALLRQC: u1,
                STALLRQ: u1,
                padding: u2,
            }),
            UECFG0X: mmio.Mmio(packed struct(u8) {
                EPDIR: u1,
                reserved6: u5,
                EPTYPE: u2,
            }),
            UECFG1X: mmio.Mmio(packed struct(u8) {
                reserved1: u1,
                ALLOC: u1,
                EPBK: u2,
                EPSIZE: u3,
                padding: u1,
            }),
            UESTA0X: mmio.Mmio(packed struct(u8) {
                NBUSYBK: u2,
                DTSEQ: u2,
                reserved5: u1,
                UNDERFI: u1,
                OVERFI: u1,
                CFGOK: u1,
            }),
            UESTA1X: mmio.Mmio(packed struct(u8) {
                CURRBK: u2,
                CTRLDIR: u1,
                padding: u5,
            }),
            UEIENX: mmio.Mmio(packed struct(u8) {
                TXINE: u1,
                STALLEDE: u1,
                RXOUTE: u1,
                RXSTPE: u1,
                NAKOUTE: u1,
                reserved6: u1,
                NAKINE: u1,
                FLERRE: u1,
            }),
            UEDATX: mmio.Mmio(packed struct(u8) {
                DAT: u8,
            }),
            UEBCLX: u8,
            UEBCHX: u8,
            UEINT: u8,
        };
    };
};
