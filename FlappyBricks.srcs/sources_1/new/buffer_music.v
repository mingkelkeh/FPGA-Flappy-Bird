//`timescale 1ns / 1ps

module  buffer_music  (  audio , clk , button ) ;
output     audio ;
input      clk ;
input      button ;
  
reg   [ 23 : 0 ]    counter4Hz , counter1MHz, counter6MHz;
reg   [ 13 : 0 ]   count , origin ;
reg   audiof ;
reg    clk_6MHz, clk_4Hz;
reg    clk_1MHz ;
reg   [ 4 : 0 ]   j ;
reg   [ 7 : 0 ]   len ;
//assign audio=audiof; //control switch
assign  audio =  button ?  audiof : 1'b1 ; //Control switch
always @ ( posedge  clk )begin               //6MHz frequency division The onboard development board is 100MHz
  if ( counter6MHz == 8 )begin  
    counter6MHz = 0 ;
    clk_6MHz =~ clk_6MHz ;
   end
   else begin    
        counter6MHz = counter6MHz + 1 ;
   end
end

always @ ( posedge  clk )                  //4Hz frequency division  
begin
  // if(counter4Hz==2500000)     
    if ( counter4Hz == 12500000 )begin          //100M/4/2
       counter4Hz = 0 ;
        clk_4Hz =~ clk_4Hz ;
    end
    else begin
        counter4Hz = counter4Hz + 1 ;
    end
end

always @ ( posedge  clk_6MHz )begin
    if ( count == 16383 )begin
        count = origin ;
        audiof =~ audiof ;
    end
    else begin
        count = count + 1 ;
    end
end

always @ ( posedge  clk_4Hz )begin
     case ( j )
    'd0 : origin = 'b0 ;
    'd1 : origin = 'd4916 ;   //low
    'd2 : origin = 'd6168 ;
    'd3 : origin = 'd7281 ;
    'd4 : origin = 'd7791 ;
    'd5 : origin = 'd8730 ;
    'd6 : origin = 'd9565 ;
    'd7 : origin = 'd10310 ;
    'd8 : origin = 'd010647 ;   //middle
    'd9 : origin = 'd011272 ;
    'd10 : origin = 'd011831 ;
    'd11 : origin = 'd012087 ;
    'd12 : origin = 'd012556 ;
    'd13 : origin = 'd012974 ;
    'd14 : origin = 'd013346 ;
    'd15 : origin = 'd13516 ;   //high
    'd16 : origin = 'd13829 ;
    'd17 : origin = 'd14108 ;
    'd18 : origin = 'd11535 ;
    'd19 : origin = 'd14470 ;
    'd20 : origin = 'd14678 ;
    'd21 : origin = 'd14864 ;
    default : origin = 'd011111 ;
   endcase             
end

always @ ( posedge  clk_4Hz )begin   //An eternal east wind for everyone here
   if ( len == 246 )begin
      len = 0 ;
   end
   else begin
      len = len + 1 ;
   end
  case ( len )
   0 : j = 12 ; 1 : j = 12 ; 2 : j = 12 ; 3 : j = 12 ; 4 : j = 12 ;
   5 : j = 12 ; 6 : j = 13 ; 7 : j = 13 ; 8 : j = 12 ; 9 : j = 12 ;
   10 : j = 11 ; 11 : j = 10 ; 12 : j = 10 ; 13 : j = 9 ; 14 : j = 9 ;
   15 : j = 1 ; 16 : j = 1 ; 17 : j = 1 ; 18 : j = 1 ; 19 : j = 9 ;
   20 : j = 9 ; 21 : j = 5 ; 22 : j = 5 ; 23 : j = 5 ; 24 : j = 5 ;
   25 : j = 5 ; 26 : j = 5 ; 27 : j = 6 ; 28 : j = 6 ; 29 : j = 6 ;
   30 : j = 6 ; 31 : j = 5 ; 32 : j = 5 ; 33 : j = 5 ; 34 : j = 5 ;
   35 : j = 8 ;
   36 : j = 8 ;
   37 : j = 10 ;
   38 : j = 12 ;
   39 : j = 12 ;
   40 : j = 10 ;
   41 : j = 10 ;
   42 : j = 13 ;
   43 : j = 13 ;
   44 : j = 13 ;
   45 : j = 13 ;
   46 : j = 13 ;
   47 : j = 13 ;
   48 : j = 13 ;
   49 : j = 13 ;
   50 : j = 12 ;
   51 : j = 12 ;
   52 : j = 12 ;
   53 : j = 12 ;
   54 : j = 13 ;
   55 : j = 13 ;
   56 : j = 12 ;
   57 : j = 12 ;
   58 : j = 12 ;
   59 : j = 12 ;
   60 : j = 12 ;
   61 : j = 10 ;
   62 : j = 10 ;
   63 : j = 8 ;
   64 : j = 8 ;
   65 : j = 9 ;
   66 : j = 9 ;
   67 : j = 9 ;
   68 : j = 9 ;
   69 : j = 10 ;
   70 : j = 10 ;
   71 : j = 12 ;
   72 : j = 12 ;
   73 : j = 9 ;
   74 : j = 9 ;
   75 : j = 9 ;
   76 : j = 9 ;
   77 : j = 12 ;
   78 : j = 12 ;
   79 : j = 12 ;
   80 : j = 12 ;
   81 : j = 12 ;
   82 : j = 12 ;
   83 : j = 13 ;
   84 : j = 13 ;
   85 : j = 12 ;
   86 : j = 12 ;
   87 : j = 11 ;
   88 : j = 10 ;
   89 : j = 10 ;
   90 : j = 9 ;
   91 : j = 9 ;
   92 : j = 8 ;
   93 : j = 8 ;
   94 : j = 8 ;
   95 : j = 8 ;
   96 : j = 8 ;
   97 : j = 9 ;
   98 : j = 9 ;
   99 : j = 5 ;
   100 : j = 5 ;
   101 : j = 5 ;
   102 : j = 5 ;
   103 : j = 6 ;
   104 : j = 6 ;
   105 : j = 6 ;
   106 : j = 6 ;
   107 : j = 5 ;
   108 : j = 5 ;
   109 : j = 5 ;
   110 : j = 5 ;
   111 : j = 8 ;
   112 : j = 8 ;
   113 : j = 10 ;
   114 : j = 12 ;
   115 : j = 12 ;
   116 : j = 13 ;
   117 : j = 13 ;
   118 : j = 10 ;
   119 : j = 10 ;
   120 : j = 10 ;
   121 : j = 10 ;
   122 : j = 10 ;
   123 : j = 10 ;
   124 : j = 10 ;
   125 : j = 10 ;
   126 : j = 12 ;
   127 : j = 12 ;
   128 : j = 12 ;
   129 : j = 12 ;
   130 : j = 12 ;
   131 : j = 12 ;
   132 : j = 13 ;
   133 : j = 13 ;
   134 : j = 12 ;
   135 : j = 12 ;
   136 : j = 12 ;
   137 : j = 12 ;
   138 : j = 10 ;
   139 : j = 10 ;
   140 : j = 9 ;
   141 : j = 9 ;
   142 : j = 9 ;
   143 : j = 9 ;
   144 : j = 10 ;
   145 : j = 10 ;
   146 : j = 13 ;
   147 : j = 13 ;
   148 : j = 12 ;
   149 : j = 12 ;
   150 : j = 12 ;
   151 : j = 12 ;
   152 : j = 10 ;
   153 : j = 10 ;
   154 : j = 10 ;
   155 : j = 10 ;
   156 : j = 10 ;
   157 : j = 10 ;
   158 : j = 10 ;
   159 : j = 10 ;
   160 : j = 10 ;
   161 : j = 10 ;
   162 : j = 10 ;
   163 : j = 10 ;
   164 : j = 10 ;
   165 : j = 9 ;
   166 : j = 10 ;
   167 : j = 9 ;
   168 : j = 8 ;
   169 : j = 6 ;
   170 : j = 5 ;
   171 : j = 8 ;
   172 : j = 10 ;
   173 : j = 12 ;
   174 : j = 13 ;
   175 : j = 12 ;
   175 : j = 12 ;
   176 : j = 0 ;
   177 : j = 0 ;
   178 : j = 9 ;
   179 : j = 10 ;
   180 : j = 10 ;
   181 : j = 9 ;
   182 : j = 8 ;
   183 : j = 9 ;
   184 : j = 9 ;
   185 : j = 0 ;
   186 : j = 5 ;
   187 : j = 10 ;
   188 : j = 10 ;
   189 : j = 10 ;
   190 : j = 10 ;
   191 : j = 9 ;
   192 : j = 9 ;
   193 : j = 10 ;
   194 : j = 10 ;
   195 : j = 9 ;
   196 : j = 10 ;
   197 : j = 9 ;
   198 : j = 8 ;
   199 : j = 6 ;
   200 : j = 6 ;
   201 : j = 0 ;
   202 : j = 5 ;
   203 : j = 12 ;
   204 : j = 12 ;
   205 : j = 12 ;
   206 : j = 12 ;
   207 : j = 13 ;
   208 : j = 13 ;
   209 : j = 13 ;
   210 : j = 12 ;
   211 : j = 12 ;
   212 : j = 9 ;
   213 : j = 9 ;
   214 : j = 12 ;
   215 : j = 12 ;
   216 : j = 0 ;
   217 : j = 0 ;
   218 : j = 13 ;
   219 : j = 13 ;
   220 : j = 12 ;
   221 : j = 13 ;
   222 : j = 10 ;
   223 : j = 10 ;
   224 : j = 0 ;
   225 : j = 0 ;
   226 : j = 9 ;
   227 : j = 12 ;
   228 : j = 10 ;
   228 : j = 8 ;
   229 : j = 9 ;
   230 : j = 9 ;
   231 : j = 0 ;
   232 : j = 0 ;
   233 : j = 5 ;
   234 : j = 0 ;
   235 : j = 8 ;
   236 : j = 0 ;
   237 : j = 12 ;
   238 : j = 12 ;
   239 : j = 0 ;
   240 : j = 0 ;
   241 : j = 9 ;
   242 : j = 9 ;
   243 : j = 13 ;
   244 : j = 13 ;
   245 : j = 12 ;
   246 : j = 12 ;
endcase
                
end
endmodule