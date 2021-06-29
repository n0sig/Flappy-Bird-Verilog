onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib SettingROM_opt

do {wave.do}

view wave
view structure
view signals

do {SettingROM.udo}

run -all

quit -force
