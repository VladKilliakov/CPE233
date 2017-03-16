.DSEG
.ORG 0x00

matrix: .DB 0x01, 0x02, 0x04, 0x05, 0x03, 0x06

.CSEG
.ORG 0x020



main: MOV r0, 0x02

get_starting_index:
CMP r0, 0x02
BREQ two_X_two
CMP r0, 0x03
BREQ three_X_three
BRNE four_X_four


two_X_two:
MOV r6, 0x01
MOV r18, 0x03
BRN get_cramer

three_X_three:
MOV r6, 0x02
MOV r18, 0x08
BRN get_cramer

four_X_four:
MOV r6, 0x03
MOV r18, 0x0F
BRN get_cramer

get_cramer: 
MOV r5, 0x00 ;col to be replaced
get_mod: 
BRN modulo
comp_mod:   ;get mod on r7
CMP r7, r5   ;check if mod is equal to the col being replaced
BREQ ld_from_sol ; if true get the n^2 + solution counter
load:
LD r8, (r18)     ; Fill the register with the memory at the index
PUSH r8          ; Push the value onto the stack
CMP r9, 0x01
BREQ reload_last_index
dec_index:
SUB r18, 0x01    ; decrement the index
BRN  get_mod

modulo: 
MOV r7, r18
dec_r7:
SUB r7, r0
BRCC dec_r7
ADD r7, r0
BRN comp_mod
        
ld_from_sol:
BRN sqr_N
fr_sqr_N:
ADD r18, r6
SUB r6, 0x01
BRN load

sqr_N:       
MOV r4, r0
MOV r10, r18
MOV r18, 0x00
MOV r9, 0x01
comp_sqr:    
CMP r4, 0x00
BREQ fr_sqr_N
ADD r18, r0
SUB r4, 0x01
BRN comp_sqr

reload_last_index:
;CMP r4, 0x00
;BREQ done
MOV r18, r10
MOV r9, 0x00
BRN dec_index

done:
ADD r5, 0x01
BRN main
