module DemVaChuyenDen(
    input clk,
    output reg [1:0] state,
    output reg [5:0] time_left
);
    reg [5:0] counter;
    
    //	mac dinh ban dau den do sang trong 60s
    initial begin
        state = 2'b00;
        counter = 60;
        time_left = counter;
    end

    always @(posedge clk) begin
        if (counter > 0) begin
            counter <= counter - 1;
            time_left <= counter;
        end else begin
            case (state)
                2'b00: begin
                    state <= 2'b10;
                    counter <= 45; // den xanh sang 45s
                end
                2'b10: begin
                    state <= 2'b01;
                    counter <= 5; // den vang sang 5s
                end
                2'b01: begin
                    state <= 2'b00;
                    counter <= 60;
                end
            endcase
            time_left <= counter;
        end
    end
endmodule