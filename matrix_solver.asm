.EQU row = 0x00
.EQU col = 0x01
.EQU color = 0x02
.EQU switches = 0x10
.EQU button = 0x40

.CSEG
.ORG 0x10

;r0, N of matrix
;r1, Current number of inputs on a single equation
;r2, Current equation (from 0 to N-1)
;r3, N+1
;r8, data counter
;r9, col counter
;r10, row
;r11, col
;r12, register
;r14, carry
;r30, button input
 
;;;;;;;;;;;;;;;;;;;;;;;;;
mov r1,0x02
mov r2,0x03
mov r3,0x04
mov r4,0x08
mov r5,0x03
mov r6,0x01
mov r7,0x06
mov r8,0x07
mov r9,0x01
mov r10,0x04
mov r11,0x05
mov r12,0x03
mov r13,0x02

st r1,0x00
st r2,0x01
st r3,0x02
st r4,0x03
st r5,0x04
st r6,0x05
st r7,0x06
st r8,0x07
st r9,0x08
st r10,0x09
st r11,0x0a
st r12,0x0b
;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;
;GET THE INPUTS
;;;;;;;;;;;;;;;;;;;;;;;;;

;r0, N of matrix
;r1, Current number of inputs on a single equation
;r2, Current equation (from 0 to N-1)
;r3, N+1
;r8, data counter
;r9, col counter
;r10, row
;r11, col
;r12, register
;r14, carry
;r30, button input

init:     MOV r0, 0xF6
		  ST r0, 0x28
          MOV r0, 0xDE
	      ST r0, 0x29
          MOV r0, 0x49
		  ST r0, 0x2A
          MOV r0, 0x24
		  ST r0, 0x2B
          MOV r0, 0xE5
		  ST r0, 0x2C
          MOV r0, 0xCE
		  ST r0, 0x2D		  
          MOV r0, 0xE5
		  ST r0, 0x2E
          MOV r0, 0x9E
		  ST r0, 0x2F
          MOV r0, 0xB7
		  ST r0, 0x30
          MOV r0, 0x92
		  ST r0, 0x31
          MOV r0, 0xF3
		  ST r0, 0x32
          MOV r0, 0x9E
		  ST r0, 0x33
          MOV r0, 0xF3
		  ST r0, 0x34
          MOV r0, 0xDE
		  ST r0, 0x35
          MOV r0, 0xE5
		  ST r0, 0x36
          MOV r0, 0x24
		  ST r0, 0x37
          MOV r0, 0xF7
		  ST r0, 0x38
          MOV r0, 0xDE
		  ST r0, 0x39
          MOV r0, 0xF7
		  ST r0, 0x3A
          MOV r0, 0x92
		  ST r0, 0x3B    
		  MOV r0, 0x03
          ST r0, 0x3C
          MOV r0, 0x80
          ST r0, 0x3D 

          MOV r0, 0x00 
          MOV r1, 0x00
          MOV r2, 0x00
          MOV r15, 0x1C ; intialize the orgin of the first col
          MOV r16, 0x17 ; intialize the orgin of the first row
		  MOV r5,0x00
          SEI
          
set_n:    
          CMP r30, 0x01
          BRNE set_n  
          IN r0, switches
          MOV r3, r0
		  ADD r3, 0x01
          MOV r13, r0
          SUB r13, 0x001
          MOV r7, r0
          MOV r20, 0x01
          BRN get_10s
clear_n:  MOV r15, 0x03
          SUB r20, 0x01
          MOV r5, 0x00
          MOV r15, 0x03
          MOV r16, 0x03
          MOV r30, 0x00
          BRN delay



main:     
          CMP r2, r0
          BREQ to_cramer
          CMP r1, r3      ;check the number of input so far
		  BREQ next_equation
          CMP r30, 0x01
          BRNE main
		  IN r7,switches
          MOV r18, 0x00
          MOV r5, 0x00
          BRN get_index
store_in: ST r7, (r18)
          MOV r30, 0x00
         				
get_10s:  ADD r5, 0x01  ;counter for 10’s
          SUB r7,0x0A
          BRCC get_10s
		  SUB r5,0x01
          ADD r7,0x0A
          MOV r6,r7

lut: 	  MOV r4, 0x28
          MOV r7, 0x00
	      CMP r5, 0x00
		  BREQ done_10
          MOV r5, 0x2A
comp:     CMP r6, r7
          BREQ done_1
          ADD r7, 0x01
          ADD r4, 0x02
          BRN comp 

done_10:  ;MOV r5, r4
          BRN comp

done_1:    MOV r6, r4


draw_num :
		  MOV r4, 0x00
          MOV r11, r15 
set_row:  MOV r10, r16 
          MOV r8, 0x08
          MOV r9, 0x01
          MOV r7, 0x00
          CMP r5, 0x00
          BREQ digit_2


reg_1:    LD r12,  (r5)
		  BRN hi_lo
reg_2:    ADD r5, 0x01
          LD r12, (r5)
		  MOV r8, 0x07
          CMP r7, 0x01
          BREQ done_i
	 	  MOV r7, 0x01	

hi_lo:    SUB r8, 0x01
          BRCS reg_2
          LSL r12
          MOV r14, 0x01
		  BRCS high
          BRCC low
high:	  OUT r10, row
		  OUT r11, col
          OUT r14, color
          BRN mov_col

low: 	  MOV r14, 0x00 
		  OUT r10, row
		  OUT r11, col
          OUT r14, color
 
mov_col:  ADD r9, 0x01
 		  CMP r9, 0x04
		  BREQ mov_row
          ADD r11, 0x01
          BRNE hi_lo

mov_row:  SUB r11, 0x02
          SUB r9, 0x03
          ADD r10, 0x01
          BRN hi_lo

done_i:     CMP r4, 0x00
		  BREQ digit_2
          ADD r11, 0x05
		  MOV r15, r11
          CMP r20, 0x01
          BREQ clear_n
          CMP r1, r13
          BREQ sol_cord
          ADD r1, 0x01
          BRN delay

digit_2:  ADD r4, 0x01
		  MOV r5, r6
		  ADD r11, 0x04
          BRN set_row

sol_cord: MOV r15, 0x0C
          MOV r16, 0x0A
          ADD r1, 0x01
          BRN delay

get_index:   CMP r1, r0 ; checks to see if the current input is an answer
             BREQ sqr_N 
             BRNE mult_N
fr_mult_N:   ADD r4, r1
             ADD r18, r4
             BRN store_in
fr_sqr_N:    BRN check_mem
fr_check_mem:BRN store_in
             
mult_N:      MOV r4, r2
comp_mult:	 CMP r4, 0x00
             BREQ fr_mult_N
             ADD r18, r0
             SUB r4, 0x01
             BRN comp_mult
             
sqr_N:       MOV r4, r0
comp_sqr:    CMP r4, 0x00
			 BREQ fr_sqr_N
			 ADD r18, r0
             SUB r4, 0x01
             BRN comp_sqr

check_mem:   LD r30, (r18)
             CMP r30, 0x00
             BRNE inc_r19
             BREQ fr_check_mem

inc_r19:     ADD r19, 0x01
             ADD r18, 0x01
             BRN check_mem 


next_equation:	ADD r2, 0x01		  
                MOV r1, 0x00
                BRN clear_screen
reset_orgin:    MOV r15, 0x03
                MOV r16, 0x03
                BRN delay

to_cramer:     BRN cramer_subroutine_start


clear_screen: 
CMP r30, 0x01
BRNE clear_screen

MOV r14, 0x00
MOV r15, 0x00
MOV r16, 0x00
MOV r30, 0x00

clear_screen_cont:
CMP r16, 0x1D
BREQ reset_orgin
CMP r15, 0x27
BREQ row_down
ADD r15, 0x01
BRN to_screen

row_down:
MOV r15, 0x00
ADD r16, 0x01
BRN to_screen

to_screen: 
OUT r16, row
OUT r15, col
OUT r14, color
BRN clear_screen_cont

delay: 
MOV r22, 0xFF
MOV r23, 0xAA
BRN dec_delay

dec_delay:
CMP r22, 0x00
BREQ dec_loop_count
SUB r22, 0x01
BRN dec_delay

dec_loop_count:
CMP r23, 0x00
BREQ set_intr
SUB r23, 0x01
MOV r22, 0xFF
BRN dec_delay

set_intr:
SEI
BRN main

ISR:
MOV r30, 0x01
mov r31, 0x01
RETID

;==============================================================================
;================================== CRAMER SUBROUTINE =========================
;==============================================================================

tester: 
mov r21,0x00
mov r22,r0
square2: add r21,r0 ;r21 stores the square of n
sub r22,0x01
brne square2

cramer_subroutine_start:
mov r1,0x00
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
mov r20,0x00
mov r22,0x00
mov r23,0x00
mov r25,0x00
mov r26,0x00
mov r27,0x00
mov r28,0x00
mov r29,0x00
mov r30,0x00
mov r31,0x00
wsp r31

get_starting_index:
CMP r0, 0x02
BREQ two_X_two
CMP r0, 0x03
BREQ three_X_three
BRN four_X_four

two_X_two:
CMP r24, r0
BRNE numerator_2
MOV r18, 0x03
ADD r18, 0x00
BRN denominator_matrix 
numerator_2:
MOV r18, 0x03
ADD r18, 0x00
MOV r6, 0x01
BRN get_cramer

three_X_three:
CMP r24, r0
BRNE numerator_3
MOV r18, 0x08
ADD r18, 0x00
BRN denominator_matrix 
numerator_3:
MOV r18, 0x08
ADD r18, 0x00
MOV r6, 0x02
BRN get_cramer

four_X_four:
CMP r24, r0
BRNE numerator_4
MOV r18, 0x0F
ADD r18, 0x00
BRN denominator_matrix 
numerator_4:
MOV r18, 0x0F
ADD r18, 0x00
MOV r6, 0x03
BRN get_cramer

get_cramer:
BRCS out_of_cramer
BRN modulo
comp_mod:   ;get mod on r7
CMP r7, r24   ;check if mod is equal to the col being replaced
BREQ ld_from_sol ; if true get the n^2 + solution counter
load:
LD r8, (r18)     ; Fill the register with the memory at the index
PUSH r8          ; Push the value onto the stack
CMP r9, 0x01
BREQ reload_last_index
dec_index:
SUB r18, 0x01    ; decrement the index
BRN  get_cramer

modulo: 
MOV r7, r18
dec_r7:
SUB r7, r0
BRCC dec_r7
ADD r7, r0
BRN comp_mod

    
ld_from_sol:
BRN sqr_N_cramer
fr_sqr_N_cramer:
ADD r18, r6
SUB r6, 0x01
BRN load

sqr_N_cramer:       
MOV r4, r0
MOV r10, r18
MOV r18, 0x00
MOV r9, 0x01
comp_sqr_cramer:    
CMP r4, 0x00
BREQ fr_sqr_N_cramer
ADD r18, r0
SUB r4, 0x01
BRN comp_sqr_cramer

reload_last_index:
MOV r18, r10
MOV r9, 0x00
CMP r18, 0x00
BREQ out_of_cramer
BRN dec_index
out_of_cramer:
SUB r19, 0x01
BRN matrix_solver ;;;;;;;;;;;;;;;;

denominator_matrix:
BRCS matrix_solver ;;;;;;;;;;;;;;;;
LD r8, (r18)
PUSH r8
SUB r18, 0x01
BRN denominator_matrix

repeat: add r24,0x01
brn cramer_subroutine_start

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;MATRIX CONSTRUCTOR
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

matrix_solver: 
mov r1,0x00
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
mov r20,0x00
mov r22,0x00
mov r23,0x00
mov r25,0x00
mov r26,0x00
mov r27,0x00
mov r28,0x00
mov r29,0x00
mov r30,0x00
mov r31,0x00

mov r27,0x00
sub r27,r21 ;r27 stores the index pointer of diagonal indices
sub r27,r21 
sub r27,r21
sub r27,r21
mov r19,r27 ;r19 stores the start addess of diagonal indices
mov r10,0x00 ;r10 stores the start address of original matrix
sub r10,r21
cmp r0,0x02
breq n_2

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
mov r27,r19

;start of bottom index algorithm
mov r23,r21 ;r23 stores the outer index counter (i)

sub r23,r0
outer_loop2: 
add r27,r0
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

n_2:mov r31,0x00 ;r31 stores the start address of the cramers's matrix
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
brn end_of_matrix_conversion 

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
mov r25,r21 ;r25 is the loop counter for the conv_loop, equals n*2+n
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
end_of_matrix_conversion:


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;DIAGONALS MULTIPLIER
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov r1,0x00
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
mov r20,0x00
mov r22,0x00
mov r23,0x00
mov r25,0x00
mov r26,0x00
mov r27,0x00
mov r28,0x00
mov r29,0x00
mov r30,0x00
mov r31,0x00

diagonals_multiplier_main:

;mov r21,0x04 ;r21 stores n^2
sub r19,r21 ;r19 stores the start address for diagonal indices
cmp r0,0x02
brne n_bigger_than_2

return_from_n_2: mov r31,0x00 ;r31 stores the LSByte for the determinant result
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
first_mult: cmp r10,0x00
breq zero_case
cmp r11,0x00
breq zero_case
mov r16,r11 ;r16 temporarily stores a copy of 2nd operand
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

zero_case: mov r2,0x00
brn return

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
cmp r19,0x00
breq determinant_done
brn diagonals_multiplier

n_bigger_than_2: sub r19,r21
brn return_from_n_2

other_mults: 
;r1 represents m (MSByte)
;r2 represents n (LSByte)
;r3 represents x (2nd operand)
mov r5,r3
mov r6,0x00
mov r7,0x00
cmp r3,0x00
breq done1
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
done1: mov r1,r7 ;intermediate mult results
mov r2,r6
brn return

single_mult: mov r5,r3
mov r9,0x00
cmp r2,0x00
breq done1
multiply4: add r9,r2
addc r7,0x00
sub r5,0x01
brne multiply4
mov r6,r9
brn done1



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
mov r23,0x00 ;drops here if there is no overflow
brn next
both_overflow: exor r1,0xff
add r1,0x01
exor r2,0xff
add r2,0x01
mov r23,0x02
brn next
right_overflow: cmp r1,0x00
breq skip
sub r1,0x01
brn next
skip: exor r2,0xff
add r2,0x01
mov r23,0x02
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

determinant_done: mov r31,0x00 ;here r31 will store n^2+n+(r24*3)
;r24 indicates the determinant number that is currently calculated
mov r30,0x00
add r30,r0 ;here r30 stores n+1, to compare it against r24
add r30,0x01
add r31,r21
add r31,r0

cmp r24,0x00
breq store
mov r6,0x00
mov r7,r24
storage_mult: add r6,0x03 ;r6 stores r24*3, 3 is number width
sub r7,0x01
brne storage_mult
add r31,r6

store: st r23,(r31)
add r31,0x01
st r28,(r31)
add r31,0x01 
st r29,(r31)
add r24,0x01
mov r30,r0
add r30,0x01
cmp r24,r30
brne cramer_subroutine_start
SEI


;=================================================
;========= OUTPUT Subroutine =====================
;=================================================

mov r1,0x00
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
mov r20,0x00
mov r22,0x00
mov r23,0x00
mov r24,0x00
mov r25,0x00
mov r26,0x00
mov r27,0x00
mov r28,0x00
mov r29,0x00
mov r30,0x00
mov r31,0x00
CLC
wsp r31


MOV r22, 0x00
BRN starting address

starting_address:
MOV r6, r21
add r6,r0
BRN out_address

out_address:
CMP r24, 0x05
BREQ output_delay
CMP r3, 0x04
BREQ reset_register_counter
BRN take_from_mem
inc_register_count:
ADD r3, 0x02
BRN out_address
reset_register_counter:
MOV r3, 0x00

take_from_mem:
LD r4, (r6)
BRN sign_or_int

sign_or_int:
ADD r6, 0x02
CMP r3, 0x00
BREQ is_sign
BRN is_int

is_sign:
CMP r4, 0x02
BRNE inc_register_count
MOV r9, 0x01
BRN inc_register_count

is_int:
ADD r3, 0x02
sub r6,0x01
BRN set_integer

set_integer:
MOV r10,0x00
MOV r11,0x00
MOV r15, 0x0C
MOV r16, 0x0A
BRN get_100s



 	  	;register that stores 100’s
get_100s: ADD r10, 0x01 ;counter for 100’s
SUB r4,0x64
BRCC get_100s
SUB r10,0x01
ADD r4,0x64

	  		;register that stores 10’s
get_10s_1: ADD r11, 0x01  ;counter for 10’s
SUB r4,0x0A
BRCC get_10s_1
SUB r11,0x01
ADD r4,0x0A
MOV r12,r4

check_sign:
CMP r9, 0x01
BREQ set_negative
MOV r9, 0x00
BRN output_lut

set_negative:
MOV r9, 0x3C

output_lut: 	  
          MOV r4, 0x28
          MOV r7, 0x00
	      CMP r10, 0x00
		  BREQ done_out_100
          CMP r10, 0x01
          BRNE set_100
          MOV r10, 0x2A
comp_out_10:  CMP r11, r7
          BREQ done_out_10
          ADD r7, 0x01
          ADD r4, 0x02
          BRN comp_out_10
comp_out:     CMP r12, r7
          BREQ done_out_1
          ADD r7, 0x01
          ADD r4, 0x02
          BRN comp_out 

set_100: MOV r10, 0x2C
done_out_100: BRN comp_out_10

done_out_10:  MOV r11, r4
          MOV r4, 0x28
          MOV r7, 0x00
          BRN comp_out

done_out_1:   MOV r12, r4

draw_output:
		  MOV r4, 0x00
          MOV r18, r15 
set_row1:  MOV r17, r16 
          MOV r8, 0x08
          MOV r19, 0x01
          MOV r7, 0x00
          CMP r9, 0x00
          BREQ next_digit_out
          


out_reg1:    LD r20,  (r9)
		  BRN hi_lo_out
out_reg2:    ADD r9, 0x01
          LD r20, (r9)
		  MOV r8, 0x07
          CMP r7, 0x01
          BREQ done_out
	 	  MOV r7, 0x01	

hi_lo_out:    SUB r8, 0x01
          BRCS out_reg2
          LSL r20
          MOV r14, 0x01
		  BRCS high_out
          BRCC low_out
high_out:	  OUT r17, row
		  OUT r18, col
          OUT r14, color
          BRN mov_col_out

low_out: 	  MOV r14, 0x00 
		  OUT r17, row
		  OUT r18, col
          OUT r14, color
 
mov_col_out:  ADD r19, 0x01
 		  CMP r19, 0x04
		  BREQ mov_row_out
          ADD r18, 0x01
          BRNE hi_lo_out

mov_row_out:  SUB r18, 0x02
          SUB r19, 0x03
          ADD r17, 0x01
          BRN hi_lo_out

done_out:     CMP r4, 0x00
		  BREQ digit_2_out
          CMP r4, 0x01
          BREQ digit_3
          CMP r4, 0x02
          BREQ digit_4
          ADD r22, 0x01
          BRN output_delay
          

next_digit_out: CMP r4, 0x00
            BREQ digit_2_out
            CMP r4, 0x01
            BREQ digit_3
            CMP r4, 0x02
            BREQ digit_4
            

digit_2_out:  ADD r4, 0x01
		  MOV r9, r10
		  ADD r18, 0x04
          BRN set_row1

digit_3:  ADD r4, 0x01
          MOV r9, r11
          ADD r18, 0x04
          BRN set_row1

digit_4:  ADD r4, 0x01
          MOV r9, r12
          ADD r18, 0x04
          BRN set_row1

output_done: 
cmp r31,0x01
brne output_done
cmp r24,r0
breq done_final
add r24,0x01
mov r31,0x00
brn CLEAR_SCREEN1

output_delay: 
MOV r22, 0xFF ;INNER LOOP COUNTER
MOV r23, 0xAA ;OUTER LOOP COUNTER
BRN dec_delay1

dec_delay1:
CMP r22, 0x00
BREQ dec_loop_count1
SUB r22, 0x01
BRN dec_delay1

dec_loop_count1:
CMP r23, 0x00
BREQ set_intr1
SUB r23, 0x01
MOV r22, 0xFF
BRN dec_delay1

set_intr1:
SEI
BRN output_done

done_final: brn done_final


clear_screen1: 
mov r25,0x00
mov r26,0x00
mov r14,0x00
clear_screen_cont1:
CMP r26, 0x1D
BREQ out_address
CMP r25, 0x27
BREQ row_down1
ADD r25, 0x01
BRN to_screen1

row_down1:
MOV r25, 0x00
ADD r26, 0x01
BRN to_screen1

to_screen1: 
OUT r26, row
OUT r25, col
OUT r14, color
BRN clear_screen_cont1

.CSEG
.ORG 0x3FF  ;interrupt vector
VECTOR:     BRN ISR
