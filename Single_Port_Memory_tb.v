`timescale 1ns / 1ps
`include "Single_Port_Memory.v"

module Single_Port_Memory_tb();

// Parameters
parameter CLK_PERIOD = 10;  // Clock period in ns

// Signals
reg clk = 0;                 // Clock signal
reg rst;                     // Reset signal
reg [7:0] addr;              // Address signal
reg we;                      // Write enable signal
reg ce;                      // Chip enable signal
reg [7:0] data_in;           // Data input signal
wire [7:0] data_out;         // Data output signal
wire [7:0] data;             // Bidirectional data wire

// Bidirectional data signal handling
assign data = (we && ce) ? data_in : 8'bz;
assign data_out = data;

// Instantiate the RAM module
single_port_ram ram (
    .clk(clk),
    .rst(rst),
    .addr(addr),
    .we(we),
    .ce(ce),
    .data(data)
);

// Clock generation
always #(CLK_PERIOD / 2) clk = ~clk;

// Test case
initial begin
    // Dump file for waveform analysis
    $dumpfile("Single_Port_Memory_tb.vcd");
    $dumpvars(0, Single_Port_Memory_tb);

    // Initialize signals
    rst = 1;
    addr = 8'h00;
    we = 0;
    ce = 0;
    data_in = 8'h00;

    // Reset the RAM
    #20 rst = 0;

    // Write operation: Write 0xAA to address 0x01
    #10 addr = 8'h01; we = 1; ce = 1; data_in = 8'hAA;
    #10 we = 0; ce = 0;

    // Read operation: Read from address 0x01
    #10 addr = 8'h01; we = 0; ce = 1;
    #10;

    // Check data output
    $display("Data read from address 0x%h: %h", addr, data_out);
    
    // End simulation
    $finish;
end

endmodule
