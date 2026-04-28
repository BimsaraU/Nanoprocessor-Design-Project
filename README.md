# Nanoprocessor Design Project

**Group 10** | Department of Electronic & Telecommunication Engineering | University of Moratuwa  
**Date:** March 26, 2025

## Contributors

| Name | Index |
|------|-------|
| K.M.H.B.M. Udurawana | 230653J |
| N.Y.A. Jayasinghe | 230283A |
| U.G.I. Ranhiru | 230531J |
| U.L.K.S. Jayasinghe | 230286K |

---

## Project Overview

This project involves the design and implementation of a **Nanoprocessor** in VHDL, targeting the **Basys 3 FPGA** board (Artix-7). The project is organized in three progressive stages:

1. **Basic Nanoprocessor** – A 4-bit processor implementing a minimal instruction set.
2. **Optimized Nanoprocessor** – The same 4-bit design, refined to minimize FPGA Look-Up Table (LUT) usage.
3. **Expanded Nanoprocessor** – An upgraded 8-bit processor with an extended instruction set and additional arithmetic/logic operations.

---

## Processor Versions

### 1. Basic Nanoprocessor

A 4-bit nanoprocessor designed from a reference schematic. It supports the following 12-bit instruction format:

| Instruction | Opcode | Description |
|-------------|--------|-------------|
| `MOV`       | `10`   | Move an immediate 4-bit value into a register |
| `ADD`       | `00`   | Add contents of two registers |
| `NEG`       | `01`   | Negate (two's complement) a register value |
| `JZR`       | `11`   | Jump to address if register value is zero |

**Key Components:**
- 4-bit Arithmetic Unit (Adder/Subtractor)
- Program Counter (3-bit register + incrementer)
- Instruction Decoder (12-bit → control signals)
- Program ROM (8 × 12-bit)
- Register Bank (8 × 4-bit registers)
- 8-way 4-bit Multiplexers (register selection)
- 2-way Multiplexer (next address selection)
- Load Selector (immediate vs. ALU result)
- Ripple Carry Adder (built from Full Adder / Half Adder)
- Display Driver (7-segment output on Basys 3)
- Slow Clock (frequency divider)

**FPGA Board:** Basys 3 (Artix-7)  
**Reset:** `BTNC` (Center button)

---

### 2. Optimized Nanoprocessor

The Basic Nanoprocessor redesigned with the objective of minimizing FPGA resource utilization, particularly Look-Up Tables (LUTs). Optimizations include:

- Use of Xilinx IP Catalog primitives (DSP blocks, CARRY4 chains)
- Consolidated Register Bank using a single-port RAM primitive
- Zero Flag logic extracted and simplified
- Replaced behavioral arithmetic with `CARRY4`-based and `DSP`-based implementations

**Additional source modules:**
- `AU_DSP.vhd` – DSP-block-based Arithmetic Unit
- `AU_CARRY4.vhd` – CARRY4-primitive Arithmetic Unit
- `Register_Bank_Single.vhd` – Single-port optimized register bank
- `ZeroFlag.vhd` / `ZeroFlag_4.vhd` – Dedicated zero-detection logic
- `Program_Counter.vhd` – Standalone program counter
- `Display_Driver_L6.vhd` – 6-digit display driver

**FPGA Board:** Basys 3 (Artix-7)  
**Reset:** `BTNC` (Center button)

---

### 3. Expanded Nanoprocessor

An 8-bit extension of the nanoprocessor with a richer instruction set and additional hardware units. The processor is upgraded from 4-bit to **8-bit data paths**.

**New / Changed Instructions:**
- `SUB` – Subtraction (replaces NEG; target register selected by last 3 bits)
- `MUL` – Multiply two register values
- `DIV` – Divide two register values (last bit selects quotient `0` or remainder `1`)
- `CMP` – Compare two values (last bit selects greater `0` or lesser `1`)
- `BWO` – Bitwise operation (last 2 bits select: `00`=AND, `01`=OR, `10`=NOT, `11`=XOR)

**New Hardware Modules:**
- `Multiplier.vhd` – 8-bit multiplier
- `Divider.vhd` – 8-bit divider (quotient & remainder)
- `Comparator.vhd` – 8-bit comparator
- `BitwiseOperator.vhd` – AND / OR / NOT / XOR unit
- `Slow_Clk_Bin.vhd` – Binary slow clock
- `Program_Counter.vhd` – Extended program counter
- `Display_Driver_Nat.vhd` – Natural number display driver

**FPGA Controls (Expanded):**

| Control | Switch/Button | Description |
|---------|---------------|-------------|
| Reset | `BTNC` | Reset processor |
| Step | `BTNU` | Single-step execution |
| Display Mode | `R2` | `0` = PC + hex values, `1` = decimal value |
| Two's complement | `T1` | `1` = enable two's complement display |
| Step Mode | `U1` | `1` = enable step-by-step execution |
| Program ROM select | `[R3, T2]` | `00`=Add/Sub, `01`=Mul/Div, `10`=Cmp/Div, `11`=Bitwise |
| Register Display | `[W16, V16, V17]` | Select register to display |

---

## Project Structure

```
Nanoprocessor-Design-Project/
│
├── Basic_Nanoprocessor/               # Vivado project – Basic 4-bit processor
│   └── Basic_Nanoprocessor.srcs/
│       ├── sources_1/                 # RTL design sources (.vhd)
│       ├── sim_1/                     # Testbench / simulation files (.vhd)
│       └── constrs_1/                 # Xilinx constraint file (.xdc)
│
├── Optimized_Nanoprocessor/           # Vivado project – LUT-optimized processor
│   └── Optimized_Nanoprocessor.srcs/
│       ├── sources_1/
│       ├── sim_1/
│       └── constrs_1/
│
├── Expanded_Nano_Processor/           # Vivado project – 8-bit extended processor
│   └── Expanded_Nano_Processor.srcs/
│       ├── sources_1/
│       ├── sim_1/
│       └── constrs_1/
│
├── Basic_Nanoprocessor_RTL.zip        # Downloadable RTL sources – Basic
├── Optimized_Nanoprocessor_RTL.zip    # Downloadable RTL sources – Optimized
├── Expanded_Nanoprocessor_RTL.zip     # Downloadable RTL sources – Expanded
│
├── Instructions.txt                   # Board usage instructions
├── Report.pdf                         # Full project report
└── README.md
```

---

## RTL Source Downloads

Pre-packaged ZIP archives containing all VHDL source files and constraints for each design are available at the root of this repository:

| Version | Download |
|---------|----------|
| Basic Nanoprocessor | [`Basic_Nanoprocessor_RTL.zip`](Basic_Nanoprocessor_RTL.zip) |
| Optimized Nanoprocessor | [`Optimized_Nanoprocessor_RTL.zip`](Optimized_Nanoprocessor_RTL.zip) |
| Expanded Nanoprocessor | [`Expanded_Nanoprocessor_RTL.zip`](Expanded_Nanoprocessor_RTL.zip) |

Each archive contains:
- All design source VHDL files (`sources_1/`)
- All testbench/simulation VHDL files (`sim_1/`)
- Xilinx constraints file (`constrs_1/`)

---

## Tools & Technologies

- **Language:** VHDL
- **EDA Tool:** Xilinx Vivado Design Suite
- **Target FPGA:** Basys 3 (Artix-7 XC7A35T)
- **Simulation:** Vivado Simulator (timing diagrams and behavioral simulation)

---

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
