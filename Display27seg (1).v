module Display27seg (A, B, C, D, D0, D1, D2, D3, D4, D5, D6);
input A, B, C, D;
output D0, D1, D2, D3, D4, D5, D6;

assign D0 = (((B^D)&(~A&~C))|((A&D)&(B^C)));

assign D1 = (((~A&B)&(C^D))|((A&B)&((C^D)|(C&~D)))|(A&~B&C&D));

assign D2 = ((A&B&C)|(~D&((~A&~B&C)|(A&B&~C))));

assign D3 = (((~A&~C)&(B^D))|(C&((~A&B&D)|(A&~B&~D)|(A&B&D)))); 

assign D4 = (((~A&B)&((C^D)|(~C&D)))|(~A&~B&D)|(A&~B&~C&D));

assign D5 = (((~A&B)&((C^D)|(C&D)))|((B&D)&(A^C)));

assign D6 = ((~A&~B&~C)|( B&((~A&C&D)|(A&~C&~D))));

endmodule