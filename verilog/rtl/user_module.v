/* Automatically generated from https://wokwi.com/projects/349472166361694804 */

`default_nettype none

module user_module_349472166361694804(
  input [10:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[1];
  wire net3 = io_in[2];
  wire net4 = io_in[3];
  wire net5 = io_in[4];
  wire net6 = io_in[5];
  wire net7 = io_in[6];
  wire net8 = io_in[7];
  wire net9 = io_in[8];
  wire net10 = io_in[9];
  wire net11 = io_in[10];
  wire net12;
  wire net13;
  wire net14 = 1'b0;
  wire net15 = 1'b1;
  wire net16;
  wire net17;
  wire net18;
  wire net19;
  wire net20;
  wire net21;
  wire net22;
  wire net23;
  wire net24;
  wire net25;
  wire net26;
  wire net27;
  wire net28;
  wire net29;
  wire net30;
  wire net31;
  wire net32;
  wire net33;
  wire net34;
  wire net35;
  wire net36;
  wire net37;
  wire net38;
  wire net39;
  wire net40;
  wire net41;
  wire net42;
  wire net43;
  wire net44;
  wire net45;
  wire net46;
  wire net47;
  wire net48;
  wire net49;
  wire net50;
  wire net51;
  wire net52;
  wire net53;
  wire net54;

  assign io_out[0] = net12;
  assign io_out[1] = net13;

  or_cell gate2 (
    .a (net16),
    .b (net17),
    .out (net18)
  );
  xor_cell gate3 (
    .a (net1),
    .b (net2),
    .out (net19)
  );
  mux_cell gate6 (
    .a (net18),
    .b (net20),
    .sel (net4),
    .out (net21)
  );
  xor_cell gate8 (
    .a (net19),
    .b (net3),
    .out (net22)
  );
  and_cell gate1 (
    .a (net19),
    .b (net3),
    .out (net17)
  );
  and_cell gate7 (
    .a (net1),
    .b (net2),
    .out (net16)
  );
  xor_cell gate9 (
    .a (net22),
    .b (net4),
    .out (net23)
  );
  xor_cell gate10 (
    .a (net22),
    .b (net18),
    .out (net20)
  );
  and_cell gate11 (
    .a (net22),
    .b (net18),
    .out (net24)
  );
  and_cell gate12 (
    .a (net24),
    .b (net4),
    .out (net25)
  );
  xor_cell gate4 (
    .a (net23),
    .b (net5),
    .out (net26)
  );
  mux_cell gate5 (
    .a (net21),
    .b (net27),
    .sel (net5),
    .out (net28)
  );
  xor_cell gate13 (
    .a (net23),
    .b (net21),
    .out (net27)
  );
  or_cell gate14 (
    .a (net29),
    .b (net25),
    .out (net30)
  );
  and_cell gate15 (
    .a (net23),
    .b (net21),
    .out (net31)
  );
  and_cell gate16 (
    .a (net31),
    .b (net5),
    .out (net29)
  );
  xor_cell gate17 (
    .a (net26),
    .b (net6),
    .out (net32)
  );
  xor_cell gate18 (
    .a (net26),
    .b (net28),
    .out (net33)
  );
  mux_cell gate19 (
    .a (net28),
    .b (net33),
    .sel (net6),
    .out (net34)
  );
  and_cell gate20 (
    .a (net26),
    .b (net28),
    .out (net35)
  );
  and_cell gate21 (
    .a (net35),
    .b (net6),
    .out (net36)
  );
  or_cell gate22 (
    .a (net36),
    .b (net30),
    .out (net37)
  );
  xor_cell gate23 (
    .a (net32),
    .b (net7),
    .out (net38)
  );
  mux_cell gate24 (
    .a (net34),
    .b (net39),
    .sel (net7),
    .out (net40)
  );
  xor_cell gate25 (
    .a (net32),
    .b (net34),
    .out (net39)
  );
  or_cell gate26 (
    .a (net41),
    .b (net37),
    .out (net42)
  );
  and_cell gate27 (
    .a (net32),
    .b (net34),
    .out (net43)
  );
  and_cell gate28 (
    .a (net43),
    .b (net7),
    .out (net41)
  );
  xor_cell gate29 (
    .a (net38),
    .b (net8),
    .out (net44)
  );
  mux_cell gate30 (
    .a (net40),
    .b (net45),
    .sel (net8),
    .out (net46)
  );
  xor_cell gate31 (
    .a (net38),
    .b (net40),
    .out (net45)
  );
  or_cell gate32 (
    .a (net47),
    .b (net42),
    .out (net48)
  );
  and_cell gate33 (
    .a (net38),
    .b (net40),
    .out (net49)
  );
  and_cell gate34 (
    .a (net49),
    .b (net8),
    .out (net47)
  );
  not_cell gate35 (
    .in (net48),
    .out (net50)
  );
  and_cell gate36 (
    .a (net46),
    .b (net50),
    .out (net51)
  );
  and_cell gate37 (
    .a (net44),
    .b (net51),
    .out (net52)
  );
  dffsr_cell flipflop1 (
    .d (net53),
    .clk (net9),
    .s (net10),
    .r (net11),
    .q (net12),
    .notq (net13)
  );
  and_cell gate38 (
    .a (net51),
    .b (net12),
    .out (net54)
  );
  or_cell gate39 (
    .a (net52),
    .b (net54),
    .out (net53)
  );
endmodule
