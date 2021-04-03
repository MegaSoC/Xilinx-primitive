`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2021 03:40:38 PM
// Design Name: 
// Module Name: FDR
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module my_FDR(
    output Q,
    input C,
    input D,
    input R
    );
reg Q;
always @(posedge C) begin
if (R)
    Q <= 0;
else
    Q <= D;
end    
   
endmodule

module my_MULT_AND (  
    input I1,
    input I0,
    output LO
);

assign LO = I1 && I0;
    
endmodule

module my_MUXCY (  
    input DI,
    input CI,
    input S,
    output O
);

assign O = (~S & DI) || (S & CI);
    
endmodule

module my_XORCY (  
    input LI,
    input CI,
    output O
);

assign O = LI ^ CI;
    
endmodule

module my_FDRE (  
    input C,
    input CE,
    input D,
    input R,
    output Q
);
reg Q;
always @(posedge C) begin
    if(R) begin
        Q <= 0;
    end
    else begin
        if(CE == 1) begin
            Q <= D;
        end
    end
end
    
endmodule

module my_FDCE (  
    input C,
    input CE,
    input D,
    input CLR,
    output Q
);
reg Q;
always @(posedge C or negedge CLR) begin
    if(CLR) begin
        Q <= 0;
    end
    else begin
        if(CE == 1) begin
            Q <= D;
        end
    end
end
    
endmodule

module my_FDSE (  
    input C,
    input CE,
    input D,
    input S,
    output Q
);
reg Q;
always @(posedge C) begin
    if(S) begin
        Q <= 1;
    end
    else begin
        if(CE == 1) begin
            Q <= D;
        end
    end
end
    
endmodule

module my_MUXCY_L (  
    input DI,
    input CI,
    input S,
    output LO
);

assign LO = (~S & DI) || (S & CI);
    
endmodule

module my_FDS (  
    input C,
    input D,
    input S,
    output Q
);
reg Q;
always @(posedge C) begin
    if(S) begin
        Q <= 1;
    end
    else begin
        Q <= D;
    end
end
    
endmodule

