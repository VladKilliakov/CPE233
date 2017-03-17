.EQU IN_PORT = 0x10 ; port for input
.CSEG
.ORG 0x01 ; data starts here

main: in r0,in_port
in r24,in_port

cmp r24,r0
breq exit

mov r1,0x02
mov r2,0x03
mov r3,0xf5
mov r4,0x00
mov r5,0x45
mov r6,0x34
mov r7,0x00
mov r8,0xad
mov r9,0x29
mov r10,0x02
mov r11,0x20
mov r12,0x13
mov r13,0x02
mov r14,0x95
mov r15,0x66

mov r22,r0
square1: add r21,r0 ;r21 stores the square of n
sub r22,0x01
brne square1

st r1,0x0c
st r2,0x0d
st r3,0x0e
st r4,0xof
st r5,0x10
st r6,0x11
st r7,0x12
st r8,0x13
st r9,0x14
st r10,0x15
st r11,0x16
st r12,0x17
st r13,0x18
st r14,0x19
st r15,0x1a

retrieve_det_results: mov r31,0x00 ;r31 will store (n*7)
mov r7,0x07
answers_start_mult: add r31,r0
sub r7,0x01
cmp r7,0x00
brne answers_start_mult

cont1: mov r7,r24 ;mult counter
mov r6,0x00 ;r6 stores n^2+n+(r24*3), start index of the numerator det
add r6,r21
add r6,r0
mov r8,r6 ;r8 stores the start index of the denominator det
cmp r24,0x00
breq cont2
storage_mult2: add r6,0x03
sub r7,0x01
cmp r7,0x00
brne storage_mult2
cont2: mov r7,r0
storage_mult3: add r8,0x03 
sub r7,0x01
brne storage_mult3

ld r9,(r6) ;r9 stores the sign of numerator determinant
ld r10,(r8) ;r10 stores the sign of denominator determinant 
mov r11,0x00 ;r11 stores answer sign
add r11,r9
add r11,r10
cmp r11,0x04
breq positive1
cmp r11,0x02
breq negative1
cmp r11,0x00 positive1
brn retrieve

positive1: mov r23,0x00
brn retrieve
negative1: mov r23,0x02
brn retrieve

retrieve: mov r12,0x00 ;r12 will point at the address of the answers storage space
sub r12,0x07
st r11,(r12)
add r12,0x01
add r6,0x01
add r8,0x01
ld r13,(r6) ;MSB of the numerator
ld r15,(r8) ;MSB of the denominator
add r6,0x01
add r8,0x01
ld r14,(r6) ;LSB of the numerator
ld r16,(r8) ;LSB of the denominator

mov r19,0x00 ;checking if the determinants are zero
add r19,r13
add r19,r14
cmp r19,0x00
breq answer_zero
mov r19,0x00
add r19,r15
add r19,r16
cmp r19,0x00
breq answer_zero

;;;Answer calculation subroutine
mov r17,0x00 ;r17 represents the LSB of the integer part of the answer
mov r18,0x00 ;r18 represents the MSB of the integer part of the answer
mov r1,r13
mov r2,r14
mov r3,r15
mov r4,r16

substract_4reg: mov r5,0x00
sub r1,r3 
addc r5,0x00 ;r5 left overflow flag
mov r6,0x00
sub r2,r4
addc r6,0x00 ;r6 right overflow flag
mov r7,0x00
add r7,r5 ;r7 both overflow flag
add r7,r6
cmp r7,0x02
breq both_overflow
cmp r5,0x01
breq left_overflow
cmp r6,0x01
breq right_overflow

no_overflow: add r17,0x01 ;add 1 to integer part
addc r18,0x00
brn substract_4reg

both_overflow: add r1,r3
add r2,r4
mov r13,r1
mov r14,r2
brn answers_ready

right_overflow: add r17,0x01
addc r18,0x00
cmp r1,0x00
breq skip
sub r1,0x01
brn substract_4reg
skip: mov r13,r1
mov r14,r2
brn substract_4reg

answer_zero: mov r13,0x00
mov r14,0x00
mov r15,0x00
mov r16,0x00
mov r17,0x00
mov r18,0x00

left_overflow: add r1,r3
add r2,r4
mov r13,r1
mov r14,r2
brn answers_ready
answers_ready: st r18,(r12)
add r12,0x01
st r17,(r12)
add r12,0x01
st r13,(r12)
add r12,0x01
st r14,(r12)
add r12,0x01
st r15,(r12)
add r12,0x01
st r16,(r12)
;;;;;;;
;brn output
;;;;;;;

exit: out r0,0x10

