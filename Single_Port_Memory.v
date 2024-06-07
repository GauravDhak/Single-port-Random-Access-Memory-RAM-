module single_port_ram (
    input wire clk,        // Clock input
    input wire rst,        // Reset input
    input wire [7:0] addr, // Address input
    input wire we,         // Write enable input
    input wire ce,         // Chip enable input
    inout wire [7:0] data  // Data input/output
);

// Internal memory array
reg [7:0] mem [0:255];

// Read operation
assign data = (ce && ~we) ? mem[addr] : 8'bZ;

// Write operation
always @(posedge clk or posedge rst) begin
    if (rst) begin
        // Reset memory to 0
        //for (int i = 0; i < 256; i = i + 1) begin  
            //mem[i] <= 8'b0;
       // end
       mem[0]=8'b0;
    end else begin
        if (ce && we) begin
            // Write data to memory
            mem[addr] <= data;
        end
    end
end

endmodule
