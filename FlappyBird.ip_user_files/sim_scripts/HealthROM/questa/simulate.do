onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib HealthROM_opt

do {wave.do}

view wave
view structure
view signals

do {HealthROM.udo}

run -all

quit -force
