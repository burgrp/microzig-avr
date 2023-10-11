const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    pub const ATtiny1627 = struct {
        pub const properties = struct {
            pub const family = "tinyAVR 2";
            pub const arch = "AVR8X";
        };

        pub const VectorTable = extern struct {
            const Handler = micro.interrupt.Handler;
            const unhandled = micro.interrupt.unhandled;

            RESET: Handler = unhandled,
            CRCSCAN_NMI: Handler = unhandled,
            BOD_VLM: Handler = unhandled,
            RTC_CNT: Handler = unhandled,
            RTC_PIT: Handler = unhandled,
            CCL_CCL: Handler = unhandled,
            PORTA_PORT: Handler = unhandled,
            PORTB_PORT: Handler = unhandled,
            TCA0_LUNF: Handler = unhandled,
            TCA0_HUNF: Handler = unhandled,
            TCA0_CMP0: Handler = unhandled,
            TCA0_CMP1: Handler = unhandled,
            TCA0_CMP2: Handler = unhandled,
            TCB0_INT: Handler = unhandled,
            TWI0_TWIS: Handler = unhandled,
            TWI0_TWIM: Handler = unhandled,
            SPI0_INT: Handler = unhandled,
            USART0_RXC: Handler = unhandled,
            USART0_DRE: Handler = unhandled,
            USART0_TXC: Handler = unhandled,
            AC0_AC: Handler = unhandled,
            ADC0_ERROR: Handler = unhandled,
            ADC0_RESRDY: Handler = unhandled,
            ADC0_SAMPRDY: Handler = unhandled,
            PORTC_PORT: Handler = unhandled,
            TCB1_INT: Handler = unhandled,
            USART1_RXC: Handler = unhandled,
            USART1_DRE: Handler = unhandled,
            USART1_TXC: Handler = unhandled,
            NVMCTRL_EE: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Virtual Ports
            pub const VPORTA = @as(*volatile types.peripherals.VPORT, @ptrFromInt(0x0));
            ///  Virtual Ports
            pub const VPORTB = @as(*volatile types.peripherals.VPORT, @ptrFromInt(0x4));
            ///  Virtual Ports
            pub const VPORTC = @as(*volatile types.peripherals.VPORT, @ptrFromInt(0x8));
            ///  General Purpose I/O Register
            pub const GPIO = @as(*volatile types.peripherals.GPIO, @ptrFromInt(0x1c));
            ///  CPU
            pub const CPU = @as(*volatile types.peripherals.CPU, @ptrFromInt(0x34));
            ///  Reset controller
            pub const RSTCTRL = @as(*volatile types.peripherals.RSTCTRL, @ptrFromInt(0x40));
            ///  Sleep Controller
            pub const SLPCTRL = @as(*volatile types.peripherals.SLPCTRL, @ptrFromInt(0x50));
            ///  Clock controller
            pub const CLKCTRL = @as(*volatile types.peripherals.CLKCTRL, @ptrFromInt(0x60));
            ///  Bod interface
            pub const BOD = @as(*volatile types.peripherals.BOD, @ptrFromInt(0x80));
            ///  Voltage reference
            pub const VREF = @as(*volatile types.peripherals.VREF, @ptrFromInt(0xa0));
            ///  Watch-Dog Timer
            pub const WDT = @as(*volatile types.peripherals.WDT, @ptrFromInt(0x100));
            ///  Interrupt Controller
            pub const CPUINT = @as(*volatile types.peripherals.CPUINT, @ptrFromInt(0x110));
            ///  CRCSCAN
            pub const CRCSCAN = @as(*volatile types.peripherals.CRCSCAN, @ptrFromInt(0x120));
            ///  Real-Time Counter
            pub const RTC = @as(*volatile types.peripherals.RTC, @ptrFromInt(0x140));
            ///  Event System
            pub const EVSYS = @as(*volatile types.peripherals.EVSYS, @ptrFromInt(0x180));
            ///  Configurable Custom Logic
            pub const CCL = @as(*volatile types.peripherals.CCL, @ptrFromInt(0x1c0));
            ///  I/O Ports
            pub const PORTA = @as(*volatile types.peripherals.PORT, @ptrFromInt(0x400));
            ///  I/O Ports
            pub const PORTB = @as(*volatile types.peripherals.PORT, @ptrFromInt(0x420));
            ///  I/O Ports
            pub const PORTC = @as(*volatile types.peripherals.PORT, @ptrFromInt(0x440));
            ///  Port Multiplexer
            pub const PORTMUX = @as(*volatile types.peripherals.PORTMUX, @ptrFromInt(0x5e0));
            ///  Analog to Digital Converter
            pub const ADC0 = @as(*volatile types.peripherals.ADC, @ptrFromInt(0x600));
            ///  Analog Comparator
            pub const AC0 = @as(*volatile types.peripherals.AC, @ptrFromInt(0x680));
            ///  Universal Synchronous and Asynchronous Receiver and Transmitter
            pub const USART0 = @as(*volatile types.peripherals.USART, @ptrFromInt(0x800));
            ///  Universal Synchronous and Asynchronous Receiver and Transmitter
            pub const USART1 = @as(*volatile types.peripherals.USART, @ptrFromInt(0x820));
            ///  Two-Wire Interface
            pub const TWI0 = @as(*volatile types.peripherals.TWI, @ptrFromInt(0x8a0));
            ///  Serial Peripheral Interface
            pub const SPI0 = @as(*volatile types.peripherals.SPI, @ptrFromInt(0x8c0));
            ///  16-bit Timer/Counter Type A
            pub const TCA0 = @as(*volatile types.peripherals.TCA, @ptrFromInt(0xa00));
            ///  16-bit Timer Type B
            pub const TCB0 = @as(*volatile types.peripherals.TCB, @ptrFromInt(0xa80));
            ///  16-bit Timer Type B
            pub const TCB1 = @as(*volatile types.peripherals.TCB, @ptrFromInt(0xa90));
            ///  System Configuration Registers
            pub const SYSCFG = @as(*volatile types.peripherals.SYSCFG, @ptrFromInt(0xf01));
            ///  Non-volatile Memory Controller
            pub const NVMCTRL = @as(*volatile types.peripherals.NVMCTRL, @ptrFromInt(0x1000));
            ///  Signature row
            pub const SIGROW = @as(*volatile types.peripherals.SIGROW, @ptrFromInt(0x1100));
            ///  Fuses
            pub const FUSE = @as(*volatile types.peripherals.FUSE, @ptrFromInt(0x1280));
            ///  Lockbit
            pub const LOCKBIT = @as(*volatile types.peripherals.LOCKBIT, @ptrFromInt(0x128a));
            ///  User Row
            pub const USERROW = @as(*volatile types.peripherals.USERROW, @ptrFromInt(0x1300));
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
                ///  Both Edge
                BOTHEDGE = 0x0,
                ///  Negative Edge
                NEGEDGE = 0x2,
                ///  Positive Edge
                POSEDGE = 0x3,
                _,
            };

            ///  Low Power Mode select
            pub const AC_LPMODE = enum(u1) {
                ///  Low power mode disabled
                DIS = 0x0,
                ///  Low power mode enabled
                EN = 0x1,
            };

            ///  Negative Input MUX Selection
            pub const AC_MUXNEG = enum(u2) {
                ///  Negative Pin 0
                AINN0 = 0x0,
                ///  Negative Pin 1
                AINN1 = 0x1,
                ///  Negative Pin 2
                AINN2 = 0x2,
                ///  DAC Voltage Reference
                DACREF = 0x3,
            };

            ///  Positive Input MUX Selection
            pub const AC_MUXPOS = enum(u2) {
                ///  Positive Pin 0
                AINP0 = 0x0,
                ///  Positive Pin 1
                AINP1 = 0x1,
                ///  Positive Pin 2
                AINP2 = 0x2,
                ///  Positive Pin 3
                AINP3 = 0x3,
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
                ///  Low Power Mode
                LPMODE: packed union {
                    raw: u1,
                    value: AC_LPMODE,
                },
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
            reserved4: [1]u8,
            ///  Referance scale control
            DACREF: mmio.Mmio(packed struct(u8) {
                ///  DACREF Data Value
                DACREF: u8,
            }),
            reserved6: [1]u8,
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
            ///  Mode select
            pub const ADC_MODE = enum(u3) {
                ///  Single Conversion 8-bit
                SINGLE_8BIT = 0x0,
                ///  Single Conversion 12-bit
                SINGLE_12BIT = 0x1,
                ///  Series Accumulation
                SERIES = 0x2,
                ///  Series Accumulation with Scaling
                SERIES_SCALING = 0x3,
                ///  Burst Accumulation
                BURST = 0x4,
                ///  Burst Accumulation with Scaling
                BURST_SCALING = 0x5,
                _,
            };

            ///  Start command select
            pub const ADC_START = enum(u3) {
                ///  Stop an ongoing conversion
                STOP = 0x0,
                ///  Start immediately
                IMMEDIATE = 0x1,
                ///  Start on MUXPOS write
                MUXPOS_WRITE = 0x2,
                ///  Start on MUXNEG write
                MUXNEG_WRITE = 0x3,
                ///  Start on event
                EVENT_TRIGGER = 0x4,
                _,
            };

            ///  Prescaler Value select
            pub const ADC_PRESC = enum(u4) {
                ///  System clock divided by 2
                DIV2 = 0x0,
                ///  System clock divided by 4
                DIV4 = 0x1,
                ///  System clock divided by 6
                DIV6 = 0x2,
                ///  System clock divided by 8
                DIV8 = 0x3,
                ///  System clock divided by 10
                DIV10 = 0x4,
                ///  System clock divided by 12
                DIV12 = 0x5,
                ///  System clock divided by 14
                DIV14 = 0x6,
                ///  System clock divided by 16
                DIV16 = 0x7,
                ///  System clock divided by 20
                DIV20 = 0x8,
                ///  System clock divided by 24
                DIV24 = 0x9,
                ///  System clock divided by 28
                DIV28 = 0xa,
                ///  System clock divided by 32
                DIV32 = 0xb,
                ///  System clock divided by 40
                DIV40 = 0xc,
                ///  System clock divided by 48
                DIV48 = 0xd,
                ///  System clock divided by 56
                DIV56 = 0xe,
                ///  System clock divided by 64
                DIV64 = 0xf,
            };

            ///  Reference select
            pub const ADC_REFSEL = enum(u3) {
                ///  VDD
                VDD = 0x0,
                ///  External Reference
                VREFA = 0x2,
                ///  Internal 1.024V Reference
                @"1024MV" = 0x4,
                ///  Internal 2.048V Reference
                @"2048MV" = 0x5,
                ///  Internal 2.5V Reference
                @"2500MV" = 0x6,
                ///  Internal 4.096V Reference
                @"4096MV" = 0x7,
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

            ///  Window Mode Source select
            pub const ADC_WINSRC = enum(u1) {
                ///  Result register
                RESULT = 0x0,
                ///  Sample register
                SAMPLE = 0x1,
            };

            ///  Sample numbers select
            pub const ADC_SAMPNUM = enum(u4) {
                ///  No accumulation
                NONE = 0x0,
                ///  2 samples accumulation
                ACC2 = 0x1,
                ///  4 samples accumulation
                ACC4 = 0x2,
                ///  8 samples accumulation
                ACC8 = 0x3,
                ///  16 samples accumulation
                ACC16 = 0x4,
                ///  32 samples accumulation
                ACC32 = 0x5,
                ///  64 samples accumulation
                ACC64 = 0x6,
                ///  128 samples accumulation
                ACC128 = 0x7,
                ///  256 samples accumulation
                ACC256 = 0x8,
                ///  512 samples accumulation
                ACC512 = 0x9,
                ///  1024 samples accumulation
                ACC1024 = 0xa,
                _,
            };

            ///  Analog Channel Selection Bits
            pub const ADC_MUXNEG = enum(u6) {
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
                ///  Ground
                GND = 0x30,
                ///  VDD/10
                VDDDIV10 = 0x31,
                ///  DACREF from AC0
                DACREF0 = 0x33,
                _,
            };

            ///  VIA select
            pub const ADC_VIA = enum(u2) {
                ///  Via ADC
                ADC = 0x0,
                ///  Via PGA
                PGA = 0x1,
                _,
            };

            ///  Analog Channel Selection Bits
            pub const ADC_MUXPOS = enum(u6) {
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
                ///  ADC input pin 12
                AIN12 = 0xc,
                ///  ADC input pin 13
                AIN13 = 0xd,
                ///  ADC input pin 14
                AIN14 = 0xe,
                ///  ADC input pin 15
                AIN15 = 0xf,
                ///  Ground
                GND = 0x30,
                ///  VDD/10
                VDDDIV10 = 0x31,
                ///  Temperature sensor
                TEMPSENSE = 0x32,
                ///  DACREF from AC0
                DACREF0 = 0x33,
                _,
            };

            ///  ADC PGA Sample Duration select
            pub const ADC_ADCPGASAMPDUR = enum(u2) {
                ///  6 ADC cycles
                @"6CLK" = 0x0,
                ///  15 ADC cycles
                @"15CLK" = 0x1,
                ///  20 ADC cycles
                @"20CLK" = 0x2,
                _,
            };

            ///  Gain select
            pub const ADC_GAIN = enum(u3) {
                ///  1X Gain
                @"1X" = 0x0,
                ///  2X Gain
                @"2X" = 0x1,
                ///  4X Gain
                @"4X" = 0x2,
                ///  8X Gain
                @"8X" = 0x3,
                ///  16X Gain
                @"16X" = 0x4,
                _,
            };

            ///  PGA BIAS Select
            pub const ADC_PGABIASSEL = enum(u2) {
                ///  1x BIAS current
                @"1X" = 0x0,
                ///  3/4x BIAS current
                @"3_4X" = 0x1,
                ///  1/2x BIAS current
                @"1_2X" = 0x2,
                ///  1/4x BIAS current
                @"1_4X" = 0x3,
            };

            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  ADC Enable
                ENABLE: u1,
                reserved5: u4,
                ///  ADC Low latency mode
                LOWLAT: u1,
                reserved7: u1,
                ///  Run standby mode
                RUNSTDBY: u1,
            }),
            ///  Control B
            CTRLB: mmio.Mmio(packed struct(u8) {
                ///  Prescaler Value
                PRESC: packed union {
                    raw: u4,
                    value: ADC_PRESC,
                },
                padding: u4,
            }),
            ///  Control C
            CTRLC: mmio.Mmio(packed struct(u8) {
                ///  Reference select
                REFSEL: packed union {
                    raw: u3,
                    value: ADC_REFSEL,
                },
                ///  Reference Selection
                TIMEBASE: u5,
            }),
            ///  Control D
            CTRLD: mmio.Mmio(packed struct(u8) {
                ///  Window Comparator Mode
                WINCM: packed union {
                    raw: u3,
                    value: ADC_WINCM,
                },
                ///  Window Mode Source
                WINSRC: packed union {
                    raw: u1,
                    value: ADC_WINSRC,
                },
                padding: u4,
            }),
            ///  Interrupt Control
            INTCTRL: mmio.Mmio(packed struct(u8) {
                ///  Result Ready Interrupt Enable
                RESRDY: u1,
                ///  Sample Ready Interrupt Enable
                SAMPRDY: u1,
                ///  Window Comparator Interrupt Enable
                WCMP: u1,
                ///  Result Overwritten Interrupt Enable
                RESOVR: u1,
                ///  Sample Overwritten Interrupt Enable
                SAMPOVR: u1,
                ///  Trigger Overrun Interrupt Enable
                TRIGOVR: u1,
                padding: u2,
            }),
            ///  Interrupt Flags
            INTFLAGS: mmio.Mmio(packed struct(u8) {
                ///  Result Ready Interrupt Flag
                RESRDY: u1,
                ///  Sample Ready Interrupt Flag
                SAMPRDY: u1,
                ///  Window Comparator Interrupt Flag
                WCMP: u1,
                ///  Result Overwritten Interrupt Flag
                RESOVR: u1,
                ///  Sample Overwritten Interrupt Flag
                SAMPOVR: u1,
                ///  Trigger Overrun Interrupt Flag
                TRIGOVR: u1,
                padding: u2,
            }),
            ///  Status register
            STATUS: mmio.Mmio(packed struct(u8) {
                ///  ADC Busy
                ADCBUSY: u1,
                padding: u7,
            }),
            ///  Debug Control
            DBGCTRL: mmio.Mmio(packed struct(u8) {
                ///  Debug run
                DBGRUN: u1,
                padding: u7,
            }),
            ///  Control E
            CTRLE: mmio.Mmio(packed struct(u8) {
                ///  Sampling time
                SAMPDUR: u8,
            }),
            ///  Control F
            CTRLF: mmio.Mmio(packed struct(u8) {
                ///  Sample numbers
                SAMPNUM: packed union {
                    raw: u4,
                    value: ADC_SAMPNUM,
                },
                ///  Left adjust
                LEFTADJ: u1,
                ///  Free running mode
                FREERUN: u1,
                padding: u2,
            }),
            ///  Command register
            COMMAND: mmio.Mmio(packed struct(u8) {
                ///  Start command
                START: packed union {
                    raw: u3,
                    value: ADC_START,
                },
                reserved4: u1,
                ///  Mode
                MODE: packed union {
                    raw: u3,
                    value: ADC_MODE,
                },
                ///  Differential mode
                DIFF: u1,
            }),
            ///  PGA Control
            PGACTRL: mmio.Mmio(packed struct(u8) {
                ///  PGA Enable
                PGAEN: u1,
                ///  ADC PGA Sample Duration
                ADCPGASAMPDUR: packed union {
                    raw: u2,
                    value: ADC_ADCPGASAMPDUR,
                },
                ///  PGA BIAS Select
                PGABIASSEL: packed union {
                    raw: u2,
                    value: ADC_PGABIASSEL,
                },
                ///  Gain
                GAIN: packed union {
                    raw: u3,
                    value: ADC_GAIN,
                },
            }),
            ///  Positive mux input
            MUXPOS: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel Selection Bits
                MUXPOS: packed union {
                    raw: u6,
                    value: ADC_MUXPOS,
                },
                ///  VIA
                VIA: packed union {
                    raw: u2,
                    value: ADC_VIA,
                },
            }),
            ///  Negative mux input
            MUXNEG: mmio.Mmio(packed struct(u8) {
                ///  Analog Channel Selection Bits
                MUXNEG: packed union {
                    raw: u6,
                    value: ADC_MUXNEG,
                },
                ///  VIA
                VIA: packed union {
                    raw: u2,
                    value: ADC_VIA,
                },
            }),
            reserved16: [2]u8,
            ///  Result
            RESULT: u32,
            ///  Sample
            SAMPLE: u16,
            reserved24: [2]u8,
            ///  Temporary Data 0
            TEMP0: mmio.Mmio(packed struct(u8) {
                ///  Temporary
                TEMP: u8,
            }),
            ///  Temporary Data 1
            TEMP1: mmio.Mmio(packed struct(u8) {
                ///  Temporary
                TEMP: u8,
            }),
            ///  Temporary Data 2
            TEMP2: mmio.Mmio(packed struct(u8) {
                ///  Temporary
                TEMP: u8,
            }),
            reserved28: [1]u8,
            ///  Window Low Threshold
            WINLT: u16,
            ///  Window High Threshold
            WINHT: u16,
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
                ///  Enabled with wake-up halted until BOD is ready
                ENWAKE = 0x3,
            };

            ///  Sample frequency select
            pub const BOD_SAMPFREQ = enum(u1) {
                ///  1kHz sampling frequency
                @"1KHZ" = 0x0,
                ///  125Hz sampling frequency
                @"125HZ" = 0x1,
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
            ///  Interrupt Mode for LUT0 select
            pub const CCL_INTMODE0 = enum(u2) {
                ///  Interrupt disabled
                INTDISABLE = 0x0,
                ///  Sense rising edge
                RISING = 0x1,
                ///  Sense falling edge
                FALLING = 0x2,
                ///  Sense both edges
                BOTH = 0x3,
            };

            ///  Interrupt Mode for LUT1 select
            pub const CCL_INTMODE1 = enum(u2) {
                ///  Interrupt disabled
                INTDISABLE = 0x0,
                ///  Sense rising edge
                RISING = 0x1,
                ///  Sense falling edge
                FALLING = 0x2,
                ///  Sense both edges
                BOTH = 0x3,
            };

            ///  Interrupt Mode for LUT2 select
            pub const CCL_INTMODE2 = enum(u2) {
                ///  Interrupt disabled
                INTDISABLE = 0x0,
                ///  Sense rising edge
                RISING = 0x1,
                ///  Sense falling edge
                FALLING = 0x2,
                ///  Sense both edges
                BOTH = 0x3,
            };

            ///  Interrupt Mode for LUT3 select
            pub const CCL_INTMODE3 = enum(u2) {
                ///  Interrupt disabled
                INTDISABLE = 0x0,
                ///  Sense rising edge
                RISING = 0x1,
                ///  Sense falling edge
                FALLING = 0x2,
                ///  Sense both edges
                BOTH = 0x3,
            };

            ///  Clock Source Selection
            pub const CCL_CLKSRC = enum(u3) {
                ///  CLK_PER is clocking the LUT
                CLKPER = 0x0,
                ///  IN[2] is clocking the LUT
                IN2 = 0x1,
                ///  20MHz oscillator before prescaler is clocking the LUT
                OSC20M = 0x4,
                ///  32kHz oscillator is clocking the LUT
                OSCULP32K = 0x5,
                ///  32kHz oscillator after DIV32 is clocking the LUT
                OSCULP1K = 0x6,
                _,
            };

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
                ///  Event input source A
                EVENTA = 0x3,
                ///  Event input source B
                EVENTB = 0x4,
                ///  IO pin LUTn-IN0 input source
                IO = 0x5,
                ///  AC0 OUT input source
                AC0 = 0x6,
                ///  USART0 TXD input source
                USART0 = 0x8,
                ///  SPI0 MOSI input source
                SPI0 = 0x9,
                ///  TCA0 WO0 input source
                TCA0 = 0xa,
                ///  TCB0 WO input source
                TCB0 = 0xc,
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
                ///  Event input source A
                EVENTA = 0x3,
                ///  Event input source B
                EVENTB = 0x4,
                ///  IO pin LUTn-IN1 input source
                IO = 0x5,
                ///  AC0 OUT input source
                AC0 = 0x6,
                ///  USART1 TXD input source
                USART1 = 0x8,
                ///  SPI0 MOSI input source
                SPI0 = 0x9,
                ///  TCA0 WO1 input source
                TCA0 = 0xa,
                ///  TCB1 WO input source
                TCB1 = 0xc,
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
                ///  Event input source A
                EVENTA = 0x3,
                ///  Event input source B
                EVENTB = 0x4,
                ///  IO pin LUTn-IN2 input source
                IO = 0x5,
                ///  AC0 OUT input source
                AC0 = 0x6,
                ///  SPI0 SCK input source
                SPI0 = 0x9,
                ///  TCA0 WO2 input source
                TCA0 = 0xa,
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
            ///  Sequential Control 1
            SEQCTRL1: mmio.Mmio(packed struct(u8) {
                ///  Sequential Selection
                SEQSEL: packed union {
                    raw: u3,
                    value: CCL_SEQSEL,
                },
                padding: u5,
            }),
            reserved5: [2]u8,
            ///  Interrupt Control 0
            INTCTRL0: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Mode for LUT0
                INTMODE0: packed union {
                    raw: u2,
                    value: CCL_INTMODE0,
                },
                ///  Interrupt Mode for LUT1
                INTMODE1: packed union {
                    raw: u2,
                    value: CCL_INTMODE1,
                },
                ///  Interrupt Mode for LUT2
                INTMODE2: packed union {
                    raw: u2,
                    value: CCL_INTMODE2,
                },
                ///  Interrupt Mode for LUT3
                INTMODE3: packed union {
                    raw: u2,
                    value: CCL_INTMODE3,
                },
            }),
            reserved7: [1]u8,
            ///  Interrupt Flags
            INTFLAGS: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Flag
                INT: u4,
                padding: u4,
            }),
            ///  LUT 0 Control A
            LUT0CTRLA: mmio.Mmio(packed struct(u8) {
                ///  LUT Enable
                ENABLE: u1,
                ///  Clock Source Selection
                CLKSRC: packed union {
                    raw: u3,
                    value: CCL_CLKSRC,
                },
                ///  Filter Selection
                FILTSEL: packed union {
                    raw: u2,
                    value: CCL_FILTSEL,
                },
                ///  Output Enable
                OUTEN: u1,
                ///  Edge Detection Enable
                EDGEDET: packed union {
                    raw: u1,
                    value: CCL_EDGEDET,
                },
            }),
            ///  LUT 0 Control B
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
            ///  LUT 0 Control C
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
            ///  LUT 1 Control A
            LUT1CTRLA: mmio.Mmio(packed struct(u8) {
                ///  LUT Enable
                ENABLE: u1,
                ///  Clock Source Selection
                CLKSRC: packed union {
                    raw: u3,
                    value: CCL_CLKSRC,
                },
                ///  Filter Selection
                FILTSEL: packed union {
                    raw: u2,
                    value: CCL_FILTSEL,
                },
                ///  Output Enable
                OUTEN: u1,
                ///  Edge Detection Enable
                EDGEDET: packed union {
                    raw: u1,
                    value: CCL_EDGEDET,
                },
            }),
            ///  LUT 1 Control B
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
            ///  LUT 1 Control C
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
            ///  LUT 2 Control A
            LUT2CTRLA: mmio.Mmio(packed struct(u8) {
                ///  LUT Enable
                ENABLE: u1,
                ///  Clock Source Selection
                CLKSRC: packed union {
                    raw: u3,
                    value: CCL_CLKSRC,
                },
                ///  Filter Selection
                FILTSEL: packed union {
                    raw: u2,
                    value: CCL_FILTSEL,
                },
                ///  Output Enable
                OUTEN: u1,
                ///  Edge Detection Enable
                EDGEDET: packed union {
                    raw: u1,
                    value: CCL_EDGEDET,
                },
            }),
            ///  LUT 2 Control B
            LUT2CTRLB: mmio.Mmio(packed struct(u8) {
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
            ///  LUT 2 Control C
            LUT2CTRLC: mmio.Mmio(packed struct(u8) {
                ///  LUT Input 2 Source Selection
                INSEL2: packed union {
                    raw: u4,
                    value: CCL_INSEL2,
                },
                padding: u4,
            }),
            ///  Truth 2
            TRUTH2: mmio.Mmio(packed struct(u8) {
                ///  Truth Table
                TRUTH: u8,
            }),
            ///  LUT 3 Control A
            LUT3CTRLA: mmio.Mmio(packed struct(u8) {
                ///  LUT Enable
                ENABLE: u1,
                ///  Clock Source Selection
                CLKSRC: packed union {
                    raw: u3,
                    value: CCL_CLKSRC,
                },
                ///  Filter Selection
                FILTSEL: packed union {
                    raw: u2,
                    value: CCL_FILTSEL,
                },
                ///  Output Enable
                OUTEN: u1,
                ///  Edge Detection Enable
                EDGEDET: packed union {
                    raw: u1,
                    value: CCL_EDGEDET,
                },
            }),
            ///  LUT 3 Control B
            LUT3CTRLB: mmio.Mmio(packed struct(u8) {
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
            ///  LUT 3 Control C
            LUT3CTRLC: mmio.Mmio(packed struct(u8) {
                ///  LUT Input 2 Source Selection
                INSEL2: packed union {
                    raw: u4,
                    value: CCL_INSEL2,
                },
                padding: u4,
            }),
            ///  Truth 3
            TRUTH3: mmio.Mmio(packed struct(u8) {
                ///  Truth Table
                TRUTH: u8,
            }),
        };

        ///  Clock controller
        pub const CLKCTRL = extern struct {
            ///  Clock select
            pub const CLKCTRL_CLKSEL = enum(u2) {
                ///  20MHz oscillator
                OSC20M = 0x0,
                ///  32KHz oscillator
                OSCULP32K = 0x1,
                ///  32.768kHz crystal oscillator
                XOSC32K = 0x2,
                ///  External clock
                EXTCLK = 0x3,
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

            ///  Crystal startup time select
            pub const CLKCTRL_CSUT = enum(u2) {
                ///  1k cycles
                @"1K" = 0x0,
                ///  16k cycles
                @"16K" = 0x1,
                ///  32k cycles
                @"32K" = 0x2,
                ///  64k cycles
                @"64K" = 0x3,
            };

            ///  MCLK Control A
            MCLKCTRLA: mmio.Mmio(packed struct(u8) {
                ///  Clock
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
                ///  32.768 kHz Crystal Oscillator status
                XOSC32KS: u1,
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
                CAL20M: u7,
                padding: u1,
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
            reserved28: [3]u8,
            ///  XOSC32K Control A
            XOSC32KCTRLA: mmio.Mmio(packed struct(u8) {
                ///  Enable
                ENABLE: u1,
                ///  Run standby
                RUNSTDBY: u1,
                ///  Select
                SEL: u1,
                reserved4: u1,
                ///  Crystal startup time
                CSUT: packed union {
                    raw: u2,
                    value: CLKCTRL_CSUT,
                },
                padding: u2,
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
            ///  Channel 0 generator select
            pub const EVSYS_CHANNEL0 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Unified Program and Debug Interface
                UPDI = 0x1,
                ///  Real Time Counter overflow
                RTC_OVF = 0x6,
                ///  Real Time Counter compare
                RTC_CMP = 0x7,
                ///  Periodic Interrupt Timer output 0
                RTC_PIT_DIV8192 = 0x8,
                ///  Periodic Interrupt Timer output 1
                RTC_PIT_DIV4096 = 0x9,
                ///  Periodic Interrupt Timer output 2
                RTC_PIT_DIV2048 = 0xa,
                ///  Periodic Interrupt Timer output 3
                RTC_PIT_DIV1024 = 0xb,
                ///  Configurable Custom Logic LUT0
                CCL_LUT0 = 0x10,
                ///  Configurable Custom Logic LUT1
                CCL_LUT1 = 0x11,
                ///  Configurable Custom Logic LUT2
                CCL_LUT2 = 0x12,
                ///  Configurable Custom Logic LUT3
                CCL_LUT3 = 0x13,
                ///  Analog Comparator 0 out
                AC0_OUT = 0x20,
                ///  ADC 0 Result ready event
                ADC0_RES = 0x24,
                ///  ADC 0 Sample ready event
                ADC0_SAMP = 0x25,
                ///  ADC 0 Window compare match event
                ADC0_WCMP = 0x26,
                ///  Port A Pin 0
                PORTA_PIN0 = 0x40,
                ///  Port A Pin 1
                PORTA_PIN1 = 0x41,
                ///  Port A Pin 2
                PORTA_PIN2 = 0x42,
                ///  Port A Pin 3
                PORTA_PIN3 = 0x43,
                ///  Port A Pin 4
                PORTA_PIN4 = 0x44,
                ///  Port A Pin 5
                PORTA_PIN5 = 0x45,
                ///  Port A Pin 6
                PORTA_PIN6 = 0x46,
                ///  Port A Pin 7
                PORTA_PIN7 = 0x47,
                ///  Port B Pin 0
                PORTB_PIN0 = 0x48,
                ///  Port B Pin 1
                PORTB_PIN1 = 0x49,
                ///  Port B Pin 2
                PORTB_PIN2 = 0x4a,
                ///  Port B Pin 3
                PORTB_PIN3 = 0x4b,
                ///  Port B Pin 4
                PORTB_PIN4 = 0x4c,
                ///  Port B Pin 5
                PORTB_PIN5 = 0x4d,
                ///  Port B Pin 6
                PORTB_PIN6 = 0x4e,
                ///  Port B Pin 7
                PORTB_PIN7 = 0x4f,
                ///  USART 0 XCK
                USART0_XCK = 0x60,
                ///  USART 1 XCK
                USART1_XCK = 0x61,
                ///  SPI 0 Sclock
                SPI0_SCK = 0x68,
                ///  Timer/Counter A0 overflow / low byte underflow
                TCA0_OVF_LUNF = 0x80,
                ///  Timer/Counter A0 high byte underflow
                TCA0_HUNF = 0x81,
                ///  Timer/Counter A0 compare 0 / low byte timer compare 0
                TCA0_CMP0_LCMP0 = 0x84,
                ///  Timer/Counter A0 compare 1 / low byte timer compare 1
                TCA0_CMP1_LCMP1 = 0x85,
                ///  Timer/Counter A0 compare 2 / low byte timer compare 2
                TCA0_CMP2_LCMP2 = 0x86,
                ///  Timer/Counter B0 capture
                TCB0_CAPT = 0xa0,
                ///  Timer/Counter B0 overflow
                TCB0_OVF = 0xa1,
                ///  Timer/Counter B1 capture
                TCB1_CAPT = 0xa2,
                ///  Timer/Counter B1 overflow
                TCB1_OVF = 0xa3,
                _,
            };

            ///  Channel 1 generator select
            pub const EVSYS_CHANNEL1 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Unified Program and Debug Interface
                UPDI = 0x1,
                ///  Real Time Counter overflow
                RTC_OVF = 0x6,
                ///  Real Time Counter compare
                RTC_CMP = 0x7,
                ///  Periodic Interrupt Timer output 0
                RTC_PIT_DIV512 = 0x8,
                ///  Periodic Interrupt Timer output 1
                RTC_PIT_DIV256 = 0x9,
                ///  Periodic Interrupt Timer output 2
                RTC_PIT_DIV128 = 0xa,
                ///  Periodic Interrupt Timer output 3
                RTC_PIT_DIV64 = 0xb,
                ///  Configurable Custom Logic LUT0
                CCL_LUT0 = 0x10,
                ///  Configurable Custom Logic LUT1
                CCL_LUT1 = 0x11,
                ///  Configurable Custom Logic LUT2
                CCL_LUT2 = 0x12,
                ///  Configurable Custom Logic LUT3
                CCL_LUT3 = 0x13,
                ///  Analog Comparator 0 out
                AC0_OUT = 0x20,
                ///  ADC 0 Result ready event
                ADC0_RES = 0x24,
                ///  ADC 0 Sample ready event
                ADC0_SAMP = 0x25,
                ///  ADC 0 Window compare match event
                ADC0_WCMP = 0x26,
                ///  Port A Pin 0
                PORTA_PIN0 = 0x40,
                ///  Port A Pin 1
                PORTA_PIN1 = 0x41,
                ///  Port A Pin 2
                PORTA_PIN2 = 0x42,
                ///  Port A Pin 3
                PORTA_PIN3 = 0x43,
                ///  Port A Pin 4
                PORTA_PIN4 = 0x44,
                ///  Port A Pin 5
                PORTA_PIN5 = 0x45,
                ///  Port A Pin 6
                PORTA_PIN6 = 0x46,
                ///  Port A Pin 7
                PORTA_PIN7 = 0x47,
                ///  Port B Pin 0
                PORTB_PIN0 = 0x48,
                ///  Port B Pin 1
                PORTB_PIN1 = 0x49,
                ///  Port B Pin 2
                PORTB_PIN2 = 0x4a,
                ///  Port B Pin 3
                PORTB_PIN3 = 0x4b,
                ///  Port B Pin 4
                PORTB_PIN4 = 0x4c,
                ///  Port B Pin 5
                PORTB_PIN5 = 0x4d,
                ///  Port B Pin 6
                PORTB_PIN6 = 0x4e,
                ///  Port B Pin 7
                PORTB_PIN7 = 0x4f,
                ///  USART 0 XCK
                USART0_XCK = 0x60,
                ///  USART 1 XCK
                USART1_XCK = 0x61,
                ///  SPI 0 Sclock
                SPI0_SCK = 0x68,
                ///  Timer/Counter A0 overflow / low byte underflow
                TCA0_OVF_LUNF = 0x80,
                ///  Timer/Counter A0 high byte underflow
                TCA0_HUNF = 0x81,
                ///  Timer/Counter A0 compare 0 / low byte timer compare 0
                TCA0_CMP0_LCMP0 = 0x84,
                ///  Timer/Counter A0 compare 1 / low byte timer compare 1
                TCA0_CMP1_LCMP1 = 0x85,
                ///  Timer/Counter A0 compare 2 / low byte timer compare 2
                TCA0_CMP2_LCMP2 = 0x86,
                ///  Timer/Counter B0 capture
                TCB0_CAPT = 0xa0,
                ///  Timer/Counter B0 overflow
                TCB0_OVF = 0xa1,
                ///  Timer/Counter B1 capture
                TCB1_CAPT = 0xa2,
                ///  Timer/Counter B1 overflow
                TCB1_OVF = 0xa3,
                _,
            };

            ///  Channel 2 generator select
            pub const EVSYS_CHANNEL2 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Unified Program and Debug Interface
                UPDI = 0x1,
                ///  Real Time Counter overflow
                RTC_OVF = 0x6,
                ///  Real Time Counter compare
                RTC_CMP = 0x7,
                ///  Periodic Interrupt Timer output 0
                RTC_PIT_DIV8192 = 0x8,
                ///  Periodic Interrupt Timer output 1
                RTC_PIT_DIV4096 = 0x9,
                ///  Periodic Interrupt Timer output 2
                RTC_PIT_DIV2048 = 0xa,
                ///  Periodic Interrupt Timer output 3
                RTC_PIT_DIV1024 = 0xb,
                ///  Configurable Custom Logic LUT0
                CCL_LUT0 = 0x10,
                ///  Configurable Custom Logic LUT1
                CCL_LUT1 = 0x11,
                ///  Configurable Custom Logic LUT2
                CCL_LUT2 = 0x12,
                ///  Configurable Custom Logic LUT3
                CCL_LUT3 = 0x13,
                ///  Analog Comparator 0 out
                AC0_OUT = 0x20,
                ///  ADC 0 Result ready event
                ADC0_RES = 0x24,
                ///  ADC 0 Sample ready event
                ADC0_SAMP = 0x25,
                ///  ADC 0 Window compare match event
                ADC0_WCMP = 0x26,
                ///  Port C Pin 0
                PORTC_PIN0 = 0x40,
                ///  Port C Pin 1
                PORTC_PIN1 = 0x41,
                ///  Port C Pin 2
                PORTC_PIN2 = 0x42,
                ///  Port C Pin 3
                PORTC_PIN3 = 0x43,
                ///  Port C Pin 4
                PORTC_PIN4 = 0x44,
                ///  Port C Pin 5
                PORTC_PIN5 = 0x45,
                ///  Port A Pin 0
                PORTA_PIN0 = 0x48,
                ///  Port A Pin 1
                PORTA_PIN1 = 0x49,
                ///  Port A Pin 2
                PORTA_PIN2 = 0x4a,
                ///  Port A Pin 3
                PORTA_PIN3 = 0x4b,
                ///  Port A Pin 4
                PORTA_PIN4 = 0x4c,
                ///  Port A Pin 5
                PORTA_PIN5 = 0x4d,
                ///  Port A Pin 6
                PORTA_PIN6 = 0x4e,
                ///  Port A Pin 7
                PORTA_PIN7 = 0x4f,
                ///  USART 0 XCK
                USART0_XCK = 0x60,
                ///  USART 1 XCK
                USART1_XCK = 0x61,
                ///  SPI 0 Sclock
                SPI0_SCK = 0x68,
                ///  Timer/Counter A0 overflow / low byte underflow
                TCA0_OVF_LUNF = 0x80,
                ///  Timer/Counter A0 high byte underflow
                TCA0_HUNF = 0x81,
                ///  Timer/Counter A0 compare 0 / low byte timer compare 0
                TCA0_CMP0_LCMP0 = 0x84,
                ///  Timer/Counter A0 compare 1 / low byte timer compare 1
                TCA0_CMP1_LCMP1 = 0x85,
                ///  Timer/Counter A0 compare 2 / low byte timer compare 2
                TCA0_CMP2_LCMP2 = 0x86,
                ///  Timer/Counter B0 capture
                TCB0_CAPT = 0xa0,
                ///  Timer/Counter B0 overflow
                TCB0_OVF = 0xa1,
                ///  Timer/Counter B1 capture
                TCB1_CAPT = 0xa2,
                ///  Timer/Counter B1 overflow
                TCB1_OVF = 0xa3,
                _,
            };

            ///  Channel 3 generator select
            pub const EVSYS_CHANNEL3 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Unified Program and Debug Interface
                UPDI = 0x1,
                ///  Real Time Counter overflow
                RTC_OVF = 0x6,
                ///  Real Time Counter compare
                RTC_CMP = 0x7,
                ///  Periodic Interrupt Timer output 0
                RTC_PIT_DIV512 = 0x8,
                ///  Periodic Interrupt Timer output 1
                RTC_PIT_DIV256 = 0x9,
                ///  Periodic Interrupt Timer output 2
                RTC_PIT_DIV128 = 0xa,
                ///  Periodic Interrupt Timer output 3
                RTC_PIT_DIV64 = 0xb,
                ///  Configurable Custom Logic LUT0
                CCL_LUT0 = 0x10,
                ///  Configurable Custom Logic LUT1
                CCL_LUT1 = 0x11,
                ///  Configurable Custom Logic LUT2
                CCL_LUT2 = 0x12,
                ///  Configurable Custom Logic LUT3
                CCL_LUT3 = 0x13,
                ///  Analog Comparator 0 out
                AC0_OUT = 0x20,
                ///  ADC 0 Result ready event
                ADC0_RES = 0x24,
                ///  ADC 0 Sample ready event
                ADC0_SAMP = 0x25,
                ///  ADC 0 Window compare match event
                ADC0_WCMP = 0x26,
                ///  Port C Pin 0
                PORTC_PIN0 = 0x40,
                ///  Port C Pin 1
                PORTC_PIN1 = 0x41,
                ///  Port C Pin 2
                PORTC_PIN2 = 0x42,
                ///  Port C Pin 3
                PORTC_PIN3 = 0x43,
                ///  Port C Pin 4
                PORTC_PIN4 = 0x44,
                ///  Port C Pin 5
                PORTC_PIN5 = 0x45,
                ///  Port A Pin 0
                PORTA_PIN0 = 0x48,
                ///  Port A Pin 1
                PORTA_PIN1 = 0x49,
                ///  Port A Pin 2
                PORTA_PIN2 = 0x4a,
                ///  Port A Pin 3
                PORTA_PIN3 = 0x4b,
                ///  Port A Pin 4
                PORTA_PIN4 = 0x4c,
                ///  Port A Pin 5
                PORTA_PIN5 = 0x4d,
                ///  Port A Pin 6
                PORTA_PIN6 = 0x4e,
                ///  Port A Pin 7
                PORTA_PIN7 = 0x4f,
                ///  USART 0 XCK
                USART0_XCK = 0x60,
                ///  USART 1 XCK
                USART1_XCK = 0x61,
                ///  SPI 0 Sclock
                SPI0_SCK = 0x68,
                ///  Timer/Counter A0 overflow / low byte underflow
                TCA0_OVF_LUNF = 0x80,
                ///  Timer/Counter A0 high byte underflow
                TCA0_HUNF = 0x81,
                ///  Timer/Counter A0 compare 0 / low byte timer compare 0
                TCA0_CMP0_LCMP0 = 0x84,
                ///  Timer/Counter A0 compare 1 / low byte timer compare 1
                TCA0_CMP1_LCMP1 = 0x85,
                ///  Timer/Counter A0 compare 2 / low byte timer compare 2
                TCA0_CMP2_LCMP2 = 0x86,
                ///  Timer/Counter B0 capture
                TCB0_CAPT = 0xa0,
                ///  Timer/Counter B0 overflow
                TCB0_OVF = 0xa1,
                ///  Timer/Counter B1 capture
                TCB1_CAPT = 0xa2,
                ///  Timer/Counter B1 overflow
                TCB1_OVF = 0xa3,
                _,
            };

            ///  Channel 4 generator select
            pub const EVSYS_CHANNEL4 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Unified Program and Debug Interface
                UPDI = 0x1,
                ///  Real Time Counter overflow
                RTC_OVF = 0x6,
                ///  Real Time Counter compare
                RTC_CMP = 0x7,
                ///  Periodic Interrupt Timer output 0
                RTC_PIT_DIV8192 = 0x8,
                ///  Periodic Interrupt Timer output 1
                RTC_PIT_DIV4096 = 0x9,
                ///  Periodic Interrupt Timer output 2
                RTC_PIT_DIV2048 = 0xa,
                ///  Periodic Interrupt Timer output 3
                RTC_PIT_DIV1024 = 0xb,
                ///  Configurable Custom Logic LUT0
                CCL_LUT0 = 0x10,
                ///  Configurable Custom Logic LUT1
                CCL_LUT1 = 0x11,
                ///  Configurable Custom Logic LUT2
                CCL_LUT2 = 0x12,
                ///  Configurable Custom Logic LUT3
                CCL_LUT3 = 0x13,
                ///  Analog Comparator 0 out
                AC0_OUT = 0x20,
                ///  ADC 0 Result ready event
                ADC0_RES = 0x24,
                ///  ADC 0 Sample ready event
                ADC0_SAMP = 0x25,
                ///  ADC 0 Window compare match event
                ADC0_WCMP = 0x26,
                ///  Port B Pin 0
                PORTB_PIN0 = 0x40,
                ///  Port B Pin 1
                PORTB_PIN1 = 0x41,
                ///  Port B Pin 2
                PORTB_PIN2 = 0x42,
                ///  Port B Pin 3
                PORTB_PIN3 = 0x43,
                ///  Port B Pin 4
                PORTB_PIN4 = 0x44,
                ///  Port B Pin 5
                PORTB_PIN5 = 0x45,
                ///  Port B Pin 6
                PORTB_PIN6 = 0x46,
                ///  Port B Pin 7
                PORTB_PIN7 = 0x47,
                ///  Port C Pin 0
                PORTC_PIN0 = 0x48,
                ///  Port C Pin 1
                PORTC_PIN1 = 0x49,
                ///  Port C Pin 2
                PORTC_PIN2 = 0x4a,
                ///  Port C Pin 3
                PORTC_PIN3 = 0x4b,
                ///  Port C Pin 4
                PORTC_PIN4 = 0x4c,
                ///  Port C Pin 5
                PORTC_PIN5 = 0x4d,
                ///  USART 0 XCK
                USART0_XCK = 0x60,
                ///  USART 1 XCK
                USART1_XCK = 0x61,
                ///  SPI 0 Sclock
                SPI0_SCK = 0x68,
                ///  Timer/Counter A0 overflow / low byte underflow
                TCA0_OVF_LUNF = 0x80,
                ///  Timer/Counter A0 high byte underflow
                TCA0_HUNF = 0x81,
                ///  Timer/Counter A0 compare 0 / low byte timer compare 0
                TCA0_CMP0_LCMP0 = 0x84,
                ///  Timer/Counter A0 compare 1 / low byte timer compare 1
                TCA0_CMP1_LCMP1 = 0x85,
                ///  Timer/Counter A0 compare 2 / low byte timer compare 2
                TCA0_CMP2_LCMP2 = 0x86,
                ///  Timer/Counter B0 capture
                TCB0_CAPT = 0xa0,
                ///  Timer/Counter B0 overflow
                TCB0_OVF = 0xa1,
                ///  Timer/Counter B1 capture
                TCB1_CAPT = 0xa2,
                ///  Timer/Counter B1 overflow
                TCB1_OVF = 0xa3,
                _,
            };

            ///  Channel 5 generator select
            pub const EVSYS_CHANNEL5 = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Unified Program and Debug Interface
                UPDI = 0x1,
                ///  Real Time Counter overflow
                RTC_OVF = 0x6,
                ///  Real Time Counter compare
                RTC_CMP = 0x7,
                ///  Periodic Interrupt Timer output 0
                RTC_PIT_DIV512 = 0x8,
                ///  Periodic Interrupt Timer output 1
                RTC_PIT_DIV256 = 0x9,
                ///  Periodic Interrupt Timer output 2
                RTC_PIT_DIV128 = 0xa,
                ///  Periodic Interrupt Timer output 3
                RTC_PIT_DIV64 = 0xb,
                ///  Configurable Custom Logic LUT0
                CCL_LUT0 = 0x10,
                ///  Configurable Custom Logic LUT1
                CCL_LUT1 = 0x11,
                ///  Configurable Custom Logic LUT2
                CCL_LUT2 = 0x12,
                ///  Configurable Custom Logic LUT3
                CCL_LUT3 = 0x13,
                ///  Analog Comparator 0 out
                AC0_OUT = 0x20,
                ///  ADC 0 Result ready event
                ADC0_RES = 0x24,
                ///  ADC 0 Sample ready event
                ADC0_SAMP = 0x25,
                ///  ADC 0 Window compare match event
                ADC0_WCMP = 0x26,
                ///  Port B Pin 0
                PORTB_PIN0 = 0x40,
                ///  Port B Pin 1
                PORTB_PIN1 = 0x41,
                ///  Port B Pin 2
                PORTB_PIN2 = 0x42,
                ///  Port B Pin 3
                PORTB_PIN3 = 0x43,
                ///  Port B Pin 4
                PORTB_PIN4 = 0x44,
                ///  Port B Pin 5
                PORTB_PIN5 = 0x45,
                ///  Port B Pin 6
                PORTB_PIN6 = 0x46,
                ///  Port B Pin 7
                PORTB_PIN7 = 0x47,
                ///  Port C Pin 0
                PORTC_PIN0 = 0x48,
                ///  Port C Pin 1
                PORTC_PIN1 = 0x49,
                ///  Port C Pin 2
                PORTC_PIN2 = 0x4a,
                ///  Port C Pin 3
                PORTC_PIN3 = 0x4b,
                ///  Port C Pin 4
                PORTC_PIN4 = 0x4c,
                ///  Port C Pin 5
                PORTC_PIN5 = 0x4d,
                ///  USART 0 XCK
                USART0_XCK = 0x60,
                ///  USART 1 XCK
                USART1_XCK = 0x61,
                ///  SPI 0 Sclock
                SPI0_SCK = 0x68,
                ///  Timer/Counter A0 overflow / low byte underflow
                TCA0_OVF_LUNF = 0x80,
                ///  Timer/Counter A0 high byte underflow
                TCA0_HUNF = 0x81,
                ///  Timer/Counter A0 compare 0 / low byte timer compare 0
                TCA0_CMP0_LCMP0 = 0x84,
                ///  Timer/Counter A0 compare 1 / low byte timer compare 1
                TCA0_CMP1_LCMP1 = 0x85,
                ///  Timer/Counter A0 compare 2 / low byte timer compare 2
                TCA0_CMP2_LCMP2 = 0x86,
                ///  Timer/Counter B0 capture
                TCB0_CAPT = 0xa0,
                ///  Timer/Counter B0 overflow
                TCB0_OVF = 0xa1,
                ///  Timer/Counter B1 capture
                TCB1_CAPT = 0xa2,
                ///  Timer/Counter B1 overflow
                TCB1_OVF = 0xa3,
                _,
            };

            ///  Software event on channel select
            pub const EVSYS_SWEVENTA = enum(u8) {
                ///  Software event on channel 0
                CH0 = 0x1,
                ///  Software event on channel 1
                CH1 = 0x2,
                ///  Software event on channel 2
                CH2 = 0x4,
                ///  Software event on channel 3
                CH3 = 0x8,
                ///  Software event on channel 4
                CH4 = 0x10,
                ///  Software event on channel 5
                CH5 = 0x20,
                _,
            };

            ///  Channel selector
            pub const EVSYS_USER = enum(u8) {
                ///  Off
                OFF = 0x0,
                ///  Connect user to event channel 0
                CHANNEL0 = 0x1,
                ///  Connect user to event channel 1
                CHANNEL1 = 0x2,
                ///  Connect user to event channel 2
                CHANNEL2 = 0x3,
                ///  Connect user to event channel 3
                CHANNEL3 = 0x4,
                ///  Connect user to event channel 4
                CHANNEL4 = 0x5,
                ///  Connect user to event channel 5
                CHANNEL5 = 0x6,
                _,
            };

            ///  Software Event A
            SWEVENTA: mmio.Mmio(packed struct(u8) {
                ///  Software event on channel
                SWEVENTA: packed union {
                    raw: u8,
                    value: EVSYS_SWEVENTA,
                },
            }),
            reserved16: [15]u8,
            ///  Multiplexer Channel 0
            CHANNEL0: mmio.Mmio(packed struct(u8) {
                ///  Channel 0 generator select
                CHANNEL0: packed union {
                    raw: u8,
                    value: EVSYS_CHANNEL0,
                },
            }),
            ///  Multiplexer Channel 1
            CHANNEL1: mmio.Mmio(packed struct(u8) {
                ///  Channel 1 generator select
                CHANNEL1: packed union {
                    raw: u8,
                    value: EVSYS_CHANNEL1,
                },
            }),
            ///  Multiplexer Channel 2
            CHANNEL2: mmio.Mmio(packed struct(u8) {
                ///  Channel 2 generator select
                CHANNEL2: packed union {
                    raw: u8,
                    value: EVSYS_CHANNEL2,
                },
            }),
            ///  Multiplexer Channel 3
            CHANNEL3: mmio.Mmio(packed struct(u8) {
                ///  Channel 3 generator select
                CHANNEL3: packed union {
                    raw: u8,
                    value: EVSYS_CHANNEL3,
                },
            }),
            ///  Multiplexer Channel 4
            CHANNEL4: mmio.Mmio(packed struct(u8) {
                ///  Channel 4 generator select
                CHANNEL4: packed union {
                    raw: u8,
                    value: EVSYS_CHANNEL4,
                },
            }),
            ///  Multiplexer Channel 5
            CHANNEL5: mmio.Mmio(packed struct(u8) {
                ///  Channel 5 generator select
                CHANNEL5: packed union {
                    raw: u8,
                    value: EVSYS_CHANNEL5,
                },
            }),
            reserved32: [10]u8,
            ///  User CCL LUT0 Event A
            USERCCLLUT0A: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User CCL LUT0 Event B
            USERCCLLUT0B: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User CCL LUT1 Event A
            USERCCLLUT1A: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User CCL LUT1 Event B
            USERCCLLUT1B: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User CCL LUT2 Event A
            USERCCLLUT2A: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User CCL LUT2 Event B
            USERCCLLUT2B: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User CCL LUT3 Event A
            USERCCLLUT3A: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User CCL LUT3 Event B
            USERCCLLUT3B: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User ADC0
            USERADC0START: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User EVOUT Port A
            USEREVSYSEVOUTA: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User EVOUT Port B
            USEREVSYSEVOUTB: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User EVOUT Port C
            USEREVSYSEVOUTC: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User USART0
            USERUSART0IRDA: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User USART1
            USERUSART1IRDA: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User TCA0 count event
            USERTCA0CNTA: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User TCA0 Restart event
            USERTCA0CNTB: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User TCB0 Event in A
            USERTCB0CAPT: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User TCB0 Event in B
            USERTCB0COUNT: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User TCB1 Event in A
            USERTCB1CAPT: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
                },
            }),
            ///  User TCB1 Event in B
            USERTCB1COUNT: mmio.Mmio(packed struct(u8) {
                ///  Channel selector
                USER: packed union {
                    raw: u8,
                    value: EVSYS_USER,
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
                @"1KHZ" = 0x0,
                ///  125Hz sampling frequency
                @"125HZ" = 0x1,
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
                ///  PDI on PDI pad, reset on alternative reset pad
                PDIRST = 0x3,
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
                ///  Off
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
                ///  Off
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
            reserved5: [2]u8,
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
                ///  Time-Out Disable
                TOUTDIS: u1,
                reserved6: u1,
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

        ///  General Purpose I/O Register
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

            ///  Lock Bits
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
            ///  Port Control
            PORTCTRL: mmio.Mmio(packed struct(u8) {
                ///  Slew Rate Limit Enable
                SRL: u1,
                padding: u7,
            }),
            reserved16: [5]u8,
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
            ///  CCL LUT0 select
            pub const PORTMUX_LUT0 = enum(u1) {
                ///  Out: PA4 In: PA0, PA1, PA2
                DEFAULT = 0x0,
                ///  Out: PB4 In: PA0, PA1, PA2
                ALT1 = 0x1,
            };

            ///  CCL LUT1 select
            pub const PORTMUX_LUT1 = enum(u1) {
                ///  Out: PA7 In: PC3, PC4, PC5
                DEFAULT = 0x0,
                ///  Out: PC1 In: PC3, PC4, PC5
                ALT1 = 0x1,
            };

            ///  CCL LUT2 select
            pub const PORTMUX_LUT2 = enum(u1) {
                ///  Out: PB3 In: PB0, PB1, PB2
                DEFAULT = 0x0,
                ///  Out: PB6 In: PB0, PB1, PB2
                ALT1 = 0x1,
            };

            ///  CCL LUT3 select
            pub const PORTMUX_LUT3 = enum(u1) {
                ///  Out: PC4 In: PC0, PC1, PC2
                DEFAULT = 0x0,
                ///  Out: PA5 In: PC0, PC1, PC2
                ALT1 = 0x1,
            };

            ///  Event Output A select
            pub const PORTMUX_EVOUTA = enum(u1) {
                ///  EVOUT on PA2
                DEFAULT = 0x0,
                ///  EVOUT on PA7
                ALT1 = 0x1,
            };

            ///  Event Output B select
            pub const PORTMUX_EVOUTB = enum(u1) {
                ///  EVOUT on PB2
                DEFAULT = 0x0,
                ///  EVOUT on PB7
                ALT1 = 0x1,
            };

            ///  Event Output C select
            pub const PORTMUX_EVOUTC = enum(u1) {
                ///  EVOUT on PC2
                DEFAULT = 0x0,
                _,
            };

            ///  Port Multiplexer SPI0 select
            pub const PORTMUX_SPI0 = enum(u2) {
                ///  PA0, PA1, PA2, PA3
                DEFAULT = 0x0,
                ///  PC2, PC1, PC0, PC3
                ALT1 = 0x1,
                ///  Not connected to any pins
                NONE = 0x3,
                _,
            };

            ///  Port Multiplexer TCA0 Output 0 select
            pub const PORTMUX_TCA00 = enum(u1) {
                ///  WO0 on PB0
                DEFAULT = 0x0,
                ///  WO0 on PB3
                ALT1 = 0x1,
            };

            ///  Port Multiplexer TCA0 Output 1 select
            pub const PORTMUX_TCA01 = enum(u1) {
                ///  WO1 on PB1
                DEFAULT = 0x0,
                ///  WO1 on PB4
                ALT1 = 0x1,
            };

            ///  Port Multiplexer TCA0 Output 2 select
            pub const PORTMUX_TCA02 = enum(u1) {
                ///  WO2 on PB2
                DEFAULT = 0x0,
                ///  WO2 on PB5
                ALT1 = 0x1,
            };

            ///  Port Multiplexer TCA0 Output 3 select
            pub const PORTMUX_TCA03 = enum(u1) {
                ///  WO3 on PA3
                DEFAULT = 0x0,
                ///  WO3 on PC3
                ALT1 = 0x1,
            };

            ///  Port Multiplexer TCA0 Output 4 select
            pub const PORTMUX_TCA04 = enum(u1) {
                ///  WO4 on PA4
                DEFAULT = 0x0,
                ///  WO4 on PC4
                ALT1 = 0x1,
            };

            ///  Port Multiplexer TCA0 Output 5 select
            pub const PORTMUX_TCA05 = enum(u1) {
                ///  WO5 on PA5
                DEFAULT = 0x0,
                ///  WO5 on PC5
                ALT1 = 0x1,
            };

            ///  Port Multiplexer TCB0 select
            pub const PORTMUX_TCB0 = enum(u1) {
                ///  WO on PA5
                DEFAULT = 0x0,
                ///  WO on PC0
                ALT1 = 0x1,
            };

            ///  Port Multiplexer TCB1 select
            pub const PORTMUX_TCB1 = enum(u1) {
                ///  WO on PA3
                DEFAULT = 0x0,
                ///  WO on PC4
                ALT1 = 0x1,
            };

            ///  Port Multiplexer USART0 select
            pub const PORTMUX_USART0 = enum(u2) {
                ///  USART0 on PB[3:0]
                DEFAULT = 0x0,
                ///  USART0 on PA[4:1]
                ALT1 = 0x1,
                ///  Not connected to any pins
                NONE = 0x3,
                _,
            };

            ///  Port Multiplexer USART1 select
            pub const PORTMUX_USART1 = enum(u2) {
                ///  USART1 on PA[4:1]
                DEFAULT = 0x0,
                ///  USART1 on PC[3:0]
                ALT1 = 0x1,
                ///  Not connected to any pins
                NONE = 0x3,
                _,
            };

            ///  Port Multiplexer EVSYS
            EVSYSROUTEA: mmio.Mmio(packed struct(u8) {
                ///  Event Output A
                EVOUTA: packed union {
                    raw: u1,
                    value: PORTMUX_EVOUTA,
                },
                ///  Event Output B
                EVOUTB: packed union {
                    raw: u1,
                    value: PORTMUX_EVOUTB,
                },
                ///  Event Output C
                EVOUTC: packed union {
                    raw: u1,
                    value: PORTMUX_EVOUTC,
                },
                padding: u5,
            }),
            ///  Port Multiplexer CCL
            CCLROUTEA: mmio.Mmio(packed struct(u8) {
                ///  CCL LUT0
                LUT0: packed union {
                    raw: u1,
                    value: PORTMUX_LUT0,
                },
                ///  CCL LUT1
                LUT1: packed union {
                    raw: u1,
                    value: PORTMUX_LUT1,
                },
                ///  CCL LUT2
                LUT2: packed union {
                    raw: u1,
                    value: PORTMUX_LUT2,
                },
                ///  CCL LUT3
                LUT3: packed union {
                    raw: u1,
                    value: PORTMUX_LUT3,
                },
                padding: u4,
            }),
            ///  Port Multiplexer USART register A
            USARTROUTEA: mmio.Mmio(packed struct(u8) {
                ///  Port Multiplexer USART0
                USART0: packed union {
                    raw: u2,
                    value: PORTMUX_USART0,
                },
                ///  Port Multiplexer USART1
                USART1: packed union {
                    raw: u2,
                    value: PORTMUX_USART1,
                },
                padding: u4,
            }),
            ///  Port Multiplexer TWI and SPI
            SPIROUTEA: mmio.Mmio(packed struct(u8) {
                ///  Port Multiplexer SPI0
                SPI0: packed union {
                    raw: u2,
                    value: PORTMUX_SPI0,
                },
                padding: u6,
            }),
            ///  Port Multiplexer TCA
            TCAROUTEA: mmio.Mmio(packed struct(u8) {
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
            ///  Port Multiplexer TCB
            TCBROUTEA: mmio.Mmio(packed struct(u8) {
                ///  Port Multiplexer TCB0
                TCB0: packed union {
                    raw: u1,
                    value: PORTMUX_TCB0,
                },
                ///  Port Multiplexer TCB1
                TCB1: packed union {
                    raw: u1,
                    value: PORTMUX_TCB1,
                },
                padding: u6,
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
                ///  32KHz Crystal OSC
                TOSC32K = 0x2,
                ///  External Clock
                EXTCLK = 0x3,
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
                reserved2: u1,
                ///  Correction enable
                CORREN: u1,
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
            ///  Calibration
            CALIB: mmio.Mmio(packed struct(u8) {
                ///  Error Correction Value
                ERROR: u7,
                ///  Error Correction Sign Bit
                SIGN: u1,
            }),
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
            reserved24: [11]u8,
            ///  Oscillator Calibration 16 MHz Byte 0
            OSCCAL16M0: u8,
            ///  Oscillator Calibration 16 MHz Byte 1
            OSCCAL16M1: u8,
            ///  Oscillator Calibration 20 MHz Byte 0
            OSCCAL20M0: u8,
            ///  Oscillator Calibration 20 MHz Byte 1
            OSCCAL20M1: u8,
            reserved32: [4]u8,
            ///  Temperature Sensor Calibration Byte 0
            TEMPSENSE0: u8,
            ///  Temperature Sensor Calibration Byte 1
            TEMPSENSE1: u8,
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
                ///  SPI Select Disable
                SSD: u1,
                reserved6: u3,
                ///  Buffer Mode Wait for Receive
                BUFWR: u1,
                ///  Buffer Mode Enable
                BUFEN: u1,
            }),
            ///  Interrupt Control
            INTCTRL: mmio.Mmio(packed struct(u8) {
                ///  Interrupt Enable
                IE: u1,
                reserved4: u3,
                ///  SPI Select Trigger Interrupt Enable
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
                ///  SPI Select Trigger Interrupt Flag
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

            ///  Event Action A select
            pub const TCA_SINGLE_EVACTA = enum(u3) {
                ///  Count on positive edge event
                CNT_POSEDGE = 0x0,
                ///  Count on any edge event
                CNT_ANYEDGE = 0x1,
                ///  Count on prescaled clock while event line is 1.
                CNT_HIGHLVL = 0x2,
                ///  Count on prescaled clock. Event controls count direction. Up-count when event line is 0, down-count when event line is 1.
                UPDOWN = 0x3,
                _,
            };

            ///  Event Action B select
            pub const TCA_SINGLE_EVACTB = enum(u3) {
                ///  No Action
                NONE = 0x0,
                ///  Count on prescaled clock. Event controls count direction. Up-count when event line is 0, down-count when event line is 1.
                UPDOWN = 0x3,
                ///  Restart counter at positive edge event
                RESTART_POSEDGE = 0x4,
                ///  Restart counter on any edge event
                RESTART_ANYEDGE = 0x5,
                ///  Restart counter while event line is 1.
                RESTART_HIGHLVL = 0x6,
                _,
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

            ///  Command Enable select
            pub const TCA_SPLIT_CMDEN = enum(u2) {
                ///  None
                NONE = 0x0,
                ///  Both low byte and high byte counter
                BOTH = 0x3,
                _,
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
                    reserved7: u3,
                    ///  Run in Standby
                    RUNSTDBY: u1,
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
                    ///  Count on Event Input A
                    CNTAEI: u1,
                    ///  Event Action A
                    EVACTA: packed union {
                        raw: u3,
                        value: TCA_SINGLE_EVACTA,
                    },
                    ///  Count on Event Input B
                    CNTBEI: u1,
                    ///  Event Action B
                    EVACTB: packed union {
                        raw: u3,
                        value: TCA_SINGLE_EVACTB,
                    },
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
                ///  Debug Control
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
                    reserved7: u3,
                    ///  Run in Standby
                    RUNSTDBY: u1,
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
                    ///  Command Enable
                    CMDEN: packed union {
                        raw: u2,
                        value: TCA_SPLIT_CMDEN,
                    },
                    ///  Command
                    CMD: packed union {
                        raw: u2,
                        value: TCA_SPLIT_CMD,
                    },
                    padding: u4,
                }),
                ///  Control E Set
                CTRLESET: mmio.Mmio(packed struct(u8) {
                    ///  Command Enable
                    CMDEN: packed union {
                        raw: u2,
                        value: TCA_SPLIT_CMDEN,
                    },
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
                ///  Debug Control
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
            pub const TCB_CLKSEL = enum(u3) {
                ///  CLK_PER
                DIV1 = 0x0,
                ///  CLK_PER/2
                DIV2 = 0x1,
                ///  Use CLK_TCA from TCA0
                TCA0 = 0x2,
                ///  Count on event edge
                EVENT = 0x7,
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
                    raw: u3,
                    value: TCB_CLKSEL,
                },
                ///  Synchronize Update
                SYNCUPD: u1,
                ///  Cascade two timers
                CASCADE: u1,
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
                ///  Overflow
                OVF: u1,
                padding: u6,
            }),
            ///  Interrupt Flags
            INTFLAGS: mmio.Mmio(packed struct(u8) {
                ///  Capture or Timeout
                CAPT: u1,
                ///  Overflow
                OVF: u1,
                padding: u6,
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
                ///  Fast-mode Plus Enable
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
                ///  Permissive Mode Enable
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
            pub const USART_RS485 = enum(u1) {
                ///  RS485 Mode disabled
                DISABLE = 0x0,
                ///  RS485 Mode enabled
                ENABLE = 0x1,
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

            ///  Auto Baud Window select
            pub const USART_ABW = enum(u2) {
                ///  18% tolerance
                WDW0 = 0x0,
                ///  15% tolerance
                WDW1 = 0x1,
                ///  21% tolerance
                WDW2 = 0x2,
                ///  25% tolerance
                WDW3 = 0x3,
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
                    raw: u1,
                    value: USART_RS485,
                },
                reserved2: u1,
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
            ///  Control D
            CTRLD: mmio.Mmio(packed struct(u8) {
                reserved6: u6,
                ///  Auto Baud Window
                ABW: packed union {
                    raw: u2,
                    value: USART_ABW,
                },
            }),
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
            ///  AC0 reference select
            pub const VREF_AC0REFSEL = enum(u3) {
                ///  Voltage reference at 1.024V
                @"1V024" = 0x0,
                ///  Voltage reference at 2.048V
                @"2V048" = 0x1,
                ///  Voltage reference at 2.5V
                @"2V5" = 0x2,
                ///  Voltage reference at 4.096V
                @"4V096" = 0x3,
                ///  voltage reference at supply
                AVDD = 0x7,
                _,
            };

            ///  Control A
            CTRLA: mmio.Mmio(packed struct(u8) {
                ///  AC0 reference select
                AC0REFSEL: packed union {
                    raw: u3,
                    value: VREF_AC0REFSEL,
                },
                padding: u5,
            }),
            ///  Control B
            CTRLB: mmio.Mmio(packed struct(u8) {
                ///  AC0 DACREF reference enable
                AC0REFEN: u1,
                ///  ADC0 reference enable
                ADC0REFEN: u1,
                ///  NVM reference enable
                NVMREFEN: u1,
                padding: u5,
            }),
        };

        ///  Watch-Dog Timer
        pub const WDT = extern struct {
            ///  Period select
            pub const WDT_PERIOD = enum(u4) {
                ///  Off
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
                ///  Off
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
