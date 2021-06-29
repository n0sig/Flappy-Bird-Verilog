onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib LogoROM_opt

do {wave.do}

view wave
view structure
view signals

do {LogoROM.udo}

run -all

quit -force
