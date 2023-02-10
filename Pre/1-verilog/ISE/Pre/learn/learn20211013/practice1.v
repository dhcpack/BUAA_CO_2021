`timescale 1ns/1ns
 
module test ;
	reg [3:0] counter;

	initial begin
		counter=4'b0;
		while (counter <= 4'd10) begin
			#10;
			counter = counter + 1'b1;
		end
	end

	always begin
	 #10;
	 if($time >= 1000) begin
		$finish;
	 end

endmodule