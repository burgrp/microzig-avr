const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATmega406 = struct {
        pub const properties = struct {
            pub const family = "megaAVR";
            pub const arch = "AVR8";
        };

        pub const VectorTable = extern struct {
            const Handler = micro.interrupt.Handler;
            const unhandled = micro.interrupt.unhandled;

            RESET: Handler = unhandled,
            ///  Battery Protection Interrupt
            BPINT: Handler = unhandled,
            ///  External Interrupt Request 0
            INT0: Handler = unhandled,
            ///  External Interrupt Request 1
            INT1: Handler = unhandled,
            ///  External Interrupt Request 2
            INT2: Handler = unhandled,
            ///  External Interrupt Request 3
            INT3: Handler = unhandled,
            ///  Pin Change Interrupt 0
            PCINT0: Handler = unhandled,
            ///  Pin Change Interrupt 1
            PCINT1: Handler = unhandled,
            ///  Watchdog Timeout Interrupt
            WDT: Handler = unhandled,
            ///  Wakeup timer overflow
            WAKE_UP: Handler = unhandled,
            ///  Timer/Counter 1 Compare Match
            TIM1_COMP: Handler = unhandled,
            ///  Timer/Counter 1 Overflow
            TIM1_OVF: Handler = unhandled,
            ///  Timer/Counter0 Compare A Match
            TIM0_COMPA: Handler = unhandled,
            ///  Timer/Counter0 Compare B Match
            TIM0_COMPB: Handler = unhandled,
            ///  Timer/Counter0 Overflow
            TIM0_OVF: Handler = unhandled,
            ///  Two-Wire Bus Connect/Disconnect
            TWI_BUS_CD: Handler = unhandled,
            ///  Two-Wire Serial Interface
            TWI: Handler = unhandled,
            ///  Voltage ADC Conversion Complete
            VADC: Handler = unhandled,
            ///  Coulomb Counter ADC Conversion Complete
            CCADC_CONV: Handler = unhandled,
            ///  Coloumb Counter ADC Regular Current
            CCADC_REG_CUR: Handler = unhandled,
            ///  Coloumb Counter ADC Accumulator
            CCADC_ACC: Handler = unhandled,
            ///  EEPROM Ready
            EE_READY: Handler = unhandled,
            ///  Store Program Memory Ready
            SPM_READY: Handler = unhandled,
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
            pub const PORTC = @intToPtr(*volatile types.peripherals.PORT.PORTC, 0x28);
            ///  I/O Port
            pub const PORTD = @intToPtr(*volatile types.peripherals.PORT.PORTD, 0x29);
            ///  Timer/Counter, 8-bit
            pub const TC0 = @intToPtr(*volatile types.peripherals.TC8.TC0, 0x35);
            ///  Timer/Counter, 16-bit
            pub const TC1 = @intToPtr(*volatile types.peripherals.TC16.TC1, 0x36);
            ///  External Interrupts
            pub const EXINT = @intToPtr(*volatile types.peripherals.EXINT, 0x3b);
            ///  CPU Registers
            pub const CPU = @intToPtr(*volatile types.peripherals.CPU, 0x3e);
            ///  EEPROM
            pub const EEPROM = @intToPtr(*volatile types.peripherals.EEPROM, 0x3f);
            ///  Bootloader
            pub const BOOT_LOAD = @intToPtr(*volatile types.peripherals.BOOT_LOAD, 0x57);
            ///  Watchdog Timer
            pub const WDT = @intToPtr(*volatile types.peripherals.WDT, 0x60);
            ///  Wakeup Timer
            pub const WAKEUP_TIMER = @intToPtr(*volatile types.peripherals.WAKEUP_TIMER, 0x62);
            ///  Analog-to-Digital Converter
            pub const ADC = @intToPtr(*volatile types.peripherals.ADC, 0x78);
            ///  Two Wire Serial Interface
            pub const TWI = @intToPtr(*volatile types.peripherals.TWI, 0xb8);
            ///  Bandgap
            pub const BANDGAP = @intToPtr(*volatile types.peripherals.BANDGAP, 0xd0);
            ///  Coulomb Counter
            pub const COULOMB_COUNTER = @intToPtr(*volatile types.peripherals.COULOMB_COUNTER, 0xe0);
            ///  FET Control
            pub const FET = @intToPtr(*volatile types.peripherals.FET, 0xf0);
            ///  Cell Balancing
            pub const CELL_BALANCING = @intToPtr(*volatile types.peripherals.CELL_BALANCING, 0xf1);
            ///  Battery Protection
            pub const BATTERY_PROTECTION = @intToPtr(*volatile types.peripherals.BATTERY_PROTECTION, 0xf2);
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_BOOTSZ = enum(u2) {
                ///  Boot Flash size=256 words Boot address=$4F00
                @"256W_4F00" = 0x3,
                ///  Boot Flash size=512 words Boot address=$4E00
                @"512W_4E00" = 0x2,
                ///  Boot Flash size=1024 words Boot address=$4C00
                @"1024W_4C00" = 0x1,
                ///  Boot Flash size=2048 words Boot address=$4800
                @"2048W_4800" = 0x0,
            };

            pub const ENUM_SUT_CKSEL = enum(u3) {
                ///  Start-up time: 14 CK + 0 ms
                @"14CK_0MS" = 0x0,
                ///  Start-up time: 14 CK + 3.9 ms
                @"14CK_3MS9" = 0x2,
                ///  Start-up time: 14 CK + 62.5 ms
                @"14CK_62MS5" = 0x4,
                ///  Start-up time: 14 CK + 0 ms
                @"14CK_0MS" = 0x1,
                ///  Start-up time: 14 CK + 3.9 ms
                @"14CK_3MS9" = 0x3,
                ///  Start-up time: 14 CK + 62.5 ms
                @"14CK_62MS5" = 0x5,
                _,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Clock Selection
                SUT_CKSEL: packed union {
                    raw: u3,
                    value: ENUM_SUT_CKSEL,
                },
                ///  Boot Reset vector Enabled
                BOOTRST: u1,
                ///  Select boot size
                BOOTSZ: packed union {
                    raw: u2,
                    value: ENUM_BOOTSZ,
                },
                ///  Preserve EEPROM through the Chip Erase cycle
                EESAVE: u1,
                ///  Watchdog timer always on
                WDTON: u1,
            }),
            HIGH: mmio.Mmio(packed struct(u8) {
                ///  JTAG Interface Enabled
                JTAGEN: u1,
                ///  On-Chip Debug Enabled
                OCDEN: u1,
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

        ///  Analog-to-Digital Converter
        pub const ADC = extern struct {
            ///  VADC Data Register Bytes
            VADC: u16,
            ///  The VADC Control and Status register
            VADCSR: mmio.Mmio(packed struct(u8) {
                ///  VADC Conversion Complete Interrupt Enable
                VADCCIE: u1,
                ///  VADC Conversion Complete Interrupt Flag
                VADCCIF: u1,
                ///  VADC Satrt Conversion
                VADSC: u1,
                ///  VADC Enable
                VADEN: u1,
                padding: u4,
            }),
            reserved4: [1]u8,
            ///  The VADC multiplexer Selection Register
            VADMUX: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel and Gain Selection Bits
                VADMUX: u4,
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

            ///  Pin Change Interrupt Flag Register
            PCIFR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Flags
                PCIF: u2,
                padding: u6,
            }),
            ///  External Interrupt Flag Register
            EIFR: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Flags
                INTF: u4,
                padding: u4,
            }),
            ///  External Interrupt Mask Register
            EIMSK: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Request 1 Enable
                INT: u4,
                padding: u4,
            }),
            reserved45: [42]u8,
            ///  Pin Change Interrupt Control Register
            PCICR: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Interrupt Enables
                PCIE: u2,
                padding: u6,
            }),
            ///  External Interrupt Control Register
            EICRA: mmio.Mmio(packed struct(u8) {
                ///  External Interrupt Sense Control 0 Bits
                ISC0: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt Sense Control 1 Bits
                ISC1: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt Sense Control 2 Bits
                ISC2: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
                ///  External Interrupt Sense Control 3 Bits
                ISC3: packed union {
                    raw: u2,
                    value: INTERRUPT_SENSE_CONTROL,
                },
            }),
            reserved48: [1]u8,
            ///  Pin Change Enable Mask Register 0
            PCMSK0: u8,
            ///  Pin Change Enable Mask Register 1
            PCMSK1: u8,
        };

        ///  Timer/Counter, 16-bit
        pub const TC16 = struct {
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

            ///  Timer/Counter, 16-bit
            pub const TC1 = extern struct {
                ///  Timer/Counter Interrupt Flag register
                TIFR1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Flag
                    TOV1: u1,
                    ///  Timer/Counter1 Output Compare Flag A
                    OCF1A: u1,
                    padding: u6,
                }),
                reserved13: [12]u8,
                ///  General Timer/Counter Control Register
                GTCCR: mmio.Mmio(packed struct(u8) {
                    ///  Prescaler Reset
                    PSRSYNC: u1,
                    reserved7: u6,
                    ///  Timer/Counter Synchronization Mode
                    TSM: u1,
                }),
                reserved57: [43]u8,
                ///  Timer/Counter Interrupt Mask Register
                TIMSK1: mmio.Mmio(packed struct(u8) {
                    ///  Timer/Counter1 Overflow Interrupt Enable
                    TOIE1: u1,
                    ///  Timer/Counter1 Output Compare Interrupt Enable
                    OCIE1A: u1,
                    padding: u6,
                }),
                reserved75: [17]u8,
                ///  Timer/Counter1 Control Register B
                TCCR1B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select1 bits
                    CS1: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT,
                    },
                    ///  Clear Timer/Counter on Compare Match
                    CTC1: u1,
                    padding: u4,
                }),
                reserved78: [2]u8,
                ///  Timer Counter 1 Bytes
                TCNT1: u16,
                reserved82: [2]u8,
                ///  Output Compare Register 1A Low byte
                OCR1AL: u8,
                ///  Output Compare Register 1A High byte
                OCR1AH: u8,
            };
        };

        ///  Wakeup Timer
        pub const WAKEUP_TIMER = extern struct {
            pub const CLK_SEL_3BIT_ONLY_PRESCALE = enum(u3) {
                ///  4K(Slow RC) / 1K (32kHz)
                @"4K_SLOW_RC_1K_32KHZ" = 0x0,
                ///  8K(Slow RC) / 2K (32kHz)
                @"8K_SLOW_RC_2K_32KHZ" = 0x1,
                ///  16K(Slow RC) / 4K (32kHz)
                @"16K_SLOW_RC_4K_32KHZ" = 0x2,
                ///  32K(Slow RC) / 8K (32kHz)
                @"32K_SLOW_RC_8K_32KHZ" = 0x3,
                ///  64K(Slow RC) / 16K (32kHz)
                @"64K_SLOW_RC_16K_32KHZ" = 0x4,
                ///  128K(Slow RC) / 32K (32kHz)
                @"128K_SLOW_RC_32K_32KHZ" = 0x5,
                ///  256K(Slow RC) / 64K (32kHz)
                @"256K_SLOW_RC_64K_32KHZ" = 0x6,
                ///  512K(Slow RC) / 128K (32kHz)
                @"512K_SLOW_RC_128K_32KHZ" = 0x7,
            };

            ///  Wake-up Timer Control Register
            WUTCSR: mmio.Mmio(packed struct(u8) {
                ///  Wake-up Timer Prescaler Bits
                WUTP: packed union {
                    raw: u3,
                    value: CLK_SEL_3BIT_ONLY_PRESCALE,
                },
                ///  Wake-up Timer Enable
                WUTE: u1,
                ///  Wake-up Timer Reset
                WUTR: u1,
                ///  Wake-up timer Calibration Flag
                WUTCF: u1,
                ///  Wake-up Timer Interrupt Enable
                WUTIE: u1,
                ///  Wake-up Timer Interrupt Flag
                WUTIF: u1,
            }),
        };

        ///  Battery Protection
        pub const BATTERY_PROTECTION = extern struct {
            pub const BAT_SHORT_CIRC_DELAY = enum(u4) {
                ///  61 us
                @"61_US" = 0x0,
                ///  122 us
                @"122_US" = 0x1,
                ///  183 us
                @"183_US" = 0x2,
                ///  244 us
                @"244_US" = 0x3,
                ///  305 us
                @"305_US" = 0x4,
                ///  366 us
                @"366_US" = 0x5,
                ///  427 us
                @"427_US" = 0x6,
                ///  488 us
                @"488_US" = 0x7,
                ///  610 us
                @"610_US" = 0x8,
                ///  732 us
                @"732_US" = 0x9,
                ///  854 us
                @"854_US" = 0xa,
                ///  976 us
                @"976_US" = 0xb,
                ///  1098 us
                @"1098_US" = 0xc,
                ///  1220 us
                @"1220_US" = 0xd,
                ///  1342 us
                @"1342_US" = 0xe,
                ///  1464 us
                @"1464_US" = 0xf,
            };

            pub const BAT_OVER_CURRENT_DELAY = enum(u4) {
                ///  1 ms
                @"1_MS" = 0x0,
                ///  2 ms
                @"2_MS" = 0x1,
                ///  4 ms
                @"4_MS" = 0x2,
                ///  6 ms
                @"6_MS" = 0x3,
                ///  8 ms
                @"8_MS" = 0x4,
                ///  10 ms
                @"10_MS" = 0x5,
                ///  12 ms
                @"12_MS" = 0x6,
                ///  14 ms
                @"14_MS" = 0x7,
                ///  16 ms
                @"16_MS" = 0x8,
                ///  18 ms
                @"18_MS" = 0x9,
                ///  20 ms
                @"20_MS" = 0xa,
                ///  22 ms
                @"22_MS" = 0xb,
                ///  24 ms
                @"24_MS" = 0xc,
                ///  26 ms
                @"26_MS" = 0xd,
                ///  28 ms
                @"28_MS" = 0xe,
                ///  30 ms
                @"30_MS" = 0xf,
            };

            pub const BAT_VOLT_SENSE = enum(u4) {
                ///  0.050V
                @"0_050V" = 0x0,
                ///  0.055V
                @"0_055V" = 0x1,
                ///  0.060V
                @"0_060V" = 0x2,
                ///  0.065V
                @"0_065V" = 0x3,
                ///  0.070V
                @"0_070V" = 0x4,
                ///  0.080V
                @"0_080V" = 0x5,
                ///  0.090V
                @"0_090V" = 0x6,
                ///  0.100V
                @"0_100V" = 0x7,
                ///  0.110V
                @"0_110V" = 0x8,
                ///  0.120V
                @"0_120V" = 0x9,
                ///  0.130V
                @"0_130V" = 0xa,
                ///  0.140V
                @"0_140V" = 0xb,
                ///  0.160V
                @"0_160V" = 0xc,
                ///  0.180V
                @"0_180V" = 0xd,
                ///  0.200V
                @"0_200V" = 0xe,
                ///  0.220V
                @"0_220V" = 0xf,
            };

            pub const BAT_VOLT_SENSE2 = enum(u4) {
                ///  0.100V
                @"0_100V" = 0x0,
                ///  0.110V
                @"0_110V" = 0x1,
                ///  0.120V
                @"0_120V" = 0x2,
                ///  0.130V
                @"0_130V" = 0x3,
                ///  0.140V
                @"0_140V" = 0x4,
                ///  0.160V
                @"0_160V" = 0x5,
                ///  0.180V
                @"0_180V" = 0x6,
                ///  0.200V
                @"0_200V" = 0x7,
                ///  0.220V
                @"0_220V" = 0x8,
                ///  0.240V
                @"0_240V" = 0x9,
                ///  0.260V
                @"0_260V" = 0xa,
                ///  0.280V
                @"0_280V" = 0xb,
                ///  0.320V
                @"0_320V" = 0xc,
                ///  0.360V
                @"0_360V" = 0xd,
                ///  0.400V
                @"0_400V" = 0xe,
                ///  0.440V
                @"0_440V" = 0xf,
            };

            pub const BAT_DEEP_UNDER_DELAY = enum(u2) {
                ///  750ms
                @"750MS" = 0x0,
                ///  1000ms
                @"1000MS" = 0x1,
                ///  1250ms
                @"1250MS" = 0x2,
                ///  1500ms
                @"1500MS" = 0x3,
            };

            pub const BAT_DEEP_UNDER_LEVEL = enum(u4) {
                ///  4.71V
                @"4_71V" = 0x0,
                ///  5.03V
                @"5_03V" = 0x1,
                ///  5.34V
                @"5_34V" = 0x2,
                ///  5.66V
                @"5_66V" = 0x3,
                ///  5.97V
                @"5_97V" = 0x4,
                ///  6.29V
                @"6_29V" = 0x5,
                ///  6.60V
                @"6_60V" = 0x6,
                ///  6.91V
                @"6_91V" = 0x7,
                ///  7.23V
                @"7_23V" = 0x8,
                ///  7.54V
                @"7_54V" = 0x9,
                ///  7.86V
                @"7_86V" = 0xa,
                ///  8.17V
                @"8_17V" = 0xb,
                ///  8.49V
                @"8_49V" = 0xc,
                ///  8.80V
                @"8_80V" = 0xd,
                ///  9.11V
                @"9_11V" = 0xe,
                ///  9.43V
                @"9_43V" = 0xf,
            };

            ///  Battery Protection Interrupt Register
            BPIR: mmio.Mmio(packed struct(u8) {
                SCIE: u1,
                DOCIE: u1,
                COCIE: u1,
                ///  Deep Under-voltage Early Warning Interrupt Enable
                DUVIE: u1,
                SCIF: u1,
                DOCIF: u1,
                ///  Charge Over-current Protection Activated Interrupt Flag
                COCIF: u1,
                ///  Deep Under-voltage Early Warning Interrupt Flag
                DUVIF: u1,
            }),
            ///  Battery Protection Deep Under Voltage Register
            BPDUV: mmio.Mmio(packed struct(u8) {
                DUDL: packed union {
                    raw: u4,
                    value: BAT_DEEP_UNDER_LEVEL,
                },
                DUVT: packed union {
                    raw: u2,
                    value: BAT_DEEP_UNDER_DELAY,
                },
                padding: u2,
            }),
            ///  Battery Protection Short-Circuit Detection Level Register
            BPSCD: mmio.Mmio(packed struct(u8) {
                SCDL: packed union {
                    raw: u4,
                    value: BAT_VOLT_SENSE2,
                },
                padding: u4,
            }),
            ///  Battery Protection OverCurrent Detection Level Register
            BPOCD: mmio.Mmio(packed struct(u8) {
                CCDL: packed union {
                    raw: u4,
                    value: BAT_VOLT_SENSE,
                },
                DCDL: packed union {
                    raw: u4,
                    value: BAT_VOLT_SENSE,
                },
            }),
            ///  Current Battery Protection Timing Register
            CBPTR: mmio.Mmio(packed struct(u8) {
                OCPT: packed union {
                    raw: u4,
                    value: BAT_OVER_CURRENT_DELAY,
                },
                SCPT: packed union {
                    raw: u4,
                    value: BAT_SHORT_CIRC_DELAY,
                },
            }),
            ///  Battery Protection Control Register
            BPCR: mmio.Mmio(packed struct(u8) {
                CCD: u1,
                DCD: u1,
                SCD: u1,
                DUVD: u1,
                padding: u4,
            }),
            ///  Battery Protection Parameter Lock Register
            BPPLR: mmio.Mmio(packed struct(u8) {
                ///  Battery Protection Parameter Lock
                BPPL: u1,
                ///  Battery Protection Parameter Lock Enable
                BPPLE: u1,
                padding: u6,
            }),
        };

        ///  FET Control
        pub const FET = extern struct {
            FCSR: mmio.Mmio(packed struct(u8) {
                ///  Precharge FET disable
                PFD: u1,
                ///  Charge FET Enable
                CFE: u1,
                ///  Discharge FET Enable
                DFE: u1,
                ///  Current Protection Status
                CPS: u1,
                ///  Pulse Width Modulation Modulation of OPC output
                PWMOPC: u1,
                ///  Pulse Width Modulation of OC output
                PWMOC: u1,
                padding: u2,
            }),
        };

        ///  Coulomb Counter
        pub const COULOMB_COUNTER = extern struct {
            pub const ANALOG_CADA_ACC_TIME = enum(u2) {
                ///  125ms
                @"125MS" = 0x0,
                ///  250ms
                @"250MS" = 0x1,
                ///  500ms
                @"500MS" = 0x2,
                ///  1000ms
                @"1000MS" = 0x3,
            };

            ///  ADC Accumulate Current
            CADAC0: u8,
            ///  ADC Accumulate Current
            CADAC1: u8,
            ///  ADC Accumulate Current
            CADAC2: u8,
            ///  ADC Accumulate Current
            CADAC3: u8,
            ///  CC-ADC Control and Status Register A
            CADCSRA: mmio.Mmio(packed struct(u8) {
                ///  When the CADSE bit is written to one, the ongoing CC-ADC conversion is aborted, and the CC-ADC enters Regular Current detection mode.
                CADSE: u1,
                ///  The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
                CADSI: packed union {
                    raw: u2,
                    value: ANALOG_CADA_ACC_TIME,
                },
                ///  CC_ADC Accumulate Current Select Bits
                CADAS: packed union {
                    raw: u2,
                    value: ANALOG_CADA_ACC_TIME,
                },
                ///  CC_ADC Update Busy
                CADUB: u1,
                reserved7: u1,
                ///  When the CADEN bit is cleared (zero), the CC-ADC is disabled. When the CADEN bit is set (one), the CC-ADC will continuously measure the voltage drop over the external sense resistor RSENSE. In Power-down, only the Regular Current detection is active. In Power-off, the CC-ADC is always disabled.
                CADEN: u1,
            }),
            ///  CC-ADC Control and Status Register B
            CADCSRB: mmio.Mmio(packed struct(u8) {
                ///  CC-ADC Instantaneous Current Interrupt Flag
                CADICIF: u1,
                ///  CC-ADC Accumulate Current Interrupt Flag
                CADRCIF: u1,
                ///  CC-ADC Accumulate Current Interrupt Flag
                CADACIF: u1,
                reserved4: u1,
                ///  CAD Instantenous Current Interrupt Enable
                CADICIE: u1,
                ///  Regular Current Interrupt Enable
                CADRCIE: u1,
                CADACIE: u1,
                padding: u1,
            }),
            ///  CC-ADC Regular Charge Current
            CADRCC: u8,
            ///  CC-ADC Regular Discharge Current
            CADRDC: u8,
            ///  CC-ADC Instantaneous Current
            CADIC: u16,
        };

        ///  Cell Balancing
        pub const CELL_BALANCING = extern struct {
            ///  Cell Balancing Control Register
            CBCR: mmio.Mmio(packed struct(u8) {
                ///  Cell Balancing Enables
                CBE: u4,
                padding: u4,
            }),
        };

        ///  CPU Registers
        pub const CPU = extern struct {
            pub const CPU_SLEEP_MODE_3BITS3 = enum(u3) {
                ///  Idle
                IDLE = 0x0,
                ///  ADC Noise Reduction (If Available)
                ADC = 0x1,
                ///  Power Down
                PDOWN = 0x2,
                ///  Power Save
                PSAVE = 0x3,
                ///  Power Off
                POFF = 0x4,
                ///  Reserved
                VAL_0x05 = 0x5,
                ///  Reserved
                VAL_0x06 = 0x6,
                ///  Reserved
                VAL_0x07 = 0x7,
            };

            ///  General Purpose IO Register 0
            GPIOR0: u8,
            reserved12: [11]u8,
            ///  General Purpose IO Register 1
            GPIOR1: u8,
            ///  General Purpose IO Register 2
            GPIOR2: u8,
            reserved21: [7]u8,
            ///  Sleep Mode Control Register
            SMCR: mmio.Mmio(packed struct(u8) {
                ///  Sleep Enable
                SE: u1,
                ///  Sleep Mode Select bits
                SM: packed union {
                    raw: u3,
                    value: CPU_SLEEP_MODE_3BITS3,
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
                BODRF: u1,
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
                ///  JTAG Disable
                JTD: u1,
            }),
            reserved31: [7]u8,
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
            reserved38: [4]u8,
            ///  Power Reduction Register 0
            PRR0: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction V-ADC
                PRVADC: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                ///  Power Reduction TWI
                PRTWI: u1,
                padding: u4,
            }),
            reserved40: [1]u8,
            ///  Fast Oscillator Calibration Value
            FOSCCAL: u8,
            reserved64: [23]u8,
            ///  Digital Input Disable Register
            DIDR0: u8,
            reserved130: [65]u8,
            ///  Clock Control and Status Register
            CCSR: mmio.Mmio(packed struct(u8) {
                ///  Asynchronous Clock Select
                ACS: u1,
                ///  32 kHz Crystal Oscillator Enable
                XOE: u1,
                padding: u6,
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
                ///  Timer/Counter Interrupt Flag register
                TIFR0: mmio.Mmio(packed struct(u8) {
                    ///  Overflow Flag
                    TOV0: u1,
                    ///  Output Compare Flag
                    OCF0A: u1,
                    ///  Output Compare Flag
                    OCF0B: u1,
                    padding: u5,
                }),
                reserved15: [14]u8,
                ///  Timer/Counter0 Control Register
                TCCR0A: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select0 bits
                    WGM0: u2,
                    reserved4: u2,
                    COM0B: u2,
                    ///  Force Output Compare
                    COM0A: u2,
                }),
                ///  Timer/Counter0 Control Register
                TCCR0B: mmio.Mmio(packed struct(u8) {
                    ///  Clock Select0 bits
                    CS0: packed union {
                        raw: u3,
                        value: CLK_SEL_3BIT_EXT,
                    },
                    WGM02: u1,
                    reserved6: u2,
                    ///  Waveform Generation Mode
                    FOC0B: u1,
                    ///  Force Output Compare
                    FOC0A: u1,
                }),
                ///  Timer Counter 0
                TCNT0: u8,
                ///  Output compare Register A
                OCR0A: mmio.Mmio(packed struct(u8) {
                    OCR0A: u8,
                }),
                ///  Output compare Register B
                OCR0B: mmio.Mmio(packed struct(u8) {
                    OCR0B: u8,
                }),
                reserved57: [37]u8,
                ///  Timer/Counter Interrupt Mask Register
                TIMSK0: mmio.Mmio(packed struct(u8) {
                    ///  Overflow Interrupt Enable
                    TOIE0: u1,
                    ///  Output Compare Interrupt Enable
                    OCIE0A: u1,
                    ///  Output Compare Interrupt Enable
                    OCIE0B: u1,
                    padding: u5,
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
                ///  Port C Data Register
                PORTC: u8,
            };

            ///  I/O Port
            pub const PORTD = extern struct {
                ///  Input Pins, Port D
                PIND: u8,
                ///  Data Direction Register, Port D
                DDRD: u8,
                ///  Data Register, Port D
                PORTD: u8,
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

        ///  Two Wire Serial Interface
        pub const TWI = extern struct {
            pub const COMM_TW_BUS_TIMEOUT = enum(u2) {
                ///  250ms
                @"250MS" = 0x0,
                ///  500ms
                @"500MS" = 0x1,
                ///  1000ms
                @"1000MS" = 0x2,
                ///  2000ms
                @"2000MS" = 0x3,
            };

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
            ///  TWI Bus Control and Status Register
            TWBCSR: mmio.Mmio(packed struct(u8) {
                ///  TWI Bus Connect/Disconnect Interrupt Polarity
                TWBCIP: u1,
                ///  TWI Bus Disconnect Time-out Period
                TWBDT: packed union {
                    raw: u2,
                    value: COMM_TW_BUS_TIMEOUT,
                },
                reserved6: u3,
                ///  TWI Bus Connect/Disconnect Interrupt Enable
                TWBCIE: u1,
                ///  TWI Bus Connect/Disconnect Interrupt Flag
                TWBCIF: u1,
            }),
        };

        ///  Bandgap
        pub const BANDGAP = extern struct {
            ///  Bandgap Calibration Register
            BGCCR: mmio.Mmio(packed struct(u8) {
                ///  BG Calibration of PTAT Current Bits
                BGCC: u6,
                reserved7: u1,
                ///  Setting the BGD bit to one will disable the bandgap voltage reference. This bit must be cleared before enabling CC-ADC or V-ADC, and must remain unset while either ADC is enabled.
                BGD: u1,
            }),
            ///  Bandgap Calibration of Resistor Ladder
            BGCRR: u8,
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
                ///  EEPROM Programming Enable
                EEPE: u1,
                ///  EEPROM Master Programming Enable
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
    };
};
