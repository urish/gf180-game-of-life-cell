// SPDX-FileCopyrightText: © 2022 Uri Shaked <uri@wokwi.com>
// SPDX-License-Identifier: Apache2.0

`timescale 1ns / 1ps
// 
`default_nettype none

module test_cell ();
  reg clk;
  reg data;
  reg set;
  reg reset;
  reg [7:0] neighbors;
  wire [37:0] io_out;
  wire alive = io_out[20];
  wire notalive = io_out[21];

  tiny_user_project dut (
  `ifdef GL_TEST
      .vccd1( 1'b1),
      .vssd1( 1'b0),
  `endif
      .io_in ({reset, set, clk, neighbors, 9'bxxxxxxxxx}),
      .io_out(io_out)
  );

  initial begin
    clk = 0;
    forever begin
      #5 clk = ~clk;
    end
  end

  initial begin
    $dumpfile("cell_tb.vcd");
    $dumpvars(0, test_cell);
  end
endmodule