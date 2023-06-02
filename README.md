# MicroZig Hardware Support Package for Microchip AVR

This repository contains a hardware support package for Microchip's AVR ATtiny and ATmega families. It is designed to be used in conjunction with the [MicroZig](https://github.com/ZigEmbeddedGroup/microzig) project.

The primary objective of this repository is to provide support for as many devices as possible. To achieve this, we generate all necessary files, including [chips.zig](src/chips.zig), from [ATDF](https://packs.download.microchip.com).

For ATmega328P support, you can also refer to the [microchip-atmega](https://github.com/ZigEmbeddedGroup/microchip-atmega) repository, which currently focuses exclusively on this chip.

## Hardware Abstraction Layer

Currently, this repository only includes register definitions and does not provide a Hardware Abstraction Layer (HAL). However, the development of a HAL is planned for the future.

## TODO
- Implement the HAL.
- Add board support for a few commonly used (Arduino) boards.
- Address the issue of chips that fail to generate (e.g., those missing the RAM memory region in ATDF) by either listing them in a generated file or applying local patches.

## Recommended Zig Version

Currently, we are following the latest development version available at [ziglang.org/download](https://ziglang.org/download). However, once Zig 0.11.0 is officially released, we will switch to using the latest stable version.

## License
This repository is licensed under the Creative Commons Attribution 4.0 International License. Refer to the LICENSE file for more details.