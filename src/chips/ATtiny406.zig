const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny406 = struct {
        pub const properties = struct {
            pub const family = "AVR TINY";
            pub const arch = "AVR8X";
        };

        pub const VectorTable = extern struct {
            const Handler = micro.interrupt.Handler;
            const unhandled = micro.interrupt.unhandled;

            RESET: Handler = unhandled,
            CRCSCAN_NMI: Handler = unhandled,
            BOD_VLM: Handler = unhandled,
            PORTA_PORT: Handler = unhandled,
            PORTB_PORT: Handler = unhandled,
            PORTC_PORT: Handler = unhandled,
            RTC_CNT: Handler = unhandled,
            RTC_PIT: Handler = unhandled,
            TCA0_LUNF: Handler = unhandled,
            TCA0_HUNF: Handler = unhandled,
            TCA0_CMP0: Handler = unhandled,
            TCA0_CMP1: Handler = unhandled,
            TCA0_CMP2: Handler = unhandled,
            TCB0_INT: Handler = unhandled,
            reserved14: [2]u16 = undefined,
            AC0_AC: Handler = unhandled,
            ADC0_RESRDY: Handler = unhandled,
            ADC0_WCOMP: Handler = unhandled,
            TWI0_TWIS: Handler = unhandled,
            TWI0_TWIM: Handler = unhandled,
            SPI0_INT: Handler = unhandled,
            USART0_RXC: Handler = unhandled,
            USART0_DRE: Handler = unhandled,
            USART0_TXC: Handler = unhandled,
            NVMCTRL_EE: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Virtual Ports
            pub const VPORTA = @intToPtr(*volatile types.peripherals.VPORT, 0x0);
            ///  Virtual Ports
            pub const VPORTB = @intToPtr(*volatile types.peripherals.VPORT, 0x4);
            ///  Virtual Ports
            pub const VPORTC = @intToPtr(*volatile types.peripherals.VPORT, 0x8);
            ///  General Purpose IO
            pub const GPIO = @intToPtr(*volatile types.peripherals.GPIO, 0x1c);
            ///  CPU
            pub const CPU = @intToPtr(*volatile types.peripherals.CPU, 0x34);
            ///  Reset controller
            pub const RSTCTRL = @intToPtr(*volatile types.peripherals.RSTCTRL, 0x40);
            ///  Sleep Controller
            pub const SLPCTRL = @intToPtr(*volatile types.peripherals.SLPCTRL, 0x50);
            ///  Clock controller
            pub const CLKCTRL = @intToPtr(*volatile types.peripherals.CLKCTRL, 0x60);
            ///  Bod interface
            pub const BOD = @intToPtr(*volatile types.peripherals.BOD, 0x80);
            ///  Voltage reference
            pub const VREF = @intToPtr(*volatile types.peripherals.VREF, 0xa0);
            ///  Watch-Dog Timer
            pub const WDT = @intToPtr(*volatile types.peripherals.WDT, 0x100);
            ///  Interrupt Controller
            pub const CPUINT = @intToPtr(*volatile types.peripherals.CPUINT, 0x110);
            ///  CRCSCAN
            pub const CRCSCAN = @intToPtr(*volatile types.peripherals.CRCSCAN, 0x120);
            ///  Real-Time Counter
            pub const RTC = @intToPtr(*volatile types.peripherals.RTC, 0x140);
            ///  Event System
            pub const EVSYS = @intToPtr(*volatile types.peripherals.EVSYS, 0x180);
            ///  Configurable Custom Logic
            pub const CCL = @intToPtr(*volatile types.peripherals.CCL, 0x1c0);
            ///  Port Multiplexer
            pub const PORTMUX = @intToPtr(*volatile types.peripherals.PORTMUX, 0x200);
            ///  I/O Ports
            pub const PORTA = @intToPtr(*volatile types.peripherals.PORT, 0x400);
            ///  I/O Ports
            pub const PORTB = @intToPtr(*volatile types.peripherals.PORT, 0x420);
            ///  I/O Ports
            pub const PORTC = @intToPtr(*volatile types.peripherals.PORT, 0x440);
            ///  Analog to Digital Converter
            pub const ADC0 = @intToPtr(*volatile types.peripherals.ADC, 0x600);
            ///  Analog Comparator
            pub const AC0 = @intToPtr(*volatile types.peripherals.AC, 0x670);
            ///  Universal Synchronous and Asynchronous Receiver and Transmitter
            pub const USART0 = @intToPtr(*volatile types.peripherals.USART, 0x800);
            ///  Two-Wire Interface
            pub const TWI0 = @intToPtr(*volatile types.peripherals.TWI, 0x810);
            ///  Serial Peripheral Interface
            pub const SPI0 = @intToPtr(*volatile types.peripherals.SPI, 0x820);
            ///  16-bit Timer/Counter Type A
            pub const TCA0 = @intToPtr(*volatile types.peripherals.TCA, 0xa00);
            ///  16-bit Timer Type B
            pub const TCB0 = @intToPtr(*volatile types.peripherals.TCB, 0xa40);
            ///  System Configuration Registers
            pub const SYSCFG = @intToPtr(*volatile types.peripherals.SYSCFG, 0xf01);
            ///  Non-volatile Memory Controller
            pub const NVMCTRL = @intToPtr(*volatile types.peripherals.NVMCTRL, 0x1000);
            ///  Signature row
            pub const SIGROW = @intToPtr(*volatile types.peripherals.SIGROW, 0x1100);
            ///  Fuses
            pub const FUSE = @intToPtr(*volatile types.peripherals.FUSE, 0x1280);
            ///  Lockbit
            pub const LOCKBIT = @intToPtr(*volatile types.peripherals.LOCKBIT, 0x128a);
            ///  User Row
            pub const USERROW = @intToPtr(*volatile types.peripherals.USERROW, 0x1300);
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Analog Comparator
        pub const AC = extern struct {
            ///  Hysteresis Mode select
            pub const AC_HYSMODE = enum(u2) {
                ///  No hysteresis
                OFF = 0x0,
                ///  10mV hysteresis
                @"10mV" = 0x1,
                ///  25mV hysteresis
                @"25mV" = 0x2,
                ///  50mV hysteresis
                @"50mV" = 0x3,
            };

            ///  Interrupt Mode select
            pub const AC_INTMODE = enum(u2) {
                ///  Any Edge
                BOTHEDGE = 0x0,
                ///  Negative Edge
                NEGEDGE = 0x2,
                ///  Positive Edge
                POSEDGE = 0x3,
                _,
            };

            ///  Negative Input MUX Selection
            pub const AC_MUXNEG = enum(u2) {
                ///  Negative Pin 0
                PIN0 = 0x0,
                ///  Negative Pin 1
                PIN1 = 0x1,
                ///  Voltage Reference
                VREF = 0x2,
                _,
            };

            ///  Positive Input MUX Selection
            pub const AC_MUXPOS = enum(u2) {
                ///  Positive Pin 0
                PIN0 = 0x0,
                ///  Positive Pin 1
                PIN1 = 0x1,
                _,
            };

            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  Enable
                ENABLE: u1,
                ///  Hysteresis Mode
                HYSMODE: packed union {
                    raw: u2,
                    value: AC_HYSMODE,
                },
                reserved4: u1,
                ///  Interrupt Mode
                INTMODE: packed union {
                    raw: u2,
                    value: AC_INTMODE,
                },
                ///  Output Buffer Enable
                OUTEN: u1,
                ///  Run in Standby Mode
                RUNSTDBY: u1,
            }),
            reserved2: [1]u8,
            ///  Mux Control A
            MUXCTRLA: mmio.Mmio(packed struct(u8) {
                ///  Negative Input MUX Selection
                MUXNEG: packed union {
                    raw: u2,
                    value: AC_MUXNEG,
                },
                reserved3: u1,
                ///  Positive Input MUX Selection
                MUXPOS: packed union {
                    raw: u2,
                    value: AC_MUXPOS,
                },
                reserved7: u2,
                ///  Invert AC Output
                INVERT: u1,
            }),
            reserved6: [3]u8,
            ///  Interrupt Control
            INTCTRL: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator 0 Interrupt Enable
                CMP: u1,
                padding: u7,
            }),
            ///  Status
            STATUS: mmio.Mmio(packed struct(u8) {
                ///  Analog Comparator Interrupt Flag
                CMP: u1,
                reserved4: u3,
                ///  Analog Comparator State
                STATE: u1,
                padding: u3,
            }),
        };

        ///  Analog to Digital Converter
        pub const ADC = extern struct {
            ///  Duty Cycle select
            pub const ADC_DUTYCYC = enum(u1) {
                ///  50% Duty cycle
                DUTY50 = 0x0,
                ///  25% Duty cycle
                DUTY25 = 0x1,
            };

            ///  ADC Resolution select
            pub const ADC_RESSEL = enum(u1) {
                ///  10-bit mode
                @"10BIT" = 0x0,
                ///  8-bit mode
                @"8BIT" = 0x1,
            };

            ///  Accumulation Samples select
            pub const ADC_SAMPNUM = enum(u3) {
                ///  1 ADC sample
                ACC1 = 0x0,
                ///  Accumulate 2 samples
                ACC2 = 0x1,
                ///  Accumulate 4 samples
                ACC4 = 0x2,
                ///  Accumulate 8 samples
                ACC8 = 0x3,
                ///  Accumulate 16 samples
                ACC16 = 0x4,
                ///  Accumulate 32 samples
                ACC32 = 0x5,
                ///  Accumulate 64 samples
                ACC64 = 0x6,
                _,
            };

            ///  Clock Pre-scaler select
            pub const ADC_PRESC = enum(u3) {
                ///  CLK_PER divided by 2
                DIV2 = 0x0,
                ///  CLK_PER divided by 4
                DIV4 = 0x1,
                ///  CLK_PER divided by 8
                DIV8 = 0x2,
                ///  CLK_PER divided by 16
                DIV16 = 0x3,
                ///  CLK_PER divided by 32
                DIV32 = 0x4,
                ///  CLK_PER divided by 64
                DIV64 = 0x5,
                ///  CLK_PER divided by 128
                DIV128 = 0x6,
                ///  CLK_PER divided by 256
                DIV256 = 0x7,
            };

            ///  Reference Selection
            pub const ADC_REFSEL = enum(u2) {
                ///  Internal reference
                INTREF = 0x0,
                ///  VDD
                VDDREF = 0x1,
                _,
            };

            ///  Automatic Sampling Delay Variation select
            pub const ADC_ASDV = enum(u1) {
                ///  The Automatic Sampling Delay Variation is disabled
                ASVOFF = 0x0,
                ///  The Automatic Sampling Delay Variation is enabled
                ASVON = 0x1,
            };

            ///  Initial Delay Selection
            pub const ADC_INITDLY = enum(u3) {
                ///  Delay 0 CLK_ADC cycles
                DLY0 = 0x0,
                ///  Delay 16 CLK_ADC cycles
                DLY16 = 0x1,
                ///  Delay 32 CLK_ADC cycles
                DLY32 = 0x2,
                ///  Delay 64 CLK_ADC cycles
                DLY64 = 0x3,
                ///  Delay 128 CLK_ADC cycles
                DLY128 = 0x4,
                ///  Delay 256 CLK_ADC cycles
                DLY256 = 0x5,
                _,
            };

            ///  Window Comparator Mode select
            pub const ADC_WINCM = enum(u3) {
                ///  No Window Comparison
                NONE = 0x0,
                ///  Below Window
                BELOW = 0x1,
                ///  Above Window
                ABOVE = 0x2,
                ///  Inside Window
                INSIDE = 0x3,
                ///  Outside Window
                OUTSIDE = 0x4,
                _,
            };

            ///  Analog Channel Selection Bits
            pub const ADC_MUXPOS = enum(u5) {
                ///  ADC input pin 0
                AIN0 = 0x0,
                ///  ADC input pin 1
                AIN1 = 0x1,
                ///  ADC input pin 2
                AIN2 = 0x2,
                ///  ADC input pin 3
                AIN3 = 0x3,
                ///  ADC input pin 4
                AIN4 = 0x4,
                ///  ADC input pin 5
                AIN5 = 0x5,
                ///  ADC input pin 6
                AIN6 = 0x6,
                ///  ADC input pin 7
                AIN7 = 0x7,
                ///  ADC input pin 8
                AIN8 = 0x8,
                ///  ADC input pin 9
                AIN9 = 0x9,
                ///  ADC input pin 10
                AIN10 = 0xa,
                ///  ADC input pin 11
                AIN11 = 0xb,
                ///  DAC0
                DAC0 = 0x1c,
                ///  Internal Ref
                INTREF = 0x1d,
                ///  Temp sensor
                TEMPSENSE = 0x1e,
                ///  GND
                GND = 0x1f,
                _,
            };

            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  ADC Enable
                ENABLE: u1,
                ///  ADC Freerun mode
                FREERUN: u1,
                ///  ADC Resolution
                RESSEL: packed union {
                    raw: u1,
                    value: ADC_RESSEL,
                },
                reserved7: u4,
                ///  Run standby mode
                RUNSTBY: u1,
            }),
            ///  Control B
            CTRLB: mmio.Mmio(packed struct(u8) {
                ///  Accumulation Samples
                SAMPNUM: packed union {
                    raw: u3,
                    value: ADC_SAMPNUM,
                },
                padding: u5,
            }),
            ///  Control C
            CTRLC: mmio.Mmio(packed struct(u8) {
                ///  Clock Pre-scaler
                PRESC: packed union {
                    raw: u3,
                    value: ADC_PRESC,
                },
                reserved4: u1,
                ///  Reference Selection
                REFSEL: packed union {
                    raw: u2,
                    value: ADC_REFSEL,
                },
                ///  Sample Capacitance Selection
                SAMPCAP: u1,
                padding: u1,
            }),
            ///  Control D
            CTRLD: mmio.Mmio(packed struct(u8) {
                ///  Sampling Delay Selection
                SAMPDLY: u4,
                ///  Automatic Sampling Delay Variation
                ASDV: packed union {
                    raw: u1,
                    value: ADC_ASDV,
                },
                ///  Initial Delay Selection
                INITDLY: packed union {
                    raw: u3,
                    value: ADC_INITDLY,
                },
            }),
            ///  Control E
            CTRLE: mmio.Mmio(packed struct(u8) {
                ///  Window Comparator Mode
                WINCM: packed union {
                    raw: u3,
                    value: ADC_WINCM,
                },
                padding: u5,
            }),
            ///  Sample Control
            SAMPCTRL: mmio.Mmio(packed struct(u8) {
                ///  Sample lenght
                SAMPLEN: u5,
                padding: u3,
            }),
            ///  Positive mux input
            MUXPOS: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel Selection Bits
                MUXPOS: packed union {
                    raw: u5,
                    value: ADC_MUXPOS,
                },
                padding: u3,
            }),
            reserved8: [1]u8,
            ///  Command
            COMMAND: mmio.Mmio(packed struct(u8) {
                ///  Start Conversion Operation
                STCONV: u1,
                padding: u7,
            }),
            ///  Event Control
            EVCTRL: mmio.Mmio(packed struct(u8) {
                ///  Start Event Input Enable
                STARTEI: u1,
                padding: u7,
            }),
            ///  Interrupt Control
            INTCTRL: mmio.Mmio(packed struct(u8) {
                ///  Result Ready Interrupt Enable
                RESRDY: u1,
                ///  Window Comparator Interrupt Enable
                WCMP: u1,
                padding: u6,
            }),
            ///  Interrupt Flags
            INTFLAGS: mmio.Mmio(packed struct(u8) {
                ///  Result Ready Flag
                RESRDY: u1,
                ///  Window Comparator Flag
                WCMP: u1,
                padding: u6,
            }),
            ///  Debug Control
            DBGCTRL: mmio.Mmio(packed struct(u8) {
                ///  Debug run
                DBGRUN: u1,
                padding: u7,
            }),
            ///  Temporary Data
            TEMP: mmio.Mmio(packed struct(u8) {
                ///  Temporary
                TEMP: u8,
            }),
            reserved16: [2]u8,
            ///  ADC Accumulator Result
            RES: u16,
            ///  Window comparator low threshold
            WINLT: u16,
            ///  Window comparator high threshold
            WINHT: u16,
            ///  Calibration
            CALIB: mmio.Mmio(packed struct(u8) {
                ///  Duty Cycle
                DUTYCYC: packed union {
                    raw: u1,
                    value: ADC_DUTYCYC,
                },
                padding: u7,
            }),
        };

        ///  Bod interface
        pub const BOD = extern struct {
            ///  Operation in active mode select
            pub const BOD_ACTIVE = enum(u2) {
                ///  Disabled
                DIS = 0x0,
                ///  Enabled
                ENABLED = 0x1,
                ///  Sampled
                SAMPLED = 0x2,
                ///  Enabled with wakeup halt
                ENWAKE = 0x3,
            };

            ///  Sample frequency select
            pub const BOD_SAMPFREQ = enum(u1) {
                ///  1kHz sampling
                @"1KHZ" = 0x0,
                ///  125Hz sampling
                @"125Hz" = 0x1,
            };

            ///  Operation in sleep mode select
            pub const BOD_SLEEP = enum(u2) {
                ///  Disabled
                DIS = 0x0,
                ///  Enabled
                ENABLED = 0x1,
                ///  Sampled
                SAMPLED = 0x2,
                _,
            };

            ///  Bod level select
            pub const BOD_LVL = enum(u3) {
                ///  1.8 V
                BODLEVEL0 = 0x0,
                ///  2.6 V
                BODLEVEL2 = 0x2,
                ///  4.2 V
                BODLEVEL7 = 0x7,
                _,
            };

            ///  Configuration select
            pub const BOD_VLMCFG = enum(u2) {
                ///  Interrupt when supply goes below VLM level
                BELOW = 0x0,
                ///  Interrupt when supply goes above VLM level
                ABOVE = 0x1,
                ///  Interrupt when supply crosses VLM level
                CROSS = 0x2,
                _,
            };

            ///  voltage level monitor level select
            pub const BOD_VLMLVL = enum(u2) {
                ///  VLM threshold 5% above BOD level
                @"5ABOVE" = 0x0,
                ///  VLM threshold 15% above BOD level
                @"15ABOVE" = 0x1,
                ///  VLM threshold 25% above BOD level
                @"25ABOVE" = 0x2,
                _,
            };

            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  Operation in sleep mode
                SLEEP: packed union {
                    raw: u2,
                    value: BOD_SLEEP,
                },
                ///  Operation in active mode
                ACTIVE: packed union {
                    raw: u2,
                    value: BOD_ACTIVE,
                },
                ///  Sample frequency
                SAMPFREQ: packed union {
                    raw: u1,
                    value: BOD_SAMPFREQ,
                },
                padding: u3,
            }),
            ///  Control B
            CTRLB: mmio.Mmio(packed struct(u8) {
                ///  Bod level
                LVL: packed union {
                    raw: u3,
                    value: BOD_LVL,
                },
                padding: u5,
            }),
            reserved8: [6]u8,
            ///  Voltage level monitor Control
            VLMCTRLA: mmio.Mmio(packed struct(u8) {
                ///  voltage level monitor level
                VLMLVL: packed union {
                    raw: u2,
                    value: BOD_VLMLVL,
                },
                padding: u6,
            }),
            ///  Voltage level monitor interrupt Control
            INTCTRL: mmio.Mmio(packed struct(u8) {
                ///  voltage level monitor interrrupt enable
                VLMIE: u1,
                ///  Configuration
                VLMCFG: packed union {
                    raw: u2,
                    value: BOD_VLMCFG,
                },
                padding: u5,
            }),
            ///  Voltage level monitor interrupt Flags
            INTFLAGS: mmio.Mmio(packed struct(u8) {
                ///  Voltage level monitor interrupt flag
                VLMIF: u1,
                padding: u7,
            }),
            ///  Voltage level monitor status
            STATUS: mmio.Mmio(packed struct(u8) {
                ///  Voltage level monitor status
                VLMS: u1,
                padding: u7,
            }),
        };

        ///  Configurable Custom Logic
        pub const CCL = extern struct {
            ///  Edge Detection Enable select
            pub const CCL_EDGEDET = enum(u1) {
                ///  Edge detector is disabled
                DIS = 0x0,
                ///  Edge detector is enabled
                EN = 0x1,
            };

            ///  Filter Selection
            pub const CCL_FILTSEL = enum(u2) {
                ///  Filter disabled
                DISABLE = 0x0,
                ///  Synchronizer enabled
                SYNCH = 0x1,
                ///  Filter enabled
                FILTER = 0x2,
                _,
            };

            ///  LUT Input 0 Source Selection
            pub const CCL_INSEL0 = enum(u4) {
                ///  Masked input
                MASK = 0x0,
                ///  Feedback input source
                FEEDBACK = 0x1,
                ///  Linked LUT input source
                LINK = 0x2,
                ///  Event input source 0
                EVENT0 = 0x3,
                ///  Event input source 1
                EVENT1 = 0x4,
                ///  IO pin LUTn-IN0 input source
                IO = 0x5,
                ///  AC0 OUT input source
                AC0 = 0x6,
                ///  TCB0 WO input source
                TCB0 = 0x7,
                ///  TCA0 WO0 input source
                TCA0 = 0x8,
                ///  TCD0 WOA input source
                TCD0 = 0x9,
                ///  USART0 XCK input source
                USART0 = 0xa,
                ///  SPI0 SCK source
                SPI0 = 0xb,
                _,
            };

            ///  LUT Input 1 Source Selection
            pub const CCL_INSEL1 = enum(u4) {
                ///  Masked input
                MASK = 0x0,
                ///  Feedback input source
                FEEDBACK = 0x1,
                ///  Linked LUT input source
                LINK = 0x2,
                ///  Event input source 0
                EVENT0 = 0x3,
                ///  Event input source 1
                EVENT1 = 0x4,
                ///  IO pin LUTn-N1 input source
                IO = 0x5,
                ///  AC0 OUT input source
                AC0 = 0x6,
                ///  TCB0 WO input source
                TCB0 = 0x7,
                ///  TCA0 WO1 input source
                TCA0 = 0x8,
                ///  TCD0 WOB input source
                TCD0 = 0x9,
                ///  USART0 TXD input source
                USART0 = 0xa,
                ///  SPI0 MOSI input source
                SPI0 = 0xb,
                _,
            };

            ///  LUT Input 2 Source Selection
            pub const CCL_INSEL2 = enum(u4) {
                ///  Masked input
                MASK = 0x0,
                ///  Feedback input source
                FEEDBACK = 0x1,
                ///  Linked LUT input source
                LINK = 0x2,
                ///  Event input source 0
                EVENT0 = 0x3,
                ///  Event input source 1
                EVENT1 = 0x4,
                ///  IO pin LUTn-IN2 input source
                IO = 0x5,
                ///  AC0 OUT input source
                AC0 = 0x6,
                ///  TCB0 WO input source
                TCB0 = 0x7,
                ///  TCA0 WO2 input source
                TCA0 = 0x8,
                ///  TCD0 WOA input source
                TCD0 = 0x9,
                ///  SPI0 MISO source
                SPI0 = 0xb,
                _,
            };

            ///  Sequential Selection
            pub const CCL_SEQSEL = enum(u3) {
                ///  Sequential logic disabled
                DISABLE = 0x0,
                ///  D FlipFlop
                DFF = 0x1,
                ///  JK FlipFlop
                JK = 0x2,
                ///  D Latch
                LATCH = 0x3,
                ///  RS Latch
                RS = 0x4,
                _,
            };

            ///  Control Register A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  Enable
                ENABLE: u1,
                reserved6: u5,
                ///  Run in Standby
                RUNSTDBY: u1,
                padding: u1,
            }),
            ///  Sequential Control 0
            SEQCTRL0: mmio.Mmio(packed struct(u8) {
                ///  Sequential Selection
                SEQSEL: packed union {
                    raw: u3,
                    value: CCL_SEQSEL,
                },
                padding: u5,
            }),
            reserved5: [3]u8,
            ///  LUT Control 0 A
            LUT0CTRLA: mmio.Mmio(packed struct(u8) {
                ///  LUT Enable
                ENABLE: u1,
                reserved3: u2,
                ///  Output Enable
                OUTEN: u1,
                ///  Filter Selection
                FILTSEL: packed union {
                    raw: u2,
                    value: CCL_FILTSEL,
                },
                ///  Clock Source Selection
                CLKSRC: u1,
                ///  Edge Detection Enable
                EDGEDET: packed union {
                    raw: u1,
                    value: CCL_EDGEDET,
                },
            }),
            ///  LUT Control 0 B
            LUT0CTRLB: mmio.Mmio(packed struct(u8) {
                ///  LUT Input 0 Source Selection
                INSEL0: packed union {
                    raw: u4,
                    value: CCL_INSEL0,
                },
                ///  LUT Input 1 Source Selection
                INSEL1: packed union {
                    raw: u4,
                    value: CCL_INSEL1,
                },
            }),
            ///  LUT Control 0 C
            LUT0CTRLC: mmio.Mmio(packed struct(u8) {
                ///  LUT Input 2 Source Selection
                INSEL2: packed union {
                    raw: u4,
                    value: CCL_INSEL2,
                },
                padding: u4,
            }),
            ///  Truth 0
            TRUTH0: mmio.Mmio(packed struct(u8) {
                ///  Truth Table
                TRUTH: u8,
            }),
            ///  LUT Control 1 A
            LUT1CTRLA: mmio.Mmio(packed struct(u8) {
                ///  LUT Enable
                ENABLE: u1,
                reserved3: u2,
                ///  Output Enable
                OUTEN: u1,
                ///  Filter Selection
                FILTSEL: packed union {
                    raw: u2,
                    value: CCL_FILTSEL,
                },
                ///  Clock Source Selection
                CLKSRC: u1,
                ///  Edge Detection Enable
                EDGEDET: packed union {
                    raw: u1,
                    value: CCL_EDGEDET,
                },
            }),
            ///  LUT Control 1 B
            LUT1CTRLB: mmio.Mmio(packed struct(u8) {
                ///  LUT Input 0 Source Selection
                INSEL0: packed union {
                    raw: u4,
                    value: CCL_INSEL0,
                },
                ///  LUT Input 1 Source Selection
                INSEL1: packed union {
                    raw: u4,
                    value: CCL_INSEL1,
                },
            }),
            ///  LUT Control 1 C
            LUT1CTRLC: mmio.Mmio(packed struct(u8) {
                ///  LUT Input 2 Source Selection
                INSEL2: packed union {
                    raw: u4,
                    value: CCL_INSEL2,
                },
                padding: u4,
            }),
            ///  Truth 1
            TRUTH1: mmio.Mmio(packed struct(u8) {
                ///  Truth Table
                TRUTH: u8,
            }),
        };

        ///  Clock controller
        pub const CLKCTRL = extern struct {
            ///  Clock select
            pub const CLKCTRL_CLKSEL = enum(u2) {
                ///  20MHz internal oscillator
                OSC20M = 0x0,
                ///  32KHz internal Ultra Low Power oscillator
                OSCULP32K = 0x1,
                ///  External clock
                EXTCLK = 0x3,
                _,
            };

            ///  Prescaler division select
            pub const CLKCTRL_PDIV = enum(u4) {
                ///  2X
                @"2X" = 0x0,
                ///  4X
                @"4X" = 0x1,
                ///  8X
                @"8X" = 0x2,
                ///  16X
                @"16X" = 0x3,
                ///  32X
                @"32X" = 0x4,
                ///  64X
                @"64X" = 0x5,
                ///  6X
                @"6X" = 0x8,
                ///  10X
                @"10X" = 0x9,
                ///  12X
                @"12X" = 0xa,
                ///  24X
                @"24X" = 0xb,
                ///  48X
                @"48X" = 0xc,
                _,
            };

            ///  MCLK Control A
            MCLKCTRLA: mmio.Mmio(packed struct(u8) {
                ///  Clock select
                CLKSEL: packed union {
                    raw: u2,
                    value: CLKCTRL_CLKSEL,
                },
                reserved7: u5,
                ///  System clock out
                CLKOUT: u1,
            }),
            ///  MCLK Control B
            MCLKCTRLB: mmio.Mmio(packed struct(u8) {
                ///  Prescaler enable
                PEN: u1,
                ///  Prescaler division
                PDIV: packed union {
                    raw: u4,
                    value: CLKCTRL_PDIV,
                },
                padding: u3,
            }),
            ///  MCLK Lock
            MCLKLOCK: mmio.Mmio(packed struct(u8) {
                ///  lock ebable
                LOCKEN: u1,
                padding: u7,
            }),
            ///  MCLK Status
            MCLKSTATUS: mmio.Mmio(packed struct(u8) {
                ///  System Oscillator changing
                SOSC: u1,
                reserved4: u3,
                ///  20MHz oscillator status
                OSC20MS: u1,
                ///  32KHz oscillator status
                OSC32KS: u1,
                reserved7: u1,
                ///  External Clock status
                EXTS: u1,
            }),
            reserved16: [12]u8,
            ///  OSC20M Control A
            OSC20MCTRLA: mmio.Mmio(packed struct(u8) {
                reserved1: u1,
                ///  Run standby
                RUNSTDBY: u1,
                padding: u6,
            }),
            ///  OSC20M Calibration A
            OSC20MCALIBA: mmio.Mmio(packed struct(u8) {
                ///  Calibration
                CAL20M: u6,
                padding: u2,
            }),
            ///  OSC20M Calibration B
            OSC20MCALIBB: mmio.Mmio(packed struct(u8) {
                ///  Oscillator temperature coefficient
                TEMPCAL20M: u4,
                reserved7: u3,
                ///  Lock
                LOCK: u1,
            }),
            reserved24: [5]u8,
            ///  OSC32K Control A
            OSC32KCTRLA: mmio.Mmio(packed struct(u8) {
                reserved1: u1,
                ///  Run standby
                RUNSTDBY: u1,
                padding: u6,
            }),
        };

        ///  CPU
        pub const CPU = extern struct {
            ///  CCP signature select
            pub const CPU_CCP = enum(u8) {
                ///  SPM Instruction Protection
                SPM = 0x9d,
                ///  IO Register Protection
                IOREG = 0xd8,
                _,
            };

            ///  Configuration Change Protection
            CCP: mmio.Mmio(packed struct(u8) {
                ///  CCP signature
                CCP: packed union {
                    raw: u8,
                    value: CPU_CCP,
                },
            }),
            reserved9: [8]u8,
            ///  Stack Pointer Low
            SPL: u8,
            ///  Stack Pointer High
            SPH: u8,
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
                ///  N Exclusive Or V Flag
                S: u1,
                ///  Half Carry Flag
                H: u1,
                ///  Transfer Bit
                T: u1,
                ///  Global Interrupt Enable Flag
                I: u1,
            }),
        };

        ///  Interrupt Controller
        pub const CPUINT = extern struct {
            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  Round-robin Scheduling Enable
                LVL0RR: u1,
                reserved5: u4,
                ///  Compact Vector Table
                CVT: u1,
                ///  Interrupt Vector Select
                IVSEL: u1,
                padding: u1,
            }),
            ///  Status
            STATUS: mmio.Mmio(packed struct(u8) {
                ///  Level 0 Interrupt Executing
                LVL0EX: u1,
                ///  Level 1 Interrupt Executing
                LVL1EX: u1,
                reserved7: u5,
                ///  Non-maskable Interrupt Executing
                NMIEX: u1,
            }),
            ///  Interrupt Level 0 Priority
            LVL0PRI: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Level Priority
                LVL0PRI: u8,
            }),
            ///  Interrupt Level 1 Priority Vector
            LVL1VEC: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Vector with High Priority
                LVL1VEC: u8,
            }),
        };

        ///  CRCSCAN
        pub const CRCSCAN = extern struct {
            ///  CRC Flash Access Mode select
            pub const CRCSCAN_MODE = enum(u2) {
                ///  Priority to flash
                PRIORITY = 0x0,
                _,
            };

            ///  CRC Source select
            pub const CRCSCAN_SRC = enum(u2) {
                ///  CRC on entire flash
                FLASH = 0x0,
                ///  CRC on boot and appl section of flash
                APPLICATION = 0x1,
                ///  CRC on boot section of flash
                BOOT = 0x2,
                _,
            };

            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  Enable CRC scan
                ENABLE: u1,
                ///  Enable NMI Trigger
                NMIEN: u1,
                reserved7: u5,
                ///  Reset CRC scan
                RESET: u1,
            }),
            ///  Control B
            CTRLB: mmio.Mmio(packed struct(u8) {
                ///  CRC Source
                SRC: packed union {
                    raw: u2,
                    value: CRCSCAN_SRC,
                },
                reserved4: u2,
                ///  CRC Flash Access Mode
                MODE: packed union {
                    raw: u2,
                    value: CRCSCAN_MODE,
                },
                padding: u2,
            }),
            ///  Status
            STATUS: mmio.Mmio(packed struct(u8) {
                ///  CRC Busy
                BUSY: u1,
                ///  CRC Ok
                OK: u1,
                padding: u6,
            }),
        };

        ///  Event System
        pub const EVSYS = extern struct {
            ///  Asynchronous Channel 0 Generator Selection
            pub const EVSYS_ASYNCCH0 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Configurable Custom Logic LUT0
                CCL_LUT0 = 0x1,
                ///  Configurable Custom Logic LUT1
                CCL_LUT1 = 0x2,
                ///  Analog Comparator 0 out
                AC0_OUT = 0x3,
                ///  Timer/Counter D0 compare B clear
                TCD0_CMPBCLR = 0x4,
                ///  Timer/Counter D0 compare A set
                TCD0_CMPASET = 0x5,
                ///  Timer/Counter D0 compare B set
                TCD0_CMPBSET = 0x6,
                ///  Timer/Counter D0 program event
                TCD0_PROGEV = 0x7,
                ///  Real Time Counter overflow
                RTC_OVF = 0x8,
                ///  Real Time Counter compare
                RTC_CMP = 0x9,
                ///  Asynchronous Event from Pin PA0
                PORTA_PIN0 = 0xa,
                ///  Asynchronous Event from Pin PA1
                PORTA_PIN1 = 0xb,
                ///  Asynchronous Event from Pin PA2
                PORTA_PIN2 = 0xc,
                ///  Asynchronous Event from Pin PA3
                PORTA_PIN3 = 0xd,
                ///  Asynchronous Event from Pin PA4
                PORTA_PIN4 = 0xe,
                ///  Asynchronous Event from Pin PA5
                PORTA_PIN5 = 0xf,
                ///  Asynchronous Event from Pin PA6
                PORTA_PIN6 = 0x10,
                ///  Asynchronous Event from Pin PA7
                PORTA_PIN7 = 0x11,
                ///  Unified Program and debug interface
                UPDI = 0x12,
                _,
            };

            ///  Asynchronous Channel 1 Generator Selection
            pub const EVSYS_ASYNCCH1 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Configurable custom logic LUT0
                CCL_LUT0 = 0x1,
                ///  Configurable custom logic LUT1
                CCL_LUT1 = 0x2,
                ///  Analog Comparator 0 out
                AC0_OUT = 0x3,
                ///  Timer/Counter D0 compare B clear
                TCD0_CMPBCLR = 0x4,
                ///  Timer/Counter D0 compare A set
                TCD0_CMPASET = 0x5,
                ///  Timer/Counter D0 compare B set
                TCD0_CMPBSET = 0x6,
                ///  Timer/Counter D0 program event
                TCD0_PROGEV = 0x7,
                ///  Real Time Counter overflow
                RTC_OVF = 0x8,
                ///  Real Time Counter compare
                RTC_CMP = 0x9,
                ///  Asynchronous Event from Pin PB0
                PORTB_PIN0 = 0xa,
                ///  Asynchronous Event from Pin PB1
                PORTB_PIN1 = 0xb,
                ///  Asynchronous Event from Pin PB2
                PORTB_PIN2 = 0xc,
                ///  Asynchronous Event from Pin PB3
                PORTB_PIN3 = 0xd,
                ///  Asynchronous Event from Pin PB4
                PORTB_PIN4 = 0xe,
                ///  Asynchronous Event from Pin PB5
                PORTB_PIN5 = 0xf,
                ///  Asynchronous Event from Pin PB6
                PORTB_PIN6 = 0x10,
                ///  Asynchronous Event from Pin PB7
                PORTB_PIN7 = 0x11,
                _,
            };

            ///  Asynchronous User Ch 0 Input Selection - TCB0
            pub const EVSYS_ASYNCUSER0 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Synchronous Event Channel 0
                SYNCCH0 = 0x1,
                ///  Asynchronous Event Channel 0
                ASYNCCH0 = 0x3,
                ///  Asynchronous Event Channel 1
                ASYNCCH1 = 0x4,
                _,
            };

            ///  Asynchronous User Ch 1 Input Selection - ADC0
            pub const EVSYS_ASYNCUSER1 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Synchronous Event Channel 0
                SYNCCH0 = 0x1,
                ///  Asynchronous Event Channel 0
                ASYNCCH0 = 0x3,
                ///  Asynchronous Event Channel 1
                ASYNCCH1 = 0x4,
                _,
            };

            ///  Asynchronous User Ch 2 Input Selection - CCL LUT0 Event 0
            pub const EVSYS_ASYNCUSER2 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Synchronous Event Channel 0
                SYNCCH0 = 0x1,
                ///  Asynchronous Event Channel 0
                ASYNCCH0 = 0x3,
                ///  Asynchronous Event Channel 1
                ASYNCCH1 = 0x4,
                _,
            };

            ///  Asynchronous User Ch 3 Input Selection - CCL LUT1 Event 0
            pub const EVSYS_ASYNCUSER3 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Synchronous Event Channel 0
                SYNCCH0 = 0x1,
                ///  Asynchronous Event Channel 0
                ASYNCCH0 = 0x3,
                ///  Asynchronous Event Channel 1
                ASYNCCH1 = 0x4,
                _,
            };

            ///  Asynchronous User Ch 4 Input Selection - CCL LUT0 Event 1
            pub const EVSYS_ASYNCUSER4 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Synchronous Event Channel 0
                SYNCCH0 = 0x1,
                ///  Asynchronous Event Channel 0
                ASYNCCH0 = 0x3,
                ///  Asynchronous Event Channel 1
                ASYNCCH1 = 0x4,
                _,
            };

            ///  Asynchronous User Ch 5 Input Selection - CCL LUT1 Event 1
            pub const EVSYS_ASYNCUSER5 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Synchronous Event Channel 0
                SYNCCH0 = 0x1,
                ///  Asynchronous Event Channel 0
                ASYNCCH0 = 0x3,
                ///  Asynchronous Event Channel 1
                ASYNCCH1 = 0x4,
                _,
            };

            ///  Asynchronous User Ch 6 Input Selection - TCD0 Event 0
            pub const EVSYS_ASYNCUSER6 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Synchronous Event Channel 0
                SYNCCH0 = 0x1,
                ///  Asynchronous Event Channel 0
                ASYNCCH0 = 0x3,
                ///  Asynchronous Event Channel 1
                ASYNCCH1 = 0x4,
                _,
            };

            ///  Asynchronous User Ch 7 Input Selection - TCD0 Event 1
            pub const EVSYS_ASYNCUSER7 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Synchronous Event Channel 0
                SYNCCH0 = 0x1,
                ///  Asynchronous Event Channel 0
                ASYNCCH0 = 0x3,
                ///  Asynchronous Event Channel 1
                ASYNCCH1 = 0x4,
                _,
            };

            ///  Asynchronous User Ch 8 Input Selection - Event Out 0
            pub const EVSYS_ASYNCUSER8 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Synchronous Event Channel 0
                SYNCCH0 = 0x1,
                ///  Asynchronous Event Channel 0
                ASYNCCH0 = 0x3,
                ///  Asynchronous Event Channel 1
                ASYNCCH1 = 0x4,
                _,
            };

            ///  Asynchronous User Ch 9 Input Selection - Event Out 1
            pub const EVSYS_ASYNCUSER9 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Synchronous Event Channel 0
                SYNCCH0 = 0x1,
                ///  Asynchronous Event Channel 0
                ASYNCCH0 = 0x3,
                ///  Asynchronous Event Channel 1
                ASYNCCH1 = 0x4,
                _,
            };

            ///  Asynchronous User Ch 10 Input Selection - Event Out 2
            pub const EVSYS_ASYNCUSER10 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Synchronous Event Channel 0
                SYNCCH0 = 0x1,
                ///  Asynchronous Event Channel 0
                ASYNCCH0 = 0x3,
                ///  Asynchronous Event Channel 1
                ASYNCCH1 = 0x4,
                _,
            };

            ///  Synchronous Channel 0 Generator Selection
            pub const EVSYS_SYNCCH0 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Timer/Counter B0
                TCB0 = 0x1,
                ///  Timer/Counter A0 overflow
                TCA0_OVF_LUNF = 0x2,
                ///  Timer/Counter A0 underflow high byte (split mode)
                TCA0_HUNF = 0x3,
                ///  Timer/Counter A0 compare 0
                TCA0_CMP0 = 0x4,
                ///  Timer/Counter A0 compare 1
                TCA0_CMP1 = 0x5,
                ///  Timer/Counter A0 compare 2
                TCA0_CMP2 = 0x6,
                ///  Synchronous Event from Pin PC0
                PORTC_PIN0 = 0x7,
                ///  Synchronous Event from Pin PC1
                PORTC_PIN1 = 0x8,
                ///  Synchronous Event from Pin PC2
                PORTC_PIN2 = 0x9,
                ///  Synchronous Event from Pin PC3
                PORTC_PIN3 = 0xa,
                ///  Synchronous Event from Pin PC4
                PORTC_PIN4 = 0xb,
                ///  Synchronous Event from Pin PC5
                PORTC_PIN5 = 0xc,
                ///  Synchronous Event from Pin PA0
                PORTA_PIN0 = 0xd,
                ///  Synchronous Event from Pin PA1
                PORTA_PIN1 = 0xe,
                ///  Synchronous Event from Pin PA2
                PORTA_PIN2 = 0xf,
                ///  Synchronous Event from Pin PA3
                PORTA_PIN3 = 0x10,
                ///  Synchronous Event from Pin PA4
                PORTA_PIN4 = 0x11,
                ///  Synchronous Event from Pin PA5
                PORTA_PIN5 = 0x12,
                ///  Synchronous Event from Pin PA6
                PORTA_PIN6 = 0x13,
                ///  Synchronous Event from Pin PA7
                PORTA_PIN7 = 0x14,
                _,
            };

            ///  Synchronous Channel 1 Generator Selection
            pub const EVSYS_SYNCCH1 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Timer/Counter B0
                TCB0 = 0x1,
                ///  Timer/Counter A0 overflow
                TCA0_OVF_LUNF = 0x2,
                ///  Timer/Counter A0 underflow high byte (split mode)
                TCA0_HUNF = 0x3,
                ///  Timer/Counter A0 compare 0
                TCA0_CMP0 = 0x4,
                ///  Timer/Counter A0 compare 1
                TCA0_CMP1 = 0x5,
                ///  Timer/Counter A0 compare 2
                TCA0_CMP2 = 0x6,
                ///  Synchronous Event from Pin PB0
                PORTB_PIN0 = 0x8,
                ///  Synchronous Event from Pin PB1
                PORTB_PIN1 = 0x9,
                ///  Synchronous Event from Pin PB2
                PORTB_PIN2 = 0xa,
                ///  Synchronous Event from Pin PB3
                PORTB_PIN3 = 0xb,
                ///  Synchronous Event from Pin PB4
                PORTB_PIN4 = 0xc,
                ///  Synchronous Event from Pin PB5
                PORTB_PIN5 = 0xd,
                ///  Synchronous Event from Pin PB6
                PORTB_PIN6 = 0xe,
                ///  Synchronous Event from Pin PB7
                PORTB_PIN7 = 0xf,
                _,
            };

            ///  Synchronous User Ch 0 Input Selection - TCA0
            pub const EVSYS_SYNCUSER0 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Synchronous Event Channel 0
                SYNCCH0 = 0x1,
                _,
            };

            ///  Asynchronous Channel Strobe
            ASYNCSTROBE: u8,
            ///  Synchronous Channel Strobe
            SYNCSTROBE: u8,
            ///  Asynchronous Channel 0 Generator Selection
            ASYNCCH0: mmio.Mmio(packed struct(u8) {
                ///  Asynchronous Channel 0 Generator Selection
                ASYNCCH0: packed union {
                    raw: u8,
                    value: EVSYS_ASYNCCH0,
                },
            }),
            ///  Asynchronous Channel 1 Generator Selection
            ASYNCCH1: mmio.Mmio(packed struct(u8) {
                ///  Asynchronous Channel 1 Generator Selection
                ASYNCCH1: packed union {
                    raw: u8,
                    value: EVSYS_ASYNCCH1,
                },
            }),
            reserved10: [6]u8,
            ///  Synchronous Channel 0 Generator Selection
            SYNCCH0: mmio.Mmio(packed struct(u8) {
                ///  Synchronous Channel 0 Generator Selection
                SYNCCH0: packed union {
                    raw: u8,
                    value: EVSYS_SYNCCH0,
                },
            }),
            ///  Synchronous Channel 1 Generator Selection
            SYNCCH1: mmio.Mmio(packed struct(u8) {
                ///  Synchronous Channel 1 Generator Selection
                SYNCCH1: packed union {
                    raw: u8,
                    value: EVSYS_SYNCCH1,
                },
            }),
            reserved18: [6]u8,
            ///  Asynchronous User Ch 0 Input Selection - TCB0
            ASYNCUSER0: mmio.Mmio(packed struct(u8) {
                ///  Asynchronous User Ch 0 Input Selection - TCB0
                ASYNCUSER0: packed union {
                    raw: u8,
                    value: EVSYS_ASYNCUSER0,
                },
            }),
            ///  Asynchronous User Ch 1 Input Selection - ADC0
            ASYNCUSER1: mmio.Mmio(packed struct(u8) {
                ///  Asynchronous User Ch 1 Input Selection - ADC0
                ASYNCUSER1: packed union {
                    raw: u8,
                    value: EVSYS_ASYNCUSER1,
                },
            }),
            ///  Asynchronous User Ch 2 Input Selection - CCL LUT0 Event 0
            ASYNCUSER2: mmio.Mmio(packed struct(u8) {
                ///  Asynchronous User Ch 2 Input Selection - CCL LUT0 Event 0
                ASYNCUSER2: packed union {
                    raw: u8,
                    value: EVSYS_ASYNCUSER2,
                },
            }),
            ///  Asynchronous User Ch 3 Input Selection - CCL LUT1 Event 0
            ASYNCUSER3: mmio.Mmio(packed struct(u8) {
                ///  Asynchronous User Ch 3 Input Selection - CCL LUT1 Event 0
                ASYNCUSER3: packed union {
                    raw: u8,
                    value: EVSYS_ASYNCUSER3,
                },
            }),
            ///  Asynchronous User Ch 4 Input Selection - CCL LUT0 Event 1
            ASYNCUSER4: mmio.Mmio(packed struct(u8) {
                ///  Asynchronous User Ch 4 Input Selection - CCL LUT0 Event 1
                ASYNCUSER4: packed union {
                    raw: u8,
                    value: EVSYS_ASYNCUSER4,
                },
            }),
            ///  Asynchronous User Ch 5 Input Selection - CCL LUT1 Event 1
            ASYNCUSER5: mmio.Mmio(packed struct(u8) {
                ///  Asynchronous User Ch 5 Input Selection - CCL LUT1 Event 1
                ASYNCUSER5: packed union {
                    raw: u8,
                    value: EVSYS_ASYNCUSER5,
                },
            }),
            ///  Asynchronous User Ch 6 Input Selection - TCD0 Event 0
            ASYNCUSER6: mmio.Mmio(packed struct(u8) {
                ///  Asynchronous User Ch 6 Input Selection - TCD0 Event 0
                ASYNCUSER6: packed union {
                    raw: u8,
                    value: EVSYS_ASYNCUSER6,
                },
            }),
            ///  Asynchronous User Ch 7 Input Selection - TCD0 Event 1
            ASYNCUSER7: mmio.Mmio(packed struct(u8) {
                ///  Asynchronous User Ch 7 Input Selection - TCD0 Event 1
                ASYNCUSER7: packed union {
                    raw: u8,
                    value: EVSYS_ASYNCUSER7,
                },
            }),
            ///  Asynchronous User Ch 8 Input Selection - Event Out 0
            ASYNCUSER8: mmio.Mmio(packed struct(u8) {
                ///  Asynchronous User Ch 8 Input Selection - Event Out 0
                ASYNCUSER8: packed union {
                    raw: u8,
                    value: EVSYS_ASYNCUSER8,
                },
            }),
            ///  Asynchronous User Ch 9 Input Selection - Event Out 1
            ASYNCUSER9: mmio.Mmio(packed struct(u8) {
                ///  Asynchronous User Ch 9 Input Selection - Event Out 1
                ASYNCUSER9: packed union {
                    raw: u8,
                    value: EVSYS_ASYNCUSER9,
                },
            }),
            ///  Asynchronous User Ch 10 Input Selection - Event Out 2
            ASYNCUSER10: mmio.Mmio(packed struct(u8) {
                ///  Asynchronous User Ch 10 Input Selection - Event Out 2
                ASYNCUSER10: packed union {
                    raw: u8,
                    value: EVSYS_ASYNCUSER10,
                },
            }),
            reserved34: [5]u8,
            ///  Synchronous User Ch 0 Input Selection - TCA0
            SYNCUSER0: mmio.Mmio(packed struct(u8) {
                ///  Synchronous User Ch 0 Input Selection - TCA0
                SYNCUSER0: packed union {
                    raw: u8,
                    value: EVSYS_SYNCUSER0,
                },
            }),
        };

        ///  Fuses
        pub const FUSE = extern struct {
            ///  BOD Operation in Active Mode select
            pub const FUSE_ACTIVE = enum(u2) {
                ///  Disabled
                DIS = 0x0,
                ///  Enabled
                ENABLED = 0x1,
                ///  Sampled
                SAMPLED = 0x2,
                ///  Enabled with wake-up halted until BOD is ready
                ENWAKE = 0x3,
            };

            ///  BOD Level select
            pub const FUSE_LVL = enum(u3) {
                ///  1.8 V
                BODLEVEL0 = 0x0,
                ///  2.6 V
                BODLEVEL2 = 0x2,
                ///  4.2 V
                BODLEVEL7 = 0x7,
                _,
            };

            ///  BOD Sample Frequency select
            pub const FUSE_SAMPFREQ = enum(u1) {
                ///  1kHz sampling frequency
                @"1KHz" = 0x0,
                ///  125Hz sampling frequency
                @"125Hz" = 0x1,
            };

            ///  BOD Operation in Sleep Mode select
            pub const FUSE_SLEEP = enum(u2) {
                ///  Disabled
                DIS = 0x0,
                ///  Enabled
                ENABLED = 0x1,
                ///  Sampled
                SAMPLED = 0x2,
                _,
            };

            ///  Frequency Select
            pub const FUSE_FREQSEL = enum(u2) {
                ///  16 MHz
                @"16MHZ" = 0x1,
                ///  20 MHz
                @"20MHZ" = 0x2,
                _,
            };

            ///  CRC Source select
            pub const FUSE_CRCSRC = enum(u2) {
                ///  The CRC is performed on the entire Flash (boot, application code and application data section).
                FLASH = 0x0,
                ///  The CRC is performed on the boot section of Flash
                BOOT = 0x1,
                ///  The CRC is performed on the boot and application code section of Flash
                BOOTAPP = 0x2,
                ///  Disable CRC.
                NOCRC = 0x3,
            };

            ///  Reset Pin Configuration select
            pub const FUSE_RSTPINCFG = enum(u2) {
                ///  GPIO mode
                GPIO = 0x0,
                ///  UPDI mode
                UPDI = 0x1,
                ///  Reset mode
                RST = 0x2,
                _,
            };

            ///  Startup Time select
            pub const FUSE_SUT = enum(u3) {
                ///  0 ms
                @"0MS" = 0x0,
                ///  1 ms
                @"1MS" = 0x1,
                ///  2 ms
                @"2MS" = 0x2,
                ///  4 ms
                @"4MS" = 0x3,
                ///  8 ms
                @"8MS" = 0x4,
                ///  16 ms
                @"16MS" = 0x5,
                ///  32 ms
                @"32MS" = 0x6,
                ///  64 ms
                @"64MS" = 0x7,
            };

            ///  Watchdog Timeout Period select
            pub const FUSE_PERIOD = enum(u4) {
                ///  Watch-Dog timer Off
                OFF = 0x0,
                ///  8 cycles (8ms)
                @"8CLK" = 0x1,
                ///  16 cycles (16ms)
                @"16CLK" = 0x2,
                ///  32 cycles (32ms)
                @"32CLK" = 0x3,
                ///  64 cycles (64ms)
                @"64CLK" = 0x4,
                ///  128 cycles (0.128s)
                @"128CLK" = 0x5,
                ///  256 cycles (0.256s)
                @"256CLK" = 0x6,
                ///  512 cycles (0.512s)
                @"512CLK" = 0x7,
                ///  1K cycles (1.0s)
                @"1KCLK" = 0x8,
                ///  2K cycles (2.0s)
                @"2KCLK" = 0x9,
                ///  4K cycles (4.1s)
                @"4KCLK" = 0xa,
                ///  8K cycles (8.2s)
                @"8KCLK" = 0xb,
                _,
            };

            ///  Watchdog Window Timeout Period select
            pub const FUSE_WINDOW = enum(u4) {
                ///  Window mode off
                OFF = 0x0,
                ///  8 cycles (8ms)
                @"8CLK" = 0x1,
                ///  16 cycles (16ms)
                @"16CLK" = 0x2,
                ///  32 cycles (32ms)
                @"32CLK" = 0x3,
                ///  64 cycles (64ms)
                @"64CLK" = 0x4,
                ///  128 cycles (0.128s)
                @"128CLK" = 0x5,
                ///  256 cycles (0.256s)
                @"256CLK" = 0x6,
                ///  512 cycles (0.512s)
                @"512CLK" = 0x7,
                ///  1K cycles (1.0s)
                @"1KCLK" = 0x8,
                ///  2K cycles (2.0s)
                @"2KCLK" = 0x9,
                ///  4K cycles (4.1s)
                @"4KCLK" = 0xa,
                ///  8K cycles (8.2s)
                @"8KCLK" = 0xb,
                _,
            };

            ///  Watchdog Configuration
            WDTCFG: mmio.Mmio(packed struct(u8) {
                ///  Watchdog Timeout Period
                PERIOD: packed union {
                    raw: u4,
                    value: FUSE_PERIOD,
                },
                ///  Watchdog Window Timeout Period
                WINDOW: packed union {
                    raw: u4,
                    value: FUSE_WINDOW,
                },
            }),
            ///  BOD Configuration
            BODCFG: mmio.Mmio(packed struct(u8) {
                ///  BOD Operation in Sleep Mode
                SLEEP: packed union {
                    raw: u2,
                    value: FUSE_SLEEP,
                },
                ///  BOD Operation in Active Mode
                ACTIVE: packed union {
                    raw: u2,
                    value: FUSE_ACTIVE,
                },
                ///  BOD Sample Frequency
                SAMPFREQ: packed union {
                    raw: u1,
                    value: FUSE_SAMPFREQ,
                },
                ///  BOD Level
                LVL: packed union {
                    raw: u3,
                    value: FUSE_LVL,
                },
            }),
            ///  Oscillator Configuration
            OSCCFG: mmio.Mmio(packed struct(u8) {
                ///  Frequency Select
                FREQSEL: packed union {
                    raw: u2,
                    value: FUSE_FREQSEL,
                },
                reserved7: u5,
                ///  Oscillator Lock
                OSCLOCK: u1,
            }),
            reserved4: [1]u8,
            ///  TCD0 Configuration
            TCD0CFG: mmio.Mmio(packed struct(u8) {
                ///  Compare A Default Output Value
                CMPA: u1,
                ///  Compare B Default Output Value
                CMPB: u1,
                ///  Compare C Default Output Value
                CMPC: u1,
                ///  Compare D Default Output Value
                CMPD: u1,
                ///  Compare A Output Enable
                CMPAEN: u1,
                ///  Compare B Output Enable
                CMPBEN: u1,
                ///  Compare C Output Enable
                CMPCEN: u1,
                ///  Compare D Output Enable
                CMPDEN: u1,
            }),
            ///  System Configuration 0
            SYSCFG0: mmio.Mmio(packed struct(u8) {
                ///  EEPROM Save
                EESAVE: u1,
                reserved2: u1,
                ///  Reset Pin Configuration
                RSTPINCFG: packed union {
                    raw: u2,
                    value: FUSE_RSTPINCFG,
                },
                reserved6: u2,
                ///  CRC Source
                CRCSRC: packed union {
                    raw: u2,
                    value: FUSE_CRCSRC,
                },
            }),
            ///  System Configuration 1
            SYSCFG1: mmio.Mmio(packed struct(u8) {
                ///  Startup Time
                SUT: packed union {
                    raw: u3,
                    value: FUSE_SUT,
                },
                padding: u5,
            }),
            ///  Application Code Section End
            APPEND: u8,
            ///  Boot Section End
            BOOTEND: u8,
        };

        ///  General Purpose IO
        pub const GPIO = extern struct {
            ///  General Purpose IO Register 0
            GPIOR0: u8,
            ///  General Purpose IO Register 1
            GPIOR1: u8,
            ///  General Purpose IO Register 2
            GPIOR2: u8,
            ///  General Purpose IO Register 3
            GPIOR3: u8,
        };

        ///  Lockbit
        pub const LOCKBIT = extern struct {
            ///  Lock Bits select
            pub const LOCKBIT_LB = enum(u8) {
                ///  Read and write lock
                RWLOCK = 0x3a,
                ///  No locks
                NOLOCK = 0xc5,
                _,
            };

            ///  Lock bits
            LOCKBIT: mmio.Mmio(packed struct(u8) {
                ///  Lock Bits
                LB: packed union {
                    raw: u8,
                    value: LOCKBIT_LB,
                },
            }),
        };

        ///  Non-volatile Memory Controller
        pub const NVMCTRL = extern struct {
            ///  Command select
            pub const NVMCTRL_CMD = enum(u3) {
                ///  No Command
                NONE = 0x0,
                ///  Write page
                PAGEWRITE = 0x1,
                ///  Erase page
                PAGEERASE = 0x2,
                ///  Erase and write page
                PAGEERASEWRITE = 0x3,
                ///  Page buffer clear
                PAGEBUFCLR = 0x4,
                ///  Chip erase
                CHIPERASE = 0x5,
                ///  EEPROM erase
                EEERASE = 0x6,
                ///  Write fuse (PDI only)
                FUSEWRITE = 0x7,
            };

            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  Command
                CMD: packed union {
                    raw: u3,
                    value: NVMCTRL_CMD,
                },
                padding: u5,
            }),
            ///  Control B
            CTRLB: mmio.Mmio(packed struct(u8) {
                ///  Application code write protect
                APCWP: u1,
                ///  Boot Lock
                BOOTLOCK: u1,
                padding: u6,
            }),
            ///  Status
            STATUS: mmio.Mmio(packed struct(u8) {
                ///  Flash busy
                FBUSY: u1,
                ///  EEPROM busy
                EEBUSY: u1,
                ///  Write error
                WRERROR: u1,
                padding: u5,
            }),
            ///  Interrupt Control
            INTCTRL: mmio.Mmio(packed struct(u8) {
                ///  EEPROM Ready
                EEREADY: u1,
                padding: u7,
            }),
            ///  Interrupt Flags
            INTFLAGS: mmio.Mmio(packed struct(u8) {
                ///  EEPROM Ready
                EEREADY: u1,
                padding: u7,
            }),
            reserved6: [1]u8,
            ///  Data
            DATA: u16,
            ///  Address
            ADDR: u16,
        };

        ///  I/O Ports
        pub const PORT = extern struct {
            ///  Input/Sense Configuration select
            pub const PORT_ISC = enum(u3) {
                ///  Interrupt disabled but input buffer enabled
                INTDISABLE = 0x0,
                ///  Sense Both Edges
                BOTHEDGES = 0x1,
                ///  Sense Rising Edge
                RISING = 0x2,
                ///  Sense Falling Edge
                FALLING = 0x3,
                ///  Digital Input Buffer disabled
                INPUT_DISABLE = 0x4,
                ///  Sense low Level
                LEVEL = 0x5,
                _,
            };

            ///  Data Direction
            DIR: u8,
            ///  Data Direction Set
            DIRSET: u8,
            ///  Data Direction Clear
            DIRCLR: u8,
            ///  Data Direction Toggle
            DIRTGL: u8,
            ///  Output Value
            OUT: u8,
            ///  Output Value Set
            OUTSET: u8,
            ///  Output Value Clear
            OUTCLR: u8,
            ///  Output Value Toggle
            OUTTGL: u8,
            ///  Input Value
            IN: u8,
            ///  Interrupt Flags
            INTFLAGS: mmio.Mmio(packed struct(u8) {
                ///  Pin Interrupt
                INT: u8,
            }),
            reserved16: [6]u8,
            ///  Pin 0 Control
            PIN0CTRL: mmio.Mmio(packed struct(u8) {
                ///  Input/Sense Configuration
                ISC: packed union {
                    raw: u3,
                    value: PORT_ISC,
                },
                ///  Pullup enable
                PULLUPEN: u1,
                reserved7: u3,
                ///  Inverted I/O Enable
                INVEN: u1,
            }),
            ///  Pin 1 Control
            PIN1CTRL: mmio.Mmio(packed struct(u8) {
                ///  Input/Sense Configuration
                ISC: packed union {
                    raw: u3,
                    value: PORT_ISC,
                },
                ///  Pullup enable
                PULLUPEN: u1,
                reserved7: u3,
                ///  Inverted I/O Enable
                INVEN: u1,
            }),
            ///  Pin 2 Control
            PIN2CTRL: mmio.Mmio(packed struct(u8) {
                ///  Input/Sense Configuration
                ISC: packed union {
                    raw: u3,
                    value: PORT_ISC,
                },
                ///  Pullup enable
                PULLUPEN: u1,
                reserved7: u3,
                ///  Inverted I/O Enable
                INVEN: u1,
            }),
            ///  Pin 3 Control
            PIN3CTRL: mmio.Mmio(packed struct(u8) {
                ///  Input/Sense Configuration
                ISC: packed union {
                    raw: u3,
                    value: PORT_ISC,
                },
                ///  Pullup enable
                PULLUPEN: u1,
                reserved7: u3,
                ///  Inverted I/O Enable
                INVEN: u1,
            }),
            ///  Pin 4 Control
            PIN4CTRL: mmio.Mmio(packed struct(u8) {
                ///  Input/Sense Configuration
                ISC: packed union {
                    raw: u3,
                    value: PORT_ISC,
                },
                ///  Pullup enable
                PULLUPEN: u1,
                reserved7: u3,
                ///  Inverted I/O Enable
                INVEN: u1,
            }),
            ///  Pin 5 Control
            PIN5CTRL: mmio.Mmio(packed struct(u8) {
                ///  Input/Sense Configuration
                ISC: packed union {
                    raw: u3,
                    value: PORT_ISC,
                },
                ///  Pullup enable
                PULLUPEN: u1,
                reserved7: u3,
                ///  Inverted I/O Enable
                INVEN: u1,
            }),
            ///  Pin 6 Control
            PIN6CTRL: mmio.Mmio(packed struct(u8) {
                ///  Input/Sense Configuration
                ISC: packed union {
                    raw: u3,
                    value: PORT_ISC,
                },
                ///  Pullup enable
                PULLUPEN: u1,
                reserved7: u3,
                ///  Inverted I/O Enable
                INVEN: u1,
            }),
            ///  Pin 7 Control
            PIN7CTRL: mmio.Mmio(packed struct(u8) {
                ///  Input/Sense Configuration
                ISC: packed union {
                    raw: u3,
                    value: PORT_ISC,
                },
                ///  Pullup enable
                PULLUPEN: u1,
                reserved7: u3,
                ///  Inverted I/O Enable
                INVEN: u1,
            }),
        };

        ///  Port Multiplexer
        pub const PORTMUX = extern struct {
            ///  Configurable Custom Logic LUT0 select
            pub const PORTMUX_LUT0 = enum(u1) {
                ///  Default pin
                DEFAULT = 0x0,
                ///  Alternate pin
                ALTERNATE = 0x1,
            };

            ///  Configurable Custom Logic LUT1 select
            pub const PORTMUX_LUT1 = enum(u1) {
                ///  Default pin
                DEFAULT = 0x0,
                ///  Alternate pin
                ALTERNATE = 0x1,
            };

            ///  Port Multiplexer SPI0 select
            pub const PORTMUX_SPI0 = enum(u1) {
                ///  Default pins
                DEFAULT = 0x0,
                ///  Alternate pins
                ALTERNATE = 0x1,
            };

            ///  Port Multiplexer USART0 select
            pub const PORTMUX_USART0 = enum(u1) {
                ///  Default pins
                DEFAULT = 0x0,
                ///  Alternate pins
                ALTERNATE = 0x1,
            };

            ///  Port Multiplexer TCA0 Output 0 select
            pub const PORTMUX_TCA00 = enum(u1) {
                ///  Default pin
                DEFAULT = 0x0,
                ///  Alternate pin
                ALTERNATE = 0x1,
            };

            ///  Port Multiplexer TCA0 Output 1 select
            pub const PORTMUX_TCA01 = enum(u1) {
                ///  Default pin
                DEFAULT = 0x0,
                ///  Alternate pin
                ALTERNATE = 0x1,
            };

            ///  Port Multiplexer TCA0 Output 2 select
            pub const PORTMUX_TCA02 = enum(u1) {
                ///  Default pin
                DEFAULT = 0x0,
                ///  Alternate pin
                ALTERNATE = 0x1,
            };

            ///  Port Multiplexer TCA0 Output 3 select
            pub const PORTMUX_TCA03 = enum(u1) {
                ///  Default pin
                DEFAULT = 0x0,
                ///  Alternate pin
                ALTERNATE = 0x1,
            };

            ///  Port Multiplexer TCA0 Output 4 select
            pub const PORTMUX_TCA04 = enum(u1) {
                ///  Default pin
                DEFAULT = 0x0,
                ///  Alternate pin
                ALTERNATE = 0x1,
            };

            ///  Port Multiplexer TCA0 Output 5 select
            pub const PORTMUX_TCA05 = enum(u1) {
                ///  Default pin
                DEFAULT = 0x0,
                ///  Alternate pin
                ALTERNATE = 0x1,
            };

            ///  Port Multiplexer TCB select
            pub const PORTMUX_TCB0 = enum(u1) {
                ///  Default pin
                DEFAULT = 0x0,
                ///  Alternate pin
                ALTERNATE = 0x1,
            };

            ///  Port Multiplexer Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  Event Output 0
                EVOUT0: u1,
                ///  Event Output 1
                EVOUT1: u1,
                ///  Event Output 2
                EVOUT2: u1,
                reserved4: u1,
                ///  Configurable Custom Logic LUT0
                LUT0: packed union {
                    raw: u1,
                    value: PORTMUX_LUT0,
                },
                ///  Configurable Custom Logic LUT1
                LUT1: packed union {
                    raw: u1,
                    value: PORTMUX_LUT1,
                },
                padding: u2,
            }),
            ///  Port Multiplexer Control B
            CTRLB: mmio.Mmio(packed struct(u8) {
                ///  Port Multiplexer USART0
                USART0: packed union {
                    raw: u1,
                    value: PORTMUX_USART0,
                },
                reserved2: u1,
                ///  Port Multiplexer SPI0
                SPI0: packed union {
                    raw: u1,
                    value: PORTMUX_SPI0,
                },
                padding: u5,
            }),
            ///  Port Multiplexer Control C
            CTRLC: mmio.Mmio(packed struct(u8) {
                ///  Port Multiplexer TCA0 Output 0
                TCA00: packed union {
                    raw: u1,
                    value: PORTMUX_TCA00,
                },
                ///  Port Multiplexer TCA0 Output 1
                TCA01: packed union {
                    raw: u1,
                    value: PORTMUX_TCA01,
                },
                ///  Port Multiplexer TCA0 Output 2
                TCA02: packed union {
                    raw: u1,
                    value: PORTMUX_TCA02,
                },
                ///  Port Multiplexer TCA0 Output 3
                TCA03: packed union {
                    raw: u1,
                    value: PORTMUX_TCA03,
                },
                ///  Port Multiplexer TCA0 Output 4
                TCA04: packed union {
                    raw: u1,
                    value: PORTMUX_TCA04,
                },
                ///  Port Multiplexer TCA0 Output 5
                TCA05: packed union {
                    raw: u1,
                    value: PORTMUX_TCA05,
                },
                padding: u2,
            }),
            ///  Port Multiplexer Control D
            CTRLD: mmio.Mmio(packed struct(u8) {
                ///  Port Multiplexer TCB
                TCB0: packed union {
                    raw: u1,
                    value: PORTMUX_TCB0,
                },
                padding: u7,
            }),
        };

        ///  Reset controller
        pub const RSTCTRL = extern struct {
            ///  Reset Flags
            RSTFR: mmio.Mmio(packed struct(u8) {
                ///  Power on Reset flag
                PORF: u1,
                ///  Brown out detector Reset flag
                BORF: u1,
                ///  External Reset flag
                EXTRF: u1,
                ///  Watch dog Reset flag
                WDRF: u1,
                ///  Software Reset flag
                SWRF: u1,
                ///  UPDI Reset flag
                UPDIRF: u1,
                padding: u2,
            }),
            ///  Software Reset
            SWRR: mmio.Mmio(packed struct(u8) {
                ///  Software reset enable
                SWRE: u1,
                padding: u7,
            }),
        };

        ///  Real-Time Counter
        pub const RTC = extern struct {
            ///  Clock Select
            pub const RTC_CLKSEL = enum(u2) {
                ///  Internal 32kHz OSC
                INT32K = 0x0,
                ///  Internal 1kHz OSC
                INT1K = 0x1,
                ///  External Clock
                EXTCLK = 0x3,
                _,
            };

            ///  Prescaling Factor select
            pub const RTC_PRESCALER = enum(u4) {
                ///  RTC Clock / 1
                DIV1 = 0x0,
                ///  RTC Clock / 2
                DIV2 = 0x1,
                ///  RTC Clock / 4
                DIV4 = 0x2,
                ///  RTC Clock / 8
                DIV8 = 0x3,
                ///  RTC Clock / 16
                DIV16 = 0x4,
                ///  RTC Clock / 32
                DIV32 = 0x5,
                ///  RTC Clock / 64
                DIV64 = 0x6,
                ///  RTC Clock / 128
                DIV128 = 0x7,
                ///  RTC Clock / 256
                DIV256 = 0x8,
                ///  RTC Clock / 512
                DIV512 = 0x9,
                ///  RTC Clock / 1024
                DIV1024 = 0xa,
                ///  RTC Clock / 2048
                DIV2048 = 0xb,
                ///  RTC Clock / 4096
                DIV4096 = 0xc,
                ///  RTC Clock / 8192
                DIV8192 = 0xd,
                ///  RTC Clock / 16384
                DIV16384 = 0xe,
                ///  RTC Clock / 32768
                DIV32768 = 0xf,
            };

            ///  Period select
            pub const RTC_PERIOD = enum(u4) {
                ///  Off
                OFF = 0x0,
                ///  RTC Clock Cycles 4
                CYC4 = 0x1,
                ///  RTC Clock Cycles 8
                CYC8 = 0x2,
                ///  RTC Clock Cycles 16
                CYC16 = 0x3,
                ///  RTC Clock Cycles 32
                CYC32 = 0x4,
                ///  RTC Clock Cycles 64
                CYC64 = 0x5,
                ///  RTC Clock Cycles 128
                CYC128 = 0x6,
                ///  RTC Clock Cycles 256
                CYC256 = 0x7,
                ///  RTC Clock Cycles 512
                CYC512 = 0x8,
                ///  RTC Clock Cycles 1024
                CYC1024 = 0x9,
                ///  RTC Clock Cycles 2048
                CYC2048 = 0xa,
                ///  RTC Clock Cycles 4096
                CYC4096 = 0xb,
                ///  RTC Clock Cycles 8192
                CYC8192 = 0xc,
                ///  RTC Clock Cycles 16384
                CYC16384 = 0xd,
                ///  RTC Clock Cycles 32768
                CYC32768 = 0xe,
                _,
            };

            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  Enable
                RTCEN: u1,
                reserved3: u2,
                ///  Prescaling Factor
                PRESCALER: packed union {
                    raw: u4,
                    value: RTC_PRESCALER,
                },
                ///  Run In Standby
                RUNSTDBY: u1,
            }),
            ///  Status
            STATUS: mmio.Mmio(packed struct(u8) {
                ///  CTRLA Synchronization Busy Flag
                CTRLABUSY: u1,
                ///  Count Synchronization Busy Flag
                CNTBUSY: u1,
                ///  Period Synchronization Busy Flag
                PERBUSY: u1,
                ///  Comparator Synchronization Busy Flag
                CMPBUSY: u1,
                padding: u4,
            }),
            ///  Interrupt Control
            INTCTRL: mmio.Mmio(packed struct(u8) {
                ///  Overflow Interrupt enable
                OVF: u1,
                ///  Compare Match Interrupt enable
                CMP: u1,
                padding: u6,
            }),
            ///  Interrupt Flags
            INTFLAGS: mmio.Mmio(packed struct(u8) {
                ///  Overflow Interrupt Flag
                OVF: u1,
                ///  Compare Match Interrupt
                CMP: u1,
                padding: u6,
            }),
            ///  Temporary
            TEMP: u8,
            ///  Debug control
            DBGCTRL: mmio.Mmio(packed struct(u8) {
                ///  Run in debug
                DBGRUN: u1,
                padding: u7,
            }),
            reserved7: [1]u8,
            ///  Clock Select
            CLKSEL: mmio.Mmio(packed struct(u8) {
                ///  Clock Select
                CLKSEL: packed union {
                    raw: u2,
                    value: RTC_CLKSEL,
                },
                padding: u6,
            }),
            ///  Counter
            CNT: u16,
            ///  Period
            PER: u16,
            ///  Compare
            CMP: u16,
            reserved16: [2]u8,
            ///  PIT Control A
            PITCTRLA: mmio.Mmio(packed struct(u8) {
                ///  Enable
                PITEN: u1,
                reserved3: u2,
                ///  Period
                PERIOD: packed union {
                    raw: u4,
                    value: RTC_PERIOD,
                },
                padding: u1,
            }),
            ///  PIT Status
            PITSTATUS: mmio.Mmio(packed struct(u8) {
                ///  CTRLA Synchronization Busy Flag
                CTRLBUSY: u1,
                padding: u7,
            }),
            ///  PIT Interrupt Control
            PITINTCTRL: mmio.Mmio(packed struct(u8) {
                ///  Periodic Interrupt
                PI: u1,
                padding: u7,
            }),
            ///  PIT Interrupt Flags
            PITINTFLAGS: mmio.Mmio(packed struct(u8) {
                ///  Periodic Interrupt
                PI: u1,
                padding: u7,
            }),
            reserved21: [1]u8,
            ///  PIT Debug control
            PITDBGCTRL: mmio.Mmio(packed struct(u8) {
                ///  Run in debug
                DBGRUN: u1,
                padding: u7,
            }),
        };

        ///  Signature row
        pub const SIGROW = extern struct {
            ///  Device ID Byte 0
            DEVICEID0: u8,
            ///  Device ID Byte 1
            DEVICEID1: u8,
            ///  Device ID Byte 2
            DEVICEID2: u8,
            ///  Serial Number Byte 0
            SERNUM0: u8,
            ///  Serial Number Byte 1
            SERNUM1: u8,
            ///  Serial Number Byte 2
            SERNUM2: u8,
            ///  Serial Number Byte 3
            SERNUM3: u8,
            ///  Serial Number Byte 4
            SERNUM4: u8,
            ///  Serial Number Byte 5
            SERNUM5: u8,
            ///  Serial Number Byte 6
            SERNUM6: u8,
            ///  Serial Number Byte 7
            SERNUM7: u8,
            ///  Serial Number Byte 8
            SERNUM8: u8,
            ///  Serial Number Byte 9
            SERNUM9: u8,
            reserved32: [19]u8,
            ///  Temperature Sensor Calibration Byte 0
            TEMPSENSE0: u8,
            ///  Temperature Sensor Calibration Byte 1
            TEMPSENSE1: u8,
            ///  OSC16 error at 3V
            OSC16ERR3V: u8,
            ///  OSC16 error at 5V
            OSC16ERR5V: u8,
            ///  OSC20 error at 3V
            OSC20ERR3V: u8,
            ///  OSC20 error at 5V
            OSC20ERR5V: u8,
        };

        ///  Sleep Controller
        pub const SLPCTRL = extern struct {
            ///  Sleep mode select
            pub const SLPCTRL_SMODE = enum(u2) {
                ///  Idle mode
                IDLE = 0x0,
                ///  Standby Mode
                STDBY = 0x1,
                ///  Power-down Mode
                PDOWN = 0x2,
                _,
            };

            ///  Control
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  Sleep enable
                SEN: u1,
                ///  Sleep mode
                SMODE: packed union {
                    raw: u2,
                    value: SLPCTRL_SMODE,
                },
                padding: u5,
            }),
        };

        ///  Serial Peripheral Interface
        pub const SPI = extern struct {
            ///  Prescaler select
            pub const SPI_PRESC = enum(u2) {
                ///  System Clock / 4
                DIV4 = 0x0,
                ///  System Clock / 16
                DIV16 = 0x1,
                ///  System Clock / 64
                DIV64 = 0x2,
                ///  System Clock / 128
                DIV128 = 0x3,
            };

            ///  SPI Mode select
            pub const SPI_MODE = enum(u2) {
                ///  SPI Mode 0
                @"0" = 0x0,
                ///  SPI Mode 1
                @"1" = 0x1,
                ///  SPI Mode 2
                @"2" = 0x2,
                ///  SPI Mode 3
                @"3" = 0x3,
            };

            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  Enable Module
                ENABLE: u1,
                ///  Prescaler
                PRESC: packed union {
                    raw: u2,
                    value: SPI_PRESC,
                },
                reserved4: u1,
                ///  Enable Double Speed
                CLK2X: u1,
                ///  Host Operation Enable
                MASTER: u1,
                ///  Data Order Setting
                DORD: u1,
                padding: u1,
            }),
            ///  Control B
            CTRLB: mmio.Mmio(packed struct(u8) {
                ///  SPI Mode
                MODE: packed union {
                    raw: u2,
                    value: SPI_MODE,
                },
                ///  Client Select Disable
                SSD: u1,
                reserved6: u3,
                ///  Buffer Write Mode
                BUFWR: u1,
                ///  Buffer Mode Enable
                BUFEN: u1,
            }),
            ///  Interrupt Control
            INTCTRL: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Enable
                IE: u1,
                reserved4: u3,
                ///  Client Select Trigger Interrupt Enable
                SSIE: u1,
                ///  Data Register Empty Interrupt Enable
                DREIE: u1,
                ///  Transfer Complete Interrupt Enable
                TXCIE: u1,
                ///  Receive Complete Interrupt Enable
                RXCIE: u1,
            }),
            ///  Interrupt Flags
            INTFLAGS: mmio.Mmio(packed struct(u8) {
                ///  Buffer Overflow
                BUFOVF: u1,
                reserved4: u3,
                ///  Client Select Trigger Interrupt Flag
                SSIF: u1,
                ///  Data Register Empty Interrupt Flag
                DREIF: u1,
                ///  Transfer Complete Interrupt Flag
                TXCIF: u1,
                ///  Receive Complete Interrupt Flag
                RXCIF: u1,
            }),
            ///  Data
            DATA: u8,
        };

        ///  System Configuration Registers
        pub const SYSCFG = extern struct {
            ///  Revision ID
            REVID: u8,
            ///  External Break
            EXTBRK: mmio.Mmio(packed struct(u8) {
                ///  External break enable
                ENEXTBRK: u1,
                padding: u7,
            }),
        };

        ///  16-bit Timer/Counter Type A
        pub const TCA = extern union {
            pub const Mode = enum {
                SINGLE,
                SPLIT,
            };

            pub fn get_mode(self: *volatile @This()) Mode {
                {
                    const value = self.SINGLE.CTRLD.read().SPLITM;
                    switch (value) {
                        0 => return .SINGLE,
                        else => {},
                    }
                }
                {
                    const value = self.SPLIT.CTRLD.read().SPLITM;
                    switch (value) {
                        1 => return .SPLIT,
                        else => {},
                    }
                }

                unreachable;
            }

            ///  Clock Selection
            pub const TCA_SINGLE_CLKSEL = enum(u3) {
                ///  System Clock
                DIV1 = 0x0,
                ///  System Clock / 2
                DIV2 = 0x1,
                ///  System Clock / 4
                DIV4 = 0x2,
                ///  System Clock / 8
                DIV8 = 0x3,
                ///  System Clock / 16
                DIV16 = 0x4,
                ///  System Clock / 64
                DIV64 = 0x5,
                ///  System Clock / 256
                DIV256 = 0x6,
                ///  System Clock / 1024
                DIV1024 = 0x7,
            };

            ///  Waveform generation mode select
            pub const TCA_SINGLE_WGMODE = enum(u3) {
                ///  Normal Mode
                NORMAL = 0x0,
                ///  Frequency Generation Mode
                FRQ = 0x1,
                ///  Single Slope PWM
                SINGLESLOPE = 0x3,
                ///  Dual Slope PWM, overflow on TOP
                DSTOP = 0x5,
                ///  Dual Slope PWM, overflow on TOP and BOTTOM
                DSBOTH = 0x6,
                ///  Dual Slope PWM, overflow on BOTTOM
                DSBOTTOM = 0x7,
                _,
            };

            ///  Command select
            pub const TCA_SINGLE_CMD = enum(u2) {
                ///  No Command
                NONE = 0x0,
                ///  Force Update
                UPDATE = 0x1,
                ///  Force Restart
                RESTART = 0x2,
                ///  Force Hard Reset
                RESET = 0x3,
            };

            ///  Direction select
            pub const TCA_SINGLE_DIR = enum(u1) {
                ///  Count up
                UP = 0x0,
                ///  Count down
                DOWN = 0x1,
            };

            ///  Event Action select
            pub const TCA_SINGLE_EVACT = enum(u2) {
                ///  Count on positive edge event
                POSEDGE = 0x0,
                ///  Count on any edge event
                ANYEDGE = 0x1,
                ///  Count on prescaled clock while event line is 1.
                HIGHLVL = 0x2,
                ///  Count on prescaled clock. Event controls count direction. Up-count when event line is 0, down-count when event line is 1.
                UPDOWN = 0x3,
            };

            ///  Clock Selection
            pub const TCA_SPLIT_CLKSEL = enum(u3) {
                ///  System Clock
                DIV1 = 0x0,
                ///  System Clock / 2
                DIV2 = 0x1,
                ///  System Clock / 4
                DIV4 = 0x2,
                ///  System Clock / 8
                DIV8 = 0x3,
                ///  System Clock / 16
                DIV16 = 0x4,
                ///  System Clock / 64
                DIV64 = 0x5,
                ///  System Clock / 256
                DIV256 = 0x6,
                ///  System Clock / 1024
                DIV1024 = 0x7,
            };

            ///  Command select
            pub const TCA_SPLIT_CMD = enum(u2) {
                ///  No Command
                NONE = 0x0,
                ///  Force Update
                UPDATE = 0x1,
                ///  Force Restart
                RESTART = 0x2,
                ///  Force Hard Reset
                RESET = 0x3,
            };

            SINGLE: extern struct {
                ///  Control A
                CTRLA: mmio.Mmio(packed struct(u8) {
                    ///  Module Enable
                    ENABLE: u1,
                    ///  Clock Selection
                    CLKSEL: packed union {
                        raw: u3,
                        value: TCA_SINGLE_CLKSEL,
                    },
                    padding: u4,
                }),
                ///  Control B
                CTRLB: mmio.Mmio(packed struct(u8) {
                    ///  Waveform generation mode
                    WGMODE: packed union {
                        raw: u3,
                        value: TCA_SINGLE_WGMODE,
                    },
                    ///  Auto Lock Update
                    ALUPD: u1,
                    ///  Compare 0 Enable
                    CMP0EN: u1,
                    ///  Compare 1 Enable
                    CMP1EN: u1,
                    ///  Compare 2 Enable
                    CMP2EN: u1,
                    padding: u1,
                }),
                ///  Control C
                CTRLC: mmio.Mmio(packed struct(u8) {
                    ///  Compare 0 Waveform Output Value
                    CMP0OV: u1,
                    ///  Compare 1 Waveform Output Value
                    CMP1OV: u1,
                    ///  Compare 2 Waveform Output Value
                    CMP2OV: u1,
                    padding: u5,
                }),
                ///  Control D
                CTRLD: mmio.Mmio(packed struct(u8) {
                    ///  Split Mode Enable
                    SPLITM: u1,
                    padding: u7,
                }),
                ///  Control E Clear
                CTRLECLR: mmio.Mmio(packed struct(u8) {
                    ///  Direction
                    DIR: u1,
                    ///  Lock Update
                    LUPD: u1,
                    ///  Command
                    CMD: packed union {
                        raw: u2,
                        value: TCA_SINGLE_CMD,
                    },
                    padding: u4,
                }),
                ///  Control E Set
                CTRLESET: mmio.Mmio(packed struct(u8) {
                    ///  Direction
                    DIR: packed union {
                        raw: u1,
                        value: TCA_SINGLE_DIR,
                    },
                    ///  Lock Update
                    LUPD: u1,
                    ///  Command
                    CMD: packed union {
                        raw: u2,
                        value: TCA_SINGLE_CMD,
                    },
                    padding: u4,
                }),
                ///  Control F Clear
                CTRLFCLR: mmio.Mmio(packed struct(u8) {
                    ///  Period Buffer Valid
                    PERBV: u1,
                    ///  Compare 0 Buffer Valid
                    CMP0BV: u1,
                    ///  Compare 1 Buffer Valid
                    CMP1BV: u1,
                    ///  Compare 2 Buffer Valid
                    CMP2BV: u1,
                    padding: u4,
                }),
                ///  Control F Set
                CTRLFSET: mmio.Mmio(packed struct(u8) {
                    ///  Period Buffer Valid
                    PERBV: u1,
                    ///  Compare 0 Buffer Valid
                    CMP0BV: u1,
                    ///  Compare 1 Buffer Valid
                    CMP1BV: u1,
                    ///  Compare 2 Buffer Valid
                    CMP2BV: u1,
                    padding: u4,
                }),
                reserved9: [1]u8,
                ///  Event Control
                EVCTRL: mmio.Mmio(packed struct(u8) {
                    ///  Count on Event Input
                    CNTEI: u1,
                    ///  Event Action
                    EVACT: packed union {
                        raw: u2,
                        value: TCA_SINGLE_EVACT,
                    },
                    padding: u5,
                }),
                ///  Interrupt Control
                INTCTRL: mmio.Mmio(packed struct(u8) {
                    ///  Overflow Interrupt
                    OVF: u1,
                    reserved4: u3,
                    ///  Compare 0 Interrupt
                    CMP0: u1,
                    ///  Compare 1 Interrupt
                    CMP1: u1,
                    ///  Compare 2 Interrupt
                    CMP2: u1,
                    padding: u1,
                }),
                ///  Interrupt Flags
                INTFLAGS: mmio.Mmio(packed struct(u8) {
                    ///  Overflow Interrupt
                    OVF: u1,
                    reserved4: u3,
                    ///  Compare 0 Interrupt
                    CMP0: u1,
                    ///  Compare 1 Interrupt
                    CMP1: u1,
                    ///  Compare 2 Interrupt
                    CMP2: u1,
                    padding: u1,
                }),
                reserved14: [2]u8,
                ///  Degbug Control
                DBGCTRL: mmio.Mmio(packed struct(u8) {
                    ///  Debug Run
                    DBGRUN: u1,
                    padding: u7,
                }),
                ///  Temporary data for 16-bit Access
                TEMP: u8,
                reserved32: [16]u8,
                ///  Count
                CNT: u16,
                reserved38: [4]u8,
                ///  Period
                PER: u16,
                ///  Compare 0
                CMP0: u16,
                ///  Compare 1
                CMP1: u16,
                ///  Compare 2
                CMP2: u16,
                reserved54: [8]u8,
                ///  Period Buffer
                PERBUF: u16,
                ///  Compare 0 Buffer
                CMP0BUF: u16,
                ///  Compare 1 Buffer
                CMP1BUF: u16,
                ///  Compare 2 Buffer
                CMP2BUF: u16,
            },
            SPLIT: extern struct {
                ///  Control A
                CTRLA: mmio.Mmio(packed struct(u8) {
                    ///  Module Enable
                    ENABLE: u1,
                    ///  Clock Selection
                    CLKSEL: packed union {
                        raw: u3,
                        value: TCA_SPLIT_CLKSEL,
                    },
                    padding: u4,
                }),
                ///  Control B
                CTRLB: mmio.Mmio(packed struct(u8) {
                    ///  Low Compare 0 Enable
                    LCMP0EN: u1,
                    ///  Low Compare 1 Enable
                    LCMP1EN: u1,
                    ///  Low Compare 2 Enable
                    LCMP2EN: u1,
                    reserved4: u1,
                    ///  High Compare 0 Enable
                    HCMP0EN: u1,
                    ///  High Compare 1 Enable
                    HCMP1EN: u1,
                    ///  High Compare 2 Enable
                    HCMP2EN: u1,
                    padding: u1,
                }),
                ///  Control C
                CTRLC: mmio.Mmio(packed struct(u8) {
                    ///  Low Compare 0 Output Value
                    LCMP0OV: u1,
                    ///  Low Compare 1 Output Value
                    LCMP1OV: u1,
                    ///  Low Compare 2 Output Value
                    LCMP2OV: u1,
                    reserved4: u1,
                    ///  High Compare 0 Output Value
                    HCMP0OV: u1,
                    ///  High Compare 1 Output Value
                    HCMP1OV: u1,
                    ///  High Compare 2 Output Value
                    HCMP2OV: u1,
                    padding: u1,
                }),
                ///  Control D
                CTRLD: mmio.Mmio(packed struct(u8) {
                    ///  Split Mode Enable
                    SPLITM: u1,
                    padding: u7,
                }),
                ///  Control E Clear
                CTRLECLR: mmio.Mmio(packed struct(u8) {
                    reserved2: u2,
                    ///  Command
                    CMD: packed union {
                        raw: u2,
                        value: TCA_SPLIT_CMD,
                    },
                    padding: u4,
                }),
                ///  Control E Set
                CTRLESET: mmio.Mmio(packed struct(u8) {
                    reserved2: u2,
                    ///  Command
                    CMD: packed union {
                        raw: u2,
                        value: TCA_SPLIT_CMD,
                    },
                    padding: u4,
                }),
                reserved10: [4]u8,
                ///  Interrupt Control
                INTCTRL: mmio.Mmio(packed struct(u8) {
                    ///  Low Underflow Interrupt Enable
                    LUNF: u1,
                    ///  High Underflow Interrupt Enable
                    HUNF: u1,
                    reserved4: u2,
                    ///  Low Compare 0 Interrupt Enable
                    LCMP0: u1,
                    ///  Low Compare 1 Interrupt Enable
                    LCMP1: u1,
                    ///  Low Compare 2 Interrupt Enable
                    LCMP2: u1,
                    padding: u1,
                }),
                ///  Interrupt Flags
                INTFLAGS: mmio.Mmio(packed struct(u8) {
                    ///  Low Underflow Interrupt Flag
                    LUNF: u1,
                    ///  High Underflow Interrupt Flag
                    HUNF: u1,
                    reserved4: u2,
                    ///  Low Compare 2 Interrupt Flag
                    LCMP0: u1,
                    ///  Low Compare 1 Interrupt Flag
                    LCMP1: u1,
                    ///  Low Compare 0 Interrupt Flag
                    LCMP2: u1,
                    padding: u1,
                }),
                reserved14: [2]u8,
                ///  Degbug Control
                DBGCTRL: mmio.Mmio(packed struct(u8) {
                    ///  Debug Run
                    DBGRUN: u1,
                    padding: u7,
                }),
                reserved32: [17]u8,
                ///  Low Count
                LCNT: u8,
                ///  High Count
                HCNT: u8,
                reserved38: [4]u8,
                ///  Low Period
                LPER: u8,
                ///  High Period
                HPER: u8,
                ///  Low Compare
                LCMP0: u8,
                ///  High Compare
                HCMP0: u8,
                ///  Low Compare
                LCMP1: u8,
                ///  High Compare
                HCMP1: u8,
                ///  Low Compare
                LCMP2: u8,
                ///  High Compare
                HCMP2: u8,
            },
        };

        ///  16-bit Timer Type B
        pub const TCB = extern struct {
            ///  Clock Select
            pub const TCB_CLKSEL = enum(u2) {
                ///  CLK_PER (No Prescaling)
                CLKDIV1 = 0x0,
                ///  CLK_PER/2 (From Prescaler)
                CLKDIV2 = 0x1,
                ///  Use Clock from TCA
                CLKTCA = 0x2,
                _,
            };

            ///  Timer Mode select
            pub const TCB_CNTMODE = enum(u3) {
                ///  Periodic Interrupt
                INT = 0x0,
                ///  Periodic Timeout
                TIMEOUT = 0x1,
                ///  Input Capture Event
                CAPT = 0x2,
                ///  Input Capture Frequency measurement
                FRQ = 0x3,
                ///  Input Capture Pulse-Width measurement
                PW = 0x4,
                ///  Input Capture Frequency and Pulse-Width measurement
                FRQPW = 0x5,
                ///  Single Shot
                SINGLE = 0x6,
                ///  8-bit PWM
                PWM8 = 0x7,
            };

            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  Enable
                ENABLE: u1,
                ///  Clock Select
                CLKSEL: packed union {
                    raw: u2,
                    value: TCB_CLKSEL,
                },
                reserved4: u1,
                ///  Synchronize Update
                SYNCUPD: u1,
                reserved6: u1,
                ///  Run Standby
                RUNSTDBY: u1,
                padding: u1,
            }),
            ///  Control Register B
            CTRLB: mmio.Mmio(packed struct(u8) {
                ///  Timer Mode
                CNTMODE: packed union {
                    raw: u3,
                    value: TCB_CNTMODE,
                },
                reserved4: u1,
                ///  Pin Output Enable
                CCMPEN: u1,
                ///  Pin Initial State
                CCMPINIT: u1,
                ///  Asynchronous Enable
                ASYNC: u1,
                padding: u1,
            }),
            reserved4: [2]u8,
            ///  Event Control
            EVCTRL: mmio.Mmio(packed struct(u8) {
                ///  Event Input Enable
                CAPTEI: u1,
                reserved4: u3,
                ///  Event Edge
                EDGE: u1,
                reserved6: u1,
                ///  Input Capture Noise Cancellation Filter
                FILTER: u1,
                padding: u1,
            }),
            ///  Interrupt Control
            INTCTRL: mmio.Mmio(packed struct(u8) {
                ///  Capture or Timeout
                CAPT: u1,
                padding: u7,
            }),
            ///  Interrupt Flags
            INTFLAGS: mmio.Mmio(packed struct(u8) {
                ///  Capture or Timeout
                CAPT: u1,
                padding: u7,
            }),
            ///  Status
            STATUS: mmio.Mmio(packed struct(u8) {
                ///  Run
                RUN: u1,
                padding: u7,
            }),
            ///  Debug Control
            DBGCTRL: mmio.Mmio(packed struct(u8) {
                ///  Debug Run
                DBGRUN: u1,
                padding: u7,
            }),
            ///  Temporary Value
            TEMP: u8,
            ///  Count
            CNT: u16,
            ///  Compare or Capture
            CCMP: u16,
        };

        ///  Two-Wire Interface
        pub const TWI = extern struct {
            ///  SDA Hold Time select
            pub const TWI_SDAHOLD = enum(u2) {
                ///  SDA hold time off
                OFF = 0x0,
                ///  Typical 50ns hold time
                @"50NS" = 0x1,
                ///  Typical 300ns hold time
                @"300NS" = 0x2,
                ///  Typical 500ns hold time
                @"500NS" = 0x3,
            };

            ///  SDA Setup Time select
            pub const TWI_SDASETUP = enum(u1) {
                ///  SDA setup time is 4 clock cycles
                @"4CYC" = 0x0,
                ///  SDA setup time is 8 clock cycles
                @"8CYC" = 0x1,
            };

            ///  Inactive Bus Timeout select
            pub const TWI_TIMEOUT = enum(u2) {
                ///  Bus Timeout Disabled
                DISABLED = 0x0,
                ///  50 Microseconds
                @"50US" = 0x1,
                ///  100 Microseconds
                @"100US" = 0x2,
                ///  200 Microseconds
                @"200US" = 0x3,
            };

            ///  Acknowledge Action select
            pub const TWI_ACKACT = enum(u1) {
                ///  Send ACK
                ACK = 0x0,
                ///  Send NACK
                NACK = 0x1,
            };

            ///  Command select
            pub const TWI_MCMD = enum(u2) {
                ///  No Action
                NOACT = 0x0,
                ///  Issue Repeated Start Condition
                REPSTART = 0x1,
                ///  Receive or Transmit Data, depending on DIR
                RECVTRANS = 0x2,
                ///  Issue Stop Condition
                STOP = 0x3,
            };

            ///  Bus State select
            pub const TWI_BUSSTATE = enum(u2) {
                ///  Unknown Bus State
                UNKNOWN = 0x0,
                ///  Bus is Idle
                IDLE = 0x1,
                ///  This Module Controls The Bus
                OWNER = 0x2,
                ///  The Bus is Busy
                BUSY = 0x3,
            };

            ///  Command select
            pub const TWI_SCMD = enum(u2) {
                ///  No Action
                NOACT = 0x0,
                ///  Used To Complete a Transaction
                COMPTRANS = 0x2,
                ///  Used in Response to Address/Data Interrupt
                RESPONSE = 0x3,
                _,
            };

            ///  Client Address or Stop select
            pub const TWI_AP = enum(u1) {
                ///  Stop condition generated APIF
                STOP = 0x0,
                ///  Address detection generated APIF
                ADR = 0x1,
            };

            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                reserved1: u1,
                ///  FM Plus Enable
                FMPEN: u1,
                ///  SDA Hold Time
                SDAHOLD: packed union {
                    raw: u2,
                    value: TWI_SDAHOLD,
                },
                ///  SDA Setup Time
                SDASETUP: packed union {
                    raw: u1,
                    value: TWI_SDASETUP,
                },
                padding: u3,
            }),
            reserved2: [1]u8,
            ///  Debug Control Register
            DBGCTRL: mmio.Mmio(packed struct(u8) {
                ///  Debug Run
                DBGRUN: u1,
                padding: u7,
            }),
            ///  Host Control A
            MCTRLA: mmio.Mmio(packed struct(u8) {
                ///  Enable TWI Host
                ENABLE: u1,
                ///  Smart Mode Enable
                SMEN: u1,
                ///  Inactive Bus Timeout
                TIMEOUT: packed union {
                    raw: u2,
                    value: TWI_TIMEOUT,
                },
                ///  Quick Command Enable
                QCEN: u1,
                reserved6: u1,
                ///  Write Interrupt Enable
                WIEN: u1,
                ///  Read Interrupt Enable
                RIEN: u1,
            }),
            ///  Host Control B
            MCTRLB: mmio.Mmio(packed struct(u8) {
                ///  Command
                MCMD: packed union {
                    raw: u2,
                    value: TWI_MCMD,
                },
                ///  Acknowledge Action
                ACKACT: packed union {
                    raw: u1,
                    value: TWI_ACKACT,
                },
                ///  Flush
                FLUSH: u1,
                padding: u4,
            }),
            ///  Host Status
            MSTATUS: mmio.Mmio(packed struct(u8) {
                ///  Bus State
                BUSSTATE: packed union {
                    raw: u2,
                    value: TWI_BUSSTATE,
                },
                ///  Bus Error
                BUSERR: u1,
                ///  Arbitration Lost
                ARBLOST: u1,
                ///  Received Acknowledge
                RXACK: u1,
                ///  Clock Hold
                CLKHOLD: u1,
                ///  Write Interrupt Flag
                WIF: u1,
                ///  Read Interrupt Flag
                RIF: u1,
            }),
            ///  Host Baud Rate Control
            MBAUD: u8,
            ///  Host Address
            MADDR: u8,
            ///  Host Data
            MDATA: u8,
            ///  Client Control A
            SCTRLA: mmio.Mmio(packed struct(u8) {
                ///  Enable TWI Client
                ENABLE: u1,
                ///  Smart Mode Enable
                SMEN: u1,
                ///  Promiscuous Mode Enable
                PMEN: u1,
                reserved5: u2,
                ///  Stop Interrupt Enable
                PIEN: u1,
                ///  Address/Stop Interrupt Enable
                APIEN: u1,
                ///  Data Interrupt Enable
                DIEN: u1,
            }),
            ///  Client Control B
            SCTRLB: mmio.Mmio(packed struct(u8) {
                ///  Command
                SCMD: packed union {
                    raw: u2,
                    value: TWI_SCMD,
                },
                ///  Acknowledge Action
                ACKACT: packed union {
                    raw: u1,
                    value: TWI_ACKACT,
                },
                padding: u5,
            }),
            ///  Client Status
            SSTATUS: mmio.Mmio(packed struct(u8) {
                ///  Client Address or Stop
                AP: packed union {
                    raw: u1,
                    value: TWI_AP,
                },
                ///  Read/Write Direction
                DIR: u1,
                ///  Bus Error
                BUSERR: u1,
                ///  Collision
                COLL: u1,
                ///  Received Acknowledge
                RXACK: u1,
                ///  Clock Hold
                CLKHOLD: u1,
                ///  Address/Stop Interrupt Flag
                APIF: u1,
                ///  Data Interrupt Flag
                DIF: u1,
            }),
            ///  Client Address
            SADDR: u8,
            ///  Client Data
            SDATA: u8,
            ///  Client Address Mask
            SADDRMASK: mmio.Mmio(packed struct(u8) {
                ///  Address Enable
                ADDREN: u1,
                ///  Address Mask
                ADDRMASK: u7,
            }),
        };

        ///  Universal Synchronous and Asynchronous Receiver and Transmitter
        pub const USART = extern struct {
            ///  RS485 Mode internal transmitter select
            pub const USART_RS485 = enum(u2) {
                ///  RS485 Mode disabled
                OFF = 0x0,
                ///  RS485 Mode External drive
                EXT = 0x1,
                ///  RS485 Mode Internal drive
                INT = 0x2,
                _,
            };

            ///  Receiver Mode select
            pub const USART_RXMODE = enum(u2) {
                ///  Normal mode
                NORMAL = 0x0,
                ///  CLK2x mode
                CLK2X = 0x1,
                ///  Generic autobaud mode
                GENAUTO = 0x2,
                ///  LIN constrained autobaud mode
                LINAUTO = 0x3,
            };

            ///  Communication Mode select
            pub const USART_CMODE = enum(u2) {
                ///  Asynchronous Mode
                ASYNCHRONOUS = 0x0,
                ///  Synchronous Mode
                SYNCHRONOUS = 0x1,
                ///  Infrared Communication
                IRCOM = 0x2,
                ///  SPI Host Mode
                MSPI = 0x3,
            };

            ///  Character Size select
            pub const USART_NORMAL_CHSIZE = enum(u3) {
                ///  Character size: 5 bit
                @"5BIT" = 0x0,
                ///  Character size: 6 bit
                @"6BIT" = 0x1,
                ///  Character size: 7 bit
                @"7BIT" = 0x2,
                ///  Character size: 8 bit
                @"8BIT" = 0x3,
                ///  Character size: 9 bit read low byte first
                @"9BITL" = 0x6,
                ///  Character size: 9 bit read high byte first
                @"9BITH" = 0x7,
                _,
            };

            ///  Parity Mode select
            pub const USART_NORMAL_PMODE = enum(u2) {
                ///  No Parity
                DISABLED = 0x0,
                ///  Even Parity
                EVEN = 0x2,
                ///  Odd Parity
                ODD = 0x3,
                _,
            };

            ///  Stop Bit Mode select
            pub const USART_NORMAL_SBMODE = enum(u1) {
                ///  1 stop bit
                @"1BIT" = 0x0,
                ///  2 stop bits
                @"2BIT" = 0x1,
            };

            ///  Receive Data Low Byte
            RXDATAL: mmio.Mmio(packed struct(u8) {
                ///  RX Data
                DATA: u8,
            }),
            ///  Receive Data High Byte
            RXDATAH: mmio.Mmio(packed struct(u8) {
                ///  Receiver Data Register
                DATA8: u1,
                ///  Parity Error
                PERR: u1,
                ///  Frame Error
                FERR: u1,
                reserved6: u3,
                ///  Buffer Overflow
                BUFOVF: u1,
                ///  Receive Complete Interrupt Flag
                RXCIF: u1,
            }),
            ///  Transmit Data Low Byte
            TXDATAL: mmio.Mmio(packed struct(u8) {
                ///  Transmit Data Register
                DATA: u8,
            }),
            ///  Transmit Data High Byte
            TXDATAH: mmio.Mmio(packed struct(u8) {
                ///  Transmit Data Register (CHSIZE=9bit)
                DATA8: u1,
                padding: u7,
            }),
            ///  Status
            STATUS: mmio.Mmio(packed struct(u8) {
                ///  Wait For Break
                WFB: u1,
                ///  Break Detected Flag
                BDF: u1,
                reserved3: u1,
                ///  Inconsistent Sync Field Interrupt Flag
                ISFIF: u1,
                ///  Receive Start Interrupt
                RXSIF: u1,
                ///  Data Register Empty Flag
                DREIF: u1,
                ///  Transmit Interrupt Flag
                TXCIF: u1,
                ///  Receive Complete Interrupt Flag
                RXCIF: u1,
            }),
            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  RS485 Mode internal transmitter
                RS485: packed union {
                    raw: u2,
                    value: USART_RS485,
                },
                ///  Auto-baud Error Interrupt Enable
                ABEIE: u1,
                ///  Loop-back Mode Enable
                LBME: u1,
                ///  Receiver Start Frame Interrupt Enable
                RXSIE: u1,
                ///  Data Register Empty Interrupt Enable
                DREIE: u1,
                ///  Transmit Complete Interrupt Enable
                TXCIE: u1,
                ///  Receive Complete Interrupt Enable
                RXCIE: u1,
            }),
            ///  Control B
            CTRLB: mmio.Mmio(packed struct(u8) {
                ///  Multi-processor Communication Mode
                MPCM: u1,
                ///  Receiver Mode
                RXMODE: packed union {
                    raw: u2,
                    value: USART_RXMODE,
                },
                ///  Open Drain Mode Enable
                ODME: u1,
                ///  Start Frame Detection Enable
                SFDEN: u1,
                reserved6: u1,
                ///  Transmitter Enable
                TXEN: u1,
                ///  Reciever enable
                RXEN: u1,
            }),
            ///  Control C
            CTRLC: mmio.Mmio(packed struct(u8) {
                ///  Character Size
                CHSIZE: packed union {
                    raw: u3,
                    value: USART_NORMAL_CHSIZE,
                },
                ///  Stop Bit Mode
                SBMODE: packed union {
                    raw: u1,
                    value: USART_NORMAL_SBMODE,
                },
                ///  Parity Mode
                PMODE: packed union {
                    raw: u2,
                    value: USART_NORMAL_PMODE,
                },
                ///  Communication Mode
                CMODE: packed union {
                    raw: u2,
                    value: USART_CMODE,
                },
            }),
            ///  Baud Rate
            BAUD: u16,
            reserved11: [1]u8,
            ///  Debug Control
            DBGCTRL: mmio.Mmio(packed struct(u8) {
                ///  Debug Run
                DBGRUN: u1,
                padding: u7,
            }),
            ///  Event Control
            EVCTRL: mmio.Mmio(packed struct(u8) {
                ///  IrDA Event Input Enable
                IREI: u1,
                padding: u7,
            }),
            ///  IRCOM Transmitter Pulse Length Control
            TXPLCTRL: mmio.Mmio(packed struct(u8) {
                ///  Transmit pulse length
                TXPL: u8,
            }),
            ///  IRCOM Receiver Pulse Length Control
            RXPLCTRL: mmio.Mmio(packed struct(u8) {
                ///  Receiver Pulse Lenght
                RXPL: u7,
                padding: u1,
            }),
        };

        ///  User Row
        pub const USERROW = extern struct {
            ///  User Row Byte 0
            USERROW0: u8,
            ///  User Row Byte 1
            USERROW1: u8,
            ///  User Row Byte 2
            USERROW2: u8,
            ///  User Row Byte 3
            USERROW3: u8,
            ///  User Row Byte 4
            USERROW4: u8,
            ///  User Row Byte 5
            USERROW5: u8,
            ///  User Row Byte 6
            USERROW6: u8,
            ///  User Row Byte 7
            USERROW7: u8,
            ///  User Row Byte 8
            USERROW8: u8,
            ///  User Row Byte 9
            USERROW9: u8,
            ///  User Row Byte 10
            USERROW10: u8,
            ///  User Row Byte 11
            USERROW11: u8,
            ///  User Row Byte 12
            USERROW12: u8,
            ///  User Row Byte 13
            USERROW13: u8,
            ///  User Row Byte 14
            USERROW14: u8,
            ///  User Row Byte 15
            USERROW15: u8,
            ///  User Row Byte 16
            USERROW16: u8,
            ///  User Row Byte 17
            USERROW17: u8,
            ///  User Row Byte 18
            USERROW18: u8,
            ///  User Row Byte 19
            USERROW19: u8,
            ///  User Row Byte 20
            USERROW20: u8,
            ///  User Row Byte 21
            USERROW21: u8,
            ///  User Row Byte 22
            USERROW22: u8,
            ///  User Row Byte 23
            USERROW23: u8,
            ///  User Row Byte 24
            USERROW24: u8,
            ///  User Row Byte 25
            USERROW25: u8,
            ///  User Row Byte 26
            USERROW26: u8,
            ///  User Row Byte 27
            USERROW27: u8,
            ///  User Row Byte 28
            USERROW28: u8,
            ///  User Row Byte 29
            USERROW29: u8,
            ///  User Row Byte 30
            USERROW30: u8,
            ///  User Row Byte 31
            USERROW31: u8,
        };

        ///  Virtual Ports
        pub const VPORT = extern struct {
            ///  Data Direction
            DIR: u8,
            ///  Output Value
            OUT: u8,
            ///  Input Value
            IN: u8,
            ///  Interrupt Flags
            INTFLAGS: mmio.Mmio(packed struct(u8) {
                ///  Pin Interrupt
                INT: u8,
            }),
        };

        ///  Voltage reference
        pub const VREF = extern struct {
            ///  ADC0 reference select
            pub const VREF_ADC0REFSEL = enum(u3) {
                ///  Voltage reference at 0.55V
                @"0V55" = 0x0,
                ///  Voltage reference at 1.1V
                @"1V1" = 0x1,
                ///  Voltage reference at 2.5V
                @"2V5" = 0x2,
                ///  Voltage reference at 4.34V
                @"4V34" = 0x3,
                ///  Voltage reference at 1.5V
                @"1V5" = 0x4,
                _,
            };

            ///  DAC0/AC0 reference select
            pub const VREF_DAC0REFSEL = enum(u3) {
                ///  Voltage reference at 0.55V
                @"0V55" = 0x0,
                ///  Voltage reference at 1.1V
                @"1V1" = 0x1,
                ///  Voltage reference at 2.5V
                @"2V5" = 0x2,
                ///  Voltage reference at 4.34V
                @"4V34" = 0x3,
                ///  Voltage reference at 1.5V
                @"1V5" = 0x4,
                _,
            };

            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  DAC0/AC0 reference select
                DAC0REFSEL: packed union {
                    raw: u3,
                    value: VREF_DAC0REFSEL,
                },
                reserved4: u1,
                ///  ADC0 reference select
                ADC0REFSEL: packed union {
                    raw: u3,
                    value: VREF_ADC0REFSEL,
                },
                padding: u1,
            }),
            ///  Control B
            CTRLB: mmio.Mmio(packed struct(u8) {
                ///  DAC0/AC0 reference enable
                DAC0REFEN: u1,
                ///  ADC0 reference enable
                ADC0REFEN: u1,
                padding: u6,
            }),
        };

        ///  Watch-Dog Timer
        pub const WDT = extern struct {
            ///  Period select
            pub const WDT_PERIOD = enum(u4) {
                ///  Watch-Dog timer Off
                OFF = 0x0,
                ///  8 cycles (8ms)
                @"8CLK" = 0x1,
                ///  16 cycles (16ms)
                @"16CLK" = 0x2,
                ///  32 cycles (32ms)
                @"32CLK" = 0x3,
                ///  64 cycles (64ms)
                @"64CLK" = 0x4,
                ///  128 cycles (0.128s)
                @"128CLK" = 0x5,
                ///  256 cycles (0.256s)
                @"256CLK" = 0x6,
                ///  512 cycles (0.512s)
                @"512CLK" = 0x7,
                ///  1K cycles (1.0s)
                @"1KCLK" = 0x8,
                ///  2K cycles (2.0s)
                @"2KCLK" = 0x9,
                ///  4K cycles (4.1s)
                @"4KCLK" = 0xa,
                ///  8K cycles (8.2s)
                @"8KCLK" = 0xb,
                _,
            };

            ///  Window select
            pub const WDT_WINDOW = enum(u4) {
                ///  Window mode off
                OFF = 0x0,
                ///  8 cycles (8ms)
                @"8CLK" = 0x1,
                ///  16 cycles (16ms)
                @"16CLK" = 0x2,
                ///  32 cycles (32ms)
                @"32CLK" = 0x3,
                ///  64 cycles (64ms)
                @"64CLK" = 0x4,
                ///  128 cycles (0.128s)
                @"128CLK" = 0x5,
                ///  256 cycles (0.256s)
                @"256CLK" = 0x6,
                ///  512 cycles (0.512s)
                @"512CLK" = 0x7,
                ///  1K cycles (1.0s)
                @"1KCLK" = 0x8,
                ///  2K cycles (2.0s)
                @"2KCLK" = 0x9,
                ///  4K cycles (4.1s)
                @"4KCLK" = 0xa,
                ///  8K cycles (8.2s)
                @"8KCLK" = 0xb,
                _,
            };

            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  Period
                PERIOD: packed union {
                    raw: u4,
                    value: WDT_PERIOD,
                },
                ///  Window
                WINDOW: packed union {
                    raw: u4,
                    value: WDT_WINDOW,
                },
            }),
            ///  Status
            STATUS: mmio.Mmio(packed struct(u8) {
                ///  Syncronization busy
                SYNCBUSY: u1,
                reserved7: u6,
                ///  Lock enable
                LOCK: u1,
            }),
        };
    };
};
