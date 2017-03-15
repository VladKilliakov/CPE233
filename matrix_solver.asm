.EQU IN_PORT = 0x10 ; port for input
.CSEG
.ORG 0x01 ; data starts here

main: IN r0,IN_PORT
mov r22,r0 ;register that temporarily stores n (number of variables)

mov r2,0x13
mov r3,0x15
mov r4,0x07
mov r5,0x05
mov r6,0x12
mov r7,0x01
mov r8,0x03
mov r9,0x06
mov r10,0x11
st r2,0xf7
st r3,0xf8
st r4,0xf9
st r5,0xfa
st r6,0xfb
st r7,0xfc
st r8,0xfd
st r9,0xfe
st r10,0xff

square: add r21,r0 ;r21 stores the square of n
sub r22,0x01
brne square

mov r27,0x00
sub r27,r21 ;r27 stores the index pointer of diagonal indices
sub r27,r21 
sub r27,r21
mov r19,r27 ;r19 stores the start addess of diagonal indices

;start of top index algorithm
mov r23,0x00 ;r23 stores the outer index counter (i)
outer_loop1: mov r24,r23 ;r24 stores the index value (d)
mov r25,0x00 ;r25 stores the inner index counter (k)
inner_loop1: st r24,(r27) ;r27 stores the pointer to the indices storage

mov r17,r24 ;r18 stores the mod result
division1: sub r17,r0 
BRCC division1
add r17,r0

mov r18,r0
sub r18,0x01
cmp r18,r17
breq equal
add r24,r0
equal: add r24,0x01

add r27,0x01 ;increase the index pointer
add r25,0x01
cmp r25,r0
brcs inner_loop1
add r23,0x01
cmp r23,r0
brcs outer_loop1


;start of bottom index algorithm
mov r23,r21 ;r23 stores the outer index counter (i)
sub r23,r0
outer_loop2: mov r24,r23 ;r24 stores the index value (d)
mov r25,0x00 ;r25 stores the inner index counter (k)
inner_loop2: st r24,(r27) ;r27 stores the pointer to the indices storage

mov r17,r24 ;r18 stores the mod result
division2: sub r17,r0 
BRCC division2
add r17,r0

mov r18,r0
sub r18,0x01
cmp r18,r17
brne not_equal
sub r24,r0
not_equal: add r24,0x01
sub r24,r0

add r27,0x01 ;increase the index pointer
add r25,0x01
cmp r25,r0
brcs inner_loop2
add r23,0x01
cmp r23,r21
brcs outer_loop2


;derminant calculation subroutine
wsp r19

