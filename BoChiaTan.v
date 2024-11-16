module ChiaTan(
    input clk,
    output reg slow_clk
);
    reg [25:0] counter = 0;

    always @(posedge clk) begin
    counter <= counter + 1;
    if (counter == 0) begin
        slow_clk <= ~slow_clk;
    end else begin
        slow_clk <= slow_clk;
    end
    // ca doan if... else... tren co the viet ngan gon trong 1 cau lenh
    // slow_clk <= (counter == 0) ? ~slow_clk : slow_clk;
end
endmodule