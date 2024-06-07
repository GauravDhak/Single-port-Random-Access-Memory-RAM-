The Single Port Random Access Memory (RAM) project is a Verilog implementation of a simple RAM controller with single-port access. It provides basic functionality to read from and write to a memory array using address, write enable, and chip enable signals. The project is aimed at educational purposes and serves as a foundation for understanding memory controllers in digital design.

### Features:
- Implements a single-port RAM controller module in Verilog.
 
- Supports read and write operations to the memory array.
 
- Provides synchronous operation with the clock signal for proper timing.
 
- Includes reset functionality to initialize the memory array during startup.

### Project Structure:
- `single_port_ram.v`: Verilog module defining the single-port RAM controller.
  
- `single_port_ram_tb.v`: Test bench for simulating the single-port RAM controller.
 
- `README.md`: Project documentation including description, usage instructions, and pin table.

Pin Diagram-

![1_NXuzy-9xL191LvbYnBFI5Q](https://github.com/GauravDhak/Single-port-Random-Access-Memory-RAM-/assets/113551816/7e30cfcf-b712-40ce-88b9-861b10b5be88)


Pin Table:-

- clk	-> Clock input signal

- rst ->	Reset input signal

- addr ->	Address input signal

- we	-> Write enable input signal

- ce	-> Chip enable input signal

- data ->	Bidirectional data input/output signal




*Waveform*:- 



![Screenshot 2024-06-07 073523](https://github.com/GauravDhak/Single-port-Random-Access-Memory-RAM-/assets/113551816/fa2a5bf2-6e29-4e9b-b8c7-80e4bbe71334)








![Screenshot 2024-06-07 072954](https://github.com/GauravDhak/Single-port-Random-Access-Memory-RAM-/assets/113551816/725d1def-7c64-4fed-a056-833366577864)
