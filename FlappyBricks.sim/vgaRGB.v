module vgaRGB(
  input [9:0]hc,
  input [9:0]vc,
  input clk,
  input rst,
  input videoen,
  input up,
  input wire start,
  output reg[2:0]r,
  output reg[2:0]g,
  output reg[1:0]b,
  output reg pass
  );

//Clock division
  reg start;
  reg [31:0]clkdiv;
  initial clkdiv = 0;
  wire flyclk,sjclk,difficultclk,pipemoveclk;
  always@ (posedge clk or posedge rst)
    begin 
      if(rst==1)
        clkdiv <= 0;
      else
        clkdiv <= clkdiv+1'b1;
    end

 reg [9:0]ubird = 10'd100;
 reg [9:0]dbird = 10'd131;//bird upper and lower
 reg [9:0]ublock = 10'd50;
 reg [9:0]lblock = 10'd800;
 reg [9:0]rblock = 10'd850;//waterpipe left and right bounds
 
 assign flyclk=clkdiv[20];// 
 reg firstup = 1; // only jump once per btn press
 reg strtgame = 0;
 always @(posedge flyclk or posedge rst)begin
     if(up==1)begin //game only start when jump btn pressed
        strtgame <= 1;
     end
     if(rst==1)begin
        strtgame <= 0;
     end
     if(rst==1 || strtgame==0)
       begin
         ubird <= 10'd150;
         dbird <= 10'd181;
       end
     else
       begin
         if(up==1&&ubird>10'd31)//up button pushed
           begin
             //jump once
             if(firstup==1)
               begin
                 ubird <= ubird-10'd80;
                 dbird <= dbird-10'd80;
                 firstup<=0;
               end
             else if(dbird<10'd510)
               begin
                 ubird <= ubird+10'd15;
                 dbird <= dbird+10'd15;
               end
           end
          else if(dbird<10'd510)
            begin
              ubird <= ubird+10'd15;
              dbird <= dbird+10'd15;
              firstup <= 1;
            end
       end
   end

//35-400 random number generator
 assign sjclk=clkdiv[15];//random number clock
 reg [9:0]usuiji=10'd35;
 always @(posedge sjclk)
   begin
     if(rst==1)
       usuiji<=10'd150;
     else
       begin
         usuiji <= usuiji+1'b1;
         if(usuiji == 10'd400)
           usuiji <= 10'd35;
       end
   end
//waterpipe difficulty - speed of the waterpipe
assign difficultclk = clkdiv[29];//
reg [3:0]speed = 10'd8;
always @(posedge difficultclk or posedge rst)
  begin
    if(rst)
        speed <= 8;
     else
      begin
        if(speed < 15)        
           speed <= speed + 1'b1;
      end
end
//waterpipe movement
assign pipemoveclk = clkdiv[20]; //
always @ (posedge pipemoveclk or posedge rst)
begin
   if(rst || strtgame==0)
       begin
          lblock <= 10'd800;
          rblock <= 10'd850;
          ublock <= 10'd50;
        end
    else
      begin
        lblock <= lblock - speed;//
        rblock <= rblock - speed;
        if(rblock < 140)//
          begin
              lblock <= 10'd800;
              rblock <= 10'd850;
              ublock <= usuiji;  //Upper bound random 
           end
      end
end

reg success = 1;//
reg first ;//prevent double scoring
reg [7:0]score=0;
initial first <= 1;
initial pass <= 0; //when pass is high, score increases
always @ (posedge flyclk or posedge rst)
begin
   if(rst)
       begin
         success <= 1;
        // score <= 0;
         pass<=0;
         first <= 1;
       end
    else if(lblock < 231 && rblock > 200)//bird meet pipe
       begin
          if((ubird < ublock || dbird > (ublock + 150))&&start)//collision
            begin
             success <= 0;
             pass <= 0;
            end
             else if( first == 1&&success==1)
             begin
               pass <= 1;//pass a waterpipe
               first <= 0;
             end 
        end
     else if(dbird>=510)
       begin
         success<=0;
         pass<=0;
       end
     else
       begin
        first <= 1;
        pass <= 0;
       end
end

always @ (posedge clk )
begin
  if(videoen == 1)begin
       if(success == 0 && start==1)begin
          //gameover
          if(vc < 511 && vc >=31 && hc < 784 && hc >=144)
            begin
               r <= 3'b111;
               g <= 3'b000;
               b <= 2'b00;
            end
          else
            begin
               r <= 3'b000;
               g <= 3'b000;
               b <= 2'b00;
            end
       end
       else if(start==1 && success==1)begin
          //bird
          if(vc < dbird && vc > ubird && hc < 231 && hc > 200)
            begin               
              r <= 3'b111;
              g <= 3'b000;
              b <= 2'b00;
            end
          //waterpipe
          else if(hc < rblock && hc > lblock && (vc >( ublock + 150) || vc < ublock))
            begin
              r <= 3'b000;
              g <= 3'b111;
              b <= 2'b00;
            end
          else
            begin
              //background
              r <= 3'b000;
              g <= 3'b001;
              b <= 2'b11;
            end
        end
  end  
  else begin
      r <= 3'b000;
      g <= 3'b000;
      b <= 2'b00;
    end
end
endmodule

