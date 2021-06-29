onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib PipeROM_opt

do {wave.do}

view wave
view structure
view signals

do {PipeROM.udo}

run -all

quit -force
