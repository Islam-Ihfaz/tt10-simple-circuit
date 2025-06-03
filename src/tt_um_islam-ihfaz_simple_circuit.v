/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_islam-ihfaz_simple_circuit (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.
    assign ui_in[0] = A
    assign ui_in[1] = B
    assign ui_in[2] = C
    assign uo_out[0] = x
    assign uo_out[1] = y
  
    assign uo_out[2] = 0
    assign uo_out[3] = 0
    assign uo_out[4] = 0
    assign uo_out[5] = 0
    assign uo_out[6] = 0
    assign uo_out[7] = 0
    assign uio_out = 0;
    assign uio_oe  = 0;

  // List all unused inputs to prevent warnings
    wire _unused = &{ena, clk, rst_n, ui_in[3], ui_in[4], ui_in[5], ui_in[6], ui_in[7], uio_in 1'b0};

// module smpl_circuit(A,B,C,x,y);
// input A,B,C;
// output x,y;

wire e;
and g1(e,A,B);
not g2(y, C);
or g3(x,e,y);
    
endmodule
