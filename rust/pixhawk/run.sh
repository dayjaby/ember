#!/bin/sh

export TARGET=thumbv7em-none-eabi

cargo build --target $TARGET
qemu-system-gnuarmeclipse -cpu cortex-m4 -machine STM32F4-Discovery -nographic -semihosting-config enable=on,target=native -kernel target/$TARGET/debug/ember
