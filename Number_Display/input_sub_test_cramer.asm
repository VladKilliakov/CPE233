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
;r21, button input

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
          MOV r0, 0x00 
          MOV r1, 0x00
          MOV r2, 0x00
          MOV r15, 0x1C ; intialize the orgin of the first col
          MOV r16, 0x17 ; intialize the orgin of the first row
		  MOV r5,0x00
          SEI
          
set_n:    
          CMP r21, 0x01
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
          MOV r21, 0x00
          BRN delay



main:     
          CMP r2, r0
          BREQ to_cramer
          CMP r1, r3      ;check the number of input so far
		  BREQ next_equation
          CMP r21, 0x01
          BRNE main
		  IN r7,switches
          MOV r18, 0x00
          MOV r5, 0x00
          BRN get_index
store_in: ST r7, (r18)
          MOV r21, 0x00
         				
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
          BREQ done
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

done:     CMP r4, 0x00
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

check_mem:   LD r21, (r18)
             CMP r21, 0x00
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
CMP r21, 0x01
BRNE clear_screen

MOV r14, 0x00
MOV r15, 0x00
MOV r16, 0x00
MOV r21, 0x00

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
MOV r21, 0x01
RETID

;================================== CRAMER SUBROUTINE =========================
cramer_subroutine_start:

get_starting_index:
CMP r0, 0x02
BREQ two_X_two
CMP r0, 0x03
BREQ three_X_three
BRNE four_X_four

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
BRN to_determinant

denominator_matrix:
BRCS to_determinant
LD r8, (r18)
PUSH r8
SUB r18, 0x01
BRN denominator_matrix

to_determinant:
BRN to_determinant


.CSEG
.ORG 0x3FF  ;interrupt vector
VECTOR:     BRN ISR
