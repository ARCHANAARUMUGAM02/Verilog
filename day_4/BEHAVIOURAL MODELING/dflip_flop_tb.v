module dflip_flop_tb();
reg clk,rst,din;
wire q;
dflip_flop uut(.clk(clk),.rst(rst),.din(din),.q(q));
initial begin
	clk=1;
forever #5 clk=~clk; 
end

initial begin
        $dumpfile("dflip_flop.vcd");
	$dumpvars();

end
initial begin
	//$display("Time\tclk\trst\tdin\tq\t");
	//$monitor("%0t\t%0b\t%0b\t%0b\t%0b",$time,clk,rst,din,q);
	$monitor("Time=%0t\tclk=%0b\trst=%0b\tdin=%0b\tq=%0b",$time,clk,rst,din,q);
din=1;#10;
rst=1;
#10 rst=0;

#10 din=0;
#10 din=1;
#70$finish;
end 
endmodule
