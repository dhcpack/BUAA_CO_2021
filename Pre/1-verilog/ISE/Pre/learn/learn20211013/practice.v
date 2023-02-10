module test (
    input rstn,
    input clk,
    input D,
    output reg Q
    
);

 always @(posedge clk) begin
	  Q <= D ;       //Q = D at posedge of clock
 end

 always @(posedge rstn or negedge rstn) begin
	  if(!rstn) begin
			assign Q = 1'b0 ; //change Q value when reset effective
	  end
	  else begin        //cancel the Q value overlay,
			deassign Q ;  //and Q remains 0-value until the coming of clock posedge
	  end
 end

endmodule  