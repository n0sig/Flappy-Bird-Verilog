onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib BackgroundROM_opt

do {wave.do}

view wave
view structure
view signals

do {BackgroundROM.udo}

run -all

quit -force
