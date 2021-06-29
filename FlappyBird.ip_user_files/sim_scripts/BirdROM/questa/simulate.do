onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib BirdROM_opt

do {wave.do}

view wave
view structure
view signals

do {BirdROM.udo}

run -all

quit -force
