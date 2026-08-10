# 4:1 Multiplexer Using Verilog

## 📌 Project Overview

This project implements a **4-to-1 Multiplexer (MUX)** using Verilog HDL.

A multiplexer is a digital combinational circuit that selects one input from multiple inputs and sends the selected input to a single output. The input to be selected is controlled using select lines.

In this project, four 1-bit inputs are connected to the multiplexer, and two select lines determine which input appears at the output.

## 🎯 Objectives

* Design a 4:1 multiplexer using Verilog HDL.
* Understand the operation of select lines.
* Write a Verilog testbench.
* Simulate the design.
* Generate a waveform using VCD.
* Verify the output for different input and select combinations.

## 🔧 Specifications

| Parameter        | Description   |
| ---------------- | ------------- |
| Number of inputs | 4             |
| Input width      | 1 bit each    |
| Select lines     | 2             |
| Output           | 1 bit         |
| Circuit type     | Combinational |
| HDL              | Verilog       |

## 📐 Block Diagram

```text
              ┌───────────────┐
I0 ──────────►│               │
I1 ──────────►│               │
I2 ──────────►│    4 : 1      │──────► Y
I3 ──────────►│ Multiplexer    │
              │               │
S1 ──────────►│               │
S0 ──────────►│               │
              └───────────────┘
```

## 🧠 Working Principle

The two select lines determine which input is connected to the output.

| S1 | S0 | Selected Input | Y  |
| -- | -- | -------------- | -- |
| 0  | 0  | I0             | I0 |
| 0  | 1  | I1             | I1 |
| 1  | 0  | I2             | I2 |
| 1  | 1  | I3             | I3 |

The Boolean operation can be represented as:

```text
Y = I0 when S = 00
Y = I1 when S = 01
Y = I2 when S = 10
Y = I3 when S = 11
```

## 📁 Project Structure

```text
4-to-1-Multiplexer/
│
├── README.md
├── src/
│   └── mux4to1.v
├── testbench/
│   └── mux4to1_tb.v
├── simulation/
│   └── README.md
└── waveform/
    └── waveform.vcd
```

## 💻 Verilog Implementation

The multiplexer is implemented using a `case` statement inside an `always @(*)` block.

The `always @(*)` block ensures that the output changes whenever any input or select signal changes.

## 🧪 Testbench

The testbench verifies all four select combinations:

* `S = 00` → I0 selected
* `S = 01` → I1 selected
* `S = 10` → I2 selected
* `S = 11` → I3 selected

Additional input combinations are also tested to verify the design.

## 📊 Simulation

The testbench generates a Value Change Dump (VCD) file named:

```text
waveform.vcd
```

The VCD file can be viewed using a waveform viewer such as GTKWave.

### Expected Result

For example, if:

```text
I = 1010
```

then:

| Select S | Output Y |
| -------- | -------- |
| 00       | 0        |
| 01       | 1        |
| 10       | 0        |
| 11       | 1        |

Therefore, the output always follows the input selected by the select lines.

## ▶️ Running the Simulation

### Using Icarus Verilog

Install Icarus Verilog and GTKWave.

Compile the design:

```bash
iverilog -o mux_sim src/mux4to1.v testbench/mux4to1_tb.v
```

Run the simulation:

```bash
vvp mux_sim
```

A file named `waveform.vcd` will be generated.

Open the waveform:

```bash
gtkwave waveform.vcd
```

Add the required signals to the waveform window and run the simulation.

## 📈 Expected Simulation Output

```text
======================================
       4:1 MULTIPLEXER TEST
======================================
Time    I       S       Y
--------------------------------------
10000   0001    00      1
20000   0010    01      1
30000   0100    10      1
40000   1000    11      1
50000   1010    00      0
60000   1010    01      1
70000   1010    10      0
80000   1010    11      1
--------------------------------------
Simulation completed successfully.
======================================
```

## ✅ Result

The 4-to-1 multiplexer was successfully designed and simulated using Verilog HDL.

The simulation confirms that the output `Y` correctly follows the input selected by the two select lines.

## 🚀 Applications

Multiplexers are commonly used in:

* Data selection
* Communication systems
* Digital signal routing
* Processor datapaths
* Memory systems
* Control units
* Digital switching circuits

## 👨‍💻 Author

**Your Name**

GitHub: **Your GitHub Username**

## 📜 License

This project is created for educational and academic purposes.
