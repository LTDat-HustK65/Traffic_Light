module TrafficLight(
    input clk,
    input reset,
    output red,
    output yellow,
    output green,
    output [7:0] led0,
    output [7:0] led1
);
    wire slow_clk;
    wire [1:0] state;
    wire [5:0] time_left;

    ChiaTan U1_chia_tan(
        .clk(clk),
        .slow_clk(slow_clk)
    );

    DemVaChuyenDen U2_dem_nguoc_va_chuyen_den(
        .clk(slow_clk),
        .state(state),
        .time_left(time_left)
    );

    HienThiDen U3_hien_thi_den(
        .state(state),
        .red(red),
        .yellow(yellow),
        .green(green)
    );

    HienThiSo U4_hien_thi_so(
        .num(time_left),
        .led0(led0),
        .led1(led1)
    );
endmodule
