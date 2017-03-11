.EQU row = 0x00
.EQU col = 0x01
.EQU color = 0x02
.EQU switches = 0x10



.CSEG
.ORG 0x10

;r8, data counter
;r9, col counter
;r10, row
;r11, col
;r12, register
;r14, carry


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
          MOV r0, 0x8E
		  ST r0, 0x2D		  
          MOV r0, 0xE5
		  ST r0, 0x2E
          MOV r0, 0x9E
		  ST r0, 0x2F
          MOV r0, 0xB7
		  ST r0, 0x30
          MOV r0, 0x92
		  ST r0, 0x31
          MOV r0, 0xF1
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


main: 
		  IN r7,switches
		  MOV r5,0x00	  		;register that stores 10’s
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

done_10:   MOV r5, r4
          BRN comp

done_1:    MOV r6, r4



draw_num : 
	      MOV r8, 0x08
          MOV r9, 0x01
		  MOV r10, 0x03 ; comeback to make work for the second digit
		  MOV r11, 0x03

reg_1:    LD r12,  (r6)
		  BRN hi_lo
reg_2:    ADD r5, 0x01
          LD r12, (r6)
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
 
mov_col: ADD r9, 0x01
		  CMP r9, 0x04
		  BREQ mov_row
          ADD r11, 0x01
          BRNE hi_lo

mov_row:  SUB r11, 0x02
          SUB r9, 0x03
          ADD r10, 0x01
          BRN hi_lo

done:     BRN main


		  

		  
 		