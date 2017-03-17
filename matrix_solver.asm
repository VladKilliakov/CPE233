.EQU IN_PORT = 0x10 ; port for input
.CSEG
.ORG 0x01 ; data starts here

matrix_solver: ;IN r0,IN_PORT
mov r22,r0 ;register that temporarily stores n (number of variables)

;mov r2,0x13
;mov r3,0x15
;mov r4,0x07
;mov r5,0x05
;mov r6,0x12
;mov r7,0x01
;mov r8,0x03
;mov r9,0x06
;mov r10,0x11
;st r2,0xf7
;st r3,0xf8
;st r4,0xf9
;st r5,0xfa
;st r6,0xfb
;st r7,0xfc
;st r8,0xfd
;st r9,0xfe
;st r10,0xff

square: add r21,r0 ;r21 stores the square of n
sub r22,0x01
brne square

mov r27,0x00
sub r27,r21 ;r27 stores the index pointer of diagonal indices
sub r27,r21 
cmp r0,0x02
breq n_2
sub r27,r21
sub r27,r21
mov r19,r27 ;r19 stores the start addess of diagonal indices
mov r10,0x00 ;r10 stores the start address of original matrix
sub r10,r21

;start of top index algorithm
mov r23,0x00 ;r23 stores the outer index counter (i)
outer_loop1: mov r20,r23 ;r20 stores the index value (d)
mov r25,0x00 ;r25 stores the inner index counter (k)
cmp r27,r19
brne increment
inner_loop1: st r20,(r27) ;r27 stores the pointer to the indices storage

mov r17,r20 ;r18 stores the mod result
division1: sub r17,r0 
BRCC division1
add r17,r0

mov r18,r0
sub r18,0x01
cmp r18,r17
breq equal
add r20,r0
equal: add r20,0x01

add r27,0x01 ;increase the index pointer
add r25,0x01
cmp r25,r0
brcs inner_loop1
add r23,0x01
cmp r23,r0
brcs outer_loop1

;;;;;;;;;;;;;
mov r27,r19
;;;;;;;;;;;;;

;start of bottom index algorithm
mov r23,r21 ;r23 stores the outer index counter (i)


sub r23,r0
outer_loop2: 

;;;;;;;;;;;;;
add r27,r0
;;;;;;;;;;;;;

mov r20,r23 ;r20 stores the index value (d)
mov r25,0x00 ;r25 stores the inner index counter (k)
inner_loop2: st r20,(r27) ;r27 stores the pointer to the indices storage

mov r17,r20 ;r18 stores the mod result
division2: sub r17,r0 
BRCC division2
add r17,r0

mov r18,r0
sub r18,0x01
cmp r18,r17
brne not_equal
sub r20,r0
not_equal: add r20,0x01
sub r20,r0

add r27,0x01 ;increase the index pointer
add r25,0x01
cmp r25,r0
brcs inner_loop2
add r23,0x01
cmp r23,r21
brcs outer_loop2
brn converter

increment: add r27,r0
brn inner_loop1

n_2:mov r31,0x00
sub r31,r21
wsp r31
pop r1
pop r2
pop r3
pop r4
mov r30,r31
st r1,(r30)
mov r30,r31
add r30,0x03
st r2,(r30)
mov r30,r31
add r30,0x02
st r3,(r30)
mov r30,r31
add r30,0x01
st r4,(r30)
brn done

converter: mov r31,r21 ;r31 is the secondary matrix storage loop counter
mov r30,r19
mov r27,0x00 ;r27 temporarily stores the element value of original matrix
mov r29,r10 ;r29 is the pointer to the original matrix elements
sub r30,r21 ;r30 is the beginning address of the matrix copy
mov r28,r30 ;r28 is the pointer, when building the copy matrix
copy_loop: sub r31,0x01
ld r27,(r29)
st r27,(r28)
add r29,0x01
add r28,0x01
cmp r29,0x00
brne copy_loop

done:out r12,0x0c
mov r25,r21 ;r25 is the loop counter for the conv_loop, equals n*2
add r25,r21
mov r23,r10
sub r23,r21 ;r23 stores the address where to write the new matrix to
mov r26,r19 ;r26 is the pointer to the indices matrix
mov r20,0x00 ;r20 temporarily stores the adderess to the original matrix
mov r29,r23 ;r29 is the pointer to the new matrix 

conv_loop: 
mov r27,0x00 ;r27 temporarily stores the element value of original matrix
mov r28,r30 ;r28 is the pointer to the matrix copy	
ld r20,(r26) ;get the needed location
add r28,r20
ld r27,(r28)
st r27,(r29)
add r26,0x01
add r29,0x01
sub r25,0x01
cmp r25,0x00
brne conv_loop




