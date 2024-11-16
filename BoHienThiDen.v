module HienThiDen(
    input [1:0] state,
    output reg red,
    output reg yellow,
    output reg green
);
    always @(*) begin
        case (state)
            2'b00: begin
                red = 1;
                yellow = 0;
                green = 0;
            end
            2'b01: begin
                red = 0;
                yellow = 1;
                green = 0;
            end
            2'b10: begin
                red = 0;
                yellow = 0;
                green = 1;
            end
            default: begin
                red = 0;
                yellow = 0;
                green = 0;
            end
        endcase
    end
endmodule
