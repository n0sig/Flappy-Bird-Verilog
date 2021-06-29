onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib SpeedUpROM_opt

do {wave.do}

view wave
view structure
view signals

do {SpeedUpROM.udo}

run -all

quit -force
