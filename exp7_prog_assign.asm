.EQU IN_PORT_1 = 0x00
.EQU IN_PORT_2 = 0x00
.CSEG
.ORG 0x01

mian: IN r10,IN_PORT_1
IN r11,IN_PORT_2

MOV r0,0x08 ;register r10 rotation counter
rotation_1: ROR r10
ADDC r20, 0x00
SUB r0,0x01
BRNE rotation_1

MOV r1,0x08 ;register r11 rotation counter
rotation_2: ROR r11
ADDC r21, 0x00
SUB r1,0x01
BRNE rotation_2

CMP r20,r21
BREQ equal 
BRCC r10_bigger
BRCS r11_bigger
equal: MOV r10,0x00
MOV r11,0x00
BRN end
r10_bigger: MOV r10,r20
BRN end
r11_bigger: MOV r11,r21
end: OUT r10,0x00
OUT r11,0x01
