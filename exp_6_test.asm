.EQU IN_PORT = 0x10 ; port for input
.CSEG
.ORG 0x01 ; data starts here

main: IN r25,IN_PORT

MOV r10,0x00 ;register that stores 100s
get_100s: ADD r10, 0x01 ;counter for 100s
SUB r25,0x64
BRCC get_100s
SUB r10,0x01
ADD r25,0x64

MOV r11,0x00 ;register that stores 10s
get_10s: ADD r11, 0x01 ;counter for 10s
SUB r25,0x0A
BRCC get_10s
SUB r11,0x01
ADD r25,0x0A

MOV r12,r25

CLC
LSL r11 ;moving the 10s value to the MS nibble
LSL r11
LSL r11
LSL r11
ADD r20,r11 ;adding the values to the registers
ADD r20,r12
ADD r21,r10

 