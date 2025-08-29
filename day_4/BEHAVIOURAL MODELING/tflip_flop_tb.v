module tflip_flop_tb();
reg clk,rst,t;
wire q;
tflip_flop uut(.clk(clk),.rst(rst),.t(t),.q(q));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$display("time\tclk\trst\tt\tq");
$monitor("%0t\t%0b\t%0b\t%0b\t%0b",$time,clk,rst,t,q);
$dumpfile("tflip_flop.vcd");
$dumpvars();
end
initial begin
rst=1;
#10 t=0;
rst=0;
#10 t=1;
#10 t=0;
#10 t=1;
#60 $finish;
end
endmodule

