module lcd_driver_test 
#(

	parameter BCD_DIGITS = 7,
	parameter [63:0] CLK_FREQ = 64'd50000000		//value in hertz (default is 50MHz)
	
)
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
	output reg mirror_y

);

   assign lcd_on   = 1'b1; // LCD always on 
   assign lcd_blon = 1'b1; // Backlight on
   assign lcd_rw   = 1'b0; // Always writing (Busy Flag unused)

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
	localparam PAGE_SINE1 = 5'd7; 
	localparam PAGE_SINE2 = 5'd8; 
	localparam PAGE_SINE3 = 5'd9;
	 
	 
	// delays are based on 50MHz clock frequency 
	localparam [31:0] wait40ns = 2; //(CLK_FREQ/1000000000)*100; 
	localparam [31:0] wait40us = (CLK_FREQ/1000000)*40; 
	localparam [31:0] wait1ms = (CLK_FREQ/1000)*1; 
	localparam [31:0] wait2ms = (CLK_FREQ/1000)*2; 
	localparam [31:0] wait10ms = (CLK_FREQ/1000)*10; 
	localparam [31:0] wait20ms = (CLK_FREQ/1000)*20; 
	localparam [31:0] wait100ms = (CLK_FREQ/1000)*100; 
	localparam [31:0] wait2s = CLK_FREQ*2; 
	
	localparam BTN_NEXT = 1'b0;
	localparam BTN_PREV = 1'b1;
	reg btn_pressed;
	 
   reg [3:0] state;
	reg [3:0] state_f;
   reg [4:0] sub_state;
	reg [2:0] sub_state_f;
   reg [7:0] lcd_data_reg;		// Internal data register
	reg lcd_rs_reg;				// Internal RS register
	reg lcd_en_reg;				// Internal Enable register
	reg [7:0] lcd_data_freq;	// Internal data register
	reg lcd_rs_freq;				// Internal RS register
	reg lcd_en_freq;				// Internal Enable register
	
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
		end else begin 
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
				mirror_x = 1;
				mirror_y = 1;		
			end
			
			PAGE_TRIANGULAR: begin
				triang = 1;
				sin = 0;
				mirror_x = 1;
				mirror_y = 1;		
			end
			
			PAGE_SINE: begin
				triang = 0;
				sin = 1;
				mirror_x = 1;
				mirror_y = 1;		
			end
			
			PAGE_TRIANGULAR1: begin
				triang = 1;
				sin = 0;
				mirror_x = 0;
				mirror_y = 0;		
			end
			
			PAGE_TRIANGULAR2: begin
				triang = 1;
				sin = 0;
				mirror_x = 1;
				mirror_y = 0;		
			end
			
			PAGE_SINE1: begin
				triang = 0;
				sin = 1;
				mirror_x = 0;
				mirror_y = 0;		
			end
			
			PAGE_SINE2: begin
				triang = 0;
				sin = 1;
				mirror_x = 1;
				mirror_y = 0;		
			end
			
			PAGE_SINE3: begin
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
	
   // State machine to handle timing
	// The HD44780 controller is SLOW.
	// Clear Display requires ~1.64 ms. Other commands ~40 µs.
	// We use a conservative delay of ~2 ms for each operation for simplicity.

    
	always @(posedge clk) begin
		if (!reset_n) begin
			char_index <= 0;
			page_index <= PAGE0;
			counter <= 0;
			sub_state <= PAGE0;
			state <= POWER_ON;
		end else begin
			case (state)
			
				// Wait for more than 15ms at power on 
				POWER_ON: begin
					lcd_en_cntr <= 0;
					counter <= counter + 1'b1;
					if (counter >= wait40ns) begin
						state <= SETUP ;
						counter <= 0;
					end				 
				end
				
				// Setup time wait 
				SETUP: begin
					lcd_en_cntr <= 0;
					counter <= counter + 1'b1;
					if (counter >= wait40ns) begin 
						state <= WRITE_DATA;
						counter <= 0;
					end
				end

				// Enable pulse high 
				WRITE_DATA: begin
					lcd_en_cntr <= 1;
					counter <= counter + 1'b1;
					if (counter >= wait40ns) begin 
						state <= WAIT_EXEC; 
						counter <= 0;
					end
				end
	 
				// Wait instruction execution 
				WAIT_EXEC: begin
					lcd_en_cntr <= 0;
					counter <= counter + 1'b1;
					if (counter >= wait40ns) begin 
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
					if (counter >= wait40ns) begin 
						state <= SETUP; 
						counter <= 0;
					end
				 
				end

				WAIT_BUTTON_SHORT: begin 			     
					if(button_next == 1'b0 || button_prev == 1'b0) begin 
						btn_counter <= btn_counter + 1'b1;
						if (btn_counter >= wait40ns) begin
							state <= WAIT_BUTTON_RELEASE ;
							btn_counter <= 0;
								if (button_next == 1'b0) begin
									btn_pressed <= BTN_NEXT;
								end else begin
									btn_pressed <= BTN_PREV;
								end
						end			
					end else begin
						btn_counter <= 0;
						state <= WAIT_BUTTON_SHORT;
					end					
				end		 
					 
				WAIT_BUTTON_RELEASE: begin 			     
					if(button_next == 1'b1 && btn_pressed == BTN_NEXT) begin 
						btn_counter <= btn_counter + 1'b1;
						if (btn_counter >= wait40ns) begin 
							state <= SETUP;
							btn_counter <= 0;								
							if (page_index >= PAGE_FIRST && page_index < PAGE_LAST) begin
								page_index <= page_index + 1'b1;
							end else if ( page_index == PAGE_LAST ) begin
								page_index <= PAGE_FIRST;
							end							
						end		
					end else if (button_prev == 1'b1 && btn_pressed == BTN_PREV) begin
						btn_counter <= btn_counter + 1'b1;
						if (btn_counter >= wait40ns) begin 
							state <= SETUP;
							btn_counter <= 0;								
							if (page_index > PAGE_FIRST && page_index <= PAGE_LAST) begin
								page_index <= page_index - 1'b1;
							end else if ( page_index == PAGE_FIRST ) begin
								page_index <= PAGE_LAST;
							end							
						end
					end else begin
						state <= WAIT_BUTTON_RELEASE;
						btn_counter <= 0;
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
					if (counter_f >= wait40ns) begin 
						state_f <= WRITE_DATA;
						counter_f <= 0;
					end
				end
		 
				// Enable pulse high 
				WRITE_DATA: begin
					lcd_en_freq <= 1;
					counter_f <= counter_f + 1'b1;
					if (counter_f >= wait40ns) begin 
						state_f <= WAIT_EXEC; 
						counter_f <= 0;
					end
				end
                
				// Wait instruction execution 
				WAIT_EXEC: begin
					lcd_en_freq <= 0;
					counter_f <= counter_f + 1'b1;
					if (counter_f >= wait40ns) begin 
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
	
	reg [159:0] state_name; // 8 bit ASCII, 20 character
	always @(*) begin 
		case(state)
			SETUP: 					state_name = "SETUP"; 
			PAGE_SELECT:         state_name = "PAGE_SELECT";
			WAIT_EXEC:           state_name = "WAIT_EXEC";
			POWER_ON:            state_name = "POWER_ON";
			CHECK_AND_WAIT:      state_name = "CHECK_AND_WAIT";
			WRITE_DATA:          state_name = "WRITE_DATA";
			DONE:                state_name = "DONE";
			RESET:               state_name = "RESET";
			WAIT_BUTTON_SHORT:   state_name = "WAIT_BUTTON_SHORT";
			WAIT_BUTTON_LONG:    state_name = "WAIT_BUTTON_LONG";
			WAIT_BUTTON_RELEASE: state_name = "WAIT_BUTTON_RELEASE";
			WAIT:                state_name = "WAIT";
			HZ_DISPLAY:          state_name = "HZ_DISPLAY";
			WAIT_COMMAND:        state_name = "WAIT_COMMAND";
			DIGIT_SELECT:        state_name = "DIGIT_SELECT";
			BUTTON_RELEASED:     state_name = "BUTTON_RELEASED";
			default:             state_name = "UNKNOWN";
		 endcase
	end
	
	reg [159:0] state_f_name; // 8 bit ASCII, 20 character
	always @(*) begin 
		case(state_f)
			SETUP: 					state_f_name = "SETUP"; 
			PAGE_SELECT:         state_f_name = "PAGE_SELECT";
			WAIT_EXEC:           state_f_name = "WAIT_EXEC";
			POWER_ON:            state_f_name = "POWER_ON";
			CHECK_AND_WAIT:      state_f_name = "CHECK_AND_WAIT";
			WRITE_DATA:          state_f_name = "WRITE_DATA";
			DONE:                state_f_name = "DONE";
			RESET:               state_f_name = "RESET";
			WAIT_BUTTON_SHORT:   state_f_name = "WAIT_BUTTON_SHORT";
			WAIT_BUTTON_LONG:    state_f_name = "WAIT_BUTTON_LONG";
			WAIT_BUTTON_RELEASE: state_f_name = "WAIT_BUTTON_RELEASE";
			WAIT:                state_f_name = "WAIT";
			HZ_DISPLAY:          state_f_name = "HZ_DISPLAY";
			WAIT_COMMAND:        state_f_name = "WAIT_COMMAND";
			DIGIT_SELECT:        state_f_name = "DIGIT_SELECT";
			BUTTON_RELEASED:     state_f_name = "BUTTON_RELEASED";
			default:             state_f_name = "UNKNOWN";
		 endcase
	end
	
	reg [159:0] sub_state_name; // 8 bit ASCII, 20 character
	always @(*) begin 
		case(sub_state)
			PAGE0: 					sub_state_name = "PAGE0"; 
			PAGE1:         		sub_state_name = "PAGE1";
			PAGE2:         		sub_state_name = "PAGE2";
			default:             sub_state_name = "UNKNOWN";
		 endcase
	end
	
	reg [159:0] page_index_name; // 8 bit ASCII, 20 character
	always @(*) begin 
		case(page_index)
			PAGE0: 					page_index_name = "PAGE0"; 
			PAGE1:         		page_index_name = "PAGE1";
			PAGE_SQUARED:        page_index_name = "PAGE_SQUARED";
			PAGE_TRIANGULAR:     page_index_name = "PAGE_TRIANGULAR";
			PAGE_SINE:     		page_index_name = "PAGE_SINE";
			PAGE_TRIANGULAR1:    page_index_name = "PAGE_TRIANGULAR2";
			PAGE_TRIANGULAR2:    page_index_name = "PAGE_TRIANGULAR2";
			PAGE_SINE1:          page_index_name = "PAGE_SINE1";
			PAGE_SINE2:   			page_index_name = "PAGE_SINE2";
			PAGE_SINE3:    		page_index_name = "PAGE_SINE3";
			default:             page_index_name = "UNKNOWN";
		 endcase
	end
			
			
	
endmodule
