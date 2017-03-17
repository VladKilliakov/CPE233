;========= OUTPUT Subroutine =====================
start_output:
MOV r22, 0x00
BRN starting address

starting_address:
MOV r6, r21
BRN out_address

out_address:
CMP r22, 0x05
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
get_10s: ADD r11, 0x01  ;counter for 10’s
SUB r4,0x0A
BRCC get_10s
SUB r11,0x01
ADD r4,0x0A
MOV r12,r4

check_sign:
CMP r9, 0x01
BREQ set_negative
MOV r9, 0x00
BRN lut

set_negative:
MOV r9, 0x3C

lut: 	  
          MOV r4, 0x28
          MOV r7, 0x00
	      CMP r10, 0x00
		  BREQ done_100
          CMP r10, 0x01
          BRNE set_100
          MOV r10, 0x2A
comp_10:  CMP r11, r7
          BREQ done_10
          ADD r7, 0x01
          ADD r4, 0x02
          BRN comp_10
comp:     CMP r12, r7
          BREQ done_1
          ADD r7, 0x01
          ADD r4, 0x02
          BRN comp 

set_100: MOV r10, 0x2C
done_100: BRN comp_10

done_10:  MOV r11, r4
          MOV r4, 0x28
          MOV r7, 0x00
          BRN comp

done_1:   MOV r12, r4

draw_output:
		  MOV r4, 0x00
          MOV r18, r15 
set_row:  MOV r17, r16 
          MOV r8, 0x08
          MOV r19, 0x01
          MOV r7, 0x00
          CMP r9, 0x00
          BREQ next_digit
          


reg_1:    LD r20,  (r9)
		  BRN hi_lo
reg_2:    ADD r9, 0x01
          LD r20, (r9)
		  MOV r8, 0x07
          CMP r7, 0x01
          BREQ done
	 	  MOV r7, 0x01	

hi_lo:    SUB r8, 0x01
          BRCS reg_2
          LSL r20
          MOV r14, 0x01
		  BRCS high
          BRCC low
high:	  OUT r17, row
		  OUT r18, col
          OUT r14, color
          BRN mov_col

low: 	  MOV r14, 0x00 
		  OUT r17, row
		  OUT r18, col
          OUT r14, color
 
mov_col:  ADD r19, 0x01
 		  CMP r19, 0x04
		  BREQ mov_row
          ADD r18, 0x01
          BRNE hi_lo

mov_row:  SUB r18, 0x02
          SUB r19, 0x03
          ADD r17, 0x01
          BRN hi_lo

done:     CMP r4, 0x00
		  BREQ digit_2
          CMP r4, 0x01
          BREQ digit_3
          CMP r4, 0x02
          BREQ digit_4
          ADD r22, 0x01
          BRN out_address
          ;BRN delay

next_digit: CMP r4, 0x00
            BREQ digit_2
            CMP r4, 0x01
            BREQ digit_3
            CMP r4, 0x02
            BREQ digit_4
            

digit_2:  ADD r4, 0x01
		  MOV r9, r10
		  ADD r18, 0x04
          BRN set_row

digit_3:  ADD r4, 0x01
          MOV r9, r11
          ADD r18, 0x04
          BRN set_row

digit_4:  ADD r4, 0x01
          MOV r9, r12
          ADD r18, 0x04
          BRN set_row

output_delay: BRN output_delay