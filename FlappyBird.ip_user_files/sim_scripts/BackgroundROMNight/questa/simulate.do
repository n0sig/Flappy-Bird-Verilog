onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib BackgroundROMNight_opt

do {wave.do}

view wave
view structure
view signals

do {BackgroundROMNight.udo}

run -all

quit -force
