module D5(din, a, b, c);

    input [0:7] din;
    output a, b, c;

    assign a = (din[4] | din[5] | din[6] | din[7]);
    assign b = (din[2] | din[3] | din[6] | din[7]);
    assign c = (din[1] | din[3] | din[5] | din[7]);

endmodule