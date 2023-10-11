const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATmega16HVB = struct {
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
            ///  Voltage regulator monitor interrupt
            VREGMON: Handler = unhandled,
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
            ///  Bandgap Buffer Short Circuit Detected
            BGSCD: Handler = unhandled,
            ///  Charger Detect
            CHDET: Handler = unhandled,
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
            ///  Two-Wire Bus Connect/Disconnect
            TWIBUSCD: Handler = unhandled,
            ///  Two-Wire Serial Interface
            TWI: Handler = unhandled,
            ///  SPI Serial transfer complete
            SPI_STC: Handler = unhandled,
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
            ///  SPM Ready
            SPM: Handler = unhandled,
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
            ///  Timer/Counter, 16-bit
            pub const TC0 = @as(*volatile types.peripherals.TC16.TC0, @ptrFromInt(0x35));
            ///  Timer/Counter, 16-bit
            pub const TC1 = @as(*volatile types.peripherals.TC16.TC1, @ptrFromInt(0x36));
            ///  CPU Registers
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x37));
            ///  External Interrupts
            pub const EXINT = @as(*volatile types.peripherals.EXINT, @ptrFromInt(0x3b));
            ///  EEPROM
            pub const EEPROM = @as(*volatile types.peripherals.EEPROM, @ptrFromInt(0x3f));
            ///  Serial Peripheral Interface
            pub const SPI = @as(*volatile types.peripherals.SPI, @ptrFromInt(0x4c));
            ///  Bootloader
            pub const BOOT_LOAD = @as(*volatile types.peripherals.BOOT_LOAD, @ptrFromInt(0x57));
            ///  Watchdog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x60));
            ///  Analog-to-Digital Converter
            pub const ADC = @as(*volatile types.peripherals.ADC, @ptrFromInt(0x78));
            ///  Two Wire Serial Interface
            pub const TWI = @as(*volatile types.peripherals.TWI, @ptrFromInt(0xb8));
            ///  Voltage Regulator
            pub const VOLTAGE_REGULATOR = @as(*volatile types.peripherals.VOLTAGE_REGULATOR, @ptrFromInt(0xc8));
            ///  Bandgap
            pub const BANDGAP = @as(*volatile types.peripherals.BANDGAP, @ptrFromInt(0xd0));
            ///  Charger Detect
            pub const CHARGER_DETECT = @as(*volatile types.peripherals.CHARGER_DETECT, @ptrFromInt(0xd4));
            ///  Coulomb Counter
            pub const COULOMB_COUNTER = @as(*volatile types.peripherals.COULOMB_COUNTER, @ptrFromInt(0xe0));
            ///  FET Control
            pub const FET = @as(*volatile types.peripherals.FET, @ptrFromInt(0xf0));
            ///  Cell Balancing
            pub const CELL_BALANCING = @as(*volatile types.peripherals.CELL_BALANCING, @ptrFromInt(0xf1));
            ///  Battery Protection
            pub const BATTERY_PROTECTION = @as(*volatile types.peripherals.BATTERY_PROTECTION, @ptrFromInt(0xf2));
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Fuses
        pub const FUSE = extern struct {
            pub const ENUM_SUT = enum(u3) {
                ///  Start-up time 14 CK + 4 ms
                @"14CK_4MS" = 0x0,
                ///  Start-up time 14 CK + 8 ms
                @"14CK_8MS" = 0x1,
                ///  Start-up time 14 CK + 16 ms
                @"14CK_16MS" = 0x2,
                ///  Start-up time 14 CK + 32 ms
                @"14CK_32MS" = 0x3,
                ///  Start-up time 14 CK + 64 ms
                @"14CK_64MS" = 0x4,
                ///  Start-up time 14 CK + 128 ms
                @"14CK_128MS" = 0x5,
                ///  Start-up time 14 CK + 256 ms
                @"14CK_256MS" = 0x6,
                ///  Start-up time 14 CK + 512 ms
                @"14CK_512MS" = 0x7,
            };

            pub const ENUM_OSCSEL = enum(u2) {
                ///  Default
                DEFAULT = 0x1,
                _,
            };

            pub const ENUM_BOOTSZ = enum(u2) {
                ///  Boot Flash size=256 words Boot address=$1F00
                @"256W_1F00" = 0x3,
                ///  Boot Flash size=512 words Boot address=$1E00
                @"512W_1E00" = 0x2,
                ///  Boot Flash size=1024 words Boot address=$1C00
                @"1024W_1C00" = 0x1,
                ///  Boot Flash size=2048 words Boot address=$1800
                @"2048W_1800" = 0x0,
            };

            LOW: mmio.Mmio(packed struct(u8) {
                ///  Oscillator select
                OSCSEL: packed union {
                    raw: u2,
                    value: ENUM_OSCSEL,
                },
                ///  Select start-up time
                SUT: packed union {
                    raw: u3,
                    value: ENUM_SUT,
                },
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
                ///  Clock Divide mode
                CKDIV8: u1,
                padding: u3,
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
            VADC: mmio.Mmio(packed struct(u16) {
                ///  VADC Data bits
                VADC: u12,
                padding: u4,
            }),
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

        ///  FET Control
        pub const FET = extern struct {
            ///  FET Control and Status Register
            FCSR: mmio.Mmio(packed struct(u8) {
                ///  Charge FET Enable
                CFE: u1,
                ///  Discharge FET Enable
                DFE: u1,
                ///  Current Protection Status
                CPS: u1,
                ///  Deep Under-Voltage Recovery Disable
                DUVRD: u1,
                padding: u4,
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
            EEDR: mmio.Mmio(packed struct(u8) {
                ///  EEPROM Data bits
                EEDR: u8,
            }),
            ///  EEPROM Read/Write Access
            EEAR: mmio.Mmio(packed struct(u16) {
                ///  EEPROM Address bits
                EEAR: u10,
                padding: u6,
            }),
        };

        ///  Coulomb Counter
        pub const COULOMB_COUNTER = extern struct {
            ///  ADC Accumulate Current
            CADAC0: mmio.Mmio(packed struct(u8) {
                ///  ADC accumulate current bits
                CADAC0: u8,
            }),
            ///  ADC Accumulate Current
            CADAC1: mmio.Mmio(packed struct(u8) {
                ///  ADC accumulate current bits
                CADAC0: u2,
                ///  ADC accumulate current bits
                CADAC: u6,
            }),
            ///  ADC Accumulate Current
            CADAC2: mmio.Mmio(packed struct(u8) {
                ///  ADC accumulate current bits
                CADAC: u8,
            }),
            ///  ADC Accumulate Current
            CADAC3: mmio.Mmio(packed struct(u8) {
                ///  ADC accumulate current bits
                CADAC: u8,
            }),
            ///  CC-ADC Instantaneous Current
            CADIC: mmio.Mmio(packed struct(u16) {
                ///  CC-ADC Instantaneous Current
                CADIC: u16,
            }),
            ///  CC-ADC Control and Status Register A
            CADCSRA: mmio.Mmio(packed struct(u8) {
                ///  When the CADSE bit is written to one, the ongoing CC-ADC conversion is aborted, and the CC-ADC enters Regular Current detection mode.
                CADSE: u1,
                ///  The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
                CADSI: u2,
                ///  CC_ADC Accumulate Current Select Bits
                CADAS: u2,
                ///  CC_ADC Update Busy
                CADUB: u1,
                CADPOL: u1,
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
            ///  CC-ADC Control and Status Register C
            CADCSRC: mmio.Mmio(packed struct(u8) {
                ///  CC-ADC Voltage Scaling Enable
                CADVSE: u1,
                padding: u7,
            }),
            ///  CC-ADC Regular Charge Current
            CADRCC: mmio.Mmio(packed struct(u8) {
                ///  CC-ADC Regular Charge Current
                CADRCC: u8,
            }),
            ///  CC-ADC Regular Discharge Current
            CADRDC: mmio.Mmio(packed struct(u8) {
                ///  CC-ADC Regular Discharge Current
                CADRDC: u8,
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
            TWBR: mmio.Mmio(packed struct(u8) {
                ///  TWI Bit Rate bits
                TWBR: u8,
            }),
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
            TWDR: mmio.Mmio(packed struct(u8) {
                ///  TWI Data Bits
                TWD: u8,
            }),
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
                ///  External Interrupt Request 3 Enable
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
            PCMSK0: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Mask
                PCINT: u4,
                padding: u4,
            }),
            ///  Pin Change Enable Mask Register 1
            PCMSK1: mmio.Mmio(packed struct(u8) {
                ///  Pin Change Enable Mask
                PCINT: u8,
            }),
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

        ///  Battery Protection
        pub const BATTERY_PROTECTION = extern struct {
            ///  Battery Protection Interrupt Mask Register
            BPIMSK: mmio.Mmio(packed struct(u8) {
                ///  Charger High-current Protection Activated Interrupt
                CHCIE: u1,
                ///  Discharger High-current Protection Activated Interrupt
                DHCIE: u1,
                ///  Charge Over-current Protection Activated Interrupt Enable
                COCIE: u1,
                ///  Discharge Over-current Protection Activated Interrupt Enable
                DOCIE: u1,
                ///  Short-circuit Protection Activated Interrupt Enable
                SCIE: u1,
                padding: u3,
            }),
            ///  Battery Protection Interrupt Flag Register
            BPIFR: mmio.Mmio(packed struct(u8) {
                ///  Charge High-current Protection Activated Interrupt
                CHCIF: u1,
                ///  Disharge High-current Protection Activated Interrupt
                DHCIF: u1,
                ///  Charge Over-current Protection Activated Interrupt Flag
                COCIF: u1,
                ///  Discharge Over-current Protection Activated Interrupt Flag
                DOCIF: u1,
                ///  Short-circuit Protection Activated Interrupt Flag
                SCIF: u1,
                padding: u3,
            }),
            reserved3: [1]u8,
            ///  Battery Protection Short-Circuit Detection Level Register
            BPSCD: mmio.Mmio(packed struct(u8) {
                ///  Battery Protection Short-Circuit Detection Level Register bits
                SCDL: u8,
            }),
            ///  Battery Protection Discharge-Over-current Detection Level Register
            BPDOCD: mmio.Mmio(packed struct(u8) {
                ///  Battery Protection Discharge-Over-current Detection Level bits
                DOCDL: u8,
            }),
            ///  Battery Protection Charge-Over-current Detection Level Register
            BPCOCD: mmio.Mmio(packed struct(u8) {
                ///  Battery Protection Charge-Over-current Detection Level bits
                COCDL: u8,
            }),
            ///  Battery Protection Discharge-High-current Detection Level Register
            BPDHCD: mmio.Mmio(packed struct(u8) {
                ///  Battery Protection Discharge-High-current Detection Level bits
                DHCDL: u8,
            }),
            ///  Battery Protection Charge-High-current Detection Level Register
            BPCHCD: mmio.Mmio(packed struct(u8) {
                ///  Battery Protection Charge-High-current Detection Level bits
                CHCDL: u8,
            }),
            ///  Battery Protection Short-current Timing Register
            BPSCTR: mmio.Mmio(packed struct(u8) {
                ///  Battery Protection Short-current Timing bits
                SCPT: u7,
                padding: u1,
            }),
            ///  Battery Protection Over-current Timing Register
            BPOCTR: mmio.Mmio(packed struct(u8) {
                ///  Battery Protection Over-current Timing bits
                OCPT: u6,
                padding: u2,
            }),
            ///  Battery Protection Short-current Timing Register
            BPHCTR: mmio.Mmio(packed struct(u8) {
                ///  Battery Protection Short-current Timing bits
                HCPT: u6,
                padding: u2,
            }),
            ///  Battery Protection Control Register
            BPCR: mmio.Mmio(packed struct(u8) {
                ///  Charge High-current Protection Disable
                CHCD: u1,
                ///  Discharge High-current Protection Disable
                DHCD: u1,
                ///  Charge Over-current Protection Disabled
                COCD: u1,
                ///  Discharge Over-current Protection Disabled
                DOCD: u1,
                ///  Short Circuit Protection Disabled
                SCD: u1,
                ///  External Protection Input Disable
                EPID: u1,
                padding: u2,
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

        ///  Charger Detect
        pub const CHARGER_DETECT = extern struct {
            ///  Charger Detect Control and Status Register
            CHGDCSR: mmio.Mmio(packed struct(u8) {
                ///  Charger Detect Interrupt Enable
                CHGDIE: u1,
                ///  Charger Detect Interrupt Flag
                CHGDIF: u1,
                ///  Charger Detect Interrupt Sense Control
                CHGDISC: u2,
                ///  BATT Pin Voltage Level
                BATTPVL: u1,
                padding: u3,
            }),
        };

        ///  Voltage Regulator
        pub const VOLTAGE_REGULATOR = extern struct {
            ///  Regulator Operating Condition Register
            ROCR: mmio.Mmio(packed struct(u8) {
                ///  ROC Warning Interrupt Enable
                ROCWIE: u1,
                ///  ROC Warning Interrupt Flag
                ROCWIF: u1,
                reserved4: u2,
                ///  ROC Disable
                ROCD: u1,
                reserved7: u2,
                ///  ROC Status
                ROCS: u1,
            }),
        };

        ///  Bandgap
        pub const BANDGAP = extern struct {
            ///  Bandgap Calibration Register
            BGCCR: mmio.Mmio(packed struct(u8) {
                ///  BG Calibration of PTAT Current Bits
                BGCC: u6,
                padding: u2,
            }),
            ///  Bandgap Calibration of Resistor Ladder
            BGCRR: mmio.Mmio(packed struct(u8) {
                ///  Bandgap Calibration of Resistor Ladder Bits
                BGCR: u8,
            }),
            ///  Bandgap Control and Status Register
            BGCSR: mmio.Mmio(packed struct(u8) {
                ///  Bandgap Short Circuit Detection Interrupt Enable
                BGSCDIE: u1,
                ///  Bandgap Short Circuit Detection Interrupt Flag
                BGSCDIF: u1,
                reserved4: u2,
                ///  Bandgap Short Circuit Detection Enabled
                BGSCDE: u1,
                ///  Bandgap Disable
                BGD: u1,
                padding: u2,
            }),
        };

        ///  CPU Registers
        pub const CPU = extern struct {
            pub const CPU_SLEEP_MODE_3BITS = enum(u3) {
                ///  Idle
                IDLE = 0x0,
                ///  ADC
                ADC = 0x1,
                ///  Reserved
                VAL_0x02 = 0x2,
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

            ///  Oscillator Sampling Interface Control and Status Register
            OSICSR: mmio.Mmio(packed struct(u8) {
                ///  Oscillator Sampling Interface Enable
                OSIEN: u1,
                ///  Oscillator Sampling Interface Status
                OSIST: u1,
                reserved4: u2,
                ///  Oscillator Sampling Interface Select 0
                OSISEL0: u1,
                padding: u3,
            }),
            reserved7: [6]u8,
            ///  General Purpose IO Register 0
            GPIOR0: mmio.Mmio(packed struct(u8) {
                ///  General Purpose IO bits
                GPIOR0: u8,
            }),
            reserved19: [11]u8,
            ///  General Purpose IO Register 1
            GPIOR1: mmio.Mmio(packed struct(u8) {
                ///  General Purpose IO bits
                GPIOR1: u8,
            }),
            ///  General Purpose IO Register 2
            GPIOR2: mmio.Mmio(packed struct(u8) {
                ///  General Purpose IO bits
                GPIOR2: u8,
            }),
            reserved28: [7]u8,
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
            reserved38: [7]u8,
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
            reserved42: [1]u8,
            ///  Clock Prescale Register
            CLKPR: mmio.Mmio(packed struct(u8) {
                ///  Clock Prescaler Select Bits
                CLKPS: u2,
                reserved7: u5,
                ///  Clock Prescaler Change Enable
                CLKPCE: u1,
            }),
            reserved45: [2]u8,
            ///  Power Reduction Register 0
            PRR0: mmio.Mmio(packed struct(u8) {
                ///  Power Reduction V-ADC
                PRVADC: u1,
                ///  Power Reduction Timer/Counter0
                PRTIM0: u1,
                ///  Power Reduction Timer/Counter1
                PRTIM1: u1,
                ///  Power reduction SPI
                PRSPI: u1,
                reserved5: u1,
                ///  Power Reduction Voltage Regulator Monitor
                PRVRM: u1,
                ///  Power Reduction TWI
                PRTWI: u1,
                padding: u1,
            }),
            reserved47: [1]u8,
            ///  Fast Oscillator Calibration Value
            FOSCCAL: mmio.Mmio(packed struct(u8) {
                ///  Fast Oscillator Calibration Value
                FCAL: u8,
            }),
            reserved71: [23]u8,
            ///  Digital Input Disable Register
            DIDR0: mmio.Mmio(packed struct(u8) {
                ///  When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.
                PA0DID: u1,
                ///  When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.
                PA1DID: u1,
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

            ///  I/O Port
            pub const PORTC = extern struct {
                ///  Port C Input Pins
                PINC: u8,
                reserved2: [1]u8,
                ///  Port C Data Register
                PORTC: u8,
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
    };
};
