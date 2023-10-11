const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATmega64HVE2 = struct {
        pub const properties = struct {
            pub const family = "megaAVR";
            pub const arch = "AVR8";
        };

        pub const VectorTable = extern struct {
            const Handler = micro.interrupt.Handler;
            const unhandled = micro.interrupt.unhandled;

            RESET: Handler = unhandled,
            ///  External Interrupt 0
            INT0: Handler = unhandled,
            ///  Pin Change Interrupt 0
            PCINT0: Handler = unhandled,
            ///  Pin Change Interrupt 1
            PCINT1: Handler = unhandled,
            ///  Watchdog Timeout Interrupt
            WDT: Handler = unhandled,
            ///  Wakeup Timer Overflow
            WAKEUP: Handler = unhandled,
            ///  Timer 1 Input capture
            TIMER1_IC: Handler = unhandled,
            ///  Timer 1 Compare Match A
            TIMER1_COMPA: Handler = unhandled,
            ///  Timer 1 Compare Match B
            TIMER1_COMPB: Handler = unhandled,
            ///  Timer 1 overflow
            TIMER1_OVF: Handler = unhandled,
            ///  Timer 0 Input Capture
            TIMER0_IC: Handler = unhandled,
            ///  Timer 0 Comapre Match A
            TIMER0_COMPA: Handler = unhandled,
            ///  Timer 0 Compare Match B
            TIMER0_COMPB: Handler = unhandled,
            ///  Timer 0 Overflow
            TIMER0_OVF: Handler = unhandled,
            ///  LIN Status Interrupt
            LIN_STATUS: Handler = unhandled,
            ///  LIN Error Interrupt
            LIN_ERROR: Handler = unhandled,
            ///  SPI Serial transfer complete
            SPI_STC: Handler = unhandled,
            ///  Voltage ADC Instantaneous Conversion Complete
            VADC_CONV: Handler = unhandled,
            ///  Voltage ADC Accumulated Conversion Complete
            VADC_ACC: Handler = unhandled,
            ///  C-ADC Instantaneous Conversion Complete
            CADC_CONV: Handler = unhandled,
            ///  C-ADC Regular Current
            CADC_REG_CUR: Handler = unhandled,
            ///  C-ADC Accumulated Conversion Complete
            CADC_ACC: Handler = unhandled,
            ///  EEPROM Ready
            EE_READY: Handler = unhandled,
            ///  SPM Ready
            SPM: Handler = unhandled,
            ///  PLL Lock Change Interrupt
            PLL: Handler = unhandled,
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
            ///  Timer/Counter, 16-bit
            pub const TC0 = @as(*volatile types.peripherals.TC16.TC0, @ptrFromInt(0x35));
            ///  Timer/Counter, 16-bit
            pub const TC1 = @as(*volatile types.peripherals.TC16.TC1, @ptrFromInt(0x36));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x3b));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x3e));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3f));
            ///  Serial Peripheral Interface
            pub const SPI = @as(*volatile types.peripherals.SPI, @ptrFromInt(0x4c));
            ///  Bootloader
            pub const BOOT_LOAD = @as(*volatile types.peripherals.BOOT_LOAD, @ptrFromInt(0x57));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x60));
            ///  Wakeup Timer
            pub const WAKEUP_TIMER = @as(*volatile types.peripherals.WAKEUP_TIMER, @ptrFromInt(0x62));
            ///  Local Interconnect Network
            pub const LINUART = @as(*volatile types.peripherals.LINUART, @ptrFromInt(0xc0));
            ///  Bandgap
            pub const BANDGAP = @as(*volatile types.peripherals.BANDGAP, @ptrFromInt(0xd1));
            ///  Analog-to-Digital Converter
            pub const ADC = @as(*volatile types.peripherals.ADC, @ptrFromInt(0xe0));
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_SUT = enum(u2) {
                ///  Start-up time 14 CK + 0 ms
                @"14CK_0MS" = 0x0,
                ///  Start-up time 14 CK + 16 ms
                @"14CK_16MS" = 0x1,
                ///  Start-up time 14 CK + 32 ms
                @"14CK_32MS" = 0x2,
                ///  Start-up time 14 CK + 64 ms
                @"14CK_64MS" = 0x3,
            };

            pub const ENUM_BOOTSZ = enum(u2) {
                ///  Boot Flash size=512 words Boot address=$7E00
                @"512W_7E00" = 0x3,
                ///  Boot Flash size=1024 words Boot address=$7C00
                @"1024W_7C00" = 0x2,
                ///  Boot Flash size=2048 words Boot address=$7800
                @"2048W_7800" = 0x1,
                ///  Boot Flash size=4096 words Boot address=$7000
                @"4096W_7000" = 0x0,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Oscillator select
                OSCSEL0: u1,
                ///  Select start-up time
                SUT: packed union {
                    raw: u2,
                    value: ENUM_SUT,
                },
                ///  Divide clock by 8
                CKDIV8: u1,
                ///  Brown-out detection enabled
                BODEN: u1,
                ///  Serial program downloading (SPI) enabled
                SPIEN: u1,
                ///  Preserve EEPROM through the Chip Erase cycle
                EESAVE: u1,
                ///  Watch-dog Timer always on
                WDTON: u1,
            }),
            HIGH: mmio.Mmio(packed struct(u8) {
                ///  Boot Reset vector Enabled
                BOOTRST: u1,
                ///  Select Boot Size
                BOOTSZ: packed union {
                    raw: u2,
                    value: ENUM_BOOTSZ,
                },
                ///  Debug Wire enable
                DWEN: u1,
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
                ///  EEProm Ready Interrupt Enable
                EERIE: u1,
                EEPM: packed union {
                    raw: u2,
                    value: EEP_MODE,
                },
                padding: u2,
            }),
            ///  EEPROM Data Register
            EEDR: u8,
            ///  EEPROM Read/Write Access
            EEAR: u16,
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
                reserved185: [182]u8,
                ///  Port B Override
                PBOV: mmio.Mmio(packed struct(u8) {
                    ///  Port B Override Enable 0
                    PBOE0: u1,
                    reserved3: u2,
                    ///  Port B Override Enable 3
                    PBOE3: u1,
                    reserved7: u3,
                    ///  Port B Override Change Enable
                    PBOVCE: u1,
                }),
            };

            ///  I/O Port
            pub const PORTA = extern struct {
                ///  Port A Input Pins
                PINA: u8,
                ///  Port A Data Direction Register
                DDRA: u8,
                ///  Port A Data Register
                PORTA: u8,
            };
        };

        ///  Bootloader
        pub const BOOT_LOAD = extern struct {
            ///  Store Program Memory Control and Status Register
            SPMCSR: mmio.Mmio(packed struct(u8) {
                ///  Store Program Memory Enable
                SPMEN: u1,
                ///  Page Erase
                PGERS: u1,
                ///  Page Write
                PGWRT: u1,
                ///  Lock Bit Set
                LBSET: u1,
                ///  Read-While-Write Section Read Enable
                RWWSRE: u1,
                ///  Signature Row Read
                SIGRD: u1,
                ///  Read-While-Write Section Busy
                RWWSB: u1,
                ///  SPM Interrupt Enable
                SPMIE: u1,
            }),
        };

        ///  Analog-to-Digital Converter
        pub const ADC = extern struct {
            pub const SYNCHRONIZATION_COMMAND = enum(u2) {
                ///  Reserved
                RESERVED = 0x0,
                ///  Reset and Synchronize
                RESET_AND_SYNCHRONIZE = 0x1,
                ///  Synchronize on next Instantaneous Conversion
                SYNCHRONIZE_ON_NEXT_INSTANTANEOUS_CONVERSION = 0x2,
                ///  Synchronize on next Accumulated Conversion
                SYNCHRONIZE_ON_NEXT_ACCUMULATED_CONVERSION = 0x3,
            };

            pub const C_ADC_CHOPPER_MODE_SELECT = enum(u2) {
                ///  Chopping Disabled
                CHOPPING_DISABLED = 0x0,
                ///  Automatic Fast Chopping
                AUTOMATIC_FAST_CHOPPING = 0x1,
                ///  Automatic Slow Chopping
                AUTOMATIC_SLOW_CHOPPING = 0x2,
                ///  Software Polarity Control
                SOFTWARE_POLARITY_CONTROL = 0x3,
            };

            pub const SAMPLING_CLOCK_SELECT = enum(u1) {
                ///  PLL (512kHz output) as sampling clock
                PLL_512KHZ_OUTPUT_AS_SAMPLING_CLOCK = 0x0,
                ///  Slow RC Oscillator as sampling clock
                SLOW_RC_OSCILLATOR_AS_SAMPLING_CLOCK = 0x1,
            };

            pub const INSTANTANEOUS_DECIMATION_RATIO_SELECT = enum(u2) {
                ///  512
                @"512" = 0x0,
                ///  256
                @"256" = 0x1,
                ///  128
                @"128" = 0x2,
                ///  64
                @"64" = 0x3,
            };

            pub const ACCUMULATED_DECIMATION_RATIO_SELECT = enum(u3) {
                ///  512
                @"512" = 0x0,
                ///  256
                @"256" = 0x1,
                ///  128
                @"128" = 0x2,
                ///  64
                @"64" = 0x3,
                ///  32
                @"32" = 0x4,
                ///  16
                @"16" = 0x5,
                ///  8
                @"8" = 0x6,
                ///  4
                @"4" = 0x7,
            };

            pub const C_ADC_REGULAR_CURRENT_COMPARATOR_MODE = enum(u2) {
                ///  Comparator Disabled
                COMPARATOR_DISABLED = 0x0,
                ///  Comparator Enabled. Regular Current Counter counts up if Accumulated Current is above threshold and is reset if Accumulated Current is below threshold.
                COMPARATOR_ENABLED_REGULAR_CURRENT_COUNTER_COUNTS_UP_IF_ACCUMULATED_CURRENT_IS_ABOVE_THRESHOLD_AND_IS_RESET_IF_ACCUMULATED_CURRENT_IS_BELOW_THRESHOLD = 0x1,
                ///  Comparator Enabled. Regular Current Counter counts up if Accumulated Current is above threshold and down if Accumulated Current is below threshold.
                COMPARATOR_ENABLED_REGULAR_CURRENT_COUNTER_COUNTS_UP_IF_ACCUMULATED_CURRENT_IS_ABOVE_THRESHOLD_AND_DOWN_IF_ACCUMULATED_CURRENT_IS_BELOW_THRESHOLD = 0x2,
                ///  Reserved
                RESERVED = 0x3,
            };

            pub const MISC_4BIT_COUNT = enum(u4) {
                ///  1
                @"1" = 0x0,
                ///  2
                @"2" = 0x1,
                ///  3
                @"3" = 0x2,
                ///  4
                @"4" = 0x3,
                ///  5
                @"5" = 0x4,
                ///  6
                @"6" = 0x5,
                ///  7
                @"7" = 0x6,
                ///  8
                @"8" = 0x7,
                ///  9
                @"9" = 0x8,
                ///  10
                @"10" = 0x9,
                ///  11
                @"11" = 0xa,
                ///  12
                @"12" = 0xb,
                ///  13
                @"13" = 0xc,
                ///  14
                @"14" = 0xd,
                ///  15
                @"15" = 0xe,
                ///  16
                @"16" = 0xf,
            };

            pub const C_ADC_INPUT_GAIN = enum(u3) {
                ///  4x
                @"4X" = 0x0,
                ///  8x
                @"8X" = 0x1,
                ///  16x
                @"16X" = 0x2,
                ///  32x
                @"32X" = 0x3,
                ///  64x
                @"64X" = 0x4,
                ///  128x
                @"128X" = 0x5,
                ///  256x
                @"256X" = 0x6,
                ///  Reserved
                RESERVED = 0x7,
            };

            pub const C_ADC_PIN_DIAGNOSIS_MODE = enum(u2) {
                ///  No current source is enabled
                NO_CURRENT_SOURCE_IS_ENABLED = 0x0,
                ///  Current source on PI pin enabled
                CURRENT_SOURCE_ON_PI_PIN_ENABLED = 0x1,
                ///  Current source on NI pin enabled
                CURRENT_SOURCE_ON_NI_PIN_ENABLED = 0x2,
                ///  Current source on both PI/NI pins enabled
                CURRENT_SOURCE_ON_BOTH_PI_NI_PINS_ENABLED = 0x3,
            };

            pub const V_ADC_REFERENCE_SELECT = enum(u1) {
                ///  VREF as reference
                VREF_AS_REFERENCE = 0x0,
                ///  AVDD/3 as reference (for diagnosis purpose)
                AVDD_3_AS_REFERENCE_FOR_DIAGNOSIS_PURPOSE = 0x1,
            };

            pub const V_ADC_PIN_DIAGNOSIS_MODE = enum(u2) {
                ///  No current source is enabled
                NO_CURRENT_SOURCE_IS_ENABLED = 0x0,
                ///  Current source on PV pin enabled
                CURRENT_SOURCE_ON_PV_PIN_ENABLED = 0x1,
                ///  Current source on NV pin enabled
                CURRENT_SOURCE_ON_NV_PIN_ENABLED = 0x2,
                ///  Current source on both PV/NV pins enabled
                CURRENT_SOURCE_ON_BOTH_PV_NV_PINS_ENABLED = 0x3,
            };

            pub const V_ADC_CHANNEL_SELECT = enum(u3) {
                ///  PV - NV
                PV_NV = 0x0,
                ///  ADC0 - SGND
                ADC0_SGND = 0x1,
                ///  ADC1 - SGND
                ADC1_SGND = 0x2,
                ///  VTEMP - GND
                VTEMP_GND = 0x3,
                ///  DIAGNOSIS - GND (VREF/TBD)
                DIAGNOSIS_GND_VREF_TBD = 0x4,
                ///  Reserved
                RESERVED = 0x5,
                ///  Reserved
                RESERVED = 0x6,
                ///  Reserved
                RESERVED = 0x7,
            };

            ///  ADC Synchronization Control and Status Register
            ADSCSRA: mmio.Mmio(packed struct(u8) {
                ///  Synchronization Command
                SCMD: packed union {
                    raw: u2,
                    value: SYNCHRONIZATION_COMMAND,
                },
                ///  Synchronization Busy
                SBSY: u1,
                padding: u5,
            }),
            ///  ADC Synchronization Control and Status Register
            ADSCSRB: mmio.Mmio(packed struct(u8) {
                ///  CADIC Data Read Out Busy
                CADICRB: u1,
                ///  CADAC Data Read Out Busy
                CADACRB: u1,
                ///  C-ADC Instantaneous Conversion Polarity Status
                CADICPS: u1,
                reserved4: u1,
                ///  VADIC Data Read Out Busy
                VADICRB: u1,
                ///  VADAC Data Read Out Busy
                VADACRB: u1,
                ///  V-ADC Instantaneous Conversion Polarity Status
                VADICPS: u1,
                padding: u1,
            }),
            ///  ADC Control Register A
            ADCRA: mmio.Mmio(packed struct(u8) {
                ///  Sampling Clock Select
                CKSEL: packed union {
                    raw: u1,
                    value: SAMPLING_CLOCK_SELECT,
                },
                ///  C-ADC Chopper Mode Select
                ADCMS: packed union {
                    raw: u2,
                    value: C_ADC_CHOPPER_MODE_SELECT,
                },
                ///  ADC Polarity Select
                ADPSEL: u1,
                padding: u4,
            }),
            ///  ADC Control Register B
            ADCRB: mmio.Mmio(packed struct(u8) {
                ///  Accumulated Decimation Ratio Select
                ADADES: packed union {
                    raw: u3,
                    value: ACCUMULATED_DECIMATION_RATIO_SELECT,
                },
                ///  Instantaneous Decimation Ratio Select
                ADIDES: packed union {
                    raw: u2,
                    value: INSTANTANEOUS_DECIMATION_RATIO_SELECT,
                },
                padding: u3,
            }),
            ///  ADC Control Register B
            ADCRC: mmio.Mmio(packed struct(u8) {
                ///  C-ADC Regular Current Count Threshold
                CADRCT: packed union {
                    raw: u4,
                    value: MISC_4BIT_COUNT,
                },
                ///  C-ADC Regular Current Comparator Mode
                CADRCM: packed union {
                    raw: u2,
                    value: C_ADC_REGULAR_CURRENT_COMPARATOR_MODE,
                },
                reserved7: u1,
                ///  C-ADC Enable
                CADEN: u1,
            }),
            ///  ADC Control Register D
            ADCRD: mmio.Mmio(packed struct(u8) {
                ///  C-ADC Diagnostics Channel Select
                CADDSEL: u1,
                ///  C-ADC Pin Diagnostics Mode
                CADPDM: packed union {
                    raw: u2,
                    value: C_ADC_PIN_DIAGNOSIS_MODE,
                },
                ///  C-ADC Gain
                CADG: packed union {
                    raw: u3,
                    value: C_ADC_INPUT_GAIN,
                },
                padding: u2,
            }),
            ///  ADC Control Register E
            ADCRE: mmio.Mmio(packed struct(u8) {
                ///  V-ADC Channel Select
                VADMUX: packed union {
                    raw: u3,
                    value: V_ADC_CHANNEL_SELECT,
                },
                ///  V-ADC Pin Diagnostics Mode
                VADPDM: packed union {
                    raw: u2,
                    value: V_ADC_PIN_DIAGNOSIS_MODE,
                },
                ///  V-ADC Reference Select
                VADREFS: packed union {
                    raw: u1,
                    value: V_ADC_REFERENCE_SELECT,
                },
                reserved7: u1,
                ///  V-ADC Enable
                VADEN: u1,
            }),
            ///  ADC Interrupt Flag Register
            ADIFR: mmio.Mmio(packed struct(u8) {
                ///  C-ADC Instantaneous Current Interrupt Flag
                CADICIF: u1,
                ///  C-ADC Accumulated Current Interrupt Flag
                CADACIF: u1,
                ///  C-ADC Regulator Current Interrupt Flag
                CADRCIF: u1,
                reserved4: u1,
                ///  V-DAC Instantaneous Voltage Interrupt Flag
                VADICIF: u1,
                ///  V-ADC Accumulated Voltage Interrupt Flag
                VADACIF: u1,
                padding: u2,
            }),
            ///  ADC Interrupt Mask Register
            ADIMR: mmio.Mmio(packed struct(u8) {
                ///  C-ADC Instantaneous Current Interrupt Enable
                CADICIE: u1,
                ///  C-ADC Accumulated Current Interrupt Enable
                CADACIE: u1,
                ///  C-ADC Regulator Current Interrupt Enable
                CADRCIE: u1,
                reserved4: u1,
                ///  V-DAC Instantaneous Voltage Interrupt Enable
                VADICIE: u1,
                ///  V-ADC Accumulated Voltage Interrupt Enable
                VADACIE: u1,
                padding: u2,
            }),
            ///  CC-ADC Regulator Current Comparator Threshold Level
            CADRCL: u16,
            ///  C-ADC Instantaneous Conversion Result
            CADIC: u16,
            ///  C-ADC Accumulated Conversion Result
            CADAC0: u8,
            ///  C-ADC Accumulated Conversion Result
            CADAC1: u8,
            ///  C-ADC Accumulated Conversion Result
            CADAC2: u8,
            ///  C-ADC Accumulated Conversion Result
            CADAC3: u8,
            ///  V-ADC Instantaneous Conversion Result
            VADIC: u16,
            ///  V-ADC Accumulated Conversion Result
            VADAC0: u8,
            ///  V-ADC Accumulated Conversion Result
            VADAC1: u8,
            ///  V-ADC Accumulated Conversion Result
            VADAC2: u8,
            ///  V-ADC Accumulated Conversion Result
            VADAC3: u8,
        };

        ///  Bandgap
        pub const BANDGAP = extern struct {
            ///  Bandgap Control and Status Register A
            BGCSRA: mmio.Mmio(packed struct(u8) {
                ///  Band Gap Sample Configuration
                BGSC: u3,
                padding: u5,
            }),
            ///  Band Gap Calibration Register B
            BGCRB: mmio.Mmio(packed struct(u8) {
                ///  Band Gap Calibration Linear
                BGCL: u8,
            }),
            ///  Band Gap Calibration Register A
            BGCRA: mmio.Mmio(packed struct(u8) {
                ///  Band Gap Calibration Nominal
                BGCN: u8,
            }),
            ///  Band Gap Lock Register
            BGLR: mmio.Mmio(packed struct(u8) {
                ///  Band Gap Lock
                BGPL: u1,
                ///  Band Gap Lock Enable
                BGPLE: u1,
                padding: u6,
            }),
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

        ///  CPU Registers
        pub const CPU = extern struct {
            pub const CPU_SLEEP_MODE_3BITS = enum(u3) {
                ///  Idle
                IDLE = 0x0,
                ///  ADC
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
                BODRF: u1,
                ///  Watchdog Reset Flag
                WDRF: u1,
                ///  OCD Reset Flag
                OCDRF: u1,
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
                ///  Clock Output Enable
                CKOE: u1,
                padding: u2,
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
            reserved35: [1]u8,
            ///  Clock Prescale Register
            CLKPR: mmio.Mmio(packed struct(u8) {
                ///  Clock Prescaler Select Bits
                CLKPS: u2,
                reserved7: u5,
                ///  Clock Prescaler Change Enable
                CLKPCE: u1,
            }),
            reserved38: [2]u8,
            ///  Power Reduction Register 0
            PRR0: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                ///  Power reduction SPI
                PRSPI: u1,
                ///  Power Reduction LIN UART Interface
                PRLIN: u1,
                padding: u4,
            }),
            reserved40: [1]u8,
            ///  Slow Oscillator Calibration Register A
            SOSCCALA: u8,
            ///  Oscillator Calibration Register B
            SOSCCALB: u8,
            reserved64: [22]u8,
            ///  Digital Input Disable Register
            DIDR0: mmio.Mmio(packed struct(u8) {
                ///  When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.
                PA0DID: u1,
                ///  When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.
                PA1DID: u1,
                padding: u6,
            }),
            reserved154: [89]u8,
            ///  PLL Control and Status Register
            PLLCSR: mmio.Mmio(packed struct(u8) {
                ///  PLL Lock Change Interrupt Enable
                PLLCIE: u1,
                ///  PLL Lock Change Interrupt Flag
                PLLCIF: u1,
                reserved4: u2,
                ///  PLL Lock
                LOCK: u1,
                ///  PLL Software Enable
                SWEN: u1,
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
            reserved3: [2]u8,
            ///  Watchdog Timer Configuration Lock Register
            WDTCLR: mmio.Mmio(packed struct(u8) {
                ///  Watchdog Timer Comfiguration Lock Enable
                WDCLE: u1,
                ///  Watchdog Timer Comfiguration Lock bits
                WDCL: u2,
                padding: u5,
            }),
        };

        ///  Wakeup Timer
        pub const WAKEUP_TIMER = extern struct {
            ///  Wake-up Timer Control and Status Register
            WUTCSR: mmio.Mmio(packed struct(u8) {
                ///  Wake-up Timer Prescaler Bits
                WUTP: u3,
                ///  Wake-up Timer Enable
                WUTE: u1,
                ///  Wake-up Timer Reset
                WUTR: u1,
                reserved6: u1,
                ///  Wake-up Timer Interrupt Enable
                WUTIE: u1,
                ///  Wake-up Timer Interrupt Flag
                WUTIF: u1,
            }),
        };
    };
};
