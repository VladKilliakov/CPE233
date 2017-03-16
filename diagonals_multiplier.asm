.EQU IN_PORT = 0x10 ; port for input
.CSEG
.ORG 0x01 ; data starts here

main: in r0,in_port

mov r2,0x0a
mov r3,0x0f
mov r4,0x07
mov r5,0x05
mov r6,0x06
mov r7,0x0c
mov r8,0x0e
mov r9,0x07
mov r10,0x04
mov r11,0x0d
mov r12,0x0f
mov r13,0x07
mov r14,0x05
mov r15,0x09
mov r16,0x01
mov r17,0x03
mov r18,0x06
mov r19,0x11

st r2,0xee
st r3,0xef
st r4,0xf0
st r5,0xf1
st r6,0xf2
st r7,0xf3
st r8,0xf4
st r9,0xf5
st r10,0xf6
st r11,0xf7
st r12,0xf8
st r13,0xf9
st r14,0xfa
st r15,0xfb
st r16,0xfc
st r17,0xfd
st r18,0xfe
st r19,0xff

mov r2,0x00
mov r3,0x00
mov r4,0x00
mov r5,0x00
mov r6,0x00
mov r7,0x00
mov r8,0x00
mov r9,0x00
mov r10,0x00
mov r11,0x00
mov r12,0x00
mov r13,0x00
mov r14,0x00
mov r15,0x00
mov r16,0x00
mov r17,0x00
mov r18,0x00
mov r19,0x00
mov r25,0x00

mov r21,0x12
sub r19,r21 ;r19 stores the start address for diagonal indices

mov r31,0x00 ;r31 stores the LSByte for the determinant result
mov r30,0x00 ;r30 stroes the MSByte for the determinant result
mov r13,0x00 ;r13 stores the counter for multiplier
mov r17,0xff ;r17 is an add/substract flag (NO), 1 is substraction
mov r18,0x00 ;r18 will store the sum of CR and NO flags
;if r18 == 0, then go to adder subroutine
;if r18 == 2, then go to inverse substract subroutine
;if r18 == ff, then go to substract subroutine
;if r18 == 1, then go to inverse adder subroutine
mov r22,0x00 ;counter to detect first substraction
mov r23,0x00 ;r23 stores the sign of the latest diagonal result, 0 is positive,
;2 is negative 

mov r20,r0 ;r20 stores n - 1 
sub r20,0x01
mov r14, r20

diagonals_multiplier: ld r10,(r19) ;r10 temporarily stores 1st operand
mov r12,r19 ;r12 stores the poiner for the 2nd operand
add r12,0x01
ld r11,(r12) ;r11 temporarily stores 2nd operand
add r19,0x01
cmp r14,r20 ;check if it's the first multiplication
breq first_mult
mov r3,r11
brn other_mults
first_mult: mov r16,r11 ;r16 temporarily stores a copy of 2nd operand
mov r15,0x00
mov r1,0x00
diag_inner_mult: add r15,r10
sub r16,0x01
brne diag_inner_mult
mov r2,r15 ;here r2 stores the result of first multiplication
return: sub r14,0x01

cmp r14,0x00 ;check if the diagonal multiplication is done
breq new_diagonal
brn diagonals_multiplier

new_diagonal: mov r14, r20 ;reset diagonal counter with n-1 value
add r19,0x01
add r22,0x01
mov r26,r30
mov r27,r31
mov r30,r1
mov r31,r2
cmp r22,0x02
brne diagonals_multiplier

cmp r25,0x01
breq second
mov r30,r26
mov r31,r27
brn cont
second: mov r30,r28
mov r31,r29
cont: mov r18,0x00
add r19,0x01
add r18,r17
add r18,r23
cmp r18,0x00
breq adder
cmp r18,0xff 
breq substract ;substract diag(n+1) from diag(n)
cmp r18,0x02
breq substract_inverse
cmp r18,0x01
breq adder_inverse
mov r14, r0
sub r14,0x01 ;r9 stores n - 1, inner multiplier counter
brn diagonals_multiplier

cross_finished:exor r17,0xff
sub r19,0x01
brn diagonals_multiplier

other_mults: 
;r1 represents m (MSByte)
;r2 represents n (LSByte)
;r3 represents x (2nd operand)
mov r5,r3
mov r6,0x00
mov r7,0x00
cmp r3,0x00
breq done
cmp r1,0x00
breq single_mult
multiply1: add r6,r1
sub r5,0x01
brne multiply1
cmp r2,0x00
mov r8,r6 ;temporary storage for m*x

mov r4,0xff ;base part
mov r5,r8 ;multiplier counter
mov r6,0x00
multiply2: add r6,r4 ;here r6 stores 255*m*x
addc r7,0x00 ;r7 is MSByte register
sub r5,0x01
brne multiply2

mov r5,r3 ;multiplier counter
mov r9,0x00
multiply3: add r9,r2 ;r9 stores n*x
addc r7,0x00
sub r5,0x01
brne multiply3

add r6,r9
addc r7,0x00
add r6,r8
addc r7,0x00
done: mov r1,r7 ;intermediate mult results
mov r2,r6
brn return

single_mult: mov r5,r3
mov r9,0x00
multiply4: add r9,r2
addc r7,0x00
sub r5,0x01
brne multiply4
mov r6,r9
brn done



substract_inverse: 
mov r3,r30
mov r4,r31
brn substract_4reg

substract:
mov r3,r1
mov r4,r2
mov r1,r30
mov r2,r31
brn substract_4reg

substract_4reg: 
;r1 is MSByte of 1st operand
;r2 is LSByte of 1st operand
;r3 is MSByte of 2st operand
;r4 is LSByte of 2st operand
mov r25,0x01
mov r22,0x01
mov r5,0x00
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
mov r23,0x00
brn next
both_overflow: exor r1,0xff
add r1,0x01
exor r2,0xff
add r2,0x01
mov r23,0x02
brn next
right_overflow: sub r1,0x01
brn next
left_overflow: exor r1,0xff
add r1,0x00
exor r2,0xff
add r2,0x01
mov r23,0x02 ;r23 is the sign flag, 2 is negative
next: mov r28,r1
mov r29,r2
out r28,0x10
out r29,0x11
brn cross_finished

adder_inverse: mov r23,0x02
brn adder_4reg 
adder: mov r23,0x00
adder_4reg: mov r22,0x01
add r1,r28
add r2,r29
addc r1,0x00
mov r28,r1
mov r29,r2
out r28,0x10
out r29,0x11
brn cross_finished

