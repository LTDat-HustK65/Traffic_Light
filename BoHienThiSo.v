module HienThiSo(
    input [5:0] num,
    output reg [7:0] led0,
    output reg [7:0] led1
);
    reg [3:0] tens;
    reg [3:0] units;

    always @* begin
        tens = num / 10;
        units = num % 10;

        case (tens)
            0: led0 = 8'b0000_0001; // 0
            1: led0 = 8'b0100_1111; // 1
            2: led0 = 8'b0001_0010; // 2
            3: led0 = 8'b0000_0110; // 3
            4: led0 = 8'b0100_1100; // 4
            5: led0 = 8'b0010_0100; // 5
            6: led0 = 8'b0010_0000; // 6
            7: led0 = 8'b0000_1111; // 7
            8: led0 = 8'b0000_0000; // 8
            9: led0 = 8'b0000_0100; // 9
            default: led0 = 8'b1111_1111;
        endcase

        case (units)
            0: led1 = 8'b0000_0001;
            1: led1 = 8'b0100_1111;
            2: led1 = 8'b0001_0010;
            3: led1 = 8'b0000_0110;
            4: led1 = 8'b0100_1100;
            5: led1 = 8'b0010_0100;
            6: led1 = 8'b0010_0000;
            7: led1 = 8'b0000_1111;
            8: led1 = 8'b0000_0000;
            9: led1 = 8'b0000_0100;
            default: led1 = 8'b1111_1111;
        endcase
    end
endmodule
