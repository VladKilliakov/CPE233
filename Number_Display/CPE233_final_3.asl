

List FileKey 
----------------------------------------------------------------------
C1      C2      C3      C4    || C5
--------------------------------------------------------------
C1:  Address (decimal) of instruction in source file. 
C2:  Segment (code or data) and address (in code or data segment) 
       of inforation associated with current linte. Note that not all
       source lines will contain information in this field.  
C3:  Opcode bits (this field only appears for valid instructions.
C4:  Data field; lists data for labels and assorted directives. 
C5:  Raw line from source code.
----------------------------------------------------------------------


(0001)                       000  || .EQU row = 0x00
(0002)                       001  || .EQU col = 0x01
(0003)                       002  || .EQU color = 0x02
(0004)                       016  || .EQU switches = 0x10
(0005)                       064  || .EQU button = 0x40
(0006)                            || 
(0007)                            || 
(0008)                            || .CSEG
(0009)                       016  || .ORG 0x10
(0010)                            || 
(0011)                            || ;r0, N of matrix
(0012)                            || ;r1, Current number of inputs on a single equation
(0013)                            || ;r2, Current equation (from 0 to N-1)
(0014)                            || ;r3, N+1
(0015)                            || ;r8, data counter
(0016)                            || ;r9, col counter
(0017)                            || ;r10, row
(0018)                            || ;r11, col
(0019)                            || ;r12, register
(0020)                            || ;r14, carry
(0021)                            || ;r21, button input
(0022)                            || 
(0023)  CS-0x010  0x360F6  0x010  || init:     MOV r0, 0xF6
(0024)  CS-0x011  0x3A028         || 		  ST r0, 0x28
(0025)  CS-0x012  0x360DE         ||           MOV r0, 0xDE
(0026)  CS-0x013  0x3A029         || 	      ST r0, 0x29
(0027)  CS-0x014  0x36049         ||           MOV r0, 0x49
(0028)  CS-0x015  0x3A02A         || 		  ST r0, 0x2A
(0029)  CS-0x016  0x36024         ||           MOV r0, 0x24
(0030)  CS-0x017  0x3A02B         || 		  ST r0, 0x2B
(0031)  CS-0x018  0x360E5         ||           MOV r0, 0xE5
(0032)  CS-0x019  0x3A02C         || 		  ST r0, 0x2C
(0033)  CS-0x01A  0x360CE         ||           MOV r0, 0xCE
(0034)  CS-0x01B  0x3A02D         || 		  ST r0, 0x2D		  
(0035)  CS-0x01C  0x360E5         ||           MOV r0, 0xE5
(0036)  CS-0x01D  0x3A02E         || 		  ST r0, 0x2E
(0037)  CS-0x01E  0x3609E         ||           MOV r0, 0x9E
(0038)  CS-0x01F  0x3A02F         || 		  ST r0, 0x2F
(0039)  CS-0x020  0x360B7         ||           MOV r0, 0xB7
(0040)  CS-0x021  0x3A030         || 		  ST r0, 0x30
(0041)  CS-0x022  0x36092         ||           MOV r0, 0x92
(0042)  CS-0x023  0x3A031         || 		  ST r0, 0x31
(0043)  CS-0x024  0x360F3         ||           MOV r0, 0xF3
(0044)  CS-0x025  0x3A032         || 		  ST r0, 0x32
(0045)  CS-0x026  0x3609E         ||           MOV r0, 0x9E
(0046)  CS-0x027  0x3A033         || 		  ST r0, 0x33
(0047)  CS-0x028  0x360F3         ||           MOV r0, 0xF3
(0048)  CS-0x029  0x3A034         || 		  ST r0, 0x34
(0049)  CS-0x02A  0x360DE         ||           MOV r0, 0xDE
(0050)  CS-0x02B  0x3A035         || 		  ST r0, 0x35
(0051)  CS-0x02C  0x360E5         ||           MOV r0, 0xE5
(0052)  CS-0x02D  0x3A036         || 		  ST r0, 0x36
(0053)  CS-0x02E  0x36024         ||           MOV r0, 0x24
(0054)  CS-0x02F  0x3A037         || 		  ST r0, 0x37
(0055)  CS-0x030  0x360F7         ||           MOV r0, 0xF7
(0056)  CS-0x031  0x3A038         || 		  ST r0, 0x38
(0057)  CS-0x032  0x360DE         ||           MOV r0, 0xDE
(0058)  CS-0x033  0x3A039         || 		  ST r0, 0x39
(0059)  CS-0x034  0x360F7         ||           MOV r0, 0xF7
(0060)  CS-0x035  0x3A03A         || 		  ST r0, 0x3A
(0061)  CS-0x036  0x36092         ||           MOV r0, 0x92
(0062)  CS-0x037  0x3A03B         || 		  ST r0, 0x3B    
(0063)  CS-0x038  0x36000         ||           MOV r0, 0x00 
(0064)  CS-0x039  0x36100         ||           MOV r1, 0x00
(0065)  CS-0x03A  0x36200         ||           MOV r2, 0x00
(0066)  CS-0x03B  0x36F03         ||           MOV r15, 0x03 ; intialize the orgin of the first col
(0067)  CS-0x03C  0x37003         ||           MOV r16, 0x03 ; intialize the orgin of the first row
(0068)  CS-0x03D  0x36500         || 		  MOV r5,0x00
(0069)                            || 
(0070)  CS-0x03E  0x33540  0x03E  || set_n:    IN r21, button
(0071)  CS-0x03F  0x31501         ||           CMP r21, 0x01
(0072)  CS-0x040  0x081F3         ||           BRNE set_n  
(0073)  CS-0x041  0x32010         ||           IN r0, switches
(0074)  CS-0x042  0x04301         ||           MOV r3, r0
(0075)  CS-0x043  0x28301         || 		  ADD r3, 0x01
(0076)  CS-0x044  0x04D01         ||           MOV r13, r0
(0077)  CS-0x045  0x2CD01         ||           SUB r13, 0x001
(0078)  CS-0x046  0x04701         ||           MOV r7, r0
(0079)  CS-0x047  0x37401         ||           MOV r20, 0x01
(0080)  CS-0x048  0x082D0         ||           BRN get_10s
(0081)  CS-0x049  0x36F03  0x049  || clear_n:  MOV r15, 0x03
(0082)  CS-0x04A  0x2D401         ||           SUB r20, 0x01
(0083)  CS-0x04B  0x36500         ||           MOV r5, 0x00
(0084)  CS-0x04C  0x08268         ||           BRN main
(0085)                            || 
(0086)                            || 
(0087)                            || 
(0088)  CS-0x04D  0x04200  0x04D  || main:     CMP r2, r0
(0089)  CS-0x04E  0x0862A         ||           BREQ get_cramer_matrix
(0090)  CS-0x04F  0x04118         ||           CMP r1, r3      ;check the number of input so far
(0091)  CS-0x050  0x08602         || 		  BREQ next_equation
(0092)  CS-0x051  0x33540         || 		  IN r21, button
(0093)  CS-0x052  0x31501         ||           CMP r21, 0x01
(0094)  CS-0x053  0x0826B         ||           BRNE main
(0095)  CS-0x054  0x32710         || 		  IN r7,switches
(0096)  CS-0x055  0x37200         ||           MOV r18, 0x00
(0097)  CS-0x056  0x36500         ||           MOV r5, 0x00
(0098)  CS-0x057  0x08528         ||           BRN get_index
(0099)  CS-0x058  0x04793  0x058  || store_in: ST r7, (r18)
(0100)  CS-0x059  0x37500         ||           MOV r21, 0x00
(0101)                            ||          				
(0102)  CS-0x05A  0x28501  0x05A  || get_10s:  ADD r5, 0x01  ;counter for 10’s
(0103)  CS-0x05B  0x2C70A         ||           SUB r7,0x0A
(0104)  CS-0x05C  0x0A2D1         ||           BRCC get_10s
(0105)  CS-0x05D  0x2C501         || 		  SUB r5,0x01
(0106)  CS-0x05E  0x2870A         ||           ADD r7,0x0A
(0107)  CS-0x05F  0x04639         ||           MOV r6,r7
(0108)                            || 
(0109)  CS-0x060  0x36428  0x060  || lut: 	  MOV r4, 0x28
(0110)  CS-0x061  0x36700         ||           MOV r7, 0x00
(0111)  CS-0x062  0x30500         || 	      CMP r5, 0x00
(0112)  CS-0x063  0x08352         || 		  BREQ done_10
(0113)  CS-0x064  0x3652A         ||           MOV r5, 0x2A
(0114)  CS-0x065  0x04638  0x065  || comp:     CMP r6, r7
(0115)  CS-0x066  0x0835A         ||           BREQ done_1
(0116)  CS-0x067  0x28701         ||           ADD r7, 0x01
(0117)  CS-0x068  0x28402         ||           ADD r4, 0x02
(0118)  CS-0x069  0x08328         ||           BRN comp 
(0119)                            || 
(0120)                     0x06A  || done_10:  ;MOV r5, r4
(0121)  CS-0x06A  0x08328         ||           BRN comp
(0122)                            || 
(0123)  CS-0x06B  0x04621  0x06B  || done_1:    MOV r6, r4
(0124)                            || 
(0125)                     0x06C  || draw_num :
(0126)  CS-0x06C  0x36400         || 		  MOV r4, 0x00
(0127)  CS-0x06D  0x04B79         ||           MOV r11, r15 
(0128)  CS-0x06E  0x04A81  0x06E  || set_row:  MOV r10, r16 
(0129)  CS-0x06F  0x36808         ||           MOV r8, 0x08
(0130)  CS-0x070  0x36901         ||           MOV r9, 0x01
(0131)  CS-0x071  0x36700         ||           MOV r7, 0x00
(0132)  CS-0x072  0x30500         ||           CMP r5, 0x00
(0133)  CS-0x073  0x084EA         ||           BREQ digit_2
(0134)                            || 
(0135)                            || 
(0136)  CS-0x074  0x04C2A  0x074  || reg_1:    LD r12,  (r5)
(0137)  CS-0x075  0x083E0         || 		  BRN hi_lo
(0138)  CS-0x076  0x28501  0x076  || reg_2:    ADD r5, 0x01
(0139)  CS-0x077  0x04C2A         ||           LD r12, (r5)
(0140)  CS-0x078  0x36807         || 		  MOV r8, 0x07
(0141)  CS-0x079  0x30701         ||           CMP r7, 0x01
(0142)  CS-0x07A  0x0849A         ||           BREQ done
(0143)  CS-0x07B  0x36701         || 	 	  MOV r7, 0x01	
(0144)                            || 
(0145)  CS-0x07C  0x2C801  0x07C  || hi_lo:    SUB r8, 0x01
(0146)  CS-0x07D  0x0A3B0         ||           BRCS reg_2
(0147)  CS-0x07E  0x10C00         ||           LSL r12
(0148)  CS-0x07F  0x36E01         ||           MOV r14, 0x01
(0149)  CS-0x080  0x0A410         || 		  BRCS high
(0150)  CS-0x081  0x0A431         ||           BRCC low
(0151)  CS-0x082  0x34A00  0x082  || high:	  OUT r10, row
(0152)  CS-0x083  0x34B01         || 		  OUT r11, col
(0153)  CS-0x084  0x34E02         ||           OUT r14, color
(0154)  CS-0x085  0x08450         ||           BRN mov_col
(0155)                            || 
(0156)  CS-0x086  0x36E00  0x086  || low: 	  MOV r14, 0x00 
(0157)  CS-0x087  0x34A00         || 		  OUT r10, row
(0158)  CS-0x088  0x34B01         || 		  OUT r11, col
(0159)  CS-0x089  0x34E02         ||           OUT r14, color
(0160)                            ||  
(0161)  CS-0x08A  0x28901  0x08A  || mov_col:  ADD r9, 0x01
(0162)  CS-0x08B  0x30904         ||  		  CMP r9, 0x04
(0163)  CS-0x08C  0x0847A         || 		  BREQ mov_row
(0164)  CS-0x08D  0x28B01         ||           ADD r11, 0x01
(0165)  CS-0x08E  0x083E3         ||           BRNE hi_lo
(0166)                            || 
(0167)  CS-0x08F  0x2CB02  0x08F  || mov_row:  SUB r11, 0x02
(0168)  CS-0x090  0x2C903         ||           SUB r9, 0x03
(0169)  CS-0x091  0x28A01         ||           ADD r10, 0x01
(0170)  CS-0x092  0x083E0         ||           BRN hi_lo
(0171)                            || 
(0172)  CS-0x093  0x30400  0x093  || done:     CMP r4, 0x00
(0173)  CS-0x094  0x084EA         || 		  BREQ digit_2
(0174)  CS-0x095  0x28B05         ||           ADD r11, 0x05
(0175)  CS-0x096  0x04F59         || 		  MOV r15, r11
(0176)  CS-0x097  0x31401         ||           CMP r20, 0x01
(0177)  CS-0x098  0x0824A         ||           BREQ clear_n
(0178)  CS-0x099  0x04168         ||           CMP r1, r13
(0179)  CS-0x09A  0x0850A         ||           BREQ sol_cord
(0180)  CS-0x09B  0x28101         ||           ADD r1, 0x01
(0181)  CS-0x09C  0x08268         ||           BRN main
(0182)                            || 
(0183)  CS-0x09D  0x28401  0x09D  || digit_2:  ADD r4, 0x01
(0184)  CS-0x09E  0x04531         || 		  MOV r5, r6
(0185)  CS-0x09F  0x28B04         || 		  ADD r11, 0x04
(0186)  CS-0x0A0  0x08370         ||           BRN set_row
(0187)                            || 
(0188)  CS-0x0A1  0x36F0C  0x0A1  || sol_cord: MOV r15, 0x0C
(0189)  CS-0x0A2  0x3700A         ||           MOV r16, 0x0A
(0190)  CS-0x0A3  0x28101         ||           ADD r1, 0x01
(0191)  CS-0x0A4  0x08268         ||           BRN main
(0192)                            || 
(0193)  CS-0x0A5  0x04100  0x0A5  || get_index:   CMP r1, r0 ; checks to see if the current input is an answer
(0194)  CS-0x0A6  0x0859A         ||              BREQ sqr_N 
(0195)  CS-0x0A7  0x0856B         ||              BRNE mult_N
(0196)  CS-0x0A8  0x02408  0x0A8  || fr_mult_N:   ADD r4, r1
(0197)  CS-0x0A9  0x03220         ||              ADD r18, r4
(0198)  CS-0x0AA  0x082C0         ||              BRN store_in
(0199)  CS-0x0AB  0x085C8  0x0AB  || fr_sqr_N:    BRN check_mem
(0200)  CS-0x0AC  0x082C0  0x0AC  || fr_check_mem:BRN store_in
(0201)                            ||              
(0202)  CS-0x0AD  0x04411  0x0AD  || mult_N:      MOV r4, r2
(0203)  CS-0x0AE  0x30400  0x0AE  || comp_mult:	 CMP r4, 0x00
(0204)  CS-0x0AF  0x08542         ||              BREQ fr_mult_N
(0205)  CS-0x0B0  0x03200         ||              ADD r18, r0
(0206)  CS-0x0B1  0x2C401         ||              SUB r4, 0x01
(0207)  CS-0x0B2  0x08570         ||              BRN comp_mult
(0208)                            ||              
(0209)  CS-0x0B3  0x04401  0x0B3  || sqr_N:       MOV r4, r0
(0210)  CS-0x0B4  0x30400  0x0B4  || comp_sqr:    CMP r4, 0x00
(0211)  CS-0x0B5  0x0855A         || 			 BREQ fr_sqr_N
(0212)  CS-0x0B6  0x03200         || 			 ADD r18, r0
(0213)  CS-0x0B7  0x2C401         ||              SUB r4, 0x01
(0214)  CS-0x0B8  0x085A0         ||              BRN comp_sqr
(0215)                            || 
(0216)  CS-0x0B9  0x05592  0x0B9  || check_mem:   LD r21, (r18)
(0217)  CS-0x0BA  0x31500         ||              CMP r21, 0x00
(0218)  CS-0x0BB  0x085EB         ||              BRNE inc_r19
(0219)  CS-0x0BC  0x08562         ||              BREQ fr_check_mem
(0220)                            || 
(0221)  CS-0x0BD  0x29301  0x0BD  || inc_r19:     ADD r19, 0x01
(0222)  CS-0x0BE  0x29201         ||              ADD r18, 0x01
(0223)  CS-0x0BF  0x085C8         ||              BRN check_mem 
(0224)                            || 
(0225)                            || 
(0226)  CS-0x0C0  0x28201  0x0C0  || next_equation:	ADD r2, 0x01		  
(0227)  CS-0x0C1  0x36100         ||                 MOV r1, 0x00
(0228)  CS-0x0C2  0x36F03         ||                 MOV r15, 0x03
(0229)  CS-0x0C3  0x37003         ||                 MOV r16, 0x03
(0230)  CS-0x0C4  0x08268         ||                 BRN main
(0231)                            || 
(0232)  CS-0x0C5  0x36A00  0x0C5  || get_cramer_matrix: MOV r10, 0x00
(0233)  CS-0x0C6  0x36B00         ||                    MOV r11, 0x00
(0234)  CS-0x0C7  0x36E03         ||                    MOV r14, 0x03
(0235)  CS-0x0C8  0x34A00         ||                    OUT r10, row
(0236)  CS-0x0C9  0x34B01         || 		           OUT r11, col
(0237)  CS-0x0CA  0x34E02         ||                    OUT r14, color
(0238)  CS-0x0CB  0x37E03         ||                    MOV r30, 0x03
(0239)  CS-0x0CC  0x37FFF  0x0CC  || set_delay:         MOV r31, 0xFF
(0240)  CS-0x0CD  0x2DF01  0x0CD  || dec_delay:         SUB r31, 0x01
(0241)  CS-0x0CE  0x34A00         ||                    OUT r10, row
(0242)  CS-0x0CF  0x34B01         || 		           OUT r11, col
(0243)  CS-0x0D0  0x34E02         ||                    OUT r14, color
(0244)  CS-0x0D1  0x0A698         ||                    BRCS dec_loop
(0245)  CS-0x0D2  0x0A669         ||                    BRCC dec_delay
(0246)  CS-0x0D3  0x2DE01  0x0D3  || dec_loop:          SUB r30, 0x01
(0247)  CS-0x0D4  0x0A080         ||                    BRCS init
(0248)  CS-0x0D5  0x0A661         ||                    BRCC set_delay
(0249)                            || 





Symbol Table Key 
----------------------------------------------------------------------
C1             C2     C3      ||  C4+
-------------  ----   ----        -------
C1:  name of symbol
C2:  the value of symbol 
C3:  source code line number where symbol defined
C4+: source code line number of where symbol is referenced 
----------------------------------------------------------------------


-- Labels
------------------------------------------------------------ 
CHECK_MEM      0x0B9   (0216)  ||  0199 0223 
CLEAR_N        0x049   (0081)  ||  0177 
COMP           0x065   (0114)  ||  0118 0121 
COMP_MULT      0x0AE   (0203)  ||  0207 
COMP_SQR       0x0B4   (0210)  ||  0214 
DEC_DELAY      0x0CD   (0240)  ||  0245 
DEC_LOOP       0x0D3   (0246)  ||  0244 
DIGIT_2        0x09D   (0183)  ||  0133 0173 
DONE           0x093   (0172)  ||  0142 
DONE_1         0x06B   (0123)  ||  0115 
DONE_10        0x06A   (0120)  ||  0112 
DRAW_NUM       0x06C   (0125)  ||  
FR_CHECK_MEM   0x0AC   (0200)  ||  0219 
FR_MULT_N      0x0A8   (0196)  ||  0204 
FR_SQR_N       0x0AB   (0199)  ||  0211 
GET_10S        0x05A   (0102)  ||  0080 0104 
GET_CRAMER_MATRIX 0x0C5   (0232)  ||  0089 
GET_INDEX      0x0A5   (0193)  ||  0098 
HIGH           0x082   (0151)  ||  0149 
HI_LO          0x07C   (0145)  ||  0137 0165 0170 
INC_R19        0x0BD   (0221)  ||  0218 
INIT           0x010   (0023)  ||  0247 
LOW            0x086   (0156)  ||  0150 
LUT            0x060   (0109)  ||  
MAIN           0x04D   (0088)  ||  0084 0094 0181 0191 0230 
MOV_COL        0x08A   (0161)  ||  0154 
MOV_ROW        0x08F   (0167)  ||  0163 
MULT_N         0x0AD   (0202)  ||  0195 
NEXT_EQUATION  0x0C0   (0226)  ||  0091 
REG_1          0x074   (0136)  ||  
REG_2          0x076   (0138)  ||  0146 
SET_DELAY      0x0CC   (0239)  ||  0248 
SET_N          0x03E   (0070)  ||  0072 
SET_ROW        0x06E   (0128)  ||  0186 
SOL_CORD       0x0A1   (0188)  ||  0179 
SQR_N          0x0B3   (0209)  ||  0194 
STORE_IN       0x058   (0099)  ||  0198 0200 


-- Directives: .BYTE
------------------------------------------------------------ 
--> No ".BYTE" directives used


-- Directives: .EQU
------------------------------------------------------------ 
BUTTON         0x040   (0005)  ||  0070 0092 
COL            0x001   (0002)  ||  0152 0158 0236 0242 
COLOR          0x002   (0003)  ||  0153 0159 0237 0243 
ROW            0x000   (0001)  ||  0151 0157 0235 0241 
SWITCHES       0x010   (0004)  ||  0073 0095 


-- Directives: .DEF
------------------------------------------------------------ 
--> No ".DEF" directives used


-- Directives: .DB
------------------------------------------------------------ 
--> No ".DB" directives used
