onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+BirdROM -L xpm -L dist_mem_gen_v8_0_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BirdROM xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {BirdROM.udo}

run -all

endsim

quit -force
