module tutorial_led_blink 
  ( //creditos para o NANDLAND
   input i_clock,
   input i_enable,
   input i_switch_1,
   input i_switch_2,
   output o_led_drive
   );
    
  parameter c_CNT_100HZ = 250;
  parameter c_CNT_50HZ  = 500;
  parameter c_CNT_10HZ  = 2500;
  parameter c_CNT_1HZ   = 24000;
 
  // These signals will be the counters:
  reg [31:0] r_CNT_100HZ = 0;
  reg [31:0] r_CNT_50HZ = 0;
  reg [31:0] r_CNT_10HZ = 0;
  reg [31:0] r_CNT_1HZ = 0;
   
  // These signals will toggle at the frequencies needed:
  reg        r_TOGGLE_100HZ = 1'b0;
  reg        r_TOGGLE_50HZ  = 1'b0;
  reg        r_TOGGLE_10HZ  = 1'b0;
  reg        r_TOGGLE_1HZ   = 1'b0;
   
  // One bit select
  reg        r_LED_SELECT;
  wire       w_LED_SELECT;
   
     
begin
 
  // All always blocks toggle a specific signal at a different frequency.
  // They all run continuously even if the switches are
  // not selecting their particular output.
 
  always @ (posedge i_clock)
    begin
      if (r_CNT_100HZ == c_CNT_100HZ-1) // -1, since counter starts at 0
        begin        
          r_TOGGLE_100HZ <= !r_TOGGLE_100HZ;
          r_CNT_100HZ    <= 0;
        end
      else
        r_CNT_100HZ <= r_CNT_100HZ + 1;
    end
 
   
  always @ (posedge i_clock)
    begin
      if (r_CNT_50HZ == c_CNT_50HZ-1) // -1, since counter starts at 0
        begin        
          r_TOGGLE_50HZ <= !r_TOGGLE_50HZ;
          r_CNT_50HZ    <= 0;
        end
      else
        r_CNT_50HZ <= r_CNT_50HZ + 1;
    end
 
 
  always @ (posedge i_clock)
    begin
      if (r_CNT_10HZ == c_CNT_10HZ-1) // -1, since counter starts at 0
        begin        
          r_TOGGLE_10HZ <= !r_TOGGLE_10HZ;
          r_CNT_10HZ    <= 0;
        end
      else
        r_CNT_10HZ <= r_CNT_10HZ + 1;
    end
 
   
  always @ (posedge i_clock)
    begin
      if (r_CNT_1HZ == c_CNT_1HZ-1) // -1, since counter starts at 0
        begin        
          r_TOGGLE_1HZ <= !r_TOGGLE_1HZ;
          r_CNT_1HZ    <= 0;
        end
      else
        r_CNT_1HZ <= r_CNT_1HZ + 1;
    end

  always @ (*)
  begin
    case ({i_switch_1, i_switch_2}) // Concatenation Operator { }
      2'b11 : r_LED_SELECT <= r_TOGGLE_1HZ;
      2'b10 : r_LED_SELECT <= r_TOGGLE_10HZ;
      2'b01 : r_LED_SELECT <= r_TOGGLE_50HZ;
      2'b00 : r_LED_SELECT <= r_TOGGLE_100HZ;
    endcase     
  end
 
  assign o_led_drive = r_LED_SELECT & i_enable;
end
endmodule