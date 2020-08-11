vlib work

#vlog -work work ../src/Axi4.sv
vlog -work work ../src/Axi4Types.sv
vlog -work work ../src/Axi4Agents.sv
vlog -work work ../src/Axi4Drivers.sv
vlog -work work ../src/Axi4BFMs.sv
vlog -work work ../src/Axi4Lite.sv
vlog -work work ../src/Axi4Stream.sv
vlog -work work ../src/interfaces.sv
vlog -work work ./tb.sv

#vlog -work work $env(XILINX)/verilog/src/glbl.v

#vsim -novopt -L work -L secureip -L unisims_ver -L unimacro_ver -L xilinxcorelib_ver \
vsim -novopt -L work -c tb

view wave
do wave.do
run 1 ms
