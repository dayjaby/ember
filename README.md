| Rust          | VexRiscv |   |   |   |
|---------------|----------|---|---|---|
| Hello World   | TODO     |   |   |   |
| GDB debugging |          |   |   |   |
| Interrupt     |          |   |   |   |

Rust:

```
cargo readobj --bin ember --release -- -file-headers
cargo size --bin ember --release -- -A
cargo objdump --bin ember --release -- --disassemble --no-show-raw-insn --print-imm-hex
```
