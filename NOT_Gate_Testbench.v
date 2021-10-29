module not_tb;
  reg ta;
  wire ty;
  notgate ng(.a(ta), .y(ty));
  initial
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #50 $finish;
  end
  initial
    begin
      $monitor (ta, ty);
      ta = 1'b0;
      #10
      ta = 1'b1;
    end
endmodule
