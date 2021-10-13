#!/bin/bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.cargo/env

sudo apt install gdb-multiarch openocd qemu-system-arm
sudo npm install --global xpm@latest
xpm install --global @xpack-dev-tools/qemu-arm@latest --verbose

rustup target add thumbv7em-none-eabi
rustup target add thumbv7em-none-eabihf

cargo install cargo-binutils
cargo install cargo-generate

rustup component add llvm-tools-preview
