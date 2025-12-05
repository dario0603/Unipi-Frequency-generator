module lcd_driver 
#(parameter BCD_DIGITS=6)
(
    input  clk,  
	 input  button_next, 
	 input  button_prev, 
    input  reset_n,  
	 input  [(BCD_DIGITS*4)-1:0] bcd_freq, //each BCD (binary coded decimal) digit needs 4 bits
    output [7:0] lcd_data, // LCD data bus
    output lcd_rw,      // Read/Write Select (0=Write)
    output lcd_en,      // Enable Pulse
    output lcd_rs,      // Register Select (0=Cmd, 1=Data)
    output lcd_on,      // Power ON switch
    output lcd_blon,     // Backlight ON switch
	 
	 output reg sin,
	 output reg triang,
	 output reg mirror_x,
	 output reg mirror_y,
	 
	 output [(BCD_DIGITS*4)-1:0] freq_leds,
	 output reg test_led
	 
	
);

    assign lcd_on   = 1'b1; // LCD always on 
    assign lcd_blon = 1'b1; // Backlight on
    assign lcd_rw   = 1'b0; // Always writing (Busy Flag unused)
	 
	 assign freq_leds = bcd_freq;

    localparam SETUP  = 4'd0;
	 localparam PAGE_SELECT = 4'd1;
	 localparam WAIT_EXEC = 4'd2;
	 localparam POWER_ON = 4'd3;
	 localparam CHECK_AND_WAIT = 4'd4;
    localparam WRITE_DATA = 4'd5;
	 localparam DONE = 4'd6; 
	 localparam RESET = 4'd7;
	 localparam WAIT_BUTTON_SHORT = 4'd8; 
	 localparam WAIT_BUTTON_LONG = 4'd9;
	 localparam WAIT_BUTTON_RELEASE = 4'd10;
	 localparam WAIT = 4'd11;
	 localparam HZ_DISPLAY = 4'd12;
	 localparam WAIT_COMMAND = 4'd13;
	 localparam DIGIT_SELECT = 4'd14;
	 localparam BUTTON_RELEASED = 4'd15;

	 
    localparam PAGE0 = 5'd0;
	 localparam PAGE1 = 5'd1; 
	 localparam PAGE2 = 5'd2; 
	 localparam PAGE3 = 5'd3; 
	 localparam PAGE4 = 5'd4; 
	 localparam PAGE5 = 5'd5;
	 localparam PAGE_DEFAULT = 5'd30;
	 localparam PAGE_ERROR = 5'd31;
	 
	 localparam PAGE_FIRST = 5'd2;
	 localparam PAGE_LAST = 5'd9;
	 
	 localparam PAGE_SQUARED = 5'd2; 
	 localparam PAGE_TRIANGULAR = 5'd3; 
	 localparam PAGE_SINE = 5'd4; 
	 localparam PAGE_TRIANGULAR1 = 5'd5;
	 localparam PAGE_TRIANGULAR2 = 5'd6; 
	 localparam PAGE_TRIANGULAR3 = 5'd7; 
	 localparam PAGE_SINE1 = 5'd8; 
	 localparam PAGE_SINE2 = 5'd9;
	 
	 
	 // delays are based on 50MHz clock frequency 
	 localparam wait40us = 32'd2000; 
	 localparam wait1ms = 32'd50000; 
	 localparam wait2ms = 32'd100000; 
	 localparam wait10ms = 32'd500000; 
	 localparam wait20ms = 32'd1000000; 
	 localparam wait100ms = 32'd5000000; 
	 localparam wait2s = 32'd100000000; 
	 
    reg [3:0] state;
	 reg [3:0] state_f;
    reg [4:0] sub_state;
	 reg [2:0] sub_state_f;
    reg [7:0] lcd_data_reg; // Registro dati interno
    reg lcd_rs_reg;         // Registro RS interno
    reg lcd_en_reg;         // Registro Enable interno
    reg [7:0] lcd_data_freq; // Registro dati interno	 
    reg lcd_rs_freq;         // Registro RS interno
    reg lcd_en_freq;         // Registro Enable interno	
	 reg lcd_en_cntr;
	 
	 assign lcd_data = lcd_data_reg;
	 assign lcd_rs = lcd_rs_reg;
	 assign lcd_en = lcd_en_reg;

    // delay counters
    reg [31:0] counter;
	 reg [31:0] counter_f;
	 reg [31:0] btn_counter;
	 
	 // text LUT instance
	 localparam DATA_WIDTH=9;
	 localparam ADDR_WIDTH=6;
	 localparam PAGE_ADDR_WIDTH=5;
	 reg [ADDR_WIDTH-1:0] char_index = 0;
	 reg [PAGE_ADDR_WIDTH-1:0] page_index = 0;
	 wire [DATA_WIDTH-1:0] lut_out;  
	 text_lut #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH), .PAGE_ADDR_WIDTH(PAGE_ADDR_WIDTH)) text_lut_inst(
		.addr(char_index),
		.page(page_index),
		.clk(clk),
		.q(lut_out) 
	 );
	 
	 
	 localparam N_INDEX_WIDTH = $clog2(BCD_DIGITS);
	 localparam BCD_BITS = 4;
	 localparam LAST_BCD_INDEX = (BCD_DIGITS*4)-BCD_BITS;
	 reg [BCD_BITS-1:0] bcd_number = 0;
	 reg [N_INDEX_WIDTH:0] n_index = 0;
	 
	 always @(*) begin
		 if( state != WAIT_BUTTON_SHORT && state != WAIT_BUTTON_RELEASE ) begin
			 lcd_rs_reg = lut_out[DATA_WIDTH-1];
			 lcd_data_reg = lut_out[DATA_WIDTH-2:0];
			 lcd_en_reg = lcd_en_cntr;
		 end else if( page_index >= PAGE_FIRST && page_index <= PAGE_LAST ) begin 
			 lcd_rs_reg = lcd_rs_freq;
			 lcd_data_reg = lcd_data_freq; 		 
			 lcd_en_reg = lcd_en_freq;
		 end
		 // each BCD (binary coded decimal) digit needs 4 bits
		 // number extracted from most significant BCD to least significant BCD (reverse index)
		 bcd_number = bcd_freq[(LAST_BCD_INDEX-(n_index*4))+:BCD_BITS]; 
		 if( bcd_number >= 4'd9 ) begin
				bcd_number = 9;
		 end
	 end 
	 
	 // output waves selector 
    always @(*) begin
		 case(page_index)
			PAGE_SQUARED: begin
				triang = 0;
				sin = 0;
				mirror_x = 0;
				mirror_y = 0;		
			end
			
			PAGE_TRIANGULAR: begin
				triang = 1;
				sin = 0;
				mirror_x = 0;
				mirror_y = 0;		
			end
			
			PAGE_SINE: begin
				triang = 0;
				sin = 1;
				mirror_x = 0;
				mirror_y = 0;		
			end
			
			PAGE_TRIANGULAR1: begin
				triang = 1;
				sin = 0;
				mirror_x = 1;
				mirror_y = 0;		
			end
			
			PAGE_TRIANGULAR2: begin
				triang = 1;
				sin = 0;
				mirror_x = 0;
				mirror_y = 1;		
			end
			
			PAGE_TRIANGULAR3: begin
				triang = 1;
				sin = 0;
				mirror_x = 1;
				mirror_y = 1;		
			end
			
			PAGE_SINE1: begin
				triang = 0;
				sin = 1;
				mirror_x = 1;
				mirror_y = 0;		
			end
			
			PAGE_SINE2: begin
				triang = 0;
				sin = 1;
				mirror_x = 0;
				mirror_y = 1;		
			end
			
			default: begin
				triang = 0;
				sin = 0;
				mirror_x = 0;
				mirror_y = 0;
			end
		endcase 
	 end
	
    // Macchina a stati per gestire il timing
    // Il controller HD44780 è LENTO. 
    // Clear Display richiede ~1.64ms. Altri comandi ~40us.
    // Usiamo un ritardo conservativo di ~2ms per ogni operazione per semplicità.
    
    always @(posedge clk) begin
        if (!reset_n) begin
				char_index <= 0;
				page_index <= 0;
				counter <= 0;
				sub_state <= PAGE0;
            state <= POWER_ON;
        end else begin
            case (state)
					 // Wait for more than 15ms at power on 
					 POWER_ON: begin
						  lcd_en_cntr <= 0;
                    counter <= counter + 1'b1;
                    if (counter >= wait20ms) begin
                        state <= SETUP ;
                        counter <= 0;
                    end				 
					 end
                // Setup time wait 
					 SETUP: begin
                    lcd_en_cntr <= 0;
                    counter <= counter + 1'b1;
                    if (counter >= wait40us) begin 
                        state <= WRITE_DATA;
                        counter <= 0;
                    end
                end

                // Enable pulse high 
                WRITE_DATA: begin
                    lcd_en_cntr <= 1;
                    counter <= counter + 1'b1;
                    if (counter >= wait1ms) begin 
                         state <= WAIT_EXEC; 
                         counter <= 0;
                    end
                end
                
                // Wait instruction execution 
                WAIT_EXEC: begin
                    lcd_en_cntr <= 0;
                    counter <= counter + 1'b1;
                    if (counter >= wait2ms) begin 
								char_index <= char_index + 1'b1;	
                        state <= PAGE_SELECT; 
                        counter <= 0;
                    end
                end

                PAGE_SELECT: begin
				
							case(sub_state)
								
								// DDFS Tonarini Aliberti
								PAGE0: begin
								  if (char_index < 2**ADDR_WIDTH-1) begin
										if (lcd_data_reg == 8'h40) begin
											char_index <= 0;
											page_index <= PAGE1;
											sub_state <= PAGE1;	
											state <= WAIT;	
										end else begin
											state <= SETUP ;
										end
							     end else begin 
										char_index <= 0; 
									   sub_state <= PAGE_ERROR; 
								  end
								end
								
								// Select wave function 
								PAGE1: begin
								  if (char_index < 2**ADDR_WIDTH-1) begin
										if (lcd_data_reg == 8'h40) begin
											char_index <= 0;
											page_index <= PAGE2;
											sub_state <= PAGE2;
											state <= WAIT;	
										end else begin
											state <= SETUP ;
										end
							     end else begin 
										char_index <= 0; 
									   sub_state <= PAGE_ERROR; 
								  end 
								end
								
								// @080 first page address in text_lut_init.txt
								// each new page is @080 + hex040 (dec64)
								PAGE2: begin
								  if (char_index < 2**ADDR_WIDTH-1) begin
										if (lcd_data_reg == 8'h40) begin
											char_index <= 0;
											sub_state <= PAGE2;
											state <= WAIT_BUTTON_SHORT;									
										end else begin
											state <= SETUP;
										end
							     end else begin 
										char_index <= 0; 
									   sub_state <= PAGE_ERROR; 
								  end
								end
								
								PAGE_ERROR: begin
								  page_index <= PAGE_ERROR;
								  if (char_index < 2**ADDR_WIDTH-1) begin
										if (lcd_data_reg == 8'h40) begin
											char_index <= 0;
											page_index <= PAGE0;
											state <= DONE;							
										end else begin
											state <= SETUP ;
										end
							     end else begin 
										char_index <= 0; 
									   sub_state <= PAGE_ERROR; 
								  end
								end
								
								PAGE_DEFAULT: begin
								  page_index <= PAGE_DEFAULT;
								  if (char_index < 2**ADDR_WIDTH-1) begin
										if (lcd_data_reg == 8'h40) begin
											char_index <= 0;
											page_index <= PAGE0;
											state <= DONE;							
										end else begin
											state <= SETUP ;
										end
							     end else begin 
										char_index <= 0; 
									   sub_state <= PAGE_ERROR; 
								  end
								end
							
							endcase
					
                end
					 
					 WAIT: begin
                    counter <= counter + 1'b1;
                    if (counter >= wait2s) begin 
                        state <= SETUP; 
                        counter <= 0;
                    end
					 
					 end

					 WAIT_BUTTON_SHORT: begin 			     
						  if(button_next == 1'b0) begin 
								btn_counter <= btn_counter + 1'b1;
								test_led <= 1;
							   if (btn_counter >= wait10ms) begin 
									state <= WAIT_BUTTON_RELEASE;
									btn_counter <= 0;
									
									if (page_index >= PAGE_FIRST && page_index < PAGE_LAST) begin
										page_index <= page_index + 1'b1;
									end else if ( page_index == PAGE_LAST ) begin
										page_index <= PAGE_FIRST;
									end
									
								end		
						  end else if (button_prev == 1'b0) begin
								btn_counter <= btn_counter + 1'b1;
								//test_led <= 1;
							   if (btn_counter >= wait10ms) begin 
									state <= WAIT_BUTTON_RELEASE;
									btn_counter <= 0;
									
									if (page_index > PAGE_FIRST && page_index <= PAGE_LAST) begin
										page_index <= page_index - 1'b1;
									end else if ( page_index == PAGE_FIRST ) begin
										page_index <= PAGE_LAST;
									end
									
								end					  
						  end else begin
								btn_counter <= 0;
								test_led <= 0;
								state <= WAIT_BUTTON_SHORT;
						  end					
					 end
		 
					 /*
					 WAIT_BUTTON_LONG: begin 	
						  if(button_next == 1'b0) begin 
								btn_counter <= btn_counter + 1;
								//test_led <= 1;
							   if (btn_counter >= wait2s) begin // Aspetta 2s di pressione del pulsante
									button_state <= WAIT_BUTTON_RELEASE;
									//next_sub_state <= PAGE5;
									next_page_index <= PAGE5;
									btn_counter <= 0;
									//test_led <= 0;
								end		
						  end else begin
								if (btn_counter >= wait100ms) begin
									button_state <= WAIT_BUTTON_RELEASE;
								end
								btn_counter <= 0;
								//test_led <= 0;
						  end					
					 end
					 */			 
					 
					 WAIT_BUTTON_RELEASE: begin 			     
						  if(button_next == 1'b0 || button_prev == 1'b0) begin 
								state <= WAIT_BUTTON_RELEASE;
								btn_counter <= 0;
								test_led <= 1;
						  end else begin
								btn_counter <= btn_counter + 1'b1;
								if (btn_counter >= wait10ms) begin
									state <= SETUP ;
									test_led <= 0;
									btn_counter <= 0;
								end
						  end					
					 end	 
					 
                DONE: begin
						  lcd_en_cntr <= 0;
						  state <= DONE;
                end
					 
					 default: begin
							char_index <= 0;
							page_index <= PAGE_DEFAULT;
							lcd_en_cntr <= 0;
							counter <= 0;
							sub_state <= PAGE_DEFAULT;
							state <= SETUP;
					 end
					 
            endcase
        end
    end
	 
	 // frequency visualization parallel FSM 
    always @(posedge clk) begin
        if (!reset_n) begin
				counter_f <= 0;
				n_index <= 0;
            state_f <= CHECK_AND_WAIT;
				sub_state_f <= 0;
        end else begin
            case (state_f)

					 CHECK_AND_WAIT: begin
							if ( state != WAIT_BUTTON_SHORT && state != WAIT_BUTTON_RELEASE ) begin 
								state_f <= CHECK_AND_WAIT;
							end else if (page_index >= PAGE_FIRST && page_index <= PAGE_LAST) begin 
							   n_index <= 0;
								counter_f <= 0;
								lcd_rs_freq <= 1'b0;
								lcd_data_freq <= 8'hC0;
								state_f <= SETUP;
								sub_state_f <= 0;
							end					 
					 end
                // Setup time wait 
					 SETUP: begin
                    lcd_en_freq <= 0;
                    counter_f <= counter_f + 1'b1;
                    if (counter_f >= wait40us) begin 
                        state_f <= WRITE_DATA;
                        counter_f <= 0;
                    end
                end
					 
                // Enable pulse high 
                WRITE_DATA: begin
                    lcd_en_freq <= 1;
                    counter_f <= counter_f + 1'b1;
                    if (counter_f >= wait1ms) begin 
                         state_f <= WAIT_EXEC; 
                         counter_f <= 0;
                    end
                end
                
                // Wait instruction execution 
                WAIT_EXEC: begin
                    lcd_en_freq <= 0;
                    counter_f <= counter_f + 1'b1;
                    if (counter_f >= wait2ms) begin 
                        state_f <= DIGIT_SELECT; 
                        counter_f <= 0;
                    end
                end             
					 
                DIGIT_SELECT: begin
					     lcd_rs_freq <= 1'b1;
						  lcd_data_freq <= bcd_number + 8'h30;
						  n_index <= n_index + 1'b1;
						  if ( n_index >= BCD_DIGITS ) begin
								state_f <= HZ_DISPLAY;
						  end else begin
								state_f <= SETUP;
						  end		 						
                end
					 
					 HZ_DISPLAY: begin
							case(sub_state_f)
								0: begin
									lcd_data_freq <= 8'h20;
									sub_state_f <= sub_state_f + 1'b1;
									state_f <= SETUP;
								end
								1: begin
									lcd_data_freq <= 8'h48;
									sub_state_f <= sub_state_f + 1'b1;
									state_f <= SETUP;
								end
								2: begin
									lcd_data_freq <= 8'h7A;
									sub_state_f <= sub_state_f + 1'b1;
									state_f <= SETUP;
								end	
								3: begin
									sub_state_f <= 0;
									state_f <= CHECK_AND_WAIT;
								end	
							endcase
					 end
								 
					 default: begin
						  state_f <= CHECK_AND_WAIT;
					 end
					 
            endcase
        end
    end	   
	
endmodule
