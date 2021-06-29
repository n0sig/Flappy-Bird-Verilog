onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib NumberROM_opt

do {wave.do}

view wave
view structure
view signals

do {NumberROM.udo}

run -all

quit -force
