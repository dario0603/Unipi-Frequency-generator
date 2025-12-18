// Apri un file in modalità scrittura
fd = mopen("sin_lut_init.txt", "w");

pi = %pi;
lut_dim = 1024;
data_bit = 12;

mfprintf(fd, "%s\n", dec2bin(0,data_bit));
for i = 1:(lut_dim-1)
    theta_value = i/(lut_dim-1)*(pi/2);
    sin_value = floor(sin(theta_value)*(2^(data_bit)-1));
    //mfprintf(fd, "@%s %s\n", dec2hex(i), dec2bin(sin_value,data_bit));
    mfprintf(fd, "%s\n", dec2bin(sin_value,data_bit));
end

// Chiudi il file
mclose(fd);
