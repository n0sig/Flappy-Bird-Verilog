onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ScoreNumberROM_opt

do {wave.do}

view wave
view structure
view signals

do {ScoreNumberROM.udo}

run -all

quit -force
