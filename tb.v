`include "btogconverter.v"
module tb;
reg [2:0]b;
wire [2:0]g;
btogconverter dut(.*);
initial begin
$monitor(" time=%0t ,b=%b,g=%b",$time,b,g);
b[2]=0;b[1]=0;b[0]=0;#10;
b[2]=0;b[1]=0;b[0]=1;#10;
b[2]=0;b[1]=1;b[0]=0;#10;
b[2]=0;b[1]=1;b[0]=1;#10;
b[2]=1;b[1]=0;b[0]=0;#10;
b[2]=1;b[1]=0;b[0]=1;#10;
b[2]=1;b[1]=1;b[0]=0;#10;
b[2]=1;b[1]=1;b[0]=1;#10;

end
endmodule
