onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+NumberROM -L xpm -L dist_mem_gen_v8_0_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.NumberROM xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {NumberROM.udo}

run -all

endsim

quit -force
