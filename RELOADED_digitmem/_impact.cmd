setMode -pff
setMode -pff
addConfigDevice  -name "Untitled" -path "C:\Students\Lavrenko\digitmemory\"
setSubmode -pffserial
addDesign -version 0 -name "00"
setMode -pff
addDeviceChain -index 0
setMode -pff
addDeviceChain -index 0
setAttribute -configdevice -attr compressed -value "FALSE"
setAttribute -configdevice -attr compressed -value "FALSE"
setAttribute -configdevice -attr autoSize -value "FALSE"
setAttribute -configdevice -attr fileFormat -value "mcs"
setAttribute -configdevice -attr fillValue -value "FF"
setAttribute -configdevice -attr swapBit -value "FALSE"
setAttribute -configdevice -attr dir -value "UP"
setAttribute -configdevice -attr multiboot -value "FALSE"
setAttribute -configdevice -attr multiboot -value "FALSE"
setAttribute -configdevice -attr spiSelected -value "FALSE"
setAttribute -configdevice -attr spiSelected -value "FALSE"
addPromDevice -p 1 -size 0 -name xc18v256
setMode -pff
setMode -pff
deletePromDevice -position 1
setCurrentDesign -version 0
deleteDesign -version 0
setCurrentDesign -version -1
setMode -pff
addConfigDevice -size 512 -name "Untitled" -path "C:\Students\Lavrenko\digitmemory\/"
setSubmode -pffserial
setAttribute -configdevice -attr dir -value "UP"
setAttribute -configdevice -attr flashDataWidth -value "8"
addPromDevice -p 1 -size 0 -name xc18v256
setMode -pff
setSubmode -pffserial
setAttribute -configdevice -attr dir -value "UP"
addDesign -version 0 -name "0000"
setMode -pff
addDeviceChain -index 0
setAttribute -design -attr name -value "0"
addDevice -p 1 -file "C:/Students/Lavrenko/digitmemory/digitmemory.bit"
setMode -pff
setSubmode -pffserial
setAttribute -configdevice -attr fillValue -value "FF"
setAttribute -configdevice -attr fileFormat -value "mcs"
setAttribute -configdevice -attr dir -value "UP"
setAttribute -configdevice -attr path -value "C:\Students\Lavrenko\digitmemory\/"
setAttribute -configdevice -attr name -value "Untitled"
generate
setCurrentDesign -version 0
setMode -bs
setMode -bs
setAttribute -position 1 -attr readnextdevice -value "so20"
setCable -port auto
Program -p 1 -e -v -loadfpga -useD4 
setMode -pff
setMode -pff
setMode -bs
setMode -bs
setMode -pff
setMode -pff
setMode -bs
setMode -bs
setMode -pff
setMode -pff
setMode -bs
setMode -bs
setMode -pff
setMode -pff
setMode -bs
setMode -bs
setMode -pff
setMode -pff
setMode -pff
setSubmode -pffserial
setAttribute -configdevice -attr fillValue -value "FF"
setAttribute -configdevice -attr fileFormat -value "mcs"
setAttribute -configdevice -attr dir -value "UP"
setAttribute -configdevice -attr path -value "C:\Students\Lavrenko\digitmemory\/"
setAttribute -configdevice -attr name -value "Untitled"
generate
setCurrentDesign -version 0
setMode -bs
setMode -bs
Program -p 1 -e -v -loadfpga -useD4 
setMode -pff
setMode -pff
saveProjectFile -file "C:\Students\Lavrenko\digitmemory/digitmemory.ipf"
saveProjectFile -file "C:\Students\Lavrenko\digitmemory/digitmemory.ipf"
setMode -bs
setMode -bs
setMode -bs
deleteDevice -position 1
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
deletePromDevice -position 1
setCurrentDesign -version 0
deleteDevice -position 1
deleteDesign -version 0
setCurrentDesign -version -1
setMode -pff
setMode -pff
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -pff
setMode -pff
setMode -bs
