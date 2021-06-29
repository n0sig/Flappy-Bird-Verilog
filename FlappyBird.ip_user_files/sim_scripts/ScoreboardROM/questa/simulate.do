onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ScoreboardROM_opt

do {wave.do}

view wave
view structure
view signals

do {ScoreboardROM.udo}

run -all

quit -force
