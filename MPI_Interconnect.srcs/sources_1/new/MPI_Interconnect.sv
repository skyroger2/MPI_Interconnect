`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2017 15:33:27
// Design Name: 
// Module Name: MPI_Interconnect
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MPI_Interconnect
(
    input       [15:0]  S00_ADDR,
    input       [15:0]  S00_DATA_W,
    output      [15:0]  S00_DATA_R,
    input               S00_SYNC,
    output              S00_RPLY,
    input               S00_DIN,
    input               S00_DOUT,
    input               S00_WTBT,
    input               S00_IAKO,
    output  reg         S00_VIRQ,

    output      [15:0]  M00_ADDR,
    output      [15:0]  M00_DATA_W,
    input       [15:0]  M00_DATA_R,
    output              M00_SYNC,
    input               M00_RPLY,
    output              M00_DIN,
    output              M00_DOUT,
    output              M00_WTBT,
    output              M00_IAKO,
    input   reg         M00_VIRQ,

    output      [15:0]  M01_ADDR,
    output      [15:0]  M01_DATA_W,
    input       [15:0]  M01_DATA_R,
    output              M01_SYNC,
    input               M01_RPLY,
    output              M01_DIN,
    output              M01_DOUT,
    output              M01_WTBT,
    output              M01_IAKO,
    input   reg         M01_VIRQ,

    output      [15:0]  M02_ADDR,
    output      [15:0]  M02_DATA_W,
    input       [15:0]  M02_DATA_R,
    output              M02_SYNC,
    input               M02_RPLY,
    output              M02_DIN,
    output              M02_DOUT,
    output              M02_WTBT,
    output              M02_IAKO,
    input   reg         M02_VIRQ,

    output      [15:0]  M03_ADDR,
    output      [15:0]  M03_DATA_W,
    input       [15:0]  M03_DATA_R,
    output              M03_SYNC,
    input               M03_RPLY,
    output              M03_DIN,
    output              M03_DOUT,
    output              M03_WTBT,
    output              M03_IAKO,
    input   reg         M03_VIRQ,

    output      [15:0]  M04_ADDR,
    output      [15:0]  M04_DATA_W,
    input       [15:0]  M04_DATA_R,
    output              M04_SYNC,
    input               M04_RPLY,
    output              M04_DIN,
    output              M04_DOUT,
    output              M04_WTBT,
    output              M04_IAKO,
    input   reg         M04_VIRQ,

    output      [15:0]  M05_ADDR,
    output      [15:0]  M05_DATA_W,
    input       [15:0]  M05_DATA_R,
    output              M05_SYNC,
    input               M05_RPLY,
    output              M05_DIN,
    output              M05_DOUT,
    output              M05_WTBT,
    output              M05_IAKO,
    input   reg         M05_VIRQ,

    output      [15:0]  M06_ADDR,
    output      [15:0]  M06_DATA_W,
    input       [15:0]  M06_DATA_R,
    output              M06_SYNC,
    input               M06_RPLY,
    output              M06_DIN,
    output              M06_DOUT,
    output              M06_WTBT,
    output              M06_IAKO,
    input   reg         M06_VIRQ,

    output      [15:0]  M07_ADDR,
    output      [15:0]  M07_DATA_W,
    input       [15:0]  M07_DATA_R,
    output              M07_SYNC,
    input               M07_RPLY,
    output              M07_DIN,
    output              M07_DOUT,
    output              M07_WTBT,
    output              M07_IAKO,
    input   reg         M07_VIRQ,

    output      [15:0]  M08_ADDR,
    output      [15:0]  M08_DATA_W,
    input       [15:0]  M08_DATA_R,
    output              M08_SYNC,
    input               M08_RPLY,
    output              M08_DIN,
    output              M08_DOUT,
    output              M08_WTBT,
    output              M08_IAKO,
    input   reg         M08_VIRQ,

    output      [15:0]  M09_ADDR,
    output      [15:0]  M09_DATA_W,
    input       [15:0]  M09_DATA_R,
    output              M09_SYNC,
    input               M09_RPLY,
    output              M09_DIN,
    output              M09_DOUT,
    output              M09_WTBT,
    output              M09_IAKO,
    input   reg         M09_VIRQ,

    output      [15:0]  M010_ADDR,
    output      [15:0]  M010_DATA_W,
    input       [15:0]  M010_DATA_R,
    output              M010_SYNC,
    input               M010_RPLY,
    output              M010_DIN,
    output              M010_DOUT,
    output              M010_WTBT,
    output              M010_IAKO,
    input   reg         M010_VIRQ,

    input               clk,
    input               rst
);
    parameter MASTER_INTERFACES = 1;

    if (MASTER_INTERFACES > 0) begin
        assign M00_ADDR     = S00_ADDR;
        assign M00_DATA_W   = S00_DATA_W;
        assign M00_SYNC     = S00_SYNC;
        assign M00_DIN      = S00_DIN;
        assign M00_DOUT     = S00_DOUT;
        assign M00_WTBT     = S00_WTBT;
        assign M00_IAKO     = S00_IAKO;
    end

    if (MASTER_INTERFACES > 1) begin
        assign M01_ADDR     = S00_ADDR;
        assign M01_DATA_W   = S00_DATA_W;
        assign M01_SYNC     = S00_SYNC;
        assign M01_DIN      = S00_DIN;
        assign M01_DOUT     = S00_DOUT;
        assign M01_WTBT     = S00_WTBT;
        assign M01_IAKO     = (M00_VIRQ == 1) ? S00_IAKO : 1;
    end

    if (MASTER_INTERFACES > 2) begin
        assign M02_ADDR     = S00_ADDR;
        assign M02_DATA_W   = S00_DATA_W;
        assign M02_SYNC     = S00_SYNC;
        assign M02_DIN      = S00_DIN;
        assign M02_DOUT     = S00_DOUT;
        assign M02_WTBT     = S00_WTBT;
        assign M02_IAKO     = (M00_VIRQ == 1) && (M01_VIRQ == 1) ? S00_IAKO : 1;
    end

    if (MASTER_INTERFACES > 3) begin
        assign M03_ADDR     = S00_ADDR;
        assign M03_DATA_W   = S00_DATA_W;
        assign M03_SYNC     = S00_SYNC;
        assign M03_DIN      = S00_DIN;
        assign M03_DOUT     = S00_DOUT;
        assign M03_WTBT     = S00_WTBT;
        assign M03_IAKO     = (M00_VIRQ == 1) && (M01_VIRQ == 1) && (M02_VIRQ == 1) ? S00_IAKO : 1;
    end

    if (MASTER_INTERFACES > 4) begin
        assign M04_ADDR     = S00_ADDR;
        assign M04_DATA_W   = S00_DATA_W;
        assign M04_SYNC     = S00_SYNC;
        assign M04_DIN      = S00_DIN;
        assign M04_DOUT     = S00_DOUT;
        assign M04_WTBT     = S00_WTBT;
        assign M04_IAKO     = (M00_VIRQ == 1) && (M01_VIRQ == 1) && (M02_VIRQ == 1) && (M03_VIRQ == 1) ? S00_IAKO : 1;
    end

    if (MASTER_INTERFACES > 5) begin
        assign M05_ADDR     = S00_ADDR;
        assign M05_DATA_W   = S00_DATA_W;
        assign M05_SYNC     = S00_SYNC;
        assign M05_DIN      = S00_DIN;
        assign M05_DOUT     = S00_DOUT;
        assign M05_WTBT     = S00_WTBT;
        assign M05_IAKO     = (M00_VIRQ == 1) && (M01_VIRQ == 1) && (M02_VIRQ == 1) && (M03_VIRQ == 1) && (M04_VIRQ == 1) ? S00_IAKO : 1;
    end

    if (MASTER_INTERFACES > 6) begin
        assign M06_ADDR     = S00_ADDR;
        assign M06_DATA_W   = S00_DATA_W;
        assign M06_SYNC     = S00_SYNC;
        assign M06_DIN      = S00_DIN;
        assign M06_DOUT     = S00_DOUT;
        assign M06_WTBT     = S00_WTBT;
        assign M06_IAKO     = (M00_VIRQ == 1) && (M01_VIRQ == 1) && (M02_VIRQ == 1) && (M03_VIRQ == 1) && (M04_VIRQ == 1) &&
                              (M05_VIRQ == 1) ? S00_IAKO : 1;
    end

    if (MASTER_INTERFACES > 7) begin
        assign M07_ADDR     = S00_ADDR;
        assign M07_DATA_W   = S00_DATA_W;
        assign M07_SYNC     = S00_SYNC;
        assign M07_DIN      = S00_DIN;
        assign M07_DOUT     = S00_DOUT;
        assign M07_WTBT     = S00_WTBT;
        assign M07_IAKO     = (M00_VIRQ == 1) && (M01_VIRQ == 1) && (M02_VIRQ == 1) && (M03_VIRQ == 1) && (M04_VIRQ == 1) &&
                              (M05_VIRQ == 1) && (M06_VIRQ == 1) ? S00_IAKO : 1;
    end

    if (MASTER_INTERFACES > 8) begin
        assign M08_ADDR     = S00_ADDR;
        assign M08_DATA_W   = S00_DATA_W;
        assign M08_SYNC     = S00_SYNC;
        assign M08_DIN      = S00_DIN;
        assign M08_DOUT     = S00_DOUT;
        assign M08_WTBT     = S00_WTBT;
        assign M08_IAKO     = (M00_VIRQ == 1) && (M01_VIRQ == 1) && (M02_VIRQ == 1) && (M03_VIRQ == 1) && (M04_VIRQ == 1) &&
                              (M05_VIRQ == 1) && (M06_VIRQ == 1) && (M07_VIRQ == 1) ? S00_IAKO : 1;
    end

    if (MASTER_INTERFACES > 9) begin
        assign M09_ADDR     = S00_ADDR;
        assign M09_DATA_W   = S00_DATA_W;
        assign M09_SYNC     = S00_SYNC;
        assign M09_DIN      = S00_DIN;
        assign M09_DOUT     = S00_DOUT;
        assign M09_WTBT     = S00_WTBT;
        assign M09_IAKO     = (M00_VIRQ == 1) && (M01_VIRQ == 1) && (M02_VIRQ == 1) && (M03_VIRQ == 1) && (M04_VIRQ == 1) &&
                              (M05_VIRQ == 1) && (M06_VIRQ == 1) && (M07_VIRQ == 1) && (M08_VIRQ == 1) ? S00_IAKO : 1;
    end

    if (MASTER_INTERFACES > 10) begin
        assign M010_ADDR    = S00_ADDR;
        assign M010_DATA_W  = S00_DATA_W;
        assign M010_SYNC    = S00_SYNC;
        assign M010_DIN     = S00_DIN;
        assign M010_DOUT    = S00_DOUT;
        assign M010_WTBT    = S00_WTBT;
        assign M010_IAKO    = (M00_VIRQ == 1) && (M01_VIRQ == 1) && (M02_VIRQ == 1) && (M03_VIRQ == 1) && (M04_VIRQ == 1) &&
                              (M05_VIRQ == 1) && (M06_VIRQ == 1) && (M07_VIRQ == 1) && (M08_VIRQ == 1) && (M09_VIRQ == 1) ? S00_IAKO : 1;
    end

    assign S00_DATA_R =
        ((MASTER_INTERFACES > 0) ? M00_DATA_R : 16'hFFFF) &
        ((MASTER_INTERFACES > 1) ? M01_DATA_R : 16'hFFFF) &
        ((MASTER_INTERFACES > 2) ? M02_DATA_R : 16'hFFFF) &
        ((MASTER_INTERFACES > 3) ? M03_DATA_R : 16'hFFFF) &
        ((MASTER_INTERFACES > 4) ? M04_DATA_R : 16'hFFFF) &
        ((MASTER_INTERFACES > 5) ? M05_DATA_R : 16'hFFFF) &
        ((MASTER_INTERFACES > 6) ? M06_DATA_R : 16'hFFFF) &
        ((MASTER_INTERFACES > 7) ? M07_DATA_R : 16'hFFFF) &
        ((MASTER_INTERFACES > 8) ? M08_DATA_R : 16'hFFFF) &
        ((MASTER_INTERFACES > 9) ? M09_DATA_R : 16'hFFFF) &
        ((MASTER_INTERFACES > 10) ? M010_DATA_R : 16'hFFFF) ;

    assign S00_RPLY =
        ((MASTER_INTERFACES > 0) ? M00_RPLY : 1'h1) &
        ((MASTER_INTERFACES > 1) ? M01_RPLY : 1'h1) &
        ((MASTER_INTERFACES > 2) ? M02_RPLY : 1'h1) &
        ((MASTER_INTERFACES > 3) ? M03_RPLY : 1'h1) &
        ((MASTER_INTERFACES > 4) ? M04_RPLY : 1'h1) &
        ((MASTER_INTERFACES > 5) ? M05_RPLY : 1'h1) &
        ((MASTER_INTERFACES > 6) ? M06_RPLY : 1'h1) &
        ((MASTER_INTERFACES > 7) ? M07_RPLY : 1'h1) &
        ((MASTER_INTERFACES > 8) ? M08_RPLY : 1'h1) &
        ((MASTER_INTERFACES > 9) ? M09_RPLY : 1'h1) &
        ((MASTER_INTERFACES > 10) ? M010_RPLY : 1'h1) ;

    assign S00_VIRQ =
        ((MASTER_INTERFACES > 0) ? M00_VIRQ : 1'h1) &
        ((MASTER_INTERFACES > 1) ? M01_VIRQ : 1'h1) &
        ((MASTER_INTERFACES > 2) ? M02_VIRQ : 1'h1) &
        ((MASTER_INTERFACES > 3) ? M03_VIRQ : 1'h1) &
        ((MASTER_INTERFACES > 4) ? M04_VIRQ : 1'h1) &
        ((MASTER_INTERFACES > 5) ? M05_VIRQ : 1'h1) &
        ((MASTER_INTERFACES > 6) ? M06_VIRQ : 1'h1) &
        ((MASTER_INTERFACES > 7) ? M07_VIRQ : 1'h1) &
        ((MASTER_INTERFACES > 8) ? M08_VIRQ : 1'h1) &
        ((MASTER_INTERFACES > 9) ? M09_VIRQ : 1'h1) &
        ((MASTER_INTERFACES > 10) ? M010_VIRQ : 1'h1) ;

endmodule
