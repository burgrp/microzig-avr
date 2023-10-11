const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny167 = struct {
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
            ///  External Interrupt Request 1
            INT1: Handler = unhandled,
            ///  Pin Change Interrupt Request 0
            PCINT0: Handler = unhandled,
            ///  Pin Change Interrupt Request 1
            PCINT1: Handler = unhandled,
            ///  Watchdog Time-Out Interrupt
            WDT: Handler = unhandled,
            ///  Timer/Counter1 Capture Event
            TIMER1_CAPT: Handler = unhandled,
            ///  Timer/Counter1 Compare Match 1A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer/Counter1 Compare Match 1B
            TIMER1_COMPB: Handler = unhandled,
            ///  Timer/Counter1 Overflow
            TIMER1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Compare Match 0A
            TIMER0_COMPA: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  LIN Transfer Complete
            LIN_TC: Handler = unhandled,
            ///  LIN Error
            LIN_ERR: Handler = unhandled,
            ///  SPI Serial Transfer Complete
            SPI_STC: Handler = unhandled,
            ///  ADC Conversion Complete
            ADC: Handler = unhandled,
            ///  EEPROM Ready
            EE_RDY: Handler = unhandled,
            ///  Analog Comparator
            ANA_COMP: Handler = unhandled,
            ///  USI Start Condition Detection
            USI_START: Handler = unhandled,
            ///  USI Counter Overflow
            USI_OVF: Handler = unhandled,
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
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x32));
            ///  Timer/Counter, 8-bit Async
            pub const TC0 = @as(*volatile types.peripherals.TC8_ASYNC.TC0, @ptrFromInt(0x35));
            ///  Timer/Counter, 16-bit
            pub const TC1 = @as(*volatile types.peripherals.TC16.TC1, @ptrFromInt(0x36));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x3b));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3f));
            ///  Serial Peripheral Interface
            pub const SPI = @as(*volatile types.peripherals.SPI, @ptrFromInt(0x4c));
            ///  Analog Comparator
            pub const AC = @as(*volatile types.peripherals.AC, @ptrFromInt(0x50));
            ///  Bootloader
            pub const BOOT_LOAD = @as(*volatile types.peripherals.BOOT_LOAD, @ptrFromInt(0x57));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x60));
            ///  Analog-to-Digital Converter
            pub const ADC = @as(*volatile types.peripherals.ADC, @ptrFromInt(0x77));
            ///  Current Source
            pub const CURRENT_SOURCE = @as(*volatile types.peripherals.CURRENT_SOURCE, @ptrFromInt(0x77));
            ///  Universal Serial Interface
            pub const USI = @as(*volatile types.peripherals.USI, @ptrFromInt(0xb8));
            ///  Local Interconnect Network
            pub const LINUART = @as(*volatile types.peripherals.LINUART, @ptrFromInt(0xc8));
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
                ///  Ext. Low-Freq. Crystal; Start-up time PWRDWN/RESET: 1024 CK 4 ms
                EXTLOFXTAL_1KCK_4MS = 0x4,
                ///  Ext. Low-Freq. Crystal; Start-up time PWRDWN/RESET: 1024 CK + 64 ms
                EXTLOFXTAL_1KCK_64MS = 0x14,
                ///  Ext. Low-Freq. Crystal; Start-up time PWRDWN/RESET: 32768 CK + 64 ms
                EXTLOFXTAL_32KCK_64MS = 0x24,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTCRES_0MHZ4_0MHZ9_258CK_14CK_4MS1 = 0x8,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTCRES_0MHZ4_0MHZ9_258CK_14CK_65MS = 0x18,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1024 CK /14 CK + 0 ms
                EXTCRES_0MHZ4_0MHZ9_1KCK_14CK_0MS = 0x28,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1024 CK /14 CK + 4.1 ms
                EXTCRES_0MHZ4_0MHZ9_1KCK_14CK_4MS1 = 0x38,
                ///  Ext. Ceramic Res. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 1024 CK /14 CK + 65 ms
                EXTCRES_0MHZ4_0MHZ9_1KCK_14CK_65MS = 0x9,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16384 CK/14 CK + 0 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_0MS = 0x19,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16384 CK/14 CK + 4.1 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_4MS1 = 0x29,
                ///  Ext. Crystal Osc. 0.4-0.9 MHz; Start-up time PWRDWN/RESET: 16384 CK/14 CK + 65 ms
                EXTXOSC_0MHZ4_0MHZ9_16KCK_14CK_65MS = 0x39,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTCRES_0MHZ9_3MHZ_258CK_14CK_4MS1 = 0xa,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTCRES_0MHZ9_3MHZ_258CK_14CK_65MS = 0x1a,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1024 CK /14 CK + 0 ms
                EXTCRES_0MHZ9_3MHZ_1KCK_14CK_0MS = 0x2a,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1024 CK /14 CK + 4.1 ms
                EXTCRES_0MHZ9_3MHZ_1KCK_14CK_4MS1 = 0x3a,
                ///  Ext. Ceramic Res. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 1024 CK /14 CK + 65 ms
                EXTCRES_0MHZ9_3MHZ_1KCK_14CK_65MS = 0xb,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16384 CK/14 CK + 0 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_0MS = 0x1b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16384 CK/14 CK + 4.1 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_4MS1 = 0x2b,
                ///  Ext. Crystal Osc. 0.9-3.0 MHz; Start-up time PWRDWN/RESET: 16384 CK/14 CK + 65 ms
                EXTXOSC_0MHZ9_3MHZ_16KCK_14CK_65MS = 0x3b,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTCRES_3MHZ_8MHZ_258CK_14CK_4MS1 = 0xc,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTCRES_3MHZ_8MHZ_258CK_14CK_65MS = 0x1c,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1024 CK /14 CK + 0 ms
                EXTCRES_3MHZ_8MHZ_1KCK_14CK_0MS = 0x2c,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1024 CK /14 CK + 4.1 ms
                EXTCRES_3MHZ_8MHZ_1KCK_14CK_4MS1 = 0x3c,
                ///  Ext. Ceramic Res. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 1024 CK /14 CK + 65 ms
                EXTCRES_3MHZ_8MHZ_1KCK_14CK_65MS = 0xd,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16384 CK/14 CK + 0 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_0MS = 0x1d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16384 CK/14 CK + 4.1 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_4MS1 = 0x2d,
                ///  Ext. Crystal Osc. 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 16384 CK/14 CK + 65 ms
                EXTXOSC_3MHZ_8MHZ_16KCK_14CK_65MS = 0x3d,
                ///  Ext. Ceramic Res. 8.0-16.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms
                EXTCRES_8MHZ_16MHZ_258CK_14CK_4MS1 = 0xe,
                ///  Ext. Ceramic Res. 8.0-16.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 65 ms
                EXTCRES_8MHZ_16MHZ_258CK_14CK_65MS = 0x1e,
                ///  Ext. Ceramic Res. 8.0-16.0 MHz; Start-up time PWRDWN/RESET: 1024 CK /14 CK + 0 ms
                EXTCRES_8MHZ_16MHZ_1KCK_14CK_0MS = 0x2e,
                ///  Ext. Ceramic Res. 8.0-16.0 MHz; Start-up time PWRDWN/RESET: 1024 CK /14 CK + 4.1 ms
                EXTCRES_8MHZ_16MHZ_1KCK_14CK_4MS1 = 0x3e,
                ///  Ext. Ceramic Res. 8.0-16.0 MHz; Start-up time PWRDWN/RESET: 1024 CK /14 CK + 65 ms
                EXTCRES_8MHZ_16MHZ_1KCK_14CK_65MS = 0xf,
                ///  Ext. Crystal Osc. 8.0-16.0 MHz; Start-up time PWRDWN/RESET: 16384 CK/14 CK + 0 ms
                EXTXOSC_8MHZ_16MHZ_16KCK_14CK_0MS = 0x1f,
                ///  Ext. Crystal Osc. 8.0-16.0 MHz; Start-up time PWRDWN/RESET: 16384 CK/14 CK + 4.1 ms
                EXTXOSC_8MHZ_16MHZ_16KCK_14CK_4MS1 = 0x2f,
                ///  Ext. Crystal Osc. 8.0-16.0 MHz; Start-up time PWRDWN/RESET: 16384 CK/14 CK + 65 ms
                EXTXOSC_8MHZ_16MHZ_16KCK_14CK_65MS = 0x3f,
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
                ///  Watch-dog Timer always ON
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

        ///  Local Interconnect Network
        pub const LINUART = extern struct {
            ///  LIN Control Register
            LINCR: mmio.Mmio(packed struct(u8) {
                ///  LIN Command and Mode bits
                LCMD: u3,
                ///  LIN or UART Enable
                LENA: u1,
                ///  LIN Configuration bits
                LCONF: u2,
                ///  LIN Standard
                LIN13: u1,
                ///  Software Reset
                LSWRES: u1,
            }),
            ///  LIN Status and Interrupt Register
            LINSIR: mmio.Mmio(packed struct(u8) {
                ///  Receive Performed Interrupt
                LRXOK: u1,
                ///  Transmit Performed Interrupt
                LTXOK: u1,
                ///  Identifier Interrupt
                LIDOK: u1,
                ///  Error Interrupt
                LERR: u1,
                ///  Busy Signal
                LBUSY: u1,
                ///  Identifier Status bits
                LIDST: u3,
            }),
            ///  LIN Enable Interrupt Register
            LINENIR: mmio.Mmio(packed struct(u8) {
                ///  Enable Receive Performed Interrupt
                LENRXOK: u1,
                ///  Enable Transmit Performed Interrupt
                LENTXOK: u1,
                ///  Enable Identifier Interrupt
                LENIDOK: u1,
                ///  Enable Error Interrupt
                LENERR: u1,
                padding: u4,
            }),
            ///  LIN Error Register
            LINERR: mmio.Mmio(packed struct(u8) {
                ///  Bit Error Flag
                LBERR: u1,
                ///  Checksum Error Flag
                LCERR: u1,
                ///  Parity Error Flag
                LPERR: u1,
                ///  Synchronization Error Flag
                LSERR: u1,
                ///  Framing Error Flag
                LFERR: u1,
                ///  Overrun Error Flag
                LOVERR: u1,
                ///  Frame Time Out Error Flag
                LTOERR: u1,
                ///  Abort Flag
                LABORT: u1,
            }),
            ///  LIN Bit Timing Register
            LINBTR: mmio.Mmio(packed struct(u8) {
                ///  LIN Bit Timing bits
                LBT: u6,
                reserved7: u1,
                ///  Disable Bit Timing Resynchronization
                LDISR: u1,
            }),
            ///  LIN Baud Rate Low Register
            LINBRRL: mmio.Mmio(packed struct(u8) {
                LDIV: u8,
            }),
            ///  LIN Baud Rate High Register
            LINBRRH: mmio.Mmio(packed struct(u8) {
                LDIV: u4,
                padding: u4,
            }),
            ///  LIN Data Length Register
            LINDLR: mmio.Mmio(packed struct(u8) {
                ///  LIN Receive Data Length bits
                LRXDL: u4,
                ///  LIN Transmit Data Length bits
                LTXDL: u4,
            }),
            ///  LIN Identifier Register
            LINIDR: mmio.Mmio(packed struct(u8) {
                ///  Identifier bit 5 or Data Length bits
                LID: u6,
                ///  Parity bits
                LP: u2,
            }),
            ///  LIN Data Buffer Selection Register
            LINSEL: mmio.Mmio(packed struct(u8) {
                ///  FIFO LIN Data Buffer Index bits
                LINDX: u3,
                ///  Auto Increment of Data Buffer Index (Active Low)
                LAINC: u1,
                padding: u4,
            }),
            ///  LIN Data Register
            LINDAT: mmio.Mmio(packed struct(u8) {
                LDATA: u8,
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

        ///  Timer/Counter, 8-bit Async
        pub const TC8_ASYNC = struct {
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
            pub const TC0 = extern struct {
                ///  Timer/Counter0 Interrupt Flag Register
                TIFR0: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Overflow Flag
                    TOV0: u1,
                    ///  Output Compare Flag 0A
                    OCF0A: u1,
                    padding: u6,
                }),
                reserved14: [13]u8,
                ///  General Timer Counter Control register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset Synchronous 16-bit Timer/Counter1
                    PSR1: u1,
                    ///  Prescaler Reset Asynchronous 8-bit Timer/Counter0
                    PSR0: u1,
                    reserved7: u5,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                reserved16: [1]u8,
                ///  Timer/Counter0 Control Register A
                TCCR0A: mmio.Mmio(packed struct(u8) {
                    ///  Waveform Genration Mode bits
                    WGM0: u2,
                    reserved6: u4,
                    ///  Compare Output Mode bits
                    COM0A: u2,
                }),
                ///  Timer/Counter0 Control Register B
                TCCR0B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select bits
                    CS0: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT,
                    },
                    reserved7: u4,
                    ///  Force Output Compare A
                    FOC0A: u1,
                }),
                ///  Timer/Counter0
                TCNT0: u8,
                ///  Timer/Counter0 Output Compare Register A
                OCR0A: u8,
                reserved57: [37]u8,
                ///  Timer/Counter0 Interrupt Mask register
                TIMSK0: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Overflow Interrupt Enable
                    TOIE0: u1,
                    ///  Timer/Counter0 Output Compare Match A Interrupt Enable
                    OCIE0A: u1,
                    padding: u6,
                }),
                reserved129: [71]u8,
                ///  Asynchronous Status Register
                ASSR: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter0 Control Register B Update Busy
                    TCR0BUB: u1,
                    ///  Timer/Counter0 Control Register A Update Busy
                    TCR0AUB: u1,
                    reserved3: u1,
                    ///  Output Compare Register 0A Update Busy
                    OCR0AUB: u1,
                    ///  Timer/Counter0 Update Busy
                    TCN0UB: u1,
                    ///  Asynchronous Timer/Counter0
                    AS0: u1,
                    ///  Enable External Clock Input
                    EXCLK: u1,
                    padding: u1,
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
            pub const TC1 = extern struct {
                ///  Timer/Counter1 Interrupt Flag register
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
                reserved57: [56]u8,
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
                reserved74: [16]u8,
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
                ///  Timer/Counter1 Control Register B
                TCCR1B: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Clock Select bits
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
                ///  Timer/Counter1 Control Register C
                TCCR1C: mmio.Mmio(packed struct(u8) {
                    reserved6: u6,
                    ///  Timer/Counter1 Force Output Compare for Channel B
                    FOC1B: u1,
                    ///  Timer/Counter1 Force Output Compare for Channel A
                    FOC1A: u1,
                }),
                ///  Timer/Counter1 Control Register D
                TCCR1D: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Output Compare U-pin Enable for Channel A
                    OC1AU: u1,
                    ///  Timer/Counter1 Output Compare V-pin Enable for Channel A
                    OC1AV: u1,
                    ///  Timer/Counter1 Output Compare W-pin Enable for Channel A
                    OC1AW: u1,
                    ///  Timer/Counter1 Output Compare X-pin Enable for Channel A
                    OC1AX: u1,
                    ///  Timer/Counter1 Output Compare U-pin Enable for Channel B
                    OC1BU: u1,
                    ///  Timer/Counter1 Output Compare V-pin Enable for Channel B
                    OC1BV: u1,
                    ///  Timer/Counter1 Output Compare W-pin Enable for Channel B
                    OC1BW: u1,
                    ///  Timer/Counter1 Output Compare X-pin Enable for Channel B
                    OC1BX: u1,
                }),
                ///  Timer/Counter1 Bytes
                TCNT1: u16,
                ///  Timer/Counter1 Input Capture Register Bytes
                ICR1: u16,
                ///  Timer/Counter1 Output Compare Register A Bytes
                OCR1A: u16,
                ///  Timer/Counter1 Output Compare Register B Bytes
                OCR1B: u16,
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

        ///  Analog-to-Digital Converter
        pub const ADC = extern struct {
            pub const ANALOG_ADC_V_REF8 = enum(u2) {
                ///  If AREFEN==0 then Internal AVCC as Voltage Reference. If AREFEN==1 then AREF pin as Voltage Reference.
                IF_AREFEN_0_THEN_INTERNAL_AVCC_AS_VOLTAGE_REFERENCE_IF_AREFEN_1_THEN_AREF_PIN_AS_VOLTAGE_REFERENCE = 0x0,
                ///  If AREFEN==0 then Internal 1.1V as Voltage Reference without external capacitor. If AREFEN==1 then Internal 1.1V as Voltage Reference with external capacitor at AREF pin.
                IF_AREFEN_0_THEN_INTERNAL_1_1V_AS_VOLTAGE_REFERENCE_WITHOUT_EXTERNAL_CAPACITOR_IF_AREFEN_1_THEN_INTERNAL_1_1V_AS_VOLTAGE_REFERENCE_WITH_EXTERNAL_CAPACITOR_AT_AREF_PIN = 0x1,
                ///  If AREFEN==0 then Internal AVCC as Voltage Reference. If AREFEN==1 then AREF pin as Voltage Reference.
                IF_AREFEN_0_THEN_INTERNAL_AVCC_AS_VOLTAGE_REFERENCE_IF_AREFEN_1_THEN_AREF_PIN_AS_VOLTAGE_REFERENCE = 0x2,
                ///  If AREFEN==0 then Internal 2.56V as Voltage Reference without external capacitor. If AREFEN==1 then Internal 2.56V as Voltage Reference with external capacitor at AREF pin.
                IF_AREFEN_0_THEN_INTERNAL_2_56V_AS_VOLTAGE_REFERENCE_WITHOUT_EXTERNAL_CAPACITOR_IF_AREFEN_1_THEN_INTERNAL_2_56V_AS_VOLTAGE_REFERENCE_WITH_EXTERNAL_CAPACITOR_AT_AREF_PIN = 0x3,
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

            pub const ANALOG_ADC_AUTO_TRIGGER4 = enum(u3) {
                ///  Free Running mode
                FREE_RUNNING_MODE = 0x0,
                ///  Analog Comparator
                ANALOG_COMPARATOR = 0x1,
                ///  External Interrupt Request 0
                EXTERNAL_INTERRUPT_REQUEST_0 = 0x2,
                ///  Timer/Counter1 Compare Match A
                TIMER_COUNTER1_COMPARE_MATCH_A = 0x3,
                ///  Timer/Counter1 Overflow
                TIMER_COUNTER1_OVERFLOW = 0x4,
                ///  Timer/Counter1 Compare Match B
                TIMER_COUNTER1_COMPARE_MATCH_B = 0x5,
                ///  Timer/Counter1 Capture Event
                TIMER_COUNTER1_CAPTURE_EVENT = 0x6,
                ///  Watchdog Interrupt Request
                WATCHDOG_INTERRUPT_REQUEST = 0x7,
            };

            ///  Analog Miscellaneous Control Register (Shared with CURRENT_SOURCE IO_MODULE)
            AMISCR: mmio.Mmio(packed struct(u8) {
                reserved1: u1,
                ///  Internal Voltage Reference Output Enable
                XREFEN: u1,
                ///  External Voltage Reference Input Enable
                AREFEN: u1,
                padding: u5,
            }),
            ///  ADC Data Register Bytes
            ADC: u16,
            ///  The ADC Control and Status register A
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
            ///  The ADC Control and Status register B (Shared with ANALOG_COMPARATOR IO_MODULE)
            ADCSRB: mmio.Mmio(packed struct(u8) {
                ///  ADC Auto Trigger Source bits
                ADTS: packed union {
                    raw: u3,
                    value: ANALOG_ADC_AUTO_TRIGGER4,
                },
                reserved7: u4,
                ///  Bipolar Input Mode
                BIN: u1,
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
                    value: ANALOG_ADC_V_REF8,
                },
            }),
            reserved7: [1]u8,
            ///  Digital Input Disable Register 0
            DIDR0: mmio.Mmio(packed struct(u8) {
                ADC0D: u1,
                ADC1D: u1,
                ADC2D: u1,
                ADC3D: u1,
                ADC4D: u1,
                ADC5D: u1,
                ADC6D: u1,
                ADC7D: u1,
            }),
            ///  Digital Input Disable Register 1
            DIDR1: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ADC8D: u1,
                ADC9D: u1,
                ADC10D: u1,
                padding: u1,
            }),
        };

        ///  Current Source
        pub const CURRENT_SOURCE = extern struct {
            ///  Analog Miscellaneous Control Register (Shared with AD_CONVERTER IO_MODULE)
            AMISCR: mmio.Mmio(packed struct(u8) {
                ///  Current Source Enable
                ISRCEN: u1,
                padding: u7,
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
                ///  Analog Comparator Internal Reference Select
                ACIRS: u1,
                ///  Analog Comparator Disable
                ACD: u1,
            }),
            reserved43: [42]u8,
            ///  Analog Comparator & ADC Control and Status Register B (Shared with AD_CONVERTER IO_MODULE)
            ADCSRB: mmio.Mmio(packed struct(u8) {
                reserved4: u4,
                ///  Analog Comparator Internal Voltage Reference Select Bits
                ACIR: u2,
                ///  Analog Comparator Multiplexer Enable
                ACME: u1,
                padding: u1,
            }),
        };

        ///  External Interrupts
        pub const EXINT = extern struct {
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

            ///  Pin Change Interrupt Flag Register
            PCIFR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Flags
                PCIF: u2,
                padding: u6,
            }),
            ///  External Interrupt Flag Register
            EIFR: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Flags
                INTF: u2,
                padding: u6,
            }),
            ///  External Interrupt Mask Register
            EIMSK: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Request 1 Enable
                INT: u2,
                padding: u6,
            }),
            reserved45: [42]u8,
            ///  Pin Change Interrupt Control Register
            PCICR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Enable on any PCINT14..8 pin
                PCIE: u2,
                padding: u6,
            }),
            ///  External Interrupt Control Register
            EICRA: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Sense Control 0 Bits
                ISC0: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL2,
                },
                ///  External Interrupt Sense Control 1 Bits
                ISC1: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL2,
                },
                padding: u4,
            }),
            reserved48: [1]u8,
            ///  Pin Change Mask Register 0
            PCMSK0: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Masks
                PCINT: u8,
            }),
            ///  Pin Change Mask Register 1
            PCMSK1: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Masks
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
                ///  Read Fuse and Lock Bits
                RFLB: u1,
                ///  Clear Temporary Page Buffer
                CTPB: u1,
                ///  Signature Row Read
                SIGRD: u1,
                ///  Read While Write Section Busy
                RWWSB: u1,
                padding: u1,
            }),
        };

        ///  CPU Registers
        pub const CPU = extern struct {
            pub const CPU_SLEEP_MODE2 = enum(u2) {
                ///  Idle
                IDLE = 0x0,
                ///  ADC Noise Reduction (If Available)
                ADC = 0x1,
                ///  Power-down
                PDOWN = 0x2,
                ///  Power-save
                PSAVE = 0x3,
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

            pub const CPU_CLK_COMMAND_LIST_4_BITS = enum(u4) {
                ///  No Command
                NO_COMMAND = 0x0,
                ///  Disable Clock Source
                DISABLE_CLOCK_SOURCE = 0x1,
                ///  Enable Clock Source
                ENABLE_CLOCK_SOURCE = 0x2,
                ///  Request for Clock Availability
                REQUEST_FOR_CLOCK_AVAILABILITY = 0x3,
                ///  Clock Source Switch
                CLOCK_SOURCE_SWITCH = 0x4,
                ///  Recovery System Clock Source Code
                RECOVERY_SYSTEM_CLOCK_SOURCE_CODE = 0x5,
                ///  Enable Watchdog in Automatic Reload Mode
                ENABLE_WATCHDOG_IN_AUTOMATIC_RELOAD_MODE = 0x6,
                ///  CKOUT Command
                CKOUT_COMMAND = 0x7,
                ///  From 0x08 up to 0x0F: No command
                FROM_0X08_UP_TO_0X0F_NO_COMMAND = 0x8,
                _,
            };

            ///  Oscillator Calibration Values
            pub const OSCCAL_VALUE_ADDRESSES = enum(u1) {
                ///  8.0 MHz
                @"8_0_MHz" = 0x0,
                _,
            };

            ///  Port Control Register
            PORTCR: mmio.Mmio(packed struct(u8) {
                PUDA: u1,
                PUDB: u1,
                reserved4: u2,
                BBMA: u1,
                BBMB: u1,
                padding: u2,
            }),
            reserved12: [11]u8,
            ///  General purpose register 0
            GPIOR0: u8,
            reserved24: [11]u8,
            ///  General Purpose register 1
            GPIOR1: u8,
            ///  General Purpose IO register 2
            GPIOR2: u8,
            reserved31: [5]u8,
            ///  DebugWire data register
            DWDR: u8,
            reserved33: [1]u8,
            ///  Sleep Mode Control Register
            SMCR: mmio.Mmio(packed struct(u8) {
                ///  Sleep Enable
                SE: u1,
                ///  Sleep Mode Select Bits
                SM: packed union {
                    raw: u2,
                    value: CPU_SLEEP_MODE2,
                },
                padding: u5,
            }),
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
                reserved4: u4,
                ///  Pull-up Disable
                PUD: u1,
                ///  BOD Sleep Enable
                BODSE: u1,
                ///  BOD Sleep
                BODS: u1,
                padding: u1,
            }),
            reserved43: [7]u8,
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
            reserved47: [1]u8,
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
            ///  Clock Control & Status Register
            CLKCSR: mmio.Mmio(packed struct(u8) {
                ///  Clock Control bits
                CLKC: packed union {
                    raw: u4,
                    value: CPU_CLK_COMMAND_LIST_4_BITS,
                },
                ///  Clock Ready Flag
                CLKRDY: u1,
                reserved7: u2,
                ///  Clock Control Change Enable
                CLKCCE: u1,
            }),
            ///  Clock Selection Register
            CLKSELR: mmio.Mmio(packed struct(u8) {
                ///  Clock Source Select bit 3 - CKSEL3 fuse substitution
                CSEL: u4,
                ///  Clock Start-up Time bit 1 - SUT1 fuse substitution
                CSUT: u2,
                ///  Clock Out - CKOUT fuse substitution
                COUT: u1,
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
                ///  Power Reduction SPI
                PRSPI: u1,
                ///  Power Reduction LINUART
                PRLIN: u1,
                padding: u2,
            }),
            reserved52: [1]u8,
            ///  Oscillator Calibration Register
            OSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Calibration
                OSCCAL: u8,
            }),
        };
    };
};
