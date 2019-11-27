#!/bin/sh
cd $(dirname $(realpath $0))    # change into script dir

. ./cmv.func

# defaults
cmv_reg  0       0
cmv_reg  1    3072

for n in `seq 2 65`; do cmv_reg $n 0; done

cmv_reg  66      0
cmv_reg  67      1


cmv_reg  68      9	# Color[3] = 1, Bin_en[2] = 0, Sub_en[1] = 0, Color[0] = 1


cmv_reg  69      2	# Flip in Y
# cmv_reg  69      0	# No Flipping

cmv_reg  70      0

cmv_reg  71   1536
cmv_reg  72      0
cmv_reg  73   1536
cmv_reg  74      0

cmv_reg  75      0
cmv_reg  76      0
cmv_reg  77      0
cmv_reg  78      0

cmv_reg  79      1


cmv_reg  80	     1	# single frame
cmv_reg  81      1	# 16 outputs on each side


#cmv_reg  87   1824	# Dark Level Offset Bottom
cmv_reg  87   1910	# Dark Level Offset Bottom
#cmv_reg  88   1824	# Dark Level Offset Top
cmv_reg  88   1910	# Dark Level Offset Top


#cmv_reg  89     85
cmv_reg  89 35477 #Black_col_en[15], Training_pattern[11:0]


cmv_reg  90 0x5555	# disable unused LVDS
cmv_reg  91 0x5555	# disable unused LVDS
cmv_reg  92 0x5555	# disable unused LVDS
cmv_reg  93 0x5555	# disable unused LVDS
cmv_reg  94    0x7	# enable in/out/ctrl


cmv_reg  95 0xFFFF
cmv_reg  96 0xFFFF
cmv_reg  97      0
cmv_reg  98  39433 	# Datasheet default: 34952, 12bit normal mode: 39433
cmv_reg  99  34956 # was 34952, Datasheet V2.11 Register Change Suggestions
cmv_reg 100      0
cmv_reg 101      0
cmv_reg 102    8302	# Datasheet V2.7 from 18/12/2014 suggests to change Register 102 to 8302 to decrease column PFN 
cmv_reg 103   4032
cmv_reg 104     64
cmv_reg 105   8256
cmv_reg 106   8256
cmv_reg 107   11102	# Datsheet default: 12384, 5.17.4 12-BIT MODE suggests 11102
cmv_reg 108   12381	
cmv_reg 109  14448  # Datasheet 7.7.3
cmv_reg 110 12368 # Datasheet Fixed Value: 12368
cmv_reg 111  34952
cmv_reg 112    277	# Datasheet V2.6 from 22/08/2014 suggests Reg 112 = 277 


cmv_reg 115      0	# Unity Gain PGA_div[3], PGA_gain[2:0]
# cmv_reg 115      1	# Analog Gain 2x PGA_div[3], PGA_gain[2:0]
# cmv_reg 115      3	# Analog Gain 3x PGA_div[3], PGA_gain[2:0]
# cmv_reg 115        7	# Analog Gain 4x PGA_div[3], PGA_gain[2:0]


cmv_reg 116    0x3FF	# Adc Range Slope
cmv_reg 117        1	# Digital Gain


# cmv_reg 118      2	# 8bit
# cmv_reg 118      1	# 10bit
cmv_reg 118      0	# 12bit


cmv_reg 119      0
cmv_reg 120      9
cmv_reg 121      1
cmv_reg 122     32
cmv_reg 123      0
cmv_reg 124     15
cmv_reg 125      2
cmv_reg 126    770


# normal 12bit mode 16 outputs on each side, see Datasheet 7.7.3
cmv_reg  82   1822
cmv_reg  83   5897
cmv_reg  84    257
cmv_reg  85    257
cmv_reg  86    257
cmv_reg  98  39433

cmv_reg 113    542
cmv_reg 114    200

# read temperature
cmv_reg 127
