/*
module lcd_rom_generator;

    // Total memory depth: 5 sequences * 37 steps/seq = 185 entries (0 to 184)
    reg [8:0] ROM_CONTENTS [0:184];
    integer i = 0; // Index counter for the ROM array

    // Function to calculate the combined 9-bit data from RS and Data
    function [8:0] get_lcd_value;
        input rs;
        input [7:0] data;
        begin
            get_lcd_value = {rs, data};
        end
    endfunction

    initial begin
        // --- SEQUENCE 1 (char_count) ---
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h38); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h0C); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h01); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h06); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "D"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "D"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "F"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "S"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "p"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "r"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "o"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "j"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "e"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "c"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "t"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'hC0); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "V"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "e"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "r"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "i"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "l"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "o"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "g"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        
        // --- SEQUENCE 2 (char_count_p1) ---
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h38); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h0C); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h01); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h06); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "S"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "e"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "l"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "e"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "c"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "t"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "w"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "a"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "v"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "e"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'hC0); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "f"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "u"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "n"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "c"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "t"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "i"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "o"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "n"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        
        // --- SEQUENCE 3 (char_count_p2) ---
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h38); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h0D); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h01); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h06); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "s"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "q"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "u"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "a"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "r"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "e"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "d"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'hC0); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        
        // --- SEQUENCE 4 (char_count_p3) ---
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h38); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h0D); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h01); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h06); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "t"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "r"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "i"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "a"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "n"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "g"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "u"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "l"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "a"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "r"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'hC0); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        
        // --- SEQUENCE 5 (char_count_p4) ---
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h38); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h0D); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h01); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'h06); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "s"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "i"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "n"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, "e"); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b0, 8'hC0); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        ROM_CONTENTS[i++] = get_lcd_value(1'b1, " "); 
        
        // --- Write the memory to the file ---
        $writememh("lcd_combined.mem", ROM_CONTENTS);
        
        $finish; // Stop simulation after writing the file
    end

endmodule
*/