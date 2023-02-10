module practice (
    output c
);
    reg a;
    reg b;
    assign c = a & b;
//==================//上面是源代码，下面是生成测试vcd文件的代码
    initial begin            
        $dumpfile("practice.vcd");        //生成的vcd文件名称
        $dumpvars(0, practice);    //模块名称
        a <= 1;
        b <= 1;
        # 6000 $finish;
    end
    always begin
        #20 a = ~a;                 // 每20个单位clock取反
    end
endmodule //practice

