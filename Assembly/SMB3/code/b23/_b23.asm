; Super Mario Bros. 3
; This bank is mostly code. Absolute addressing to ROM seems to use databank 21.

CODE_238000:
RTL                     ; $23:8000: 6B
LDY $0726               ; $23:8001: AC 26 07
LDX #$00                ; $23:8004: A2 00
CPY #$00                ; $23:8006: C0 00
BEQ CODE_23800C         ; $23:8008: F0 02
LDX #$0B                ; $23:800A: A2 0B

CODE_23800C:
LDY #$00                ; $23:800C: A0 00

CODE_23800E:
LDA.w DATA_218AE9,x     ; $23:800E: BD E9 8A
STA $1606,y             ; $23:8011: 99 06 16
INX                     ; $23:8014: E8
INY                     ; $23:8015: C8
CPY #$0B                ; $23:8016: C0 0B
BNE CODE_23800E         ; $23:8018: D0 F4
LDA #$51                ; $23:801A: A9 51
STA $1602               ; $23:801C: 8D 02 16
STZ $1604               ; $23:801F: 9C 04 16
LDA #$09                ; $23:8022: A9 09
STA $1605               ; $23:8024: 8D 05 16
LDA #$2A                ; $23:8027: A9 2A
STA $1603               ; $23:8029: 8D 03 16
LDA $1600               ; $23:802C: AD 00 16
CLC                     ; $23:802F: 18
ADC #$0E                ; $23:8030: 69 0E
STA $1600               ; $23:8032: 8D 00 16
RTL                     ; $23:8035: 6B

CODE_238036:
LDX #$51                ; $23:8036: A2 51
STX $1602               ; $23:8038: 8E 02 16
LDA #$52                ; $23:803B: A9 52
STA $1603               ; $23:803D: 8D 03 16
STZ $1604               ; $23:8040: 9C 04 16
LDA #$01                ; $23:8043: A9 01
STA $1605               ; $23:8045: 8D 05 16
LDA $0727               ; $23:8048: AD 27 07
INC A                   ; $23:804B: 1A
ORA #$F0                ; $23:804C: 09 F0
STA $1606               ; $23:804E: 8D 06 16
STX $1608               ; $23:8051: 8E 08 16
LDA #$B4                ; $23:8054: A9 B4
STA $1609               ; $23:8056: 8D 09 16
STZ $160A               ; $23:8059: 9C 0A 16
LDA #$03                ; $23:805C: A9 03
STA $160B               ; $23:805E: 8D 0B 16
LDA $1F4A               ; $23:8061: AD 4A 1F
CMP #$AD                ; $23:8064: C9 AD
BNE CODE_23806A         ; $23:8066: D0 02
LDA #$0E                ; $23:8068: A9 0E

CODE_23806A:
AND #$0F                ; $23:806A: 29 0F
ORA #$F0                ; $23:806C: 09 F0
STA $160C               ; $23:806E: 8D 0C 16
LDA $1F4B               ; $23:8071: AD 4B 1F
AND #$0F                ; $23:8074: 29 0F
ORA #$F0                ; $23:8076: 09 F0
STA $160E               ; $23:8078: 8D 0E 16
LDA #$01                ; $23:807B: A9 01
STA $1607               ; $23:807D: 8D 07 16
STA $160D               ; $23:8080: 8D 0D 16
STA $160F               ; $23:8083: 8D 0F 16
LDA #$FF                ; $23:8086: A9 FF
STA $1610               ; $23:8088: 8D 10 16
RTL                     ; $23:808B: 6B
LDX #$80                ; $23:808C: A2 80
STX $2115               ; $23:808E: 8E 15 21
STZ $4200               ; $23:8091: 9C 00 42
REP #$30                ; $23:8094: C2 30
LDA #$0840              ; $23:8096: A9 40 08
STA $2116               ; $23:8099: 8D 16 21
LDY #$0260              ; $23:809C: A0 60 02
LDA #$00FF              ; $23:809F: A9 FF 00

CODE_2380A2:
STA $2118               ; $23:80A2: 8D 18 21
DEY                     ; $23:80A5: 88
BNE CODE_2380A2         ; $23:80A6: D0 FA
SEP #$30                ; $23:80A8: E2 30
RTL                     ; $23:80AA: 6B

CODE_2380AB:
JSL CODE_2382A3         ; $23:80AB: 22 A3 82 23
LDA $0729               ; $23:80AF: AD 29 07
CMP #$0D                ; $23:80B2: C9 0D
BNE CODE_23810B         ; $23:80B4: D0 55
LDX $0727               ; $23:80B6: AE 27 07
LDY.w DATA_218B03,x     ; $23:80B9: BC 03 8B
CPX #$04                ; $23:80BC: E0 04
BNE CODE_2380C9         ; $23:80BE: D0 09
LDX $0726               ; $23:80C0: AE 26 07
LDA $45,x               ; $23:80C3: B5 45
BEQ CODE_2380C9         ; $23:80C5: F0 02
LDY #$10                ; $23:80C7: A0 10

CODE_2380C9:
LDA $1F55               ; $23:80C9: AD 55 1F
BEQ CODE_2380D0         ; $23:80CC: F0 02
LDY #$0E                ; $23:80CE: A0 0E

CODE_2380D0:
LDA $1206               ; $23:80D0: AD 06 12
BPL CODE_2380E0         ; $23:80D3: 10 0B
CMP #$F1                ; $23:80D5: C9 F1
BEQ CODE_2380E0         ; $23:80D7: F0 07
CMP #$F2                ; $23:80D9: C9 F2
BEQ CODE_2380E0         ; $23:80DB: F0 03
STY $1202               ; $23:80DD: 8C 02 12

CODE_2380E0:
LDX $0726               ; $23:80E0: AE 26 07
LDA $49,x               ; $23:80E3: B5 49
BNE CODE_238102         ; $23:80E5: D0 1B
LDA $7E3950,x           ; $23:80E7: BF 50 39 7E
CMP #$18                ; $23:80EB: C9 18
BEQ CODE_2380F8         ; $23:80ED: F0 09
LDA $7E3950,x           ; $23:80EF: BF 50 39 7E
INC A                   ; $23:80F3: 1A
STA $7E3950,x           ; $23:80F4: 9F 50 39 7E

CODE_2380F8:
LDA $17                 ; $23:80F8: A5 17
BNE CODE_238102         ; $23:80FA: D0 06
LDA #$FF                ; $23:80FC: A9 FF
STA $7E3950,x           ; $23:80FE: 9F 50 39 7E

CODE_238102:
LDA $59                 ; $23:8102: A5 59
BEQ CODE_23810B         ; $23:8104: F0 05
JSL CODE_29A833         ; $23:8106: 22 33 A8 29
RTL                     ; $23:810A: 6B

CODE_23810B:
LDA $0710               ; $23:810B: AD 10 07
BEQ CODE_238113         ; $23:810E: F0 03
JMP CODE_2381ED         ; $23:8110: 4C ED 81

CODE_238113:
LDX $0726               ; $23:8113: AE 26 07
LDA $49,x               ; $23:8116: B5 49
BEQ CODE_23811D         ; $23:8118: F0 03
JMP CODE_238226         ; $23:811A: 4C 26 82

CODE_23811D:
LDA $0729               ; $23:811D: AD 29 07
CMP #$0D                ; $23:8120: C9 0D
BEQ CODE_238127         ; $23:8122: F0 03
JMP CODE_238226         ; $23:8124: 4C 26 82

CODE_238127:
LDA $0349               ; $23:8127: AD 49 03
BEQ CODE_238132         ; $23:812A: F0 06
DEC $0349               ; $23:812C: CE 49 03
JMP CODE_23818F         ; $23:812F: 4C 8F 81

CODE_238132:
LDA $0727               ; $23:8132: AD 27 07
CMP #$08                ; $23:8135: C9 08
BEQ CODE_23818F         ; $23:8137: F0 56
LDA $028C               ; $23:8139: AD 8C 02
CMP #$01                ; $23:813C: C9 01
BEQ CODE_23818F         ; $23:813E: F0 4F
CMP #$03                ; $23:8140: C9 03
BEQ CODE_23818F         ; $23:8142: F0 4B
LDA $18                 ; $23:8144: A5 18
AND #$10                ; $23:8146: 29 10
BEQ CODE_23818F         ; $23:8148: F0 45
LDA $028C               ; $23:814A: AD 8C 02
BNE CODE_238177         ; $23:814D: D0 28
LDA $0598               ; $23:814F: AD 98 05
BEQ CODE_238175         ; $23:8152: F0 21
LDA #$04                ; $23:8154: A9 04
STA $0291               ; $23:8156: 8D 91 02
JSL CODE_2AF9A9         ; $23:8159: 22 A9 F9 2A
LDA #$03                ; $23:815D: A9 03
STA $0200               ; $23:815F: 8D 00 02

CODE_238162:
JSL CODE_2AFA63         ; $23:8162: 22 63 FA 2A
JSL CODE_20804D         ; $23:8166: 22 4D 80 20
LDA $1050               ; $23:816A: AD 50 10
BPL CODE_238162         ; $23:816D: 10 F3
STZ $1050               ; $23:816F: 9C 50 10
STZ $0293               ; $23:8172: 9C 93 02

CODE_238175:
BRA CODE_238177         ; $23:8175: 80 00

CODE_238177:
JSL CODE_29EBB7         ; $23:8177: 22 B7 EB 29
LDA $0598               ; $23:817B: AD 98 05
BEQ CODE_23818F         ; $23:817E: F0 0F
LDA #$13                ; $23:8180: A9 13
STA $0208               ; $23:8182: 8D 08 02
LDA #$23                ; $23:8185: A9 23
STA $0200               ; $23:8187: 8D 00 02
LDA #$33                ; $23:818A: A9 33
STA $0202               ; $23:818C: 8D 02 02

CODE_23818F:
LDA $028C               ; $23:818F: AD 8C 02
BEQ CODE_2381D1         ; $23:8192: F0 3D
JSL CODE_29EBF7         ; $23:8194: 22 F7 EB 29
LDA $0598               ; $23:8198: AD 98 05
BEQ CODE_2381CF         ; $23:819B: F0 32
LDA $028C               ; $23:819D: AD 8C 02
BNE CODE_2381CF         ; $23:81A0: D0 2D
LDA #$05                ; $23:81A2: A9 05
STA $0291               ; $23:81A4: 8D 91 02
JSL CODE_2AF9A9         ; $23:81A7: 22 A9 F9 2A
LDA $0598               ; $23:81AB: AD 98 05
BEQ CODE_2381BF         ; $23:81AE: F0 0F
LDA #$23                ; $23:81B0: A9 23
STA $0200               ; $23:81B2: 8D 00 02
LDA #$03                ; $23:81B5: A9 03
STA $0201               ; $23:81B7: 8D 01 02
LDA #$30                ; $23:81BA: A9 30
STA $0202               ; $23:81BC: 8D 02 02

CODE_2381BF:
JSL CODE_2AFA63         ; $23:81BF: 22 63 FA 2A
JSL CODE_20804D         ; $23:81C3: 22 4D 80 20
LDA $1050               ; $23:81C7: AD 50 10
BPL CODE_2381BF         ; $23:81CA: 10 F3
STZ $1050               ; $23:81CC: 9C 50 10

CODE_2381CF:
BRA CODE_238226         ; $23:81CF: 80 55

CODE_2381D1:
LDY $0726               ; $23:81D1: AC 26 07
LDA $00F8,y             ; $23:81D4: B9 F8 00
ORA $18                 ; $23:81D7: 05 18
AND #$40                ; $23:81D9: 29 40
BEQ CODE_238226         ; $23:81DB: F0 49
LDA #$1C                ; $23:81DD: A9 1C
STA $1203               ; $23:81DF: 8D 03 12
LDA $05F2               ; $23:81E2: AD F2 05
EOR #$01                ; $23:81E5: 49 01
STA $05F2               ; $23:81E7: 8D F2 05
BRL CODE_238C1B         ; $23:81EA: 82 2E 0A

CODE_2381ED:
LDA $0417               ; $23:81ED: AD 17 04
BEQ CODE_2381F9         ; $23:81F0: F0 07
JSL CODE_238891         ; $23:81F2: 22 91 88 23
BRL CODE_238C1B         ; $23:81F6: 82 22 0A

CODE_2381F9:
LDY $25                 ; $23:81F9: A4 25
LDA $0210               ; $23:81FB: AD 10 02
CLC                     ; $23:81FE: 18
ADC.w DATA_218AFF,y     ; $23:81FF: 79 FF 8A
STA $0210               ; $23:8202: 8D 10 02
STA $B7                 ; $23:8205: 85 B7
LDA $0211               ; $23:8207: AD 11 02
ADC.w DATA_218B01,y     ; $23:820A: 79 01 8B
STA $0211               ; $23:820D: 8D 11 02
STA $12                 ; $23:8210: 85 12
JSL CODE_2097F5         ; $23:8212: 22 F5 97 20
JSL CODE_209D5A         ; $23:8216: 22 5A 9D 20
JSL CODE_238DD7         ; $23:821A: 22 D7 8D 23
DEC $0710               ; $23:821E: CE 10 07
DEC $0710               ; $23:8221: CE 10 07
BEQ CODE_23822B         ; $23:8224: F0 05

CODE_238226:
LDA $0417               ; $23:8226: AD 17 04
BEQ CODE_23823E         ; $23:8229: F0 13

CODE_23822B:
JSL CODE_238891         ; $23:822B: 22 91 88 23
JSL CODE_238C1B         ; $23:822F: 22 1B 8C 23
LDA $0417               ; $23:8233: AD 17 04
BNE CODE_23823E         ; $23:8236: D0 06
LDA #$01                ; $23:8238: A9 01
STA $0728               ; $23:823A: 8D 28 07
RTL                     ; $23:823D: 6B

CODE_23823E:
LDA $0500               ; $23:823E: AD 00 05
BNE CODE_238269         ; $23:8241: D0 26
LDY #$0D                ; $23:8243: A0 0D

CODE_238245:
LDA $1EED,y             ; $23:8245: B9 ED 1E
STA $0500,y             ; $23:8248: 99 00 05
LDA $1F09,y             ; $23:824B: B9 09 1F
STA $051E,y             ; $23:824E: 99 1E 05
LDA $1EFB,y             ; $23:8251: B9 FB 1E
STA $050F,y             ; $23:8254: 99 0F 05
LDA $1F17,y             ; $23:8257: B9 17 1F
CMP #$10                ; $23:825A: C9 10
BCS CODE_238266         ; $23:825C: B0 08
LDA $0783,y             ; $23:825E: B9 83 07
AND #$03                ; $23:8261: 29 03
STA $052D,y             ; $23:8263: 99 2D 05

CODE_238266:
DEY                     ; $23:8266: 88
BPL CODE_238245         ; $23:8267: 10 DC

CODE_238269:
LDA $028C               ; $23:8269: AD 8C 02
BEQ CODE_23826F         ; $23:826C: F0 01
RTL                     ; $23:826E: 6B

CODE_23826F:
LDA $0729               ; $23:826F: AD 29 07

; ExecutePtrLong
JSL CODE_20FB3A         ; $23:8272: 22 3A FB 20
dl CODE_2382C5
dl CODE_238631
dl CODE_29AC7A
dl CODE_29ADFC
dl CODE_29AE52
dl CODE_29AEAA
dl CODE_23863B
dl CODE_29AF05
dl CODE_238652
dl CODE_29B17F
dl CODE_23863B
dl CODE_2387E4
dl CODE_23882E
dl CODE_238A4E
dl CODE_29A9AE

CODE_2382A3:
LDA $0727               ; $23:82A3: AD 27 07
CMP #$04                ; $23:82A6: C9 04
BNE CODE_2382C4         ; $23:82A8: D0 1A
LDX $0726               ; $23:82AA: AE 26 07
LDA $45,x               ; $23:82AD: B5 45
BEQ CODE_2382C4         ; $23:82AF: F0 13
LDY #$07                ; $23:82B1: A0 07

CODE_2382B3:
LDA.w DATA_218B0C,y     ; $23:82B3: B9 0C 8B
STA $0850,y             ; $23:82B6: 99 50 08
DEY                     ; $23:82B9: 88
BPL CODE_2382B3         ; $23:82BA: 10 F7
LDA #$02                ; $23:82BC: A9 02
STA $0A34               ; $23:82BE: 8D 34 0A
STA $0A35               ; $23:82C1: 8D 35 0A

CODE_2382C4:
RTL                     ; $23:82C4: 6B

CODE_2382C5:
LDA $0728               ; $23:82C5: AD 28 07

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:82C8: 22 1F FB 20
dw CODE_2382D2
dw CODE_238338
dw CODE_2383D1

CODE_2382D2:
JSR CODE_238306         ; $23:82D2: 20 06 83
LDA $0711               ; $23:82D5: AD 11 07
BNE CODE_2382E3         ; $23:82D8: D0 09
LDA #$80                ; $23:82DA: A9 80
STA $0711               ; $23:82DC: 8D 11 07
JSL CODE_2AF800         ; $23:82DF: 22 00 F8 2A

CODE_2382E3:
DEC $0711               ; $23:82E3: CE 11 07
BNE CODE_2382EE         ; $23:82E6: D0 06
INC $0285               ; $23:82E8: EE 85 02
INC $0728               ; $23:82EB: EE 28 07

CODE_2382EE:
JSL CODE_2AF867         ; $23:82EE: 22 67 F8 2A
RTL                     ; $23:82F2: 6B

CODE_2382F3:
LDA $0711               ; $23:82F3: AD 11 07
BNE CODE_2382FD         ; $23:82F6: D0 05
LDA #$80                ; $23:82F8: A9 80
STA $0711               ; $23:82FA: 8D 11 07

CODE_2382FD:
DEC $0711               ; $23:82FD: CE 11 07
BNE CODE_238305         ; $23:8300: D0 03
INC $0728               ; $23:8302: EE 28 07

CODE_238305:
RTL                     ; $23:8305: 6B

CODE_238306:
LDY #$03                ; $23:8306: A0 03

CODE_238308:
LDA.w DATA_218B14,y     ; $23:8308: B9 14 8B
STA $0884,y             ; $23:830B: 99 84 08
DEY                     ; $23:830E: 88
BPL CODE_238308         ; $23:830F: 10 F7
LDX $0726               ; $23:8311: AE 26 07
BEQ CODE_238329         ; $23:8314: F0 13
LDY #$03                ; $23:8316: A0 03
LDA $0884,y             ; $23:8318: B9 84 08
ORA #$01                ; $23:831B: 09 01
STA $0884,y             ; $23:831D: 99 84 08
LDA $0747,x             ; $23:8320: BD 47 07
CLC                     ; $23:8323: 18
ADC #$07                ; $23:8324: 69 07
TAY                     ; $23:8326: A8
BRA CODE_23832C         ; $23:8327: 80 03

CODE_238329:
LDY $0747,x             ; $23:8329: BC 47 07

CODE_23832C:
LDA.w DATA_218B18,y     ; $23:832C: B9 18 8B
STA $0886               ; $23:832F: 8D 86 08
LDA #$02                ; $23:8332: A9 02
STA $0A41               ; $23:8334: 8D 41 0A
RTS                     ; $23:8337: 60

CODE_238338:
JSL CODE_2AF867         ; $23:8338: 22 67 F8 2A
RTL                     ; $23:833C: 6B
LDA $20                 ; $23:833D: A5 20
BNE CODE_23836A         ; $23:833F: D0 29
LDA $23                 ; $23:8341: A5 23
AND #$08                ; $23:8343: 29 08
CLC                     ; $23:8345: 18
ADC #$34                ; $23:8346: 69 34
STA $20                 ; $23:8348: 85 20
LDA $24                 ; $23:834A: A5 24
AND #$F0                ; $23:834C: 29 F0
LSR A                   ; $23:834E: 4A
LSR A                   ; $23:834F: 4A
LSR A                   ; $23:8350: 4A
TAY                     ; $23:8351: A8
LDA.w DATA_218200,y     ; $23:8352: B9 00 82
STA $2E                 ; $23:8355: 85 2E
LDA.w DATA_218200+1,y   ; $23:8357: B9 01 82
STA $2F                 ; $23:835A: 85 2F
INC $2F                 ; $23:835C: E6 2F
LDA #$7E                ; $23:835E: A9 7E
STA $30                 ; $23:8360: 85 30
LDA #$08                ; $23:8362: A9 08
STA $9B                 ; $23:8364: 85 9B
LDA #$02                ; $23:8366: A9 02
STA $92                 ; $23:8368: 85 92

CODE_23836A:
REP #$20                ; $23:836A: C2 20
LDA #$20FF              ; $23:836C: A9 FF 20
STA $1606               ; $23:836F: 8D 06 16
STA $160C               ; $23:8372: 8D 0C 16
SEP #$20                ; $23:8375: E2 20
LDA #$11                ; $23:8377: A9 11
STA $1602               ; $23:8379: 8D 02 16
STA $1608               ; $23:837C: 8D 08 16
LDA #$C0                ; $23:837F: A9 C0
STA $1604               ; $23:8381: 8D 04 16
STA $160A               ; $23:8384: 8D 0A 16
LDA #$0E                ; $23:8387: A9 0E
STA $1605               ; $23:8389: 8D 05 16
STA $160B               ; $23:838C: 8D 0B 16
LDX $9B                 ; $23:838F: A6 9B
STX $1603               ; $23:8391: 8E 03 16
INX                     ; $23:8394: E8
STX $1609               ; $23:8395: 8E 09 16
LDA #$FF                ; $23:8398: A9 FF
STA $160E               ; $23:839A: 8D 0E 16
LDX $20                 ; $23:839D: A6 20
INX                     ; $23:839F: E8
STX $20                 ; $23:83A0: 86 20
TXA                     ; $23:83A2: 8A
AND #$01                ; $23:83A3: 29 01
BNE CODE_2383B6         ; $23:83A5: D0 0F
LDX $9C                 ; $23:83A7: A6 9C
INX                     ; $23:83A9: E8
TXA                     ; $23:83AA: 8A
AND #$07                ; $23:83AB: 29 07
BNE CODE_2383B4         ; $23:83AD: D0 05
LDA $9C                 ; $23:83AF: A5 9C
AND #$F0                ; $23:83B1: 29 F0
TAX                     ; $23:83B3: AA

CODE_2383B4:
STX $9C                 ; $23:83B4: 86 9C

CODE_2383B6:
LDX $9B                 ; $23:83B6: A6 9B
INX                     ; $23:83B8: E8
INX                     ; $23:83B9: E8
TXA                     ; $23:83BA: 8A
AND #$1F                ; $23:83BB: 29 1F
BNE CODE_2383C1         ; $23:83BD: D0 02
LDX #$00                ; $23:83BF: A2 00

CODE_2383C1:
STX $9B                 ; $23:83C1: 86 9B
INC $9A                 ; $23:83C3: E6 9A
LDA $9A                 ; $23:83C5: A5 9A
CMP #$08                ; $23:83C7: C9 08
BNE CODE_2383D0         ; $23:83C9: D0 05
STZ $20                 ; $23:83CB: 64 20
INC $0728               ; $23:83CD: EE 28 07

CODE_2383D0:
RTS                     ; $23:83D0: 60

CODE_2383D1:
JSL CODE_29B9D1         ; $23:83D1: 22 D1 B9 29
LDA $0059               ; $23:83D5: AD 59 00
BNE CODE_2383F1         ; $23:83D8: D0 17
INC $0729               ; $23:83DA: EE 29 07
STZ $0728               ; $23:83DD: 9C 28 07
JSR CODE_238C27         ; $23:83E0: 20 27 8C
LDA $0598               ; $23:83E3: AD 98 05
BEQ CODE_2383F1         ; $23:83E6: F0 09
LDA #$03                ; $23:83E8: A9 03
STA $0291               ; $23:83EA: 8D 91 02
JSL CODE_2AF9A9         ; $23:83ED: 22 A9 F9 2A

CODE_2383F1:
RTL                     ; $23:83F1: 6B

CODE_2383F2:
LDA $0711               ; $23:83F2: AD 11 07
BNE CODE_2383FC         ; $23:83F5: D0 05
LDA #$10                ; $23:83F7: A9 10
STA $0711               ; $23:83F9: 8D 11 07

CODE_2383FC:
JSL CODE_2382FD         ; $23:83FC: 22 FD 82 23
LDA $0711               ; $23:8400: AD 11 07
BNE CODE_238408         ; $23:8403: D0 03
STZ $0500               ; $23:8405: 9C 00 05

CODE_238408:
JSL CODE_238C1B         ; $23:8408: 22 1B 8C 23
RTL                     ; $23:840C: 6B

CODE_23840D:
LDA $0728               ; $23:840D: AD 28 07

; ExecutePtrLong
JSL CODE_20FB3A         ; $23:8410: 22 3A FB 20
dl CODE_23842F
dl CODE_238441
dl CODE_238606
dl CODE_23860B
dl CODE_29AAFE
dl CODE_29ABE7
dl CODE_29AC4C
dl CODE_29AC61
dl CODE_2383F2

CODE_23842F:
DEC $02D8               ; $23:842F: CE D8 02
BNE CODE_23843A         ; $23:8432: D0 06
INC $0728               ; $23:8434: EE 28 07
STZ $02DD               ; $23:8437: 9C DD 02

CODE_23843A:
JSL CODE_2AF867         ; $23:843A: 22 67 F8 2A
JMP CODE_2385B0         ; $23:843E: 4C B0 85

CODE_238441:
LDA $02DD               ; $23:8441: AD DD 02
BEQ CODE_238452         ; $23:8444: F0 0C
DEC $02DD               ; $23:8446: CE DD 02
BNE CODE_23844F         ; $23:8449: D0 04
JML CODE_0080DE         ; $23:844B: 5C DE 80 00

CODE_23844F:
JMP CODE_238577         ; $23:844F: 4C 77 85

CODE_238452:
JSL CODE_2AF867         ; $23:8452: 22 67 F8 2A
LDA $034D               ; $23:8456: AD 4D 03
BEQ CODE_2384AD         ; $23:8459: F0 52
LDA $18                 ; $23:845B: A5 18
AND #$20                ; $23:845D: 29 20
BEQ CODE_238478         ; $23:845F: F0 17
LDA #$23                ; $23:8461: A9 23
STA $1203               ; $23:8463: 8D 03 12
LDA $1DCB               ; $23:8466: AD CB 1D
CLC                     ; $23:8469: 18
ADC #$10                ; $23:846A: 69 10
CMP #$88                ; $23:846C: C9 88
BNE CODE_238472         ; $23:846E: D0 02
LDA #$58                ; $23:8470: A9 58

CODE_238472:
STA $1DCB               ; $23:8472: 8D CB 1D
JMP CODE_238577         ; $23:8475: 4C 77 85

CODE_238478:
LDA $18                 ; $23:8478: A5 18
AND #$0C                ; $23:847A: 29 0C
BEQ CODE_2384E5         ; $23:847C: F0 67
LDX #$23                ; $23:847E: A2 23
STX $1203               ; $23:8480: 8E 03 12
AND #$08                ; $23:8483: 29 08
BEQ CODE_238498         ; $23:8485: F0 11
LDA $1DCB               ; $23:8487: AD CB 1D
SEC                     ; $23:848A: 38
SBC #$10                ; $23:848B: E9 10
CMP #$48                ; $23:848D: C9 48
BNE CODE_2384A7         ; $23:848F: D0 16
STZ $1203               ; $23:8491: 9C 03 12
LDA #$58                ; $23:8494: A9 58
BRA CODE_2384A7         ; $23:8496: 80 0F

CODE_238498:
LDA $1DCB               ; $23:8498: AD CB 1D
CLC                     ; $23:849B: 18
ADC #$10                ; $23:849C: 69 10
CMP #$88                ; $23:849E: C9 88
BNE CODE_2384A7         ; $23:84A0: D0 05
STZ $1203               ; $23:84A2: 9C 03 12
LDA #$78                ; $23:84A5: A9 78

CODE_2384A7:
STA $1DCB               ; $23:84A7: 8D CB 1D
JMP CODE_238577         ; $23:84AA: 4C 77 85

CODE_2384AD:
LDA $18                 ; $23:84AD: A5 18
AND #$20                ; $23:84AF: 29 20
BEQ CODE_2384C3         ; $23:84B1: F0 10
LDA #$23                ; $23:84B3: A9 23
STA $1203               ; $23:84B5: 8D 03 12
LDA $1DCB               ; $23:84B8: AD CB 1D
EOR #$10                ; $23:84BB: 49 10
STA $1DCB               ; $23:84BD: 8D CB 1D
JMP CODE_238577         ; $23:84C0: 4C 77 85

CODE_2384C3:
LDA $18                 ; $23:84C3: A5 18
AND #$0C                ; $23:84C5: 29 0C
BEQ CODE_2384E5         ; $23:84C7: F0 1C
LDX #$23                ; $23:84C9: A2 23
STX $1203               ; $23:84CB: 8E 03 12
LDX #$60                ; $23:84CE: A2 60
AND #$08                ; $23:84D0: 29 08
BNE CODE_2384D6         ; $23:84D2: D0 02
LDX #$70                ; $23:84D4: A2 70

CODE_2384D6:
TXA                     ; $23:84D6: 8A
EOR $1DCB               ; $23:84D7: 4D CB 1D
BNE CODE_2384DF         ; $23:84DA: D0 03
STZ $1203               ; $23:84DC: 9C 03 12

CODE_2384DF:
STX $1DCB               ; $23:84DF: 8E CB 1D
JMP CODE_238577         ; $23:84E2: 4C 77 85

CODE_2384E5:
LDA $18                 ; $23:84E5: A5 18
AND #$10                ; $23:84E7: 29 10
BNE CODE_2384EE         ; $23:84E9: D0 03
JMP CODE_238577         ; $23:84EB: 4C 77 85

CODE_2384EE:
LDA #$01                ; $23:84EE: A9 01
STA $1203               ; $23:84F0: 8D 03 12
LDX #$02                ; $23:84F3: A2 02
LDA $1DCB               ; $23:84F5: AD CB 1D
CMP #$70                ; $23:84F8: C9 70
BCC CODE_2384FE         ; $23:84FA: 90 02
LDX #$09                ; $23:84FC: A2 09

CODE_2384FE:
STX $0728               ; $23:84FE: 8E 28 07
STX $0285               ; $23:8501: 8E 85 02
LDA $1DCB               ; $23:8504: AD CB 1D
CMP #$68                ; $23:8507: C9 68
BCC CODE_23853E         ; $23:8509: 90 33
JSL CODE_238593         ; $23:850B: 22 93 85 23
LDA $034D               ; $23:850F: AD 4D 03
BEQ CODE_23853E         ; $23:8512: F0 2A
LDA #$3B                ; $23:8514: A9 3B
STA $1200               ; $23:8516: 8D 00 12
LDA $1DCB               ; $23:8519: AD CB 1D
CMP #$78                ; $23:851C: C9 78
BNE CODE_238525         ; $23:851E: D0 05
LDA #$F3                ; $23:8520: A9 F3
STA $1202               ; $23:8522: 8D 02 12

CODE_238525:
JSL CODE_00922D         ; $23:8525: 22 2D 92 00
LDA $1DCB               ; $23:8529: AD CB 1D
CMP #$78                ; $23:852C: C9 78
BNE CODE_23853E         ; $23:852E: D0 0E
LDA #$20                ; $23:8530: A9 20
STA $02DD               ; $23:8532: 8D DD 02
LDA #$01                ; $23:8535: A9 01
STA $0728               ; $23:8537: 8D 28 07
STZ $0285               ; $23:853A: 9C 85 02
RTL                     ; $23:853D: 6B

CODE_23853E:
CPX #$09                ; $23:853E: E0 09
BNE CODE_238573         ; $23:8540: D0 31
STZ $0285               ; $23:8542: 9C 85 02
STZ $0202               ; $23:8545: 9C 02 02
STZ $0201               ; $23:8548: 9C 01 02
STZ $0200               ; $23:854B: 9C 00 02
STZ $0293               ; $23:854E: 9C 93 02
STZ $0291               ; $23:8551: 9C 91 02
STZ $020A               ; $23:8554: 9C 0A 02
LDA #$03                ; $23:8557: A9 03
STA $0208               ; $23:8559: 8D 08 02
LDA $072B               ; $23:855C: AD 2B 07
CMP #$02                ; $23:855F: C9 02
BNE CODE_238568         ; $23:8561: D0 05
LDA $034D               ; $23:8563: AD 4D 03
BEQ CODE_2385D8         ; $23:8566: F0 70

CODE_238568:
STZ $0103               ; $23:8568: 9C 03 01
LDY $0726               ; $23:856B: AC 26 07
LDA #$00                ; $23:856E: A9 00
STA $073F,y             ; $23:8570: 99 3F 07

CODE_238573:
LDA #$F0                ; $23:8573: A9 F0
STA $95                 ; $23:8575: 85 95

CODE_238577:
LDY #$0D                ; $23:8577: A0 0D
LDA #$F0                ; $23:8579: A9 F0

CODE_23857B:
STA $0500,y             ; $23:857B: 99 00 05
DEY                     ; $23:857E: 88
BPL CODE_23857B         ; $23:857F: 10 FA
LDA $18                 ; $23:8581: A5 18
AND #$2C                ; $23:8583: 29 2C
BNE CODE_238590         ; $23:8585: D0 09
LDA $028F               ; $23:8587: AD 8F 02
AND #$10                ; $23:858A: 29 10
BEQ CODE_238593         ; $23:858C: F0 05
BRA CODE_2385AD         ; $23:858E: 80 1D

CODE_238590:
STZ $028F               ; $23:8590: 9C 8F 02

CODE_238593:
LDA $1DCB               ; $23:8593: AD CB 1D
STA $0895               ; $23:8596: 8D 95 08
LDA #$73                ; $23:8599: A9 73
STA $0896               ; $23:859B: 8D 96 08
LDA #$33                ; $23:859E: A9 33
STA $0897               ; $23:85A0: 8D 97 08
LDA #$4F                ; $23:85A3: A9 4F
STA $0894               ; $23:85A5: 8D 94 08
LDA #$00                ; $23:85A8: A9 00
STA $0A45               ; $23:85AA: 8D 45 0A

CODE_2385AD:
INC $028F               ; $23:85AD: EE 8F 02

CODE_2385B0:
LDY #$03                ; $23:85B0: A0 03

CODE_2385B2:
LDA.w DATA_218B26,y     ; $23:85B2: B9 26 8B
STA $0884,y             ; $23:85B5: 99 84 08
DEY                     ; $23:85B8: 88
BPL CODE_2385B2         ; $23:85B9: 10 F7
LDA $034D               ; $23:85BB: AD 4D 03
BNE CODE_2385C5         ; $23:85BE: D0 05
LDA #$42                ; $23:85C0: A9 42
STA $0885               ; $23:85C2: 8D 85 08

CODE_2385C5:
LDA $0726               ; $23:85C5: AD 26 07
BEQ CODE_2385D2         ; $23:85C8: F0 08
LDA #$7E                ; $23:85CA: A9 7E
STA $0886               ; $23:85CC: 8D 86 08
INC $0887               ; $23:85CF: EE 87 08

CODE_2385D2:
LDA #$02                ; $23:85D2: A9 02
STA $0A41               ; $23:85D4: 8D 41 0A
RTL                     ; $23:85D7: 6B

CODE_2385D8:
PHX                     ; $23:85D8: DA
LDX $0726               ; $23:85D9: AE 26 07
LDA $7E397D,x           ; $23:85DC: BF 7D 39 7E
STA $7E3975,x           ; $23:85E0: 9F 75 39 7E
LDA $7E397F,x           ; $23:85E4: BF 7F 39 7E
STA $7E3977,x           ; $23:85E8: 9F 77 39 7E
LDA $7E3981,x           ; $23:85EC: BF 81 39 7E
STA $7E3979,x           ; $23:85F0: 9F 79 39 7E
LDA $7E3985,x           ; $23:85F4: BF 85 39 7E
STA $0722,x             ; $23:85F8: 9D 22 07
LDA $7E3987,x           ; $23:85FB: BF 87 39 7E
STA $0724,x             ; $23:85FF: 9D 24 07
PLX                     ; $23:8602: FA
JMP CODE_238573         ; $23:8603: 4C 73 85

CODE_238606:
JSL CODE_2AF867         ; $23:8606: 22 67 F8 2A
RTL                     ; $23:860A: 6B

CODE_23860B:
LDA $0711               ; $23:860B: AD 11 07
BNE CODE_238615         ; $23:860E: D0 05
LDA #$10                ; $23:8610: A9 10
STA $0711               ; $23:8612: 8D 11 07

CODE_238615:
JSL CODE_2382F3         ; $23:8615: 22 F3 82 23
LDA $0728               ; $23:8619: AD 28 07
CMP #$04                ; $23:861C: C9 04
BNE CODE_23862C         ; $23:861E: D0 0C
LDA $12                 ; $23:8620: A5 12
BNE CODE_238629         ; $23:8622: D0 05
LDA $0210               ; $23:8624: AD 10 02
BEQ CODE_23862C         ; $23:8627: F0 03

CODE_238629:
INC $0728               ; $23:8629: EE 28 07

CODE_23862C:
JSL CODE_238C1B         ; $23:862C: 22 1B 8C 23
RTL                     ; $23:8630: 6B

CODE_238631:
LDA #$0D                ; $23:8631: A9 0D
STA $0729               ; $23:8633: 8D 29 07
JSL CODE_238C1B         ; $23:8636: 22 1B 8C 23
RTL                     ; $23:863A: 6B

CODE_23863B:
LDA $0711               ; $23:863B: AD 11 07
BNE CODE_238645         ; $23:863E: D0 05
LDA #$0E                ; $23:8640: A9 0E
STA $0711               ; $23:8642: 8D 11 07

CODE_238645:
DEC $0711               ; $23:8645: CE 11 07
BNE CODE_23864D         ; $23:8648: D0 03
INC $0729               ; $23:864A: EE 29 07

CODE_23864D:
JSL CODE_238C1B         ; $23:864D: 22 1B 8C 23
RTL                     ; $23:8651: 6B

CODE_238652:
LDA $20                 ; $23:8652: A5 20
BEQ CODE_238659         ; $23:8654: F0 03
JMP CODE_238758         ; $23:8656: 4C 58 87

CODE_238659:
LDA $0746               ; $23:8659: AD 46 07
BNE CODE_238661         ; $23:865C: D0 03
JMP CODE_238785         ; $23:865E: 4C 85 87

CODE_238661:
LDA $0711               ; $23:8661: AD 11 07
BNE CODE_23866B         ; $23:8664: D0 05
LDA #$20                ; $23:8666: A9 20
STA $0711               ; $23:8668: 8D 11 07

CODE_23866B:
JSL CODE_23878D         ; $23:866B: 22 8D 87 23
LDA $0711               ; $23:866F: AD 11 07
BEQ CODE_238679         ; $23:8672: F0 05
JSL CODE_238C1B         ; $23:8674: 22 1B 8C 23
RTL                     ; $23:8678: 6B

CODE_238679:
DEC $0746               ; $23:8679: CE 46 07
LDA #$15                ; $23:867C: A9 15
STA $1203               ; $23:867E: 8D 03 12
LDY $0727               ; $23:8681: AC 27 07
LDA.w DATA_218C49,y     ; $23:8684: B9 49 8C
CLC                     ; $23:8687: 18
ADC $0746               ; $23:8688: 6D 46 07
TAY                     ; $23:868B: A8
LDA.w DATA_218C29,y     ; $23:868C: B9 29 8C
STA $0746               ; $23:868F: 8D 46 07
LDA #$01                ; $23:8692: A9 01
STA $20                 ; $23:8694: 85 20
LDY $1600               ; $23:8696: AC 00 16
LDX $0746               ; $23:8699: AE 46 07
LDA.w DATA_218B2A,x     ; $23:869C: BD 2A 8B
STA $0A                 ; $23:869F: 85 0A
STA $1602,y             ; $23:86A1: 99 02 16
INY                     ; $23:86A4: C8
LDA.w DATA_218B3B,x     ; $23:86A5: BD 3B 8B
STA $0B                 ; $23:86A8: 85 0B
STA $1602,y             ; $23:86AA: 99 02 16
INY                     ; $23:86AD: C8
LDA #$00                ; $23:86AE: A9 00
STA $1602,y             ; $23:86B0: 99 02 16
INY                     ; $23:86B3: C8
LDA #$03                ; $23:86B4: A9 03
STA $1602,y             ; $23:86B6: 99 02 16
INY                     ; $23:86B9: C8
LDA $0746               ; $23:86BA: AD 46 07
ASL A                   ; $23:86BD: 0A
ASL A                   ; $23:86BE: 0A
ASL A                   ; $23:86BF: 0A
TAX                     ; $23:86C0: AA
REP #$20                ; $23:86C1: C2 20
LDA.w DATA_218B6E,x     ; $23:86C3: BD 6E 8B
STA $1602,y             ; $23:86C6: 99 02 16
INY                     ; $23:86C9: C8
INY                     ; $23:86CA: C8
LDA.w DATA_218B70,x     ; $23:86CB: BD 70 8B
STA $1602,y             ; $23:86CE: 99 02 16
INY                     ; $23:86D1: C8
INY                     ; $23:86D2: C8
LDA $0A                 ; $23:86D3: A5 0A
CLC                     ; $23:86D5: 18
ADC #$2000              ; $23:86D6: 69 00 20
STA $0A                 ; $23:86D9: 85 0A
STA $1602,y             ; $23:86DB: 99 02 16
INY                     ; $23:86DE: C8
INY                     ; $23:86DF: C8
LDA #$0300              ; $23:86E0: A9 00 03
STA $1602,y             ; $23:86E3: 99 02 16
INY                     ; $23:86E6: C8
INY                     ; $23:86E7: C8
LDA.w DATA_218B72,x     ; $23:86E8: BD 72 8B
STA $1602,y             ; $23:86EB: 99 02 16
INY                     ; $23:86EE: C8
INY                     ; $23:86EF: C8
LDA.w DATA_218B74,x     ; $23:86F0: BD 74 8B
STA $1602,y             ; $23:86F3: 99 02 16
INY                     ; $23:86F6: C8
INY                     ; $23:86F7: C8
SEP #$20                ; $23:86F8: E2 20
LDA #$FF                ; $23:86FA: A9 FF
STA $1602,y             ; $23:86FC: 99 02 16
STY $1600               ; $23:86FF: 8C 00 16
LDA $0746               ; $23:8702: AD 46 07
ASL A                   ; $23:8705: 0A
TAY                     ; $23:8706: A8
LDA.w DATA_218B4C,y     ; $23:8707: B9 4C 8B
STA $0A                 ; $23:870A: 85 0A
INY                     ; $23:870C: C8
LDA.w DATA_218B4C,y     ; $23:870D: B9 4C 8B
STA $0B                 ; $23:8710: 85 0B
LDY $0A                 ; $23:8712: A4 0A
LDA $1D00,y             ; $23:8714: B9 00 1D
AND $0B                 ; $23:8717: 25 0B
BNE CODE_238780         ; $23:8719: D0 65
LDA $1D00,y             ; $23:871B: B9 00 1D
ORA $0B                 ; $23:871E: 05 0B
STA $1D00,y             ; $23:8720: 99 00 1D
LDA $1D40,y             ; $23:8723: B9 40 1D
ORA $0B                 ; $23:8726: 05 0B
STA $1D40,y             ; $23:8728: 99 40 1D
LDX $0746               ; $23:872B: AE 46 07
LDA.w DATA_218C07,x     ; $23:872E: BD 07 8C
AND #$0F                ; $23:8731: 29 0F
ASL A                   ; $23:8733: 0A
TAY                     ; $23:8734: A8
LDA.w DATA_218200,y     ; $23:8735: B9 00 82
CLC                     ; $23:8738: 18
ADC #$F0                ; $23:8739: 69 F0
STA $0D                 ; $23:873B: 85 0D
LDA.w DATA_218200+1,y   ; $23:873D: B9 01 82
ADC #$00                ; $23:8740: 69 00
STA $0E                 ; $23:8742: 85 0E
LDA #$7E                ; $23:8744: A9 7E
STA $0F                 ; $23:8746: 85 0F
LDA.w DATA_218C07,x     ; $23:8748: BD 07 8C
LSR A                   ; $23:874B: 4A
LSR A                   ; $23:874C: 4A
LSR A                   ; $23:874D: 4A
LSR A                   ; $23:874E: 4A
ORA.w DATA_218BF6,x     ; $23:874F: 1D F6 8B
TAY                     ; $23:8752: A8
LDA.w DATA_218C18,x     ; $23:8753: BD 18 8C
STA [$0D],y             ; $23:8756: 97 0D

CODE_238758:
LDA $15                 ; $23:8758: A5 15
AND #$03                ; $23:875A: 29 03
BNE CODE_238766         ; $23:875C: D0 08
INC $20                 ; $23:875E: E6 20
LDA $20                 ; $23:8760: A5 20
CMP #$05                ; $23:8762: C9 05
BEQ CODE_238780         ; $23:8764: F0 1A

CODE_238766:
LDY $0746               ; $23:8766: AC 46 07
LDA.w DATA_218BF6,y     ; $23:8769: B9 F6 8B
STA $00                 ; $23:876C: 85 00
LDA.w DATA_218C07,y     ; $23:876E: B9 07 8C
AND #$F0                ; $23:8771: 29 F0
STA $01                 ; $23:8773: 85 01
LDY $20                 ; $23:8775: A4 20
JSL CODE_29B11F         ; $23:8777: 22 1F B1 29
JSL CODE_238C1B         ; $23:877B: 22 1B 8C 23
RTL                     ; $23:877F: 6B

CODE_238780:
STZ $0746               ; $23:8780: 9C 46 07
STZ $20                 ; $23:8783: 64 20

CODE_238785:
INC $0729               ; $23:8785: EE 29 07
JSL CODE_238C1B         ; $23:8788: 22 1B 8C 23
RTL                     ; $23:878C: 6B

CODE_23878D:
LDA $0711               ; $23:878D: AD 11 07
AND #$1F                ; $23:8790: 29 1F
BNE CODE_2387B2         ; $23:8792: D0 1E
LDA #$12                ; $23:8794: A9 12
STA $0208               ; $23:8796: 8D 08 02
LDA #$01                ; $23:8799: A9 01
STA $0209               ; $23:879B: 8D 09 02
LDA #$02                ; $23:879E: A9 02
STA $0203               ; $23:87A0: 8D 03 02
LDA #$20                ; $23:87A3: A9 20
STA $0204               ; $23:87A5: 8D 04 02
LDA $0598               ; $23:87A8: AD 98 05
BEQ CODE_2387B2         ; $23:87AB: F0 05
LDA #$01                ; $23:87AD: A9 01
STA $020B               ; $23:87AF: 8D 0B 02

CODE_2387B2:
LDA $0711               ; $23:87B2: AD 11 07
AND #$04                ; $23:87B5: 29 04
LSR A                   ; $23:87B7: 4A
TAX                     ; $23:87B8: AA
REP #$20                ; $23:87B9: C2 20
LDA.l DATA_2387E0,x     ; $23:87BB: BF E0 87 23
STA $1300               ; $23:87BF: 8D 00 13
SEP #$20                ; $23:87C2: E2 20
LDA #$01                ; $23:87C4: A9 01
STA $1500               ; $23:87C6: 8D 00 15
DEC $0711               ; $23:87C9: CE 11 07
BNE CODE_2387DF         ; $23:87CC: D0 11
LDA #$17                ; $23:87CE: A9 17
STA $0208               ; $23:87D0: 8D 08 02
STZ $0209               ; $23:87D3: 9C 09 02
STZ $0203               ; $23:87D6: 9C 03 02
STZ $0204               ; $23:87D9: 9C 04 02
STZ $020B               ; $23:87DC: 9C 0B 02

CODE_2387DF:
RTL                     ; $23:87DF: 6B

DATA_2387E0:
db $00,$00,$FF,$7F

CODE_2387E4:
LDA $7E396D             ; $23:87E4: AF 6D 39 7E
BEQ CODE_2387F4         ; $23:87E8: F0 0A
LDA #$0C                ; $23:87EA: A9 0C
STA $0729               ; $23:87EC: 8D 29 07
JSL CODE_238C1B         ; $23:87EF: 22 1B 8C 23
RTL                     ; $23:87F3: 6B

CODE_2387F4:
JSL CODE_238C1B         ; $23:87F4: 22 1B 8C 23
LDY #$0D                ; $23:87F8: A0 0D

CODE_2387FA:
LDA $053C,y             ; $23:87FA: B9 3C 05
BNE CODE_23882D         ; $23:87FD: D0 2E
DEY                     ; $23:87FF: 88
BPL CODE_2387FA         ; $23:8800: 10 F8
LDA #$08                ; $23:8802: A9 08
STA $053C               ; $23:8804: 8D 3C 05
INC $0729               ; $23:8807: EE 29 07
LDY #$0D                ; $23:880A: A0 0D

CODE_23880C:
LDA $0500,y             ; $23:880C: B9 00 05
CLC                     ; $23:880F: 18
ADC #$08                ; $23:8810: 69 08
AND #$F0                ; $23:8812: 29 F0
STA $1EED,y             ; $23:8814: 99 ED 1E
LDA $050F,y             ; $23:8817: B9 0F 05
CLC                     ; $23:881A: 18
ADC #$08                ; $23:881B: 69 08
AND #$F0                ; $23:881D: 29 F0
STA $1EFB,y             ; $23:881F: 99 FB 1E
LDA $051E,y             ; $23:8822: B9 1E 05
ADC #$00                ; $23:8825: 69 00
STA $1F09,y             ; $23:8827: 99 09 1F
DEY                     ; $23:882A: 88
BPL CODE_23880C         ; $23:882B: 10 DF

CODE_23882D:
RTL                     ; $23:882D: 6B

CODE_23882E:
LDA $0711               ; $23:882E: AD 11 07
BNE CODE_238838         ; $23:8831: D0 05
LDA #$08                ; $23:8833: A9 08
STA $0711               ; $23:8835: 8D 11 07

CODE_238838:
DEC $0711               ; $23:8838: CE 11 07
BNE CODE_23887F         ; $23:883B: D0 42
LDX $0726               ; $23:883D: AE 26 07
STZ $F2                 ; $23:8840: 64 F2
STZ $F6                 ; $23:8842: 64 F6
STZ $F3                 ; $23:8844: 64 F3
STZ $F7                 ; $23:8846: 64 F7
LDA #$FF                ; $23:8848: A9 FF
STA $7E3950,x           ; $23:884A: 9F 50 39 7E
LDA $7E396D             ; $23:884E: AF 6D 39 7E
BNE CODE_238879         ; $23:8852: D0 25
LDA $0727               ; $23:8854: AD 27 07
CMP #$02                ; $23:8857: C9 02
BNE CODE_238863         ; $23:8859: D0 08
LDA $07BC               ; $23:885B: AD BC 07
EOR #$01                ; $23:885E: 49 01
STA $07BC               ; $23:8860: 8D BC 07

CODE_238863:
LDA $072B               ; $23:8863: AD 2B 07
CMP #$01                ; $23:8866: C9 01
BEQ CODE_238879         ; $23:8868: F0 0F
LDX $0726               ; $23:886A: AE 26 07
LDA #$01                ; $23:886D: A9 01
STA $073F,x             ; $23:886F: 9D 3F 07
LDA #$0F                ; $23:8872: A9 0F
STA $0729               ; $23:8874: 8D 29 07
BRA CODE_23887F         ; $23:8877: 80 06

CODE_238879:
INC $0729               ; $23:8879: EE 29 07
STZ $0728               ; $23:887C: 9C 28 07

CODE_23887F:
JSL CODE_238C1B         ; $23:887F: 22 1B 8C 23
RTL                     ; $23:8883: 6B
LDA $0728               ; $23:8884: AD 28 07

; ExecutePtrLong
JSL CODE_20FB3A         ; $23:8887: 22 3A FB 20
dl CODE_238A0E
dl CODE_238A4E

CODE_238891:
LDA $0417               ; $23:8891: AD 17 04

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:8894: 22 1F FB 20
dw CODE_2388A6
dw CODE_2388A6
dw CODE_238922
dw CODE_238922
dw CODE_238951
dw CODE_238956
dw CODE_2389FE

CODE_2388A6:
LDX $20                 ; $23:88A6: A6 20
LDA $24                 ; $23:88A8: A5 24
CLC                     ; $23:88AA: 18
ADC.w DATA_218C5A,x     ; $23:88AB: 7D 5A 8C
PHA                     ; $23:88AE: 48
AND #$F0                ; $23:88AF: 29 F0
LSR A                   ; $23:88B1: 4A
LSR A                   ; $23:88B2: 4A
LSR A                   ; $23:88B3: 4A
TAY                     ; $23:88B4: A8
LDA.w DATA_218200,y     ; $23:88B5: B9 00 82
CLC                     ; $23:88B8: 18
ADC #$F0                ; $23:88B9: 69 F0
STA $2E                 ; $23:88BB: 85 2E
LDA.w DATA_218200+1,y   ; $23:88BD: B9 01 82
ADC #$00                ; $23:88C0: 69 00
STA $2F                 ; $23:88C2: 85 2F
PLA                     ; $23:88C4: 68
AND #$0F                ; $23:88C5: 29 0F
STA $04                 ; $23:88C7: 85 04
LDX #$00                ; $23:88C9: A2 00
LDA $20                 ; $23:88CB: A5 20
AND #$01                ; $23:88CD: 29 01
BEQ CODE_2388D3         ; $23:88CF: F0 02
LDX #$06                ; $23:88D1: A2 06

CODE_2388D3:
LDY $04                 ; $23:88D3: A4 04
LDA [$2E],y             ; $23:88D5: B7 2E
AND #$C0                ; $23:88D7: 29 C0
STA $00                 ; $23:88D9: 85 00
INY                     ; $23:88DB: C8
LDA [$2E],y             ; $23:88DC: B7 2E
AND #$C0                ; $23:88DE: 29 C0
STA $01                 ; $23:88E0: 85 01
TYA                     ; $23:88E2: 98
CLC                     ; $23:88E3: 18
ADC #$0F                ; $23:88E4: 69 0F
TAY                     ; $23:88E6: A8
LDA [$2E],y             ; $23:88E7: B7 2E
AND #$C0                ; $23:88E9: 29 C0
STA $02                 ; $23:88EB: 85 02
INY                     ; $23:88ED: C8
LDA [$2E],y             ; $23:88EE: B7 2E
AND #$C0                ; $23:88F0: 29 C0
STA $03                 ; $23:88F2: 85 03
LDA $00                 ; $23:88F4: A5 00
LSR A                   ; $23:88F6: 4A
LSR A                   ; $23:88F7: 4A
ORA $01                 ; $23:88F8: 05 01
LSR A                   ; $23:88FA: 4A
LSR A                   ; $23:88FB: 4A
ORA $02                 ; $23:88FC: 05 02
LSR A                   ; $23:88FE: 4A
LSR A                   ; $23:88FF: 4A
ORA $03                 ; $23:8900: 05 03
STA $1EC0,x             ; $23:8902: 9D C0 1E
INX                     ; $23:8905: E8
LDA $04                 ; $23:8906: A5 04
CLC                     ; $23:8908: 18
ADC #$20                ; $23:8909: 69 20
STA $04                 ; $23:890B: 85 04
AND #$F0                ; $23:890D: 29 F0
CMP #$C0                ; $23:890F: C9 C0
BNE CODE_2388D3         ; $23:8911: D0 C0
INC $20                 ; $23:8913: E6 20
LDA $20                 ; $23:8915: A5 20
AND #$01                ; $23:8917: 29 01
BNE CODE_23891F         ; $23:8919: D0 04
LDA #$00                ; $23:891B: A9 00
STA $20                 ; $23:891D: 85 20

CODE_23891F:
JMP CODE_23894C         ; $23:891F: 4C 4C 89

CODE_238922:
LDA $0417               ; $23:8922: AD 17 04
CMP #$02                ; $23:8925: C9 02
BNE CODE_23893D         ; $23:8927: D0 14
LDY #$12                ; $23:8929: A0 12
INC $20                 ; $23:892B: E6 20
LDA $20                 ; $23:892D: A5 20
CMP #$04                ; $23:892F: C9 04
BNE CODE_23893A         ; $23:8931: D0 07
LDA #$00                ; $23:8933: A9 00
STA $20                 ; $23:8935: 85 20
INC $0417               ; $23:8937: EE 17 04

CODE_23893A:
JMP CODE_23894C         ; $23:893A: 4C 4C 89

CODE_23893D:
INC $20                 ; $23:893D: E6 20
LDA $20                 ; $23:893F: A5 20
AND #$01                ; $23:8941: 29 01
BNE CODE_23894C         ; $23:8943: D0 07
LDA #$00                ; $23:8945: A9 00
STA $0417               ; $23:8947: 8D 17 04
STA $20                 ; $23:894A: 85 20

CODE_23894C:
JSL CODE_238DD7         ; $23:894C: 22 D7 8D 23
RTL                     ; $23:8950: 6B

CODE_238951:
STZ $20                 ; $23:8951: 64 20
INC $0417               ; $23:8953: EE 17 04

CODE_238956:
LDY $20                 ; $23:8956: A4 20
LDA $24                 ; $23:8958: A5 24
CLC                     ; $23:895A: 18
ADC.w DATA_218C97,y     ; $23:895B: 79 97 8C
STA $24                 ; $23:895E: 85 24
AND #$F0                ; $23:8960: 29 F0
LSR A                   ; $23:8962: 4A
LSR A                   ; $23:8963: 4A
LSR A                   ; $23:8964: 4A
TAY                     ; $23:8965: A8
LDA.w DATA_218200,y     ; $23:8966: B9 00 82
STA $2E                 ; $23:8969: 85 2E
LDA.w DATA_218200+1,y   ; $23:896B: B9 01 82
STA $2F                 ; $23:896E: 85 2F
INC $2F                 ; $23:8970: E6 2F
LDA #$7E                ; $23:8972: A9 7E
STA $30                 ; $23:8974: 85 30
LDA $24                 ; $23:8976: A5 24
AND #$0F                ; $23:8978: 29 0F
STA $00                 ; $23:897A: 85 00
LDX #$00                ; $23:897C: A2 00

CODE_23897E:
LDA $070A               ; $23:897E: AD 0A 07
ASL A                   ; $23:8981: 0A
TAY                     ; $23:8982: A8
LDA.w DATA_21CE5A,y     ; $23:8983: B9 5A CE
STA $0D                 ; $23:8986: 85 0D
LDA.w DATA_21CE5A+1,y   ; $23:8988: B9 5B CE
STA $0E                 ; $23:898B: 85 0E
LDY $070A               ; $23:898D: AC 0A 07
LDA.w DATA_21CE80,y     ; $23:8990: B9 80 CE
STA $0F                 ; $23:8993: 85 0F
LDY $00                 ; $23:8995: A4 00
LDA [$2E],y             ; $23:8997: B7 2E
REP #$30                ; $23:8999: C2 30
AND #$00FF              ; $23:899B: 29 FF 00
ASL A                   ; $23:899E: 0A
ASL A                   ; $23:899F: 0A
ASL A                   ; $23:89A0: 0A
TAY                     ; $23:89A1: A8
TXA                     ; $23:89A2: 8A
AND #$00FF              ; $23:89A3: 29 FF 00
TAX                     ; $23:89A6: AA
LDA $20                 ; $23:89A7: A5 20
AND #$0001              ; $23:89A9: 29 01 00
BNE CODE_2389B2         ; $23:89AC: D0 04
INY                     ; $23:89AE: C8
INY                     ; $23:89AF: C8
INY                     ; $23:89B0: C8
INY                     ; $23:89B1: C8

CODE_2389B2:
LDA [$0D],y             ; $23:89B2: B7 0D
STA $03C2,x             ; $23:89B4: 9D C2 03
INY                     ; $23:89B7: C8
INY                     ; $23:89B8: C8
LDA [$0D],y             ; $23:89B9: B7 0D
STA $03C4,x             ; $23:89BB: 9D C4 03
INX                     ; $23:89BE: E8
INX                     ; $23:89BF: E8
INX                     ; $23:89C0: E8
INX                     ; $23:89C1: E8
SEP #$30                ; $23:89C2: E2 30
LDA $00                 ; $23:89C4: A5 00
CLC                     ; $23:89C6: 18
ADC #$10                ; $23:89C7: 69 10
STA $00                 ; $23:89C9: 85 00
AND #$F0                ; $23:89CB: 29 F0
CMP #$B0                ; $23:89CD: C9 B0
BNE CODE_23897E         ; $23:89CF: D0 AD
LDA $24                 ; $23:89D1: A5 24
AND #$0F                ; $23:89D3: 29 0F
ASL A                   ; $23:89D5: 0A
TAY                     ; $23:89D6: A8
LDA $20                 ; $23:89D7: A5 20
AND #$01                ; $23:89D9: 29 01
BNE CODE_2389DE         ; $23:89DB: D0 01
INY                     ; $23:89DD: C8

CODE_2389DE:
STY $0381               ; $23:89DE: 8C 81 03
LDX #$00                ; $23:89E1: A2 00
LDA $24                 ; $23:89E3: A5 24
AND #$10                ; $23:89E5: 29 10
BEQ CODE_2389EB         ; $23:89E7: F0 02
LDX #$04                ; $23:89E9: A2 04

CODE_2389EB:
STX $0380               ; $23:89EB: 8E 80 03
INC $20                 ; $23:89EE: E6 20
LDA $20                 ; $23:89F0: A5 20
CMP #$04                ; $23:89F2: C9 04
BNE CODE_2389FB         ; $23:89F4: D0 05
STZ $20                 ; $23:89F6: 64 20
INC $0417               ; $23:89F8: EE 17 04

CODE_2389FB:
JMP CODE_23894C         ; $23:89FB: 4C 4C 89

CODE_2389FE:
INC $20                 ; $23:89FE: E6 20
LDA $20                 ; $23:8A00: A5 20
AND #$01                ; $23:8A02: 29 01
BNE CODE_238A0B         ; $23:8A04: D0 05
STZ $0417               ; $23:8A06: 9C 17 04
STZ $20                 ; $23:8A09: 64 20

CODE_238A0B:
JMP CODE_23894C         ; $23:8A0B: 4C 4C 89

CODE_238A0E:
INC $0728               ; $23:8A0E: EE 28 07
JSL CODE_238C1B         ; $23:8A11: 22 1B 8C 23
RTL                     ; $23:8A15: 6B
LDX $0726               ; $23:8A16: AE 26 07
LDA #$00                ; $23:8A19: A9 00
STA $072C               ; $23:8A1B: 8D 2C 07
STA $7E3994             ; $23:8A1E: 8F 94 39 7E
STA $073D,x             ; $23:8A22: 9D 3D 07
STA $070F               ; $23:8A25: 8D 0F 07
JSL CODE_238C1B         ; $23:8A28: 22 1B 8C 23
RTS                     ; $23:8A2C: 60
LDA #$03                ; $23:8A2D: A9 03
STA $0713               ; $23:8A2F: 8D 13 07
LDA #$80                ; $23:8A32: A9 80
STA $0711               ; $23:8A34: 8D 11 07
LDX $0726               ; $23:8A37: AE 26 07
LDA #$00                ; $23:8A3A: A9 00
STA $072C               ; $23:8A3C: 8D 2C 07
STA $7E3994             ; $23:8A3F: 8F 94 39 7E
STA $073D,x             ; $23:8A43: 9D 3D 07
INC $0728               ; $23:8A46: EE 28 07
JSL CODE_238C1B         ; $23:8A49: 22 1B 8C 23
RTS                     ; $23:8A4D: 60

CODE_238A4E:
LDA #$00                ; $23:8A4E: A9 00
STA $7E396D             ; $23:8A50: 8F 6D 39 7E
STA $7E3972             ; $23:8A54: 8F 72 39 7E
LDX $0726               ; $23:8A58: AE 26 07
LDA $49,x               ; $23:8A5B: B5 49
BEQ CODE_238A62         ; $23:8A5D: F0 03
JMP CODE_238BD5         ; $23:8A5F: 4C D5 8B

CODE_238A62:
LDA $0710               ; $23:8A62: AD 10 07
BEQ CODE_238A6A         ; $23:8A65: F0 03
BRL CODE_238B9D         ; $23:8A67: 82 33 01

CODE_238A6A:
LDA $18                 ; $23:8A6A: A5 18
AND #$0F                ; $23:8A6C: 29 0F
BEQ CODE_238A75         ; $23:8A6E: F0 05
LDA #$01                ; $23:8A70: A9 01
STA $1200               ; $23:8A72: 8D 00 12

CODE_238A75:
JSL CODE_238DD8         ; $23:8A75: 22 D8 8D 23
AND #$C0                ; $23:8A79: 29 C0
CLC                     ; $23:8A7B: 18
ROL A                   ; $23:8A7C: 2A
ROL A                   ; $23:8A7D: 2A
ROL A                   ; $23:8A7E: 2A
TAY                     ; $23:8A7F: A8
LDA $B3                 ; $23:8A80: A5 B3
CMP $1E9A,y             ; $23:8A82: D9 9A 1E
BCC CODE_238A9F         ; $23:8A85: 90 18
LDA $17                 ; $23:8A87: A5 17
AND #$0F                ; $23:8A89: 29 0F
BEQ CODE_238A9F         ; $23:8A8B: F0 12
LDY #$03                ; $23:8A8D: A0 03

CODE_238A8F:
CMP.w DATA_218DB4,y     ; $23:8A8F: D9 B4 8D
BEQ CODE_238A97         ; $23:8A92: F0 03
DEY                     ; $23:8A94: 88
BNE CODE_238A8F         ; $23:8A95: D0 F8

CODE_238A97:
LDA $1DD5               ; $23:8A97: AD D5 1D
CMP.w DATA_218DB8,y     ; $23:8A9A: D9 B8 8D
BNE CODE_238AA2         ; $23:8A9D: D0 03

CODE_238A9F:
BRL CODE_238B1A         ; $23:8A9F: 82 78 00

CODE_238AA2:
LDA $1DD5               ; $23:8AA2: AD D5 1D
PHA                     ; $23:8AA5: 48
JSR CODE_238E15         ; $23:8AA6: 20 15 8E
PLA                     ; $23:8AA9: 68
STA $1DD5               ; $23:8AAA: 8D D5 1D
LDA $1203               ; $23:8AAD: AD 03 12
BEQ CODE_238B17         ; $23:8AB0: F0 65
LDA $0429               ; $23:8AB2: AD 29 04
CMP #$07                ; $23:8AB5: C9 07
BEQ CODE_238ACB         ; $23:8AB7: F0 12
LDX $0726               ; $23:8AB9: AE 26 07
LDA #$00                ; $23:8ABC: A9 00
STA $49,x               ; $23:8ABE: 95 49
STA $1203               ; $23:8AC0: 8D 03 12
LDA #$01                ; $23:8AC3: A9 01
STA $1200               ; $23:8AC5: 8D 00 12
JMP CODE_238B27         ; $23:8AC8: 4C 27 8B

CODE_238ACB:
LDA $03                 ; $23:8ACB: A5 03
AND #$0F                ; $23:8ACD: 29 0F
STA $1DD5               ; $23:8ACF: 8D D5 1D
LDX $0726               ; $23:8AD2: AE 26 07
LDA $0747,x             ; $23:8AD5: BD 47 07
STA $0429               ; $23:8AD8: 8D 29 04
REP #$30                ; $23:8ADB: C2 30
LDA $0429               ; $23:8ADD: AD 29 04
AND #$00FF              ; $23:8AE0: 29 FF 00
ASL A                   ; $23:8AE3: 0A
STA $D8                 ; $23:8AE4: 85 D8
LDA.l DATA_29C81D,x     ; $23:8AE6: BF 1D C8 29
AND #$00FF              ; $23:8AEA: 29 FF 00
ASL A                   ; $23:8AED: 0A
CLC                     ; $23:8AEE: 18
ADC $D8                 ; $23:8AEF: 65 D8
TAX                     ; $23:8AF1: AA
LDA.l PNTR_29C7E3,x     ; $23:8AF2: BF E3 C7 29
PHB                     ; $23:8AF6: 8B
TAX                     ; $23:8AF7: AA
LDY #$14E0              ; $23:8AF8: A0 E0 14
LDA #$001F              ; $23:8AFB: A9 1F 00

; first data pointer in above table
MVN $00,DATA_3C88A0>>16 ; $23:8AFE: 54 00 3C
PLB                     ; $23:8B01: AB
LDX #$001E              ; $23:8B02: A2 1E 00

CODE_238B05:
LDA $14E0,x             ; $23:8B05: BD E0 14
STA $7FC500,x           ; $23:8B08: 9F 00 C5 7F
DEX                     ; $23:8B0C: CA
DEX                     ; $23:8B0D: CA
BPL CODE_238B05         ; $23:8B0E: 10 F5
SEP #$30                ; $23:8B10: E2 30
LDA #$01                ; $23:8B12: A9 01
STA $1500               ; $23:8B14: 8D 00 15

CODE_238B17:
JMP CODE_238B1D         ; $23:8B17: 4C 1D 8B

CODE_238B1A:
JSR CODE_238E15         ; $23:8B1A: 20 15 8E

CODE_238B1D:
LDX $0726               ; $23:8B1D: AE 26 07
LDA $49,x               ; $23:8B20: B5 49
BEQ CODE_238B27         ; $23:8B22: F0 03
JMP CODE_238BD5         ; $23:8B24: 4C D5 8B

CODE_238B27:
LDA $B3                 ; $23:8B27: A5 B3
CMP #$BC                ; $23:8B29: C9 BC
BNE CODE_238B3C         ; $23:8B2B: D0 0F
LDX $0726               ; $23:8B2D: AE 26 07
LDA $F8,x               ; $23:8B30: B5 F8
BMI CODE_238B4D         ; $23:8B32: 30 19
LDA $F6,x               ; $23:8B34: B5 F6
AND #$80                ; $23:8B36: 29 80
BNE CODE_238B4D         ; $23:8B38: D0 13
BRA CODE_238B4A         ; $23:8B3A: 80 0E

CODE_238B3C:
LDA $F8                 ; $23:8B3C: A5 F8
ORA $F9                 ; $23:8B3E: 05 F9
BMI CODE_238B4D         ; $23:8B40: 30 0B
LDA $F6                 ; $23:8B42: A5 F6
ORA $F7                 ; $23:8B44: 05 F7
AND #$80                ; $23:8B46: 29 80
BNE CODE_238B4D         ; $23:8B48: D0 03

CODE_238B4A:
JMP CODE_238BD0         ; $23:8B4A: 4C D0 8B

CODE_238B4D:
LDA $072B               ; $23:8B4D: AD 2B 07
CMP #$02                ; $23:8B50: C9 02
BNE CODE_238BA7         ; $23:8B52: D0 53
LDX $0726               ; $23:8B54: AE 26 07
TXA                     ; $23:8B57: 8A
EOR #$01                ; $23:8B58: 49 01
TAY                     ; $23:8B5A: A8
LDA $0736,y             ; $23:8B5B: B9 36 07
CMP #$FF                ; $23:8B5E: C9 FF
BEQ CODE_238BA7         ; $23:8B60: F0 45
LDA $45,x               ; $23:8B62: B5 45
CMP $0045,y             ; $23:8B64: D9 45 00
BNE CODE_238BA7         ; $23:8B67: D0 3E
LDA $43,x               ; $23:8B69: B5 43
CMP $0043,y             ; $23:8B6B: D9 43 00
BNE CODE_238BA7         ; $23:8B6E: D0 37
LDA $47,x               ; $23:8B70: B5 47
CMP $0047,y             ; $23:8B72: D9 47 00
BNE CODE_238BA7         ; $23:8B75: D0 30
LDA $701FF4             ; $23:8B77: AF F4 1F 70
BNE CODE_238BA2         ; $23:8B7B: D0 25
LDA $701FF6             ; $23:8B7D: AF F6 1F 70
CMP #$02                ; $23:8B81: C9 02
BNE CODE_238BA2         ; $23:8B83: D0 1D
LDA #$12                ; $23:8B85: A9 12
STA $1D                 ; $23:8B87: 85 1D

CODE_238B89:
LDA #$10                ; $23:8B89: A9 10
STA $0729               ; $23:8B8B: 8D 29 07

CODE_238B8E:
LDX $0726               ; $23:8B8E: AE 26 07
LDA #$00                ; $23:8B91: A9 00
STA $073F,x             ; $23:8B93: 9D 3F 07
STA $0728               ; $23:8B96: 8D 28 07
STA $7E396D             ; $23:8B99: 8F 6D 39 7E

CODE_238B9D:
JSL CODE_238C1B         ; $23:8B9D: 22 1B 8C 23
RTL                     ; $23:8BA1: 6B

CODE_238BA2:
LDA #$2A                ; $23:8BA2: A9 2A
STA $1203               ; $23:8BA4: 8D 03 12

CODE_238BA7:
LDX $0726               ; $23:8BA7: AE 26 07
LDA $F8,x               ; $23:8BAA: B5 F8
BMI CODE_238BB4         ; $23:8BAC: 30 06
LDA $18                 ; $23:8BAE: A5 18
AND #$80                ; $23:8BB0: 29 80
BEQ CODE_238BD0         ; $23:8BB2: F0 1C

CODE_238BB4:
LDA $B3                 ; $23:8BB4: A5 B3
LDY #$0A                ; $23:8BB6: A0 0A

CODE_238BB8:
CMP.w DATA_218CD9,y     ; $23:8BB8: D9 D9 8C
BEQ CODE_238B89         ; $23:8BBB: F0 CC
DEY                     ; $23:8BBD: 88
BPL CODE_238BB8         ; $23:8BBE: 10 F8
LDA $B3                 ; $23:8BC0: A5 B3
AND #$C0                ; $23:8BC2: 29 C0
CLC                     ; $23:8BC4: 18
ROL A                   ; $23:8BC5: 2A
ROL A                   ; $23:8BC6: 2A
ROL A                   ; $23:8BC7: 2A
TAY                     ; $23:8BC8: A8
LDA $B3                 ; $23:8BC9: A5 B3
CMP $1E9A,y             ; $23:8BCB: D9 9A 1E
BCS CODE_238B89         ; $23:8BCE: B0 B9

CODE_238BD0:
JSL CODE_238C1B         ; $23:8BD0: 22 1B 8C 23
RTL                     ; $23:8BD4: 6B

CODE_238BD5:
DEC $49,x               ; $23:8BD5: D6 49
DEC $49,x               ; $23:8BD7: D6 49
LDA $4B,x               ; $23:8BD9: B5 4B
LDY $0597               ; $23:8BDB: AC 97 05
BEQ CODE_238BE5         ; $23:8BDE: F0 05
CLC                     ; $23:8BE0: 18
ADC #$1B                ; $23:8BE1: 69 1B
INC $49,x               ; $23:8BE3: F6 49

CODE_238BE5:
TAY                     ; $23:8BE5: A8
LDA $43,x               ; $23:8BE6: B5 43
CLC                     ; $23:8BE8: 18
ADC.w DATA_218C9B,y     ; $23:8BE9: 79 9B 8C
STA $43,x               ; $23:8BEC: 95 43
LDA $47,x               ; $23:8BEE: B5 47
CLC                     ; $23:8BF0: 18
ADC.w DATA_218CA4,y     ; $23:8BF1: 79 A4 8C
STA $47,x               ; $23:8BF4: 95 47
LDA $45,x               ; $23:8BF6: B5 45
ADC.w DATA_218CAD,y     ; $23:8BF8: 79 AD 8C
STA $45,x               ; $23:8BFB: 95 45
LDA $49,x               ; $23:8BFD: B5 49
AND #$1F                ; $23:8BFF: 29 1F
BNE CODE_238C1B         ; $23:8C01: D0 18
JSL CODE_238DD8         ; $23:8C03: 22 D8 8D 23
CMP #$E6                ; $23:8C07: C9 E6
BNE CODE_238C1B         ; $23:8C09: D0 10
LDX $0726               ; $23:8C0B: AE 26 07
LDA $0783,x             ; $23:8C0E: BD 83 07
AND #$01                ; $23:8C11: 29 01
BNE CODE_238C1B         ; $23:8C13: D0 06
INC $0729               ; $23:8C15: EE 29 07
JMP CODE_238B8E         ; $23:8C18: 4C 8E 8B

CODE_238C1B:
LDY $0726               ; $23:8C1B: AC 26 07
LDA $0052,y             ; $23:8C1E: B9 52 00
STA $02                 ; $23:8C21: 85 02
JSR CODE_238C27         ; $23:8C23: 20 27 8C
RTL                     ; $23:8C26: 6B

CODE_238C27:
LDX $0726               ; $23:8C27: AE 26 07
LDA $43,x               ; $23:8C2A: B5 43
CMP #$F0                ; $23:8C2C: C9 F0
BEQ CODE_238C39         ; $23:8C2E: F0 09
STA $0889               ; $23:8C30: 8D 89 08
SEC                     ; $23:8C33: 38
SBC #$10                ; $23:8C34: E9 10
STA $0885               ; $23:8C36: 8D 85 08

CODE_238C39:
LDA $47,x               ; $23:8C39: B5 47
SEC                     ; $23:8C3B: 38
SBC $0210               ; $23:8C3C: ED 10 02
STA $0884               ; $23:8C3F: 8D 84 08
STA $0888               ; $23:8C42: 8D 88 08
LDA $0429               ; $23:8C45: AD 29 04
ASL A                   ; $23:8C48: 0A
TAX                     ; $23:8C49: AA
LDA $15                 ; $23:8C4A: A5 15
AND #$08                ; $23:8C4C: 29 08
BEQ CODE_238C55         ; $23:8C4E: F0 05
TXA                     ; $23:8C50: 8A
CLC                     ; $23:8C51: 18
ADC #$12                ; $23:8C52: 69 12
TAX                     ; $23:8C54: AA

CODE_238C55:
LDA $0726               ; $23:8C55: AD 26 07
BEQ CODE_238C6A         ; $23:8C58: F0 10
LDA.w DATA_218D54,x     ; $23:8C5A: BD 54 8D
ORA #$01                ; $23:8C5D: 09 01
STA $0887               ; $23:8C5F: 8D 87 08
LDA.w DATA_218D30,x     ; $23:8C62: BD 30 8D
STA $0886               ; $23:8C65: 8D 86 08
BRA CODE_238C76         ; $23:8C68: 80 0C

CODE_238C6A:
LDA.w DATA_218D54,x     ; $23:8C6A: BD 54 8D
STA $0887               ; $23:8C6D: 8D 87 08
LDA.w DATA_218D0C,x     ; $23:8C70: BD 0C 8D
STA $0886               ; $23:8C73: 8D 86 08

CODE_238C76:
LDA $0726               ; $23:8C76: AD 26 07
BEQ CODE_238C8B         ; $23:8C79: F0 10
LDA.w DATA_218D31,x     ; $23:8C7B: BD 31 8D
STA $088A               ; $23:8C7E: 8D 8A 08
LDA.w DATA_218D55,x     ; $23:8C81: BD 55 8D
ORA #$01                ; $23:8C84: 09 01
STA $088B               ; $23:8C86: 8D 8B 08
BRA CODE_238C97         ; $23:8C89: 80 0C

CODE_238C8B:
LDA.w DATA_218D0D,x     ; $23:8C8B: BD 0D 8D
STA $088A               ; $23:8C8E: 8D 8A 08
LDA.w DATA_218D55,x     ; $23:8C91: BD 55 8D
STA $088B               ; $23:8C94: 8D 8B 08

CODE_238C97:
LDA $0428               ; $23:8C97: AD 28 04
BEQ CODE_238CAD         ; $23:8C9A: F0 11
DEC $02C6               ; $23:8C9C: CE C6 02
BPL CODE_238CA9         ; $23:8C9F: 10 08
LDA #$03                ; $23:8CA1: A9 03
STA $02C6               ; $23:8CA3: 8D C6 02
INC $02C7               ; $23:8CA6: EE C7 02

CODE_238CA9:
JSL CODE_29CDB2         ; $23:8CA9: 22 B2 CD 29

CODE_238CAD:
LDA #$02                ; $23:8CAD: A9 02
STA $0A41               ; $23:8CAF: 8D 41 0A
STA $0A42               ; $23:8CB2: 8D 42 0A
LDA $0886               ; $23:8CB5: AD 86 08
CMP #$26                ; $23:8CB8: C9 26
BNE CODE_238CC1         ; $23:8CBA: D0 05
LDA #$F0                ; $23:8CBC: A9 F0
STA $0885               ; $23:8CBE: 8D 85 08

CODE_238CC1:
LDX $0726               ; $23:8CC1: AE 26 07
LDA $005A,x             ; $23:8CC4: BD 5A 00
BNE CODE_238CEE         ; $23:8CC7: D0 25
LDA $0729               ; $23:8CC9: AD 29 07
CMP #$06                ; $23:8CCC: C9 06
BCC CODE_238D02         ; $23:8CCE: 90 32
CMP #$0D                ; $23:8CD0: C9 0D
BCC CODE_238CD8         ; $23:8CD2: 90 04
CMP #$0F                ; $23:8CD4: C9 0F
BNE CODE_238D02         ; $23:8CD6: D0 2A

CODE_238CD8:
LDX $0726               ; $23:8CD8: AE 26 07
LDA.w DATA_218D78,x     ; $23:8CDB: BD 78 8D
STA $088A               ; $23:8CDE: 8D 8A 08
LDA.w DATA_218D7A,x     ; $23:8CE1: BD 7A 8D
STA $088B               ; $23:8CE4: 8D 8B 08
LDA #$F0                ; $23:8CE7: A9 F0
STA $0885               ; $23:8CE9: 8D 85 08
BRA CODE_238D02         ; $23:8CEC: 80 14

CODE_238CEE:
DEC $64                 ; $23:8CEE: C6 64
LDA $64                 ; $23:8CF0: A5 64
AND #$06                ; $23:8CF2: 29 06
LSR A                   ; $23:8CF4: 4A
TAY                     ; $23:8CF5: A8
LDA.w DATA_218D80,y     ; $23:8CF6: B9 80 8D
STA $088A               ; $23:8CF9: 8D 8A 08
LDA.w DATA_218D84,y     ; $23:8CFC: B9 84 8D
STA $088B               ; $23:8CFF: 8D 8B 08

CODE_238D02:
LDA $0729               ; $23:8D02: AD 29 07
CMP #$02                ; $23:8D05: C9 02
BEQ CODE_238D15         ; $23:8D07: F0 0C
LDX $0726               ; $23:8D09: AE 26 07
LDA $073F,x             ; $23:8D0C: BD 3F 07
BNE CODE_238D53         ; $23:8D0F: D0 42
LDA $59                 ; $23:8D11: A5 59
BNE CODE_238D53         ; $23:8D13: D0 3E

CODE_238D15:
LDA $0710               ; $23:8D15: AD 10 07
BNE CODE_238D53         ; $23:8D18: D0 39
LDA $0727               ; $23:8D1A: AD 27 07
CMP #$07                ; $23:8D1D: C9 07
BEQ CODE_238D53         ; $23:8D1F: F0 32
CMP #$04                ; $23:8D21: C9 04
BEQ CODE_238D53         ; $23:8D23: F0 2E
LDA $0884               ; $23:8D25: AD 84 08
CMP #$D0                ; $23:8D28: C9 D0
BCC CODE_238D3A         ; $23:8D2A: 90 0E
LDY $0727               ; $23:8D2C: AC 27 07
LDA $23                 ; $23:8D2F: A5 23
CMP.w DATA_218D04,y     ; $23:8D31: D9 04 8D
BEQ CODE_238D53         ; $23:8D34: F0 1D
LDX #$00                ; $23:8D36: A2 00
BRA CODE_238D47         ; $23:8D38: 80 0D

CODE_238D3A:
LDA $24                 ; $23:8D3A: A5 24
BEQ CODE_238D53         ; $23:8D3C: F0 15
LDA $0884               ; $23:8D3E: AD 84 08
CMP #$21                ; $23:8D41: C9 21
BCS CODE_238D53         ; $23:8D43: B0 0E
LDX #$01                ; $23:8D45: A2 01

CODE_238D47:
STX $25                 ; $23:8D47: 86 25
LDA #$80                ; $23:8D49: A9 80
STA $0710               ; $23:8D4B: 8D 10 07
LDA #$04                ; $23:8D4E: A9 04
STA $0417               ; $23:8D50: 8D 17 04

CODE_238D53:
LDA $072B               ; $23:8D53: AD 2B 07
CMP #$01                ; $23:8D56: C9 01
BEQ CODE_238D9E         ; $23:8D58: F0 44
LDA $0727               ; $23:8D5A: AD 27 07
CMP #$08                ; $23:8D5D: C9 08
BEQ CODE_238D9E         ; $23:8D5F: F0 3D
LDA $0726               ; $23:8D61: AD 26 07
EOR #$01                ; $23:8D64: 49 01
TAX                     ; $23:8D66: AA
LDA $0736,x             ; $23:8D67: BD 36 07
BMI CODE_238D9E         ; $23:8D6A: 30 32
LDA $47,x               ; $23:8D6C: B5 47
SEC                     ; $23:8D6E: 38
SBC $0210               ; $23:8D6F: ED 10 02
BEQ CODE_238D9E         ; $23:8D72: F0 2A
LDA $45,x               ; $23:8D74: B5 45
SBC #$00                ; $23:8D76: E9 00
CMP $12                 ; $23:8D78: C5 12
BNE CODE_238D9E         ; $23:8D7A: D0 22
LDA $43,x               ; $23:8D7C: B5 43
STA $0895               ; $23:8D7E: 8D 95 08
LDA.w DATA_218D78,x     ; $23:8D81: BD 78 8D
STA $0896               ; $23:8D84: 8D 96 08
LDA.w DATA_218D7A,x     ; $23:8D87: BD 7A 8D
STA $0897               ; $23:8D8A: 8D 97 08
LDA $47,x               ; $23:8D8D: B5 47
SEC                     ; $23:8D8F: 38
SBC $0210               ; $23:8D90: ED 10 02
SEC                     ; $23:8D93: 38
SBC #$04                ; $23:8D94: E9 04
STA $0894               ; $23:8D96: 8D 94 08
LDA #$02                ; $23:8D99: A9 02
STA $0A45               ; $23:8D9B: 8D 45 0A

CODE_238D9E:
LDA $0729               ; $23:8D9E: AD 29 07
CMP #$01                ; $23:8DA1: C9 01
BCC CODE_238DA9         ; $23:8DA3: 90 04
JSL CODE_29B7AE         ; $23:8DA5: 22 AE B7 29

CODE_238DA9:
LDA $0727               ; $23:8DA9: AD 27 07
CMP #$08                ; $23:8DAC: C9 08
BNE CODE_238DB3         ; $23:8DAE: D0 03
JSR CODE_238DB4         ; $23:8DB0: 20 B4 8D

CODE_238DB3:
RTS                     ; $23:8DB3: 60

CODE_238DB4:
LDY #$1B                ; $23:8DB4: A0 1B

CODE_238DB6:
LDA.w DATA_218D98,y     ; $23:8DB6: B9 98 8D
STA $0898,y             ; $23:8DB9: 99 98 08
DEY                     ; $23:8DBC: 88
BPL CODE_238DB6         ; $23:8DBD: 10 F7
LDA #$00                ; $23:8DBF: A9 00
STA $0A46               ; $23:8DC1: 8D 46 0A
STA $0A47               ; $23:8DC4: 8D 47 0A
STA $0A48               ; $23:8DC7: 8D 48 0A
STA $0A49               ; $23:8DCA: 8D 49 0A
STA $0A4A               ; $23:8DCD: 8D 4A 0A
STA $0A4B               ; $23:8DD0: 8D 4B 0A
STA $0A4C               ; $23:8DD3: 8D 4C 0A
RTS                     ; $23:8DD6: 60

CODE_238DD7:
RTL                     ; $23:8DD7: 6B

CODE_238DD8:
LDX $0726               ; $23:8DD8: AE 26 07
LDA $45,x               ; $23:8DDB: B5 45
ASL A                   ; $23:8DDD: 0A
TAY                     ; $23:8DDE: A8
LDA #$7E                ; $23:8DDF: A9 7E
STA $30                 ; $23:8DE1: 85 30
LDA.w DATA_218200,y     ; $23:8DE3: B9 00 82
STA $2E                 ; $23:8DE6: 85 2E
LDA.w DATA_218200+1,y   ; $23:8DE8: B9 01 82
INC A                   ; $23:8DEB: 1A
STA $2F                 ; $23:8DEC: 85 2F
LDA $47,x               ; $23:8DEE: B5 47
LSR A                   ; $23:8DF0: 4A
LSR A                   ; $23:8DF1: 4A
LSR A                   ; $23:8DF2: 4A
LSR A                   ; $23:8DF3: 4A
STA $00                 ; $23:8DF4: 85 00
LDA $43,x               ; $23:8DF6: B5 43
SEC                     ; $23:8DF8: 38
SBC #$10                ; $23:8DF9: E9 10
AND #$F0                ; $23:8DFB: 29 F0
ORA $00                 ; $23:8DFD: 05 00
TAY                     ; $23:8DFF: A8
LDA [$2E],y             ; $23:8E00: B7 2E
STA $B3                 ; $23:8E02: 85 B3
RTL                     ; $23:8E04: 6B
LDX $0726               ; $23:8E05: AE 26 07
LDA $4B,x               ; $23:8E08: B5 4B
EOR #$03                ; $23:8E0A: 49 03
CMP #$03                ; $23:8E0C: C9 03
BNE CODE_238E12         ; $23:8E0E: D0 02
EOR #$0F                ; $23:8E10: 49 0F

CODE_238E12:
STA $4B,x               ; $23:8E12: 95 4B
RTS                     ; $23:8E14: 60

CODE_238E15:
LDA $17                 ; $23:8E15: A5 17
STA $03                 ; $23:8E17: 85 03
LDA $0597               ; $23:8E19: AD 97 05
BNE CODE_238E2C         ; $23:8E1C: D0 0E
LDX $0726               ; $23:8E1E: AE 26 07
LDA $7E3950,x           ; $23:8E21: BF 50 39 7E
BEQ CODE_238E2C         ; $23:8E25: F0 05
CMP #$18                ; $23:8E27: C9 18
BEQ CODE_238E2C         ; $23:8E29: F0 01
RTS                     ; $23:8E2B: 60

CODE_238E2C:
LDY #$03                ; $23:8E2C: A0 03
LDA $03                 ; $23:8E2E: A5 03
AND #$0F                ; $23:8E30: 29 0F

CODE_238E32:
CMP.w DATA_218DB4,y     ; $23:8E32: D9 B4 8D
BEQ CODE_238E3B         ; $23:8E35: F0 04
DEY                     ; $23:8E37: 88
BPL CODE_238E32         ; $23:8E38: 10 F8
RTS                     ; $23:8E3A: 60

CODE_238E3B:
LDY #$00                ; $23:8E3B: A0 00

CODE_238E3D:
LSR A                   ; $23:8E3D: 4A
BCS CODE_238E43         ; $23:8E3E: B0 03
INY                     ; $23:8E40: C8
BNE CODE_238E3D         ; $23:8E41: D0 FA

CODE_238E43:
TYA                     ; $23:8E43: 98
STA $04                 ; $23:8E44: 85 04
ASL A                   ; $23:8E46: 0A
TAX                     ; $23:8E47: AA
LDA.w DATA_218DBC,x     ; $23:8E48: BD BC 8D
STA $00                 ; $23:8E4B: 85 00
LDA.w DATA_218DBD,x     ; $23:8E4D: BD BD 8D
STA $01                 ; $23:8E50: 85 01
LDA #$21                ; $23:8E52: A9 21
STA $02                 ; $23:8E54: 85 02
JSL CODE_238EFC         ; $23:8E56: 22 FC 8E 23
LDY #$08                ; $23:8E5A: A0 08

CODE_238E5C:
CMP [$00],y             ; $23:8E5C: D7 00
BEQ CODE_238ED1         ; $23:8E5E: F0 71
DEY                     ; $23:8E60: 88
BPL CODE_238E5C         ; $23:8E61: 10 F9
LDY $0597               ; $23:8E63: AC 97 05
BEQ CODE_238E7C         ; $23:8E66: F0 14
CMP #$4B                ; $23:8E68: C9 4B
BNE CODE_238E73         ; $23:8E6A: D0 07
LDA #$00                ; $23:8E6C: A9 00
STA $0597               ; $23:8E6E: 8D 97 05
BEQ CODE_238ECD         ; $23:8E71: F0 5A

CODE_238E73:
CMP #$82                ; $23:8E73: C9 82
BCC CODE_238EAB         ; $23:8E75: 90 34
CMP #$AA                ; $23:8E77: C9 AA
BCC CODE_238ECD         ; $23:8E79: 90 52
RTS                     ; $23:8E7B: 60

CODE_238E7C:
LDY $00B3               ; $23:8E7C: AC B3 00
CPY #$4B                ; $23:8E7F: C0 4B
BNE CODE_238EAB         ; $23:8E81: D0 28
LDY $04                 ; $23:8E83: A4 04
LDX $0726               ; $23:8E85: AE 26 07
LDA $43,x               ; $23:8E88: B5 43
CLC                     ; $23:8E8A: 18
ADC.w DATA_218DF0,y     ; $23:8E8B: 79 F0 8D
STA $00                 ; $23:8E8E: 85 00
LDA $47,x               ; $23:8E90: B5 47
CLC                     ; $23:8E92: 18
ADC.w DATA_218DF4,y     ; $23:8E93: 79 F4 8D
STA $01                 ; $23:8E96: 85 01
LDA $45,x               ; $23:8E98: B5 45
ADC.w DATA_218DF8,y     ; $23:8E9A: 79 F8 8D
STA $04                 ; $23:8E9D: 85 04
LDX #$0D                ; $23:8E9F: A2 0D

CODE_238EA1:
LDY $1F17,x             ; $23:8EA1: BC 17 1F
CPY #$10                ; $23:8EA4: C0 10
BEQ CODE_238EB8         ; $23:8EA6: F0 10
DEX                     ; $23:8EA8: CA
BNE CODE_238EA1         ; $23:8EA9: D0 F6

CODE_238EAB:
LDA $0018               ; $23:8EAB: AD 18 00
AND #$0F                ; $23:8EAE: 29 0F
BEQ CODE_238EB7         ; $23:8EB0: F0 05
LDA #$01                ; $23:8EB2: A9 01
STA $1200               ; $23:8EB4: 8D 00 12

CODE_238EB7:
RTS                     ; $23:8EB7: 60

CODE_238EB8:
LDY $0500,x             ; $23:8EB8: BC 00 05
CPY $00                 ; $23:8EBB: C4 00
BNE CODE_238EAB         ; $23:8EBD: D0 EC
LDY $050F,x             ; $23:8EBF: BC 0F 05
CPY $01                 ; $23:8EC2: C4 01
BNE CODE_238EAB         ; $23:8EC4: D0 E5
LDY $051E,x             ; $23:8EC6: BC 1E 05
CPY $04                 ; $23:8EC9: C4 04
BNE CODE_238EAB         ; $23:8ECB: D0 DE

CODE_238ECD:
LDA #$10                ; $23:8ECD: A9 10
BNE CODE_238EE2         ; $23:8ECF: D0 11

CODE_238ED1:
LDY $04                 ; $23:8ED1: A4 04
CMP.w DATA_218DE8,y     ; $23:8ED3: D9 E8 8D
BNE CODE_238EE0         ; $23:8ED6: D0 08
LDA $07BC               ; $23:8ED8: AD BC 07
CMP.w DATA_218DEC,y     ; $23:8EDB: D9 EC 8D
BNE CODE_238EF8         ; $23:8EDE: D0 18

CODE_238EE0:
LDA #$20                ; $23:8EE0: A9 20

CODE_238EE2:
LDX $0726               ; $23:8EE2: AE 26 07
STA $49,x               ; $23:8EE5: 95 49
LDA $03                 ; $23:8EE7: A5 03
AND #$0F                ; $23:8EE9: 29 0F
STA $4B,x               ; $23:8EEB: 95 4B
STA $1DD5               ; $23:8EED: 8D D5 1D
LDX #$23                ; $23:8EF0: A2 23
STX $1203               ; $23:8EF2: 8E 03 12
STZ $1200               ; $23:8EF5: 9C 00 12

CODE_238EF8:
RTS                     ; $23:8EF8: 60

DATA_238EF9:
db $AA,$AF,$B7

CODE_238EFC:
LDX $0726               ; $23:8EFC: AE 26 07
LDA $43,x               ; $23:8EFF: B5 43
CLC                     ; $23:8F01: 18
ADC.w DATA_218DFC,y     ; $23:8F02: 79 FC 8D
AND #$F0                ; $23:8F05: 29 F0
STA $0E                 ; $23:8F07: 85 0E
LDA $47,x               ; $23:8F09: B5 47
CLC                     ; $23:8F0B: 18
ADC.w DATA_218E04,y     ; $23:8F0C: 79 04 8E
STA $0F                 ; $23:8F0F: 85 0F
LDA $45,x               ; $23:8F11: B5 45
ADC.w DATA_218E00,y     ; $23:8F13: 79 00 8E
ASL A                   ; $23:8F16: 0A
TAX                     ; $23:8F17: AA
LDA.w DATA_218200,x     ; $23:8F18: BD 00 82
STA $2E                 ; $23:8F1B: 85 2E
STA $D8                 ; $23:8F1D: 85 D8
LDA.w DATA_218200+1,x   ; $23:8F1F: BD 01 82
INC A                   ; $23:8F22: 1A
STA $2F                 ; $23:8F23: 85 2F
CLC                     ; $23:8F25: 18
ADC #$20                ; $23:8F26: 69 20
STA $D9                 ; $23:8F28: 85 D9
LDA #$7E                ; $23:8F2A: A9 7E
STA $30                 ; $23:8F2C: 85 30
STA $DA                 ; $23:8F2E: 85 DA
LDA $0F                 ; $23:8F30: A5 0F
LSR A                   ; $23:8F32: 4A
LSR A                   ; $23:8F33: 4A
LSR A                   ; $23:8F34: 4A
LSR A                   ; $23:8F35: 4A
ORA $0E                 ; $23:8F36: 05 0E
TAY                     ; $23:8F38: A8
PHX                     ; $23:8F39: DA
LDA [$2E],y             ; $23:8F3A: B7 2E
TAX                     ; $23:8F3C: AA
PHA                     ; $23:8F3D: 48
LDA [$D8],y             ; $23:8F3E: B7 D8
BEQ CODE_238F48         ; $23:8F40: F0 06
PLA                     ; $23:8F42: 68
LDA.l DATA_238EF9,x     ; $23:8F43: BF F9 8E 23
PHA                     ; $23:8F47: 48

CODE_238F48:
PLA                     ; $23:8F48: 68
PLX                     ; $23:8F49: FA
RTL                     ; $23:8F4A: 6B
STA $1059               ; $23:8F4B: 8D 59 10
STY $1058               ; $23:8F4E: 8C 58 10
STX $105B               ; $23:8F51: 8E 5B 10
LDY #$00                ; $23:8F54: A0 00
LDX #$00                ; $23:8F56: A2 00
LDA $105B               ; $23:8F58: AD 5B 10
AND #$03                ; $23:8F5B: 29 03
BEQ CODE_238F85         ; $23:8F5D: F0 26
LDY #$86                ; $23:8F5F: A0 86
STY $02                 ; $23:8F61: 84 02
AND #$02                ; $23:8F63: 29 02
BNE CODE_238F68         ; $23:8F65: D0 01
INX                     ; $23:8F67: E8

CODE_238F68:
LDA $105E               ; $23:8F68: AD 5E 10
BEQ CODE_238F6F         ; $23:8F6B: F0 02
INX                     ; $23:8F6D: E8
INX                     ; $23:8F6E: E8

CODE_238F6F:
LDA $1059               ; $23:8F6F: AD 59 10
CLC                     ; $23:8F72: 18
ADC.w DATA_218E08,x     ; $23:8F73: 7D 08 8E
STA $105C               ; $23:8F76: 8D 5C 10
LDA $1058               ; $23:8F79: AD 58 10
SEC                     ; $23:8F7C: 38
SBC #$10                ; $23:8F7D: E9 10
STA $105D               ; $23:8F7F: 8D 5D 10
JMP CODE_238FAD         ; $23:8F82: 4C AD 8F

CODE_238F85:
LDY #$06                ; $23:8F85: A0 06
STY $02                 ; $23:8F87: 84 02
LDX #$00                ; $23:8F89: A2 00
LDA $105B               ; $23:8F8B: AD 5B 10
AND #$08                ; $23:8F8E: 29 08
BNE CODE_238F93         ; $23:8F90: D0 01
INX                     ; $23:8F92: E8

CODE_238F93:
LDA $105E               ; $23:8F93: AD 5E 10
BEQ CODE_238F9A         ; $23:8F96: F0 02
INX                     ; $23:8F98: E8
INX                     ; $23:8F99: E8

CODE_238F9A:
LDA $1058               ; $23:8F9A: AD 58 10
CLC                     ; $23:8F9D: 18
ADC.w DATA_218E0C,x     ; $23:8F9E: 7D 0C 8E
STA $105D               ; $23:8FA1: 8D 5D 10
LDA $1059               ; $23:8FA4: AD 59 10
SEC                     ; $23:8FA7: 38
SBC #$10                ; $23:8FA8: E9 10
STA $105C               ; $23:8FAA: 8D 5C 10

CODE_238FAD:
LDA $105D               ; $23:8FAD: AD 5D 10
SEC                     ; $23:8FB0: 38
SBC #$10                ; $23:8FB1: E9 10
LDX $105C               ; $23:8FB3: AE 5C 10
JSR CODE_2390AA         ; $23:8FB6: 20 AA 90
LDA $0E                 ; $23:8FB9: A5 0E
STA $1047               ; $23:8FBB: 8D 47 10
LDA $0F                 ; $23:8FBE: A5 0F
STA $104B               ; $23:8FC0: 8D 4B 10
JSR CODE_239052         ; $23:8FC3: 20 52 90
LDA $1047               ; $23:8FC6: AD 47 10
STA $1051               ; $23:8FC9: 8D 51 10
LDA $104B               ; $23:8FCC: AD 4B 10
STA $1053               ; $23:8FCF: 8D 53 10
JSR CODE_238FDE         ; $23:8FD2: 20 DE 8F
LDA #$FF                ; $23:8FD5: A9 FF
STA $1602,y             ; $23:8FD7: 99 02 16
STY $1600               ; $23:8FDA: 8C 00 16
RTL                     ; $23:8FDD: 6B

CODE_238FDE:
LDA $105B               ; $23:8FDE: AD 5B 10
AND #$03                ; $23:8FE1: 29 03
BNE CODE_238FEA         ; $23:8FE3: D0 05
LDA #$01                ; $23:8FE5: A9 01
TAX                     ; $23:8FE7: AA
BNE CODE_238FEE         ; $23:8FE8: D0 04

CODE_238FEA:
LDA #$20                ; $23:8FEA: A9 20
LDX #$10                ; $23:8FEC: A2 10

CODE_238FEE:
STA $05                 ; $23:8FEE: 85 05
STX $06                 ; $23:8FF0: 86 06
LDY $1600               ; $23:8FF2: AC 00 16
LDX #$05                ; $23:8FF5: A2 05
LDA $1051               ; $23:8FF7: AD 51 10
STA $1602,y             ; $23:8FFA: 99 02 16
INY                     ; $23:8FFD: C8
LDA $1053               ; $23:8FFE: AD 53 10
STA $1602,y             ; $23:9001: 99 02 16
INY                     ; $23:9004: C8
LDA $02                 ; $23:9005: A5 02
AND #$C0                ; $23:9007: 29 C0
STA $1602,y             ; $23:9009: 99 02 16
INY                     ; $23:900C: C8
LDA $02                 ; $23:900D: A5 02
AND #$3F                ; $23:900F: 29 3F
ASL A                   ; $23:9011: 0A
DEC A                   ; $23:9012: 3A
STA $1602,y             ; $23:9013: 99 02 16
INY                     ; $23:9016: C8

CODE_239017:
LDA $105E               ; $23:9017: AD 5E 10
BEQ CODE_239025         ; $23:901A: F0 09
LDA #$00                ; $23:901C: A9 00
STA $1603,y             ; $23:901E: 99 03 16
LDA #$FF                ; $23:9021: A9 FF
BNE CODE_23902A         ; $23:9023: D0 05

CODE_239025:
JSR CODE_239068         ; $23:9025: 20 68 90
BRA CODE_23902D         ; $23:9028: 80 03

CODE_23902A:
STA $1602,y             ; $23:902A: 99 02 16

CODE_23902D:
INY                     ; $23:902D: C8
INY                     ; $23:902E: C8
LDA $1053               ; $23:902F: AD 53 10
CLC                     ; $23:9032: 18
ADC $05                 ; $23:9033: 65 05
STA $1053               ; $23:9035: 8D 53 10
LDA $1051               ; $23:9038: AD 51 10
ADC #$00                ; $23:903B: 69 00
STA $1051               ; $23:903D: 8D 51 10
TXA                     ; $23:9040: 8A
AND #$01                ; $23:9041: 29 01
BNE CODE_23904E         ; $23:9043: D0 09
LDA $105A               ; $23:9045: AD 5A 10
CLC                     ; $23:9048: 18
ADC $06                 ; $23:9049: 65 06
STA $105A               ; $23:904B: 8D 5A 10

CODE_23904E:
DEX                     ; $23:904E: CA
BPL CODE_239017         ; $23:904F: 10 C6
RTS                     ; $23:9051: 60

CODE_239052:
LDA $105D               ; $23:9052: AD 5D 10
AND #$F0                ; $23:9055: 29 F0
STA $105A               ; $23:9057: 8D 5A 10
LDA $105C               ; $23:905A: AD 5C 10
LSR A                   ; $23:905D: 4A
LSR A                   ; $23:905E: 4A
LSR A                   ; $23:905F: 4A
LSR A                   ; $23:9060: 4A
ORA $105A               ; $23:9061: 0D 5A 10
STA $105A               ; $23:9064: 8D 5A 10
RTS                     ; $23:9067: 60

CODE_239068:
STY $01                 ; $23:9068: 84 01
STX $04                 ; $23:906A: 86 04
JSR CODE_2390C9         ; $23:906C: 20 C9 90
LDX $105A               ; $23:906F: AE 5A 10
LDA $7E2450,x           ; $23:9072: BF 50 24 7E
STA $0A                 ; $23:9076: 85 0A
JSL CODE_209F37         ; $23:9078: 22 37 9F 20
REP #$30                ; $23:907C: C2 30
LDA $02                 ; $23:907E: A5 02
PHA                     ; $23:9080: 48
LDA $1055               ; $23:9081: AD 55 10
AND #$00FF              ; $23:9084: 29 FF 00
ASL A                   ; $23:9087: 0A
STA $02                 ; $23:9088: 85 02
LDA $01                 ; $23:908A: A5 01
AND #$00FF              ; $23:908C: 29 FF 00
TAX                     ; $23:908F: AA
TYA                     ; $23:9090: 98
AND #$00FF              ; $23:9091: 29 FF 00
ASL A                   ; $23:9094: 0A
ASL A                   ; $23:9095: 0A
ASL A                   ; $23:9096: 0A
CLC                     ; $23:9097: 18
ADC $02                 ; $23:9098: 65 02
TAY                     ; $23:909A: A8
LDA [$0C],y             ; $23:909B: B7 0C
STA $1602,x             ; $23:909D: 9D 02 16
PLA                     ; $23:90A0: 68
STA $02                 ; $23:90A1: 85 02
SEP #$30                ; $23:90A3: E2 30
LDY $01                 ; $23:90A5: A4 01
LDX $04                 ; $23:90A7: A6 04
RTS                     ; $23:90A9: 60

CODE_2390AA:
ASL A                   ; $23:90AA: 0A
ADC #$00                ; $23:90AB: 69 00
ASL A                   ; $23:90AD: 0A
ADC #$00                ; $23:90AE: 69 00
STA $0C                 ; $23:90B0: 85 0C
TXA                     ; $23:90B2: 8A
LSR A                   ; $23:90B3: 4A
LSR A                   ; $23:90B4: 4A
LSR A                   ; $23:90B5: 4A
STA $0D                 ; $23:90B6: 85 0D
LDA $0C                 ; $23:90B8: A5 0C
AND #$03                ; $23:90BA: 29 03
ORA #$08                ; $23:90BC: 09 08
STA $0E                 ; $23:90BE: 85 0E
LDA $0C                 ; $23:90C0: A5 0C
AND #$E0                ; $23:90C2: 29 E0
ORA $0D                 ; $23:90C4: 05 0D
STA $0F                 ; $23:90C6: 85 0F
RTS                     ; $23:90C8: 60

CODE_2390C9:
LDA $1053               ; $23:90C9: AD 53 10
AND #$01                ; $23:90CC: 29 01
STA $1055               ; $23:90CE: 8D 55 10
LDA $1053               ; $23:90D1: AD 53 10
AND #$20                ; $23:90D4: 29 20
BNE CODE_2390DD         ; $23:90D6: D0 05
ASL $1055               ; $23:90D8: 0E 55 10
BRA CODE_2390E1         ; $23:90DB: 80 04

CODE_2390DD:
SEC                     ; $23:90DD: 38
ROL $1055               ; $23:90DE: 2E 55 10

CODE_2390E1:
RTS                     ; $23:90E1: 60
LDY.w DATA_218E34,x     ; $23:90E2: BC 34 8E
LDX #$04                ; $23:90E5: A2 04
REP #$20                ; $23:90E7: C2 20

CODE_2390E9:
LDA.w DATA_218E10,y     ; $23:90E9: B9 10 8E
STA $1402,x             ; $23:90EC: 9D 02 14
DEY                     ; $23:90EF: 88
DEY                     ; $23:90F0: 88
DEX                     ; $23:90F1: CA
DEX                     ; $23:90F2: CA
BPL CODE_2390E9         ; $23:90F3: 10 F4
LDA #$0001              ; $23:90F5: A9 01 00
STA $1500               ; $23:90F8: 8D 00 15
RTS                     ; $23:90FB: 60

ORG $239110

CODE_239110:
LDX #$00                ; $23:9110: A2 00

CODE_239112:
LDA #$09                ; $23:9112: A9 09
JSL CODE_2098A8         ; $23:9114: 22 A8 98 20
JSL CODE_209844         ; $23:9118: 22 44 98 20
CPX #$40                ; $23:911C: E0 40
BNE CODE_239112         ; $23:911E: D0 F2

CODE_239120:
LDA #$40                ; $23:9120: A9 40
JSL CODE_2098A8         ; $23:9122: 22 A8 98 20
LDA #$09                ; $23:9126: A9 09
JSL CODE_209844         ; $23:9128: 22 44 98 20
CPX #$F0                ; $23:912C: E0 F0
BNE CODE_239120         ; $23:912E: D0 F0
JSL CODE_20990B         ; $23:9130: 22 0B 99 20
RTL                     ; $23:9134: 6B

CODE_239135:
JSR CODE_239139         ; $23:9135: 20 39 91
RTL                     ; $23:9138: 6B

CODE_239139:
LDA $0706               ; $23:9139: AD 06 07
LSR A                   ; $23:913C: 4A
LSR A                   ; $23:913D: 4A
LSR A                   ; $23:913E: 4A
LSR A                   ; $23:913F: 4A
TAX                     ; $23:9140: AA
DEX                     ; $23:9141: CA
TXA                     ; $23:9142: 8A

; ExecutePtrLong
JSL CODE_20FB3A         ; $23:9143: 22 3A FB 20
dl CODE_2392D2

CODE_23914A:
JSR CODE_23914E         ; $23:914A: 20 4E 91
RTL                     ; $23:914D: 6B

CODE_23914E:
LDA $0706               ; $23:914E: AD 06 07

; ExecutePtrLong
JSL CODE_20FB3A         ; $23:9151: 22 3A FB 20
dl CODE_2391EF
dl CODE_23922C
dl CODE_23924F
dl CODE_23928C
dl CODE_23916A
dl CODE_2391AF
dl CODE_2392AF

CODE_23916A:
LDA #$00                ; $23:916A: A9 00
STA $00                 ; $23:916C: 85 00

CODE_23916E:
LDX $00                 ; $23:916E: A6 00
LDA.w DATA_2196B9,x     ; $23:9170: BD B9 96
STA $01                 ; $23:9173: 85 01
LDA.w DATA_2196B9+1,x   ; $23:9175: BD BA 96
STA $02                 ; $23:9178: 85 02
LDA.w DATA_2196B9+2,x   ; $23:917A: BD BB 96
STA $03                 ; $23:917D: 85 03
TXA                     ; $23:917F: 8A
CLC                     ; $23:9180: 18
ADC #$03                ; $23:9181: 69 03
STA $00                 ; $23:9183: 85 00
LDX #$00                ; $23:9185: A2 00
LDY $0700               ; $23:9187: AC 00 07
LDA $01                 ; $23:918A: A5 01
STA [$2E],y             ; $23:918C: 97 2E

CODE_23918E:
INY                     ; $23:918E: C8
INX                     ; $23:918F: E8
LDA $02                 ; $23:9190: A5 02
STA [$2E],y             ; $23:9192: 97 2E
TXA                     ; $23:9194: 8A
AND #$07                ; $23:9195: 29 07
CMP #$05                ; $23:9197: C9 05
BNE CODE_23918E         ; $23:9199: D0 F3
LDA $03                 ; $23:919B: A5 03
STA [$2E],y             ; $23:919D: 97 2E
LDA $0700               ; $23:919F: AD 00 07
CLC                     ; $23:91A2: 18
ADC #$10                ; $23:91A3: 69 10
STA $0700               ; $23:91A5: 8D 00 07
LDA $00                 ; $23:91A8: A5 00
CMP #$06                ; $23:91AA: C9 06
BNE CODE_23916E         ; $23:91AC: D0 C0
RTS                     ; $23:91AE: 60

CODE_2391AF:
LDY $0700               ; $23:91AF: AC 00 07
LDX #$00                ; $23:91B2: A2 00
STX $0B                 ; $23:91B4: 86 0B

CODE_2391B6:
LDX $0B                 ; $23:91B6: A6 0B
LDA.w DATA_2196BF,x     ; $23:91B8: BD BF 96
STA $00                 ; $23:91BB: 85 00
CMP #$FF                ; $23:91BD: C9 FF
BNE CODE_2391C2         ; $23:91BF: D0 01
RTS                     ; $23:91C1: 60

CODE_2391C2:
CMP #$80                ; $23:91C2: C9 80
BNE CODE_2391D5         ; $23:91C4: D0 0F
LDA $0700               ; $23:91C6: AD 00 07
CLC                     ; $23:91C9: 18
ADC #$10                ; $23:91CA: 69 10
STA $0700               ; $23:91CC: 8D 00 07
TAY                     ; $23:91CF: A8
INC $0B                 ; $23:91D0: E6 0B
JMP CODE_2391B6         ; $23:91D2: 4C B6 91

CODE_2391D5:
LSR A                   ; $23:91D5: 4A
LSR A                   ; $23:91D6: 4A
LSR A                   ; $23:91D7: 4A
LSR A                   ; $23:91D8: 4A
TAX                     ; $23:91D9: AA
LDA $00                 ; $23:91DA: A5 00
AND #$0F                ; $23:91DC: 29 0F
STA $0A                 ; $23:91DE: 85 0A

CODE_2391E0:
LDA.w DATA_2196EA,x     ; $23:91E0: BD EA 96
STA [$2E],y             ; $23:91E3: 97 2E
INY                     ; $23:91E5: C8
DEC $0A                 ; $23:91E6: C6 0A
BPL CODE_2391E0         ; $23:91E8: 10 F6
INC $0B                 ; $23:91EA: E6 0B
JMP CODE_2391B6         ; $23:91EC: 4C B6 91

CODE_2391EF:
LDX #$02                ; $23:91EF: A2 02
LDY $0726               ; $23:91F1: AC 26 07
LDA $0747,y             ; $23:91F4: B9 47 07

CODE_2391F7:
CMP.w DATA_219716,x     ; $23:91F7: DD 16 97
BEQ CODE_2391FF         ; $23:91FA: F0 03
DEX                     ; $23:91FC: CA
BNE CODE_2391F7         ; $23:91FD: D0 F8

CODE_2391FF:
LDA.w DATA_219719,x     ; $23:91FF: BD 19 97
TAX                     ; $23:9202: AA
LDA #$00                ; $23:9203: A9 00
STA $02                 ; $23:9205: 85 02
LDY $0700               ; $23:9207: AC 00 07

CODE_23920A:
LDA #$02                ; $23:920A: A9 02
STA $00                 ; $23:920C: 85 00

CODE_23920E:
LDA.w DATA_2196F2,x     ; $23:920E: BD F2 96
STA [$2E],y             ; $23:9211: 97 2E
INY                     ; $23:9213: C8
INX                     ; $23:9214: E8
INC $02                 ; $23:9215: E6 02
DEC $00                 ; $23:9217: C6 00
BPL CODE_23920E         ; $23:9219: 10 F3
LDA $0700               ; $23:921B: AD 00 07
CLC                     ; $23:921E: 18
ADC #$10                ; $23:921F: 69 10
STA $0700               ; $23:9221: 8D 00 07
TAY                     ; $23:9224: A8
LDA $02                 ; $23:9225: A5 02
CMP #$0C                ; $23:9227: C9 0C
BNE CODE_23920A         ; $23:9229: D0 DF
RTS                     ; $23:922B: 60

CODE_23922C:
LDX #$00                ; $23:922C: A2 00
LDY $0700               ; $23:922E: AC 00 07

CODE_239231:
LDA #$01                ; $23:9231: A9 01
STA $00                 ; $23:9233: 85 00

CODE_239235:
LDA.w DATA_21971C,x     ; $23:9235: BD 1C 97
STA [$2E],y             ; $23:9238: 97 2E
INY                     ; $23:923A: C8
INX                     ; $23:923B: E8
DEC $00                 ; $23:923C: C6 00
BPL CODE_239235         ; $23:923E: 10 F5
LDA $0700               ; $23:9240: AD 00 07
CLC                     ; $23:9243: 18
ADC #$10                ; $23:9244: 69 10
STA $0700               ; $23:9246: 8D 00 07
TAY                     ; $23:9249: A8
CPX #$08                ; $23:924A: E0 08
BNE CODE_239231         ; $23:924C: D0 E3
RTS                     ; $23:924E: 60

CODE_23924F:
LDY $0700               ; $23:924F: AC 00 07
LDA #$C1                ; $23:9252: A9 C1
STA [$2E],y             ; $23:9254: 97 2E

CODE_239256:
INY                     ; $23:9256: C8
LDA #$C4                ; $23:9257: A9 C4
STA [$2E],y             ; $23:9259: 97 2E
CPY #$0F                ; $23:925B: C0 0F
BNE CODE_239256         ; $23:925D: D0 F7
LDA #$C6                ; $23:925F: A9 C6
STA [$2E],y             ; $23:9261: 97 2E

CODE_239263:
INY                     ; $23:9263: C8
TYA                     ; $23:9264: 98
AND #$0F                ; $23:9265: 29 0F
BNE CODE_23926D         ; $23:9267: D0 04
LDA #$C2                ; $23:9269: A9 C2
BNE CODE_239273         ; $23:926B: D0 06

CODE_23926D:
CMP #$0F                ; $23:926D: C9 0F
BNE CODE_239263         ; $23:926F: D0 F2
LDA #$C7                ; $23:9271: A9 C7

CODE_239273:
STA [$2E],y             ; $23:9273: 97 2E
CPY #$9F                ; $23:9275: C0 9F
BNE CODE_239263         ; $23:9277: D0 EA
INY                     ; $23:9279: C8
LDA #$C3                ; $23:927A: A9 C3
STA [$2E],y             ; $23:927C: 97 2E

CODE_23927E:
INY                     ; $23:927E: C8
LDA #$C5                ; $23:927F: A9 C5
STA [$2E],y             ; $23:9281: 97 2E
CPY #$AF                ; $23:9283: C0 AF
BNE CODE_23927E         ; $23:9285: D0 F7
LDA #$C8                ; $23:9287: A9 C8
STA [$2E],y             ; $23:9289: 97 2E
RTS                     ; $23:928B: 60

CODE_23928C:
LDX #$00                ; $23:928C: A2 00
LDY $0700               ; $23:928E: AC 00 07

CODE_239291:
LDA #$01                ; $23:9291: A9 01
STA $00                 ; $23:9293: 85 00

CODE_239295:
LDA.w DATA_219724,x     ; $23:9295: BD 24 97
STA [$2E],y             ; $23:9298: 97 2E
INY                     ; $23:929A: C8
INX                     ; $23:929B: E8
DEC $00                 ; $23:929C: C6 00
BPL CODE_239295         ; $23:929E: 10 F5
LDA $0700               ; $23:92A0: AD 00 07
CLC                     ; $23:92A3: 18
ADC #$10                ; $23:92A4: 69 10
STA $0700               ; $23:92A6: 8D 00 07
TAY                     ; $23:92A9: A8
CPX #$04                ; $23:92AA: E0 04
BNE CODE_239291         ; $23:92AC: D0 E3
RTS                     ; $23:92AE: 60

CODE_2392AF:
LDX #$00                ; $23:92AF: A2 00
LDY $0700               ; $23:92B1: AC 00 07

CODE_2392B4:
LDA #$01                ; $23:92B4: A9 01
STA $00                 ; $23:92B6: 85 00

CODE_2392B8:
LDA.w DATA_219728,x     ; $23:92B8: BD 28 97
STA [$2E],y             ; $23:92BB: 97 2E
INY                     ; $23:92BD: C8
INX                     ; $23:92BE: E8
DEC $00                 ; $23:92BF: C6 00
BPL CODE_2392B8         ; $23:92C1: 10 F5
LDA $0700               ; $23:92C3: AD 00 07
CLC                     ; $23:92C6: 18
ADC #$10                ; $23:92C7: 69 10
STA $0700               ; $23:92C9: 8D 00 07
TAY                     ; $23:92CC: A8
CPX #$04                ; $23:92CD: E0 04
BNE CODE_2392B4         ; $23:92CF: D0 E3
RTS                     ; $23:92D1: 60

CODE_2392D2:
LDA #$01                ; $23:92D2: A9 01
STA $00                 ; $23:92D4: 85 00
LDY $0700               ; $23:92D6: AC 00 07

CODE_2392D9:
LDA $0706               ; $23:92D9: AD 06 07
AND #$0F                ; $23:92DC: 29 0F
TAX                     ; $23:92DE: AA

CODE_2392DF:
LDA #$C0                ; $23:92DF: A9 C0
STA [$2E],y             ; $23:92E1: 97 2E
INY                     ; $23:92E3: C8
DEX                     ; $23:92E4: CA
BPL CODE_2392DF         ; $23:92E5: 10 F8
LDA $0700               ; $23:92E7: AD 00 07
CLC                     ; $23:92EA: 18
ADC #$10                ; $23:92EB: 69 10
STA $0700               ; $23:92ED: 8D 00 07
TAY                     ; $23:92F0: A8
DEC $00                 ; $23:92F1: C6 00
BPL CODE_2392D9         ; $23:92F3: 10 E4
RTS                     ; $23:92F5: 60
TYA                     ; $23:92F6: 98
CLC                     ; $23:92F7: 18
ADC #$10                ; $23:92F8: 69 10
TAY                     ; $23:92FA: A8
LDA $2F                 ; $23:92FB: A5 2F
ADC #$00                ; $23:92FD: 69 00
STA $2F                 ; $23:92FF: 85 2F
RTS                     ; $23:9301: 60
LDA $05                 ; $23:9302: A5 05
STA $2F                 ; $23:9304: 85 2F
LDY $0700               ; $23:9306: AC 00 07
INY                     ; $23:9309: C8
TYA                     ; $23:930A: 98
AND #$0F                ; $23:930B: 29 0F
BNE CODE_239340         ; $23:930D: D0 31
LDY #$00                ; $23:930F: A0 00
LDA $0E                 ; $23:9311: A5 0E
AND #$10                ; $23:9313: 29 10
BEQ CODE_239318         ; $23:9315: F0 01
INY                     ; $23:9317: C8

CODE_239318:
STY $09                 ; $23:9318: 84 09
LDA $2E                 ; $23:931A: A5 2E
CLC                     ; $23:931C: 18
ADC #$B0                ; $23:931D: 69 B0
STA $2E                 ; $23:931F: 85 2E
LDA $2F                 ; $23:9321: A5 2F
ADC $09                 ; $23:9323: 65 09
STA $2F                 ; $23:9325: 85 2F
STA $05                 ; $23:9327: 85 05
LDA $0F                 ; $23:9329: A5 0F
AND #$F0                ; $23:932B: 29 F0
LSR A                   ; $23:932D: 4A
LSR A                   ; $23:932E: 4A
LSR A                   ; $23:932F: 4A
TAY                     ; $23:9330: A8
INY                     ; $23:9331: C8
INY                     ; $23:9332: C8
LDA.w DATA_218200+1,y   ; $23:9333: B9 01 82
STA $04                 ; $23:9336: 85 04
INC $04                 ; $23:9338: E6 04
LDA $0700               ; $23:933A: AD 00 07
AND #$F0                ; $23:933D: 29 F0
TAY                     ; $23:933F: A8

CODE_239340:
STY $0700               ; $23:9340: 8C 00 07
RTS                     ; $23:9343: 60

CODE_239344:
LDA $1EBF               ; $23:9344: AD BF 1E
CMP #$0F                ; $23:9347: C9 0F
BNE CODE_23934E         ; $23:9349: D0 03
JSR CODE_23934F         ; $23:934B: 20 4F 93

CODE_23934E:
RTL                     ; $23:934E: 6B

CODE_23934F:
LDA $1034               ; $23:934F: AD 34 10

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:9352: 22 1F FB 20
dw CODE_23935E
dw CODE_239362
dw CODE_23936B
dw CODE_23936F

CODE_23935E:
JSR CODE_239373         ; $23:935E: 20 73 93
RTS                     ; $23:9361: 60

CODE_239362:
JSR CODE_2393BC         ; $23:9362: 20 BC 93
LDA #$3F                ; $23:9365: A9 3F
JSR CODE_239410         ; $23:9367: 20 10 94
RTS                     ; $23:936A: 60

CODE_23936B:
JSR CODE_2393BC         ; $23:936B: 20 BC 93
RTS                     ; $23:936E: 60

CODE_23936F:
JSR CODE_2393E6         ; $23:936F: 20 E6 93
RTS                     ; $23:9372: 60

CODE_239373:
LDA #$94                ; $23:9373: A9 94
STA $0A                 ; $23:9375: 85 0A
LDY #$00                ; $23:9377: A0 00
LDX #$0A                ; $23:9379: A2 0A

CODE_23937B:
LDA.w DATA_219737,x     ; $23:937B: BD 37 97
STA $0810,y             ; $23:937E: 99 10 08
STA $0814,y             ; $23:9381: 99 14 08
LDA.w DATA_21972C,x     ; $23:9384: BD 2C 97
STA $0811,y             ; $23:9387: 99 11 08
CLC                     ; $23:938A: 18
ADC #$08                ; $23:938B: 69 08
STA $0815,y             ; $23:938D: 99 15 08
LDA $0A                 ; $23:9390: A5 0A
STA $0812,y             ; $23:9392: 99 12 08
INC A                   ; $23:9395: 1A
STA $0816,y             ; $23:9396: 99 16 08
LDA #$2A                ; $23:9399: A9 2A
STA $0813,y             ; $23:939B: 99 13 08
STA $0817,y             ; $23:939E: 99 17 08
PHY                     ; $23:93A1: 5A
TYA                     ; $23:93A2: 98
LSR A                   ; $23:93A3: 4A
LSR A                   ; $23:93A4: 4A
TAY                     ; $23:93A5: A8
LDA #$00                ; $23:93A6: A9 00
STA $0A24,y             ; $23:93A8: 99 24 0A
STA $0A25,y             ; $23:93AB: 99 25 0A
PLY                     ; $23:93AE: 7A
DEC $0A                 ; $23:93AF: C6 0A
DEC $0A                 ; $23:93B1: C6 0A
TYA                     ; $23:93B3: 98
CLC                     ; $23:93B4: 18
ADC #$08                ; $23:93B5: 69 08
TAY                     ; $23:93B7: A8
DEX                     ; $23:93B8: CA
BPL CODE_23937B         ; $23:93B9: 10 C0
RTS                     ; $23:93BB: 60

CODE_2393BC:
LDA #$99                ; $23:93BC: A9 99
STA $0A                 ; $23:93BE: 85 0A
LDY #$00                ; $23:93C0: A0 00
LDX #$09                ; $23:93C2: A2 09

CODE_2393C4:
LDA.w DATA_219742,x     ; $23:93C4: BD 42 97
STA $0810,y             ; $23:93C7: 99 10 08
INY                     ; $23:93CA: C8
LDA $0A                 ; $23:93CB: A5 0A
STA $0810,y             ; $23:93CD: 99 10 08
INY                     ; $23:93D0: C8
LDA #$00                ; $23:93D1: A9 00
STA $0810,y             ; $23:93D3: 99 10 08
INY                     ; $23:93D6: C8
LDA.w DATA_21974C,x     ; $23:93D7: BD 4C 97
STA $0810,y             ; $23:93DA: 99 10 08
INY                     ; $23:93DD: C8
DEC $0A                 ; $23:93DE: C6 0A
DEC $0A                 ; $23:93E0: C6 0A
DEX                     ; $23:93E2: CA
BPL CODE_2393C4         ; $23:93E3: 10 DF
RTS                     ; $23:93E5: 60

CODE_2393E6:
LDA #$AF                ; $23:93E6: A9 AF
STA $0A                 ; $23:93E8: 85 0A
LDY #$00                ; $23:93EA: A0 00
LDX #$0A                ; $23:93EC: A2 0A

CODE_2393EE:
LDA.w DATA_219756,x     ; $23:93EE: BD 56 97
STA $0810,y             ; $23:93F1: 99 10 08
INY                     ; $23:93F4: C8
LDA $0A                 ; $23:93F5: A5 0A
STA $0810,y             ; $23:93F7: 99 10 08
INY                     ; $23:93FA: C8
LDA #$00                ; $23:93FB: A9 00
STA $0810,y             ; $23:93FD: 99 10 08
INY                     ; $23:9400: C8
LDA.w DATA_219761,x     ; $23:9401: BD 61 97
STA $0810,y             ; $23:9404: 99 10 08
INY                     ; $23:9407: C8
DEC $0A                 ; $23:9408: C6 0A
DEC $0A                 ; $23:940A: C6 0A
DEX                     ; $23:940C: CA
BPL CODE_2393EE         ; $23:940D: 10 DF
RTS                     ; $23:940F: 60

CODE_239410:
STA $0A                 ; $23:9410: 85 0A
LDX #$07                ; $23:9412: A2 07

CODE_239414:
LDA.w DATA_21976C,x     ; $23:9414: BD 6C 97
STA $0810,y             ; $23:9417: 99 10 08
INY                     ; $23:941A: C8
LDA $0A                 ; $23:941B: A5 0A
STA $0810,y             ; $23:941D: 99 10 08
INY                     ; $23:9420: C8
LDA #$00                ; $23:9421: A9 00
STA $0810,y             ; $23:9423: 99 10 08
INY                     ; $23:9426: C8
LDA.w DATA_219774,x     ; $23:9427: BD 74 97
STA $0810,y             ; $23:942A: 99 10 08
INY                     ; $23:942D: C8
DEC $0A                 ; $23:942E: C6 0A
DEC $0A                 ; $23:9430: C6 0A
DEX                     ; $23:9432: CA
BPL CODE_239414         ; $23:9433: 10 DF
LDA $1040               ; $23:9435: AD 40 10
CMP #$02                ; $23:9438: C9 02
BCC CODE_239485         ; $23:943A: 90 49
LDX $1043               ; $23:943C: AE 43 10
LDA.w DATA_21977E,x     ; $23:943F: BD 7E 97
STA $0A                 ; $23:9442: 85 0A
LDA $1026               ; $23:9444: AD 26 10
STA $0B                 ; $23:9447: 85 0B
LDX #$01                ; $23:9449: A2 01

CODE_23944B:
LDA $1027               ; $23:944B: AD 27 10
STA $0810,y             ; $23:944E: 99 10 08
INY                     ; $23:9451: C8
LDA $0A                 ; $23:9452: A5 0A
STA $0810,y             ; $23:9454: 99 10 08
INY                     ; $23:9457: C8
LDA.w DATA_21977C,x     ; $23:9458: BD 7C 97
STA $0810,y             ; $23:945B: 99 10 08
INY                     ; $23:945E: C8
LDA $0B                 ; $23:945F: A5 0B
STA $0810,y             ; $23:9461: 99 10 08
INY                     ; $23:9464: C8
LDA $0B                 ; $23:9465: A5 0B
CLC                     ; $23:9467: 18
ADC #$08                ; $23:9468: 69 08
STA $0B                 ; $23:946A: 85 0B
DEX                     ; $23:946C: CA
BPL CODE_23944B         ; $23:946D: 10 DC
LDA $1027               ; $23:946F: AD 27 10
CMP #$60                ; $23:9472: C9 60
BEQ CODE_239485         ; $23:9474: F0 0F
DEC $1027               ; $23:9476: CE 27 10
LDA $1027               ; $23:9479: AD 27 10
CMP #$5F                ; $23:947C: C9 5F
BCS CODE_239485         ; $23:947E: B0 05
LDA #$60                ; $23:9480: A9 60
STA $1027               ; $23:9482: 8D 27 10

CODE_239485:
RTS                     ; $23:9485: 60

CODE_239486:
JSR CODE_23934F         ; $23:9486: 20 4F 93
LDA $1040               ; $23:9489: AD 40 10
CMP #$07                ; $23:948C: C9 07
BCC CODE_23949E         ; $23:948E: 90 0E
JSR CODE_23A4DC         ; $23:9490: 20 DC A4
BCC CODE_23949E         ; $23:9493: 90 09
LDA #$09                ; $23:9495: A9 09
STA $1040               ; $23:9497: 8D 40 10
LDA #$01                ; $23:949A: A9 01
STA $14                 ; $23:949C: 85 14

CODE_23949E:
JSR CODE_2394A2         ; $23:949E: 20 A2 94
RTL                     ; $23:94A1: 6B

CODE_2394A2:
LDA $1040               ; $23:94A2: AD 40 10

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:94A5: 22 1F FB 20
dw CODE_2394BD
dw CODE_239513
dw CODE_2395F5
dw CODE_239752
dw CODE_239853
dw CODE_2396EB
dw CODE_2395B0
dw CODE_239513
dw CODE_2394FC
dw CODE_2395B1

CODE_2394BD:
LDA #$51                ; $23:94BD: A9 51
STA $2109               ; $23:94BF: 8D 09 21
LDA $1028               ; $23:94C2: AD 28 10
CLC                     ; $23:94C5: 18
ADC #$08                ; $23:94C6: 69 08
STA $28                 ; $23:94C8: 85 28
INC $1028               ; $23:94CA: EE 28 10
CMP #$0C                ; $23:94CD: C9 0C
BNE CODE_2394FB         ; $23:94CF: D0 2A
LDA #$00                ; $23:94D1: A9 00
STA $070F               ; $23:94D3: 8D 0F 07
INC $1040               ; $23:94D6: EE 40 10
LDY $1042               ; $23:94D9: AC 42 10
LDA.w DATA_219782,y     ; $23:94DC: B9 82 97
STA $2E                 ; $23:94DF: 85 2E
LDA.w DATA_21978A,y     ; $23:94E1: B9 8A 97
STA $2F                 ; $23:94E4: 85 2F
LDA #$21                ; $23:94E6: A9 21
STA $30                 ; $23:94E8: 85 30
CPY #$01                ; $23:94EA: C0 01
BEQ CODE_2394F2         ; $23:94EC: F0 04
CPY #$02                ; $23:94EE: C0 02
BNE CODE_2394FB         ; $23:94F0: D0 09

CODE_2394F2:
LDA #$F8                ; $23:94F2: A9 F8
STA $95                 ; $23:94F4: 85 95
LDA #$07                ; $23:94F6: A9 07
STA $1040               ; $23:94F8: 8D 40 10

CODE_2394FB:
RTS                     ; $23:94FB: 60

CODE_2394FC:
LDA $0711               ; $23:94FC: AD 11 07
BNE CODE_239506         ; $23:94FF: D0 05
LDA #$A0                ; $23:9501: A9 A0
STA $0711               ; $23:9503: 8D 11 07

CODE_239506:
DEC $0711               ; $23:9506: CE 11 07
BNE CODE_239512         ; $23:9509: D0 07
INC $1040               ; $23:950B: EE 40 10
LDA #$01                ; $23:950E: A9 01
STA $14                 ; $23:9510: 85 14

CODE_239512:
RTS                     ; $23:9512: 60

CODE_239513:
DEC $070E               ; $23:9513: CE 0E 07
BEQ CODE_239519         ; $23:9516: F0 01
RTS                     ; $23:9518: 60

CODE_239519:
LDA #$04                ; $23:9519: A9 04
STA $070E               ; $23:951B: 8D 0E 07

CODE_23951E:
LDA $02D4               ; $23:951E: AD D4 02
AND #$01                ; $23:9521: 29 01
BEQ CODE_23952A         ; $23:9523: F0 05
LDA #$19                ; $23:9525: A9 19
STA $1200               ; $23:9527: 8D 00 12

CODE_23952A:
LDY $02D4               ; $23:952A: AC D4 02
LDA [$2E],y             ; $23:952D: B7 2E
BNE CODE_23954D         ; $23:952F: D0 1C
LDA $05E8               ; $23:9531: AD E8 05
CLC                     ; $23:9534: 18
ADC #$20                ; $23:9535: 69 20
TAY                     ; $23:9537: A8
LDA $05E7               ; $23:9538: AD E7 05
ADC #$00                ; $23:953B: 69 00
STA $05E7               ; $23:953D: 8D E7 05
TYA                     ; $23:9540: 98
AND #$E0                ; $23:9541: 29 E0
ORA #$04                ; $23:9543: 09 04
STA $05E8               ; $23:9545: 8D E8 05
INC $02D4               ; $23:9548: EE D4 02
BRA CODE_23951E         ; $23:954B: 80 D1

CODE_23954D:
CMP #$FF                ; $23:954D: C9 FF
BEQ CODE_239592         ; $23:954F: F0 41
CMP #$FE                ; $23:9551: C9 FE
BNE CODE_23955C         ; $23:9553: D0 07
LDY #$00                ; $23:9555: A0 00
STY $1200               ; $23:9557: 8C 00 12
BRA CODE_23958B         ; $23:955A: 80 2F

CODE_23955C:
LDX $1600               ; $23:955C: AE 00 16
STA $1606,x             ; $23:955F: 9D 06 16
LDA #$21                ; $23:9562: A9 21
STA $1607,x             ; $23:9564: 9D 07 16
LDA $05E7               ; $23:9567: AD E7 05
STA $1602,x             ; $23:956A: 9D 02 16
LDA $05E8               ; $23:956D: AD E8 05
STA $1603,x             ; $23:9570: 9D 03 16
LDA #$00                ; $23:9573: A9 00
STA $1604,x             ; $23:9575: 9D 04 16
LDA #$01                ; $23:9578: A9 01
STA $1605,x             ; $23:957A: 9D 05 16
LDA #$FF                ; $23:957D: A9 FF
STA $1608,x             ; $23:957F: 9D 08 16
LDA $1600               ; $23:9582: AD 00 16
CLC                     ; $23:9585: 18
ADC #$06                ; $23:9586: 69 06
STA $1600               ; $23:9588: 8D 00 16

CODE_23958B:
INC $05E8               ; $23:958B: EE E8 05
INC $02D4               ; $23:958E: EE D4 02
RTS                     ; $23:9591: 60

CODE_239592:
LDA $1040               ; $23:9592: AD 40 10
CMP #$07                ; $23:9595: C9 07
BEQ CODE_2395A1         ; $23:9597: F0 08
LDA #$78                ; $23:9599: A9 78
STA $1027               ; $23:959B: 8D 27 10
STA $1026               ; $23:959E: 8D 26 10

CODE_2395A1:
LDA #$00                ; $23:95A1: A9 00
STA $02D4               ; $23:95A3: 8D D4 02
INC $1040               ; $23:95A6: EE 40 10
INY                     ; $23:95A9: C8
LDA [$2E],y             ; $23:95AA: B7 2E
STA $102A               ; $23:95AC: 8D 2A 10
RTS                     ; $23:95AF: 60

CODE_2395B0:
RTS                     ; $23:95B0: 60

CODE_2395B1:
LDA $1034               ; $23:95B1: AD 34 10
CMP #$01                ; $23:95B4: C9 01
BNE CODE_2395BF         ; $23:95B6: D0 07
LDA $1027               ; $23:95B8: AD 27 10
CMP #$60                ; $23:95BB: C9 60
BNE CODE_2395BF         ; $23:95BD: D0 00

CODE_2395BF:
RTS                     ; $23:95BF: 60
RTS                     ; $23:95C0: 60
LDA $1043               ; $23:95C1: AD 43 10
ASL A                   ; $23:95C4: 0A
STA $00                 ; $23:95C5: 85 00
LDX $0726               ; $23:95C7: AE 26 07
LDA $7E3992,x           ; $23:95CA: BF 92 39 7E
AND #$0A                ; $23:95CE: 29 0A
BEQ CODE_2395D4         ; $23:95D0: F0 02
INC $00                 ; $23:95D2: E6 00

CODE_2395D4:
LDY $00                 ; $23:95D4: A4 00
LDA.w DATA_219976,y     ; $23:95D6: B9 76 99
STA $7E397D,x           ; $23:95D9: 9F 7D 39 7E
LDA.w DATA_21997A,y     ; $23:95DD: B9 7A 99
AND #$F0                ; $23:95E0: 29 F0
STA $7E3981,x           ; $23:95E2: 9F 81 39 7E
LDA.w DATA_21997A,y     ; $23:95E6: B9 7A 99
AND #$0F                ; $23:95E9: 29 0F
STA $7E397F,x           ; $23:95EB: 9F 7F 39 7E
LDA #$01                ; $23:95EF: A9 01
STA $0713               ; $23:95F1: 8D 13 07
RTS                     ; $23:95F4: 60

CODE_2395F5:
INC $069A               ; $23:95F5: EE 9A 06
LDA $069A               ; $23:95F8: AD 9A 06
AND #$03                ; $23:95FB: 29 03
BNE CODE_239612         ; $23:95FD: D0 13
LDA $7E3991             ; $23:95FF: AF 91 39 7E
INC A                   ; $23:9603: 1A
STA $7E3991             ; $23:9604: 8F 91 39 7E
CMP #$06                ; $23:9608: C9 06
BNE CODE_239612         ; $23:960A: D0 06
LDA #$00                ; $23:960C: A9 00
STA $7E3991             ; $23:960E: 8F 91 39 7E

CODE_239612:
LDA $18                 ; $23:9612: A5 18
AND #$80                ; $23:9614: 29 80
BEQ CODE_239657         ; $23:9616: F0 3F
LDA #$00                ; $23:9618: A9 00
STA $069A               ; $23:961A: 8D 9A 06
STA $070F               ; $23:961D: 8D 0F 07
LDY #$00                ; $23:9620: A0 00
LDA $1042               ; $23:9622: AD 42 10
CMP #$01                ; $23:9625: C9 01
BEQ CODE_23962E         ; $23:9627: F0 05
INY                     ; $23:9629: C8
CMP #$02                ; $23:962A: C9 02
BNE CODE_239647         ; $23:962C: D0 19

CODE_23962E:
LDA $7E3991             ; $23:962E: AF 91 39 7E
AND #$01                ; $23:9632: 29 01
CMP.w DATA_21997E,y     ; $23:9634: D9 7E 99
BNE CODE_23963F         ; $23:9637: D0 06
LDA.w DATA_219980,y     ; $23:9639: B9 80 99
STA $069A               ; $23:963C: 8D 9A 06

CODE_23963F:
LDA #$04                ; $23:963F: A9 04
STA $1040               ; $23:9641: 8D 40 10
JMP CODE_239657         ; $23:9644: 4C 57 96

CODE_239647:
LDA $7E3991             ; $23:9647: AF 91 39 7E
TAX                     ; $23:964B: AA
CPX #$02                ; $23:964C: E0 02
BCC CODE_239654         ; $23:964E: 90 04
INX                     ; $23:9650: E8
STX $069C               ; $23:9651: 8E 9C 06

CODE_239654:
INC $1040               ; $23:9654: EE 40 10

CODE_239657:
LDA $96                 ; $23:9657: A5 96
STA $08F8               ; $23:9659: 8D F8 08
CLC                     ; $23:965C: 18
ADC #$08                ; $23:965D: 69 08
STA $08FC               ; $23:965F: 8D FC 08
LDA $95                 ; $23:9662: A5 95
STA $08F9               ; $23:9664: 8D F9 08
STA $08FD               ; $23:9667: 8D FD 08
LDA $7E3991             ; $23:966A: AF 91 39 7E
ASL A                   ; $23:966E: 0A
ORA #$10                ; $23:966F: 09 10
STA $08FA               ; $23:9671: 8D FA 08
STA $08FE               ; $23:9674: 8D FE 08
LDA #$26                ; $23:9677: A9 26
STA $08FB               ; $23:9679: 8D FB 08
LDA #$E6                ; $23:967C: A9 E6
STA $08FF               ; $23:967E: 8D FF 08
LDA #$00                ; $23:9681: A9 00
STA $0A5E               ; $23:9683: 8D 5E 0A
STA $0A5F               ; $23:9686: 8D 5F 0A
RTS                     ; $23:9689: 60
RTS                     ; $23:968A: 60
LDA $070F               ; $23:968B: AD 0F 07
BNE CODE_2396EA         ; $23:968E: D0 5A
INC $070E               ; $23:9690: EE 0E 07
LDA $070E               ; $23:9693: AD 0E 07
AND #$03                ; $23:9696: 29 03
BNE CODE_2396EA         ; $23:9698: D0 50

CODE_23969A:
LDX $02D4               ; $23:969A: AE D4 02
LDA.w DATA_219982,x     ; $23:969D: BD 82 99
BNE CODE_2396AD         ; $23:96A0: D0 0B
LDA #$55                ; $23:96A2: A9 55
STA $070C               ; $23:96A4: 8D 0C 07
INC $02D4               ; $23:96A7: EE D4 02
JMP CODE_23969A         ; $23:96AA: 4C 9A 96

CODE_2396AD:
CMP #$FF                ; $23:96AD: C9 FF
BNE CODE_2396BF         ; $23:96AF: D0 0E
LDA #$35                ; $23:96B1: A9 35
STA $070C               ; $23:96B3: 8D 0C 07
LDA #$00                ; $23:96B6: A9 00
STA $02D4               ; $23:96B8: 8D D4 02
INC $070F               ; $23:96BB: EE 0F 07
RTS                     ; $23:96BE: 60

CODE_2396BF:
LDY $1600               ; $23:96BF: AC 00 16
STA $1604,y             ; $23:96C2: 99 04 16
LDA $070B               ; $23:96C5: AD 0B 07
STA $1601,y             ; $23:96C8: 99 01 16
LDA $070C               ; $23:96CB: AD 0C 07
STA $1602,y             ; $23:96CE: 99 02 16
LDA #$01                ; $23:96D1: A9 01
STA $1603,y             ; $23:96D3: 99 03 16
LDA #$00                ; $23:96D6: A9 00
STA $1605,y             ; $23:96D8: 99 05 16
LDA $1600               ; $23:96DB: AD 00 16
CLC                     ; $23:96DE: 18
ADC #$04                ; $23:96DF: 69 04
STA $1600               ; $23:96E1: 8D 00 16
INC $070C               ; $23:96E4: EE 0C 07
INC $02D4               ; $23:96E7: EE D4 02

CODE_2396EA:
RTS                     ; $23:96EA: 60

CODE_2396EB:
LDA $15                 ; $23:96EB: A5 15
AND #$01                ; $23:96ED: 29 01
BNE CODE_239704         ; $23:96EF: D0 13
LDA $7E3991             ; $23:96F1: AF 91 39 7E
INC A                   ; $23:96F5: 1A
STA $7E3991             ; $23:96F6: 8F 91 39 7E
CMP #$06                ; $23:96FA: C9 06
BNE CODE_239704         ; $23:96FC: D0 06
LDA #$00                ; $23:96FE: A9 00
STA $7E3991             ; $23:9700: 8F 91 39 7E

CODE_239704:
LDA $97                 ; $23:9704: A5 97
CMP #$80                ; $23:9706: C9 80
BEQ CODE_23970F         ; $23:9708: F0 05
SEC                     ; $23:970A: 38
SBC #$08                ; $23:970B: E9 08
STA $97                 ; $23:970D: 85 97

CODE_23970F:
LDA $97                 ; $23:970F: A5 97
ASL A                   ; $23:9711: 0A
ASL A                   ; $23:9712: 0A
ASL A                   ; $23:9713: 0A
ASL A                   ; $23:9714: 0A
STA $00                 ; $23:9715: 85 00
LDA $97                 ; $23:9717: A5 97
LSR A                   ; $23:9719: 4A
LSR A                   ; $23:971A: 4A
LSR A                   ; $23:971B: 4A
LSR A                   ; $23:971C: 4A
CMP #$08                ; $23:971D: C9 08
BCC CODE_239723         ; $23:971F: 90 02
ORA #$F0                ; $23:9721: 09 F0

CODE_239723:
STA $01                 ; $23:9723: 85 01
LDA $98                 ; $23:9725: A5 98
CLC                     ; $23:9727: 18
ADC $00                 ; $23:9728: 65 00
STA $98                 ; $23:972A: 85 98
LDA $95                 ; $23:972C: A5 95
ADC $01                 ; $23:972E: 65 01
STA $95                 ; $23:9730: 85 95
LDA $95                 ; $23:9732: A5 95
CMP #$F8                ; $23:9734: C9 F8
BCC CODE_239751         ; $23:9736: 90 19
LDA #$F8                ; $23:9738: A9 F8
STA $95                 ; $23:973A: 85 95
LDA #$00                ; $23:973C: A9 00
STA $97                 ; $23:973E: 85 97
STA $070F               ; $23:9740: 8D 0F 07
LDA $069A               ; $23:9743: AD 9A 06
BEQ CODE_23974C         ; $23:9746: F0 04
INC $1040               ; $23:9748: EE 40 10
RTS                     ; $23:974B: 60

CODE_23974C:
LDA #$08                ; $23:974C: A9 08
STA $1040               ; $23:974E: 8D 40 10

CODE_239751:
RTS                     ; $23:9751: 60

CODE_239752:
LDA $7E3991             ; $23:9752: AF 91 39 7E
CMP #$02                ; $23:9756: C9 02
BCS CODE_239772         ; $23:9758: B0 18
CMP #$01                ; $23:975A: C9 01
BNE CODE_239768         ; $23:975C: D0 0A
LDX #$03                ; $23:975E: A2 03
JSL CODE_20975B         ; $23:9760: 22 5B 97 20
INC $1040               ; $23:9764: EE 40 10
RTS                     ; $23:9767: 60

CODE_239768:
LDX $0726               ; $23:9768: AE 26 07
INC $0736,x             ; $23:976B: FE 36 07
INC $1040               ; $23:976E: EE 40 10
RTS                     ; $23:9771: 60

CODE_239772:
LDA $0059               ; $23:9772: AD 59 00

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:9775: 22 1F FB 20
dw CODE_23977D
dw CODE_2397B1

CODE_23977D:
LDA $7E3991             ; $23:977D: AF 91 39 7E
TAY                     ; $23:9781: A8

CODE_239782:
LDA #$78                ; $23:9782: A9 78
STA $061F,y             ; $23:9784: 99 1F 06
STA $062B,y             ; $23:9787: 99 2B 06
LDX #$F0                ; $23:978A: A2 F0
LDA $0783,y             ; $23:978C: B9 83 07
ASL A                   ; $23:978F: 0A
PHA                     ; $23:9790: 48
BCC CODE_239795         ; $23:9791: 90 02
LDX #$00                ; $23:9793: A2 00

CODE_239795:
TXA                     ; $23:9795: 8A
STA $00                 ; $23:9796: 85 00
PLA                     ; $23:9798: 68
AND #$0F                ; $23:9799: 29 0F
ORA $00                 ; $23:979B: 05 00
STA $0625,y             ; $23:979D: 99 25 06
LDA $0783,y             ; $23:97A0: B9 83 07
AND #$07                ; $23:97A3: 29 07
ORA #$C0                ; $23:97A5: 09 C0
STA $0619,y             ; $23:97A7: 99 19 06
DEY                     ; $23:97AA: 88
BPL CODE_239782         ; $23:97AB: 10 D5
INC $0059               ; $23:97AD: EE 59 00
RTS                     ; $23:97B0: 60

CODE_2397B1:
LDA $7E3991             ; $23:97B1: AF 91 39 7E
TAY                     ; $23:97B5: A8

CODE_2397B6:
JSR CODE_2397EC         ; $23:97B6: 20 EC 97
JSR CODE_2397DE         ; $23:97B9: 20 DE 97
LDA $0619,y             ; $23:97BC: B9 19 06
CLC                     ; $23:97BF: 18
ADC #$02                ; $23:97C0: 69 02
STA $0619,y             ; $23:97C2: 99 19 06
DEY                     ; $23:97C5: 88
BPL CODE_2397B6         ; $23:97C6: 10 EE
JSR CODE_239827         ; $23:97C8: 20 27 98
LDA $7E3991             ; $23:97CB: AF 91 39 7E
TAY                     ; $23:97CF: A8

CODE_2397D0:
LDA $061F,y             ; $23:97D0: B9 1F 06
CMP #$F8                ; $23:97D3: C9 F8
BNE CODE_2397DD         ; $23:97D5: D0 06
DEY                     ; $23:97D7: 88
BPL CODE_2397D0         ; $23:97D8: 10 F6
INC $1040               ; $23:97DA: EE 40 10

CODE_2397DD:
RTS                     ; $23:97DD: 60

CODE_2397DE:
TYA                     ; $23:97DE: 98
CLC                     ; $23:97DF: 18
ADC #$0C                ; $23:97E0: 69 0C
TAY                     ; $23:97E2: A8
JSR CODE_2397FA         ; $23:97E3: 20 FA 97
TYA                     ; $23:97E6: 98
SEC                     ; $23:97E7: 38
SBC #$0C                ; $23:97E8: E9 0C
TAY                     ; $23:97EA: A8
RTS                     ; $23:97EB: 60

CODE_2397EC:
LDA $0619,y             ; $23:97EC: B9 19 06
BMI CODE_2397FA         ; $23:97EF: 30 09
CMP #$40                ; $23:97F1: C9 40
BMI CODE_2397FA         ; $23:97F3: 30 05
LDA #$40                ; $23:97F5: A9 40
STA $0619,y             ; $23:97F7: 99 19 06

CODE_2397FA:
LDA $0619,y             ; $23:97FA: B9 19 06
ASL A                   ; $23:97FD: 0A
ASL A                   ; $23:97FE: 0A
ASL A                   ; $23:97FF: 0A
ASL A                   ; $23:9800: 0A
STA $00                 ; $23:9801: 85 00
LDX #$00                ; $23:9803: A2 00
LDA $0619,y             ; $23:9805: B9 19 06
LSR A                   ; $23:9808: 4A
LSR A                   ; $23:9809: 4A
LSR A                   ; $23:980A: 4A
LSR A                   ; $23:980B: 4A
CMP #$08                ; $23:980C: C9 08
BCC CODE_239813         ; $23:980E: 90 03
DEX                     ; $23:9810: CA
ORA #$F0                ; $23:9811: 09 F0

CODE_239813:
STA $01                 ; $23:9813: 85 01
LDA $0631,y             ; $23:9815: B9 31 06
CLC                     ; $23:9818: 18
ADC $00                 ; $23:9819: 65 00
STA $0631,y             ; $23:981B: 99 31 06
LDA $061F,y             ; $23:981E: B9 1F 06
ADC $01                 ; $23:9821: 65 01
STA $061F,y             ; $23:9823: 99 1F 06
RTS                     ; $23:9826: 60

CODE_239827:
LDA $7E3991             ; $23:9827: AF 91 39 7E
TAY                     ; $23:982B: A8

CODE_23982C:
TYA                     ; $23:982C: 98
ASL A                   ; $23:982D: 0A
ASL A                   ; $23:982E: 0A
TAX                     ; $23:982F: AA
LDA $061F,y             ; $23:9830: B9 1F 06
CMP #$C0                ; $23:9833: C9 C0
BCC CODE_23983C         ; $23:9835: 90 05
LDA #$F8                ; $23:9837: A9 F8
STA $061F,y             ; $23:9839: 99 1F 06

CODE_23983C:
STA $0880,x             ; $23:983C: 9D 80 08
LDA #$61                ; $23:983F: A9 61
STA $0881,x             ; $23:9841: 9D 81 08
LDA #$01                ; $23:9844: A9 01
STA $0882,x             ; $23:9846: 9D 82 08
LDA $062B,y             ; $23:9849: B9 2B 06
STA $0883,x             ; $23:984C: 9D 83 08
DEY                     ; $23:984F: 88
BPL CODE_23982C         ; $23:9850: 10 DA
RTS                     ; $23:9852: 60

CODE_239853:
LDA $0711               ; $23:9853: AD 11 07
BNE CODE_23985D         ; $23:9856: D0 05
LDA #$80                ; $23:9858: A9 80
STA $0711               ; $23:985A: 8D 11 07

CODE_23985D:
DEC $0711               ; $23:985D: CE 11 07
BNE CODE_239870         ; $23:9860: D0 0E
INC $1040               ; $23:9862: EE 40 10
LDA $1040               ; $23:9865: AD 40 10
CMP #$09                ; $23:9868: C9 09
BNE CODE_239870         ; $23:986A: D0 04
LDA #$01                ; $23:986C: A9 01
STA $14                 ; $23:986E: 85 14

CODE_239870:
RTS                     ; $23:9870: 60

CODE_239871:
REP #$10                ; $23:9871: C2 10
LDA #$1F                ; $23:9873: A9 1F
STA $00                 ; $23:9875: 85 00
LDY #$0160              ; $23:9877: A0 60 01

CODE_23987A:
LDA #$08                ; $23:987A: A9 08
STA $0800,y             ; $23:987C: 99 00 08
STA $0804,y             ; $23:987F: 99 04 08
LDA #$F0                ; $23:9882: A9 F0
STA $0808,y             ; $23:9884: 99 08 08
STA $080C,y             ; $23:9887: 99 0C 08
LDA #$F8                ; $23:988A: A9 F8
STA $0810,y             ; $23:988C: 99 10 08
STA $0814,y             ; $23:988F: 99 14 08
LDA #$00                ; $23:9892: A9 00
STA $0818,y             ; $23:9894: 99 18 08
STA $081C,y             ; $23:9897: 99 1C 08
LDA $00                 ; $23:989A: A5 00
STA $0801,y             ; $23:989C: 99 01 08
STA $0809,y             ; $23:989F: 99 09 08
STA $0811,y             ; $23:98A2: 99 11 08
STA $0819,y             ; $23:98A5: 99 19 08
CLC                     ; $23:98A8: 18
ADC #$08                ; $23:98A9: 69 08
STA $0805,y             ; $23:98AB: 99 05 08
STA $080D,y             ; $23:98AE: 99 0D 08
STA $0815,y             ; $23:98B1: 99 15 08
STA $081D,y             ; $23:98B4: 99 1D 08
LDA #$70                ; $23:98B7: A9 70
STA $0802,y             ; $23:98B9: 99 02 08
STA $080A,y             ; $23:98BC: 99 0A 08
INC A                   ; $23:98BF: 1A
STA $0806,y             ; $23:98C0: 99 06 08
STA $080E,y             ; $23:98C3: 99 0E 08
LDA #$7A                ; $23:98C6: A9 7A
STA $0812,y             ; $23:98C8: 99 12 08
STA $081A,y             ; $23:98CB: 99 1A 08
INC A                   ; $23:98CE: 1A
STA $0816,y             ; $23:98CF: 99 16 08
STA $081E,y             ; $23:98D2: 99 1E 08
LDA #$2A                ; $23:98D5: A9 2A
STA $0803,y             ; $23:98D7: 99 03 08
STA $0807,y             ; $23:98DA: 99 07 08
STA $080B,y             ; $23:98DD: 99 0B 08
STA $080F,y             ; $23:98E0: 99 0F 08
STA $0813,y             ; $23:98E3: 99 13 08
STA $0817,y             ; $23:98E6: 99 17 08
STA $081B,y             ; $23:98E9: 99 1B 08
STA $081F,y             ; $23:98EC: 99 1F 08
PHY                     ; $23:98EF: 5A
REP #$20                ; $23:98F0: C2 20
TYA                     ; $23:98F2: 98
LSR A                   ; $23:98F3: 4A
LSR A                   ; $23:98F4: 4A
TAY                     ; $23:98F5: A8
SEP #$20                ; $23:98F6: E2 20
LDA #$00                ; $23:98F8: A9 00
STA $0A20,y             ; $23:98FA: 99 20 0A
STA $0A21,y             ; $23:98FD: 99 21 0A
STA $0A22,y             ; $23:9900: 99 22 0A
STA $0A23,y             ; $23:9903: 99 23 0A
STA $0A24,y             ; $23:9906: 99 24 0A
STA $0A25,y             ; $23:9909: 99 25 0A
STA $0A26,y             ; $23:990C: 99 26 0A
STA $0A27,y             ; $23:990F: 99 27 0A
PLY                     ; $23:9912: 7A
LDA $00                 ; $23:9913: A5 00
CLC                     ; $23:9915: 18
ADC #$10                ; $23:9916: 69 10
STA $00                 ; $23:9918: 85 00
REP #$20                ; $23:991A: C2 20
TYA                     ; $23:991C: 98
SEC                     ; $23:991D: 38
SBC #$0020              ; $23:991E: E9 20 00
TAY                     ; $23:9921: A8
SEP #$20                ; $23:9922: E2 20
CPY #$0020              ; $23:9924: C0 20 00
BEQ CODE_23992C         ; $23:9927: F0 03
BRL CODE_23987A         ; $23:9929: 82 4E FF

CODE_23992C:
SEP #$10                ; $23:992C: E2 10
LDY #$2F                ; $23:992E: A0 2F

CODE_239930:
LDA.w DATA_21998B,y     ; $23:9930: B9 8B 99
STA $0800,y             ; $23:9933: 99 00 08
DEY                     ; $23:9936: 88
BPL CODE_239930         ; $23:9937: 10 F7
REP #$20                ; $23:9939: C2 20
LDA #$0000              ; $23:993B: A9 00 00
STA $0A20               ; $23:993E: 8D 20 0A
STA $0A22               ; $23:9941: 8D 22 0A
STA $0A24               ; $23:9944: 8D 24 0A
STA $0A26               ; $23:9947: 8D 26 0A
STA $0A28               ; $23:994A: 8D 28 0A
STA $0A2A               ; $23:994D: 8D 2A 0A
SEP #$20                ; $23:9950: E2 20
RTL                     ; $23:9952: 6B

CODE_239953:
JSR CODE_239957         ; $23:9953: 20 57 99
RTL                     ; $23:9956: 6B

CODE_239957:
LDA $1009               ; $23:9957: AD 09 10
ASL A                   ; $23:995A: 0A
TAX                     ; $23:995B: AA
JMP (PNTR_23995F,x)     ; $23:995C: 7C 5F 99

PNTR_23995F:
dw CODE_239963
dw CODE_23997B

CODE_239963:
LDA $100A               ; $23:9963: AD 0A 10

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:9966: 22 1F FB 20
dw CODE_23996E
dw CODE_239972

CODE_23996E:
INC $100A               ; $23:996E: EE 0A 10
RTS                     ; $23:9971: 60

CODE_239972:
INC $1009               ; $23:9972: EE 09 10
LDA #$00                ; $23:9975: A9 00
STA $1019               ; $23:9977: 8D 19 10
RTS                     ; $23:997A: 60

CODE_23997B:
JSL CODE_2A8000         ; $23:997B: 22 00 80 2A
LDA $100B               ; $23:997F: AD 0B 10
ASL A                   ; $23:9982: 0A
TAX                     ; $23:9983: AA
JMP (PNTR_239987,x)     ; $23:9984: 7C 87 99

PNTR_239987:
dw CODE_239993
dw CODE_2399D5
dw CODE_239B98
dw CODE_239BB5
dw CODE_239BCD
dw CODE_239BE1

CODE_239993:
STZ $100C               ; $23:9993: 9C 0C 10
STZ $100D               ; $23:9996: 9C 0D 10
STZ $100E               ; $23:9999: 9C 0E 10
STZ $1FF9               ; $23:999C: 9C F9 1F
LDA #$70                ; $23:999F: A9 70
STA $100F               ; $23:99A1: 8D 0F 10
LDA #$90                ; $23:99A4: A9 90
STA $1010               ; $23:99A6: 8D 10 10
LDA #$7F                ; $23:99A9: A9 7F
STA $1011               ; $23:99AB: 8D 11 10
STZ $1A5F               ; $23:99AE: 9C 5F 1A
STZ $1015               ; $23:99B1: 9C 15 10
STZ $1016               ; $23:99B4: 9C 16 10
STZ $1017               ; $23:99B7: 9C 17 10
STZ $1000               ; $23:99BA: 9C 00 10
STZ $1001               ; $23:99BD: 9C 01 10
STZ $1002               ; $23:99C0: 9C 02 10
STZ $1003               ; $23:99C3: 9C 03 10
STZ $1004               ; $23:99C6: 9C 04 10
STZ $1005               ; $23:99C9: 9C 05 10
LDA #$30                ; $23:99CC: A9 30
STA $1A60               ; $23:99CE: 8D 60 1A
INC $100B               ; $23:99D1: EE 0B 10
RTS                     ; $23:99D4: 60

CODE_2399D5:
JSR CODE_23A4DC         ; $23:99D5: 20 DC A4
BCC CODE_239A29         ; $23:99D8: 90 4F
LDA $100C               ; $23:99DA: AD 0C 10
BNE CODE_2399EF         ; $23:99DD: D0 10
INC $100C               ; $23:99DF: EE 0C 10
LDA $0783               ; $23:99E2: AD 83 07
AND #$0F                ; $23:99E5: 29 0F
ORA #$20                ; $23:99E7: 09 20
STA $1012               ; $23:99E9: 8D 12 10
JMP CODE_239A24         ; $23:99EC: 4C 24 9A

CODE_2399EF:
LDA $100D               ; $23:99EF: AD 0D 10
BNE CODE_239A0B         ; $23:99F2: D0 17
LDA $100C               ; $23:99F4: AD 0C 10
CMP #$02                ; $23:99F7: C9 02
BCC CODE_239A0B         ; $23:99F9: 90 10
INC $100D               ; $23:99FB: EE 0D 10
LDA $0784               ; $23:99FE: AD 84 07
AND #$1F                ; $23:9A01: 29 1F
ORA #$20                ; $23:9A03: 09 20
STA $1013               ; $23:9A05: 8D 13 10
JMP CODE_239A24         ; $23:9A08: 4C 24 9A

CODE_239A0B:
LDA $100E               ; $23:9A0B: AD 0E 10
BNE CODE_239A29         ; $23:9A0E: D0 19
LDA $100D               ; $23:9A10: AD 0D 10
CMP #$02                ; $23:9A13: C9 02
BCC CODE_239A29         ; $23:9A15: 90 12
INC $100E               ; $23:9A17: EE 0E 10
LDA $0785               ; $23:9A1A: AD 85 07
AND #$3F                ; $23:9A1D: 29 3F
ORA #$40                ; $23:9A1F: 09 40
STA $1014               ; $23:9A21: 8D 14 10

CODE_239A24:
LDA #$23                ; $23:9A24: A9 23
STA $1203               ; $23:9A26: 8D 03 12

CODE_239A29:
LDX #$02                ; $23:9A29: A2 02

CODE_239A2B:
STX $19                 ; $23:9A2B: 86 19
LDA $1012,x             ; $23:9A2D: BD 12 10
BEQ CODE_239A35         ; $23:9A30: F0 03
DEC $1012,x             ; $23:9A32: DE 12 10

CODE_239A35:
JSR CODE_239A3C         ; $23:9A35: 20 3C 9A
DEX                     ; $23:9A38: CA
BPL CODE_239A2B         ; $23:9A39: 10 F0
RTS                     ; $23:9A3B: 60

CODE_239A3C:
LDA $100C,x             ; $23:9A3C: BD 0C 10

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:9A3F: 22 1F FB 20
dw CODE_239A4F
dw CODE_239A6F
dw CODE_239A7A
dw CODE_239ABB
dw CODE_239AE5
dw CODE_239B6D

CODE_239A4F:
CPX #$02                ; $23:9A4F: E0 02
BNE CODE_239A6C         ; $23:9A51: D0 19
LDA $1A5F               ; $23:9A53: AD 5F 1A
CLC                     ; $23:9A56: 18
ADC $1A60               ; $23:9A57: 6D 60 1A
STA $1A5F               ; $23:9A5A: 8D 5F 1A
DEC $02E0               ; $23:9A5D: CE E0 02
BPL CODE_239A6C         ; $23:9A60: 10 0A
LDA #$06                ; $23:9A62: A9 06
STA $02E0               ; $23:9A64: 8D E0 02
LDA #$41                ; $23:9A67: A9 41
STA $1200               ; $23:9A69: 8D 00 12

CODE_239A6C:
JMP CODE_239CC5         ; $23:9A6C: 4C C5 9C

CODE_239A6F:
LDA $1012,x             ; $23:9A6F: BD 12 10
BNE CODE_239A4F         ; $23:9A72: D0 DB
INC $100C,x             ; $23:9A74: FE 0C 10
JMP CODE_239A4F         ; $23:9A77: 4C 4F 9A

CODE_239A7A:
LDA $100F,x             ; $23:9A7A: BD 0F 10
CLC                     ; $23:9A7D: 18
ADC #$3F                ; $23:9A7E: 69 3F
CMP #$7F                ; $23:9A80: C9 7F
BCS CODE_239A8A         ; $23:9A82: B0 06
INC $100C,x             ; $23:9A84: FE 0C 10
JMP CODE_239A4F         ; $23:9A87: 4C 4F 9A

CODE_239A8A:
CPX #$02                ; $23:9A8A: E0 02
BNE CODE_239AA1         ; $23:9A8C: D0 13
LDA $1A60               ; $23:9A8E: AD 60 1A
CMP #$11                ; $23:9A91: C9 11
BCC CODE_239AA1         ; $23:9A93: 90 0C
DEC $1A60               ; $23:9A95: CE 60 1A
LDA $15                 ; $23:9A98: A5 15
AND #$01                ; $23:9A9A: 29 01
BNE CODE_239AA1         ; $23:9A9C: D0 03
DEC $1A60               ; $23:9A9E: CE 60 1A

CODE_239AA1:
LDA $100F,x             ; $23:9AA1: BD 0F 10
BPL CODE_239AAF         ; $23:9AA4: 10 09
LDA $100F,x             ; $23:9AA6: BD 0F 10
CLC                     ; $23:9AA9: 18
ADC #$04                ; $23:9AAA: 69 04
STA $100F,x             ; $23:9AAC: 9D 0F 10

CODE_239AAF:
LDA $100F,x             ; $23:9AAF: BD 0F 10
SEC                     ; $23:9AB2: 38
SBC #$02                ; $23:9AB3: E9 02
STA $100F,x             ; $23:9AB5: 9D 0F 10
JMP CODE_239A4F         ; $23:9AB8: 4C 4F 9A

CODE_239ABB:
LDA $1000,x             ; $23:9ABB: BD 00 10
AND #$7C                ; $23:9ABE: 29 7C
BNE CODE_239AE2         ; $23:9AC0: D0 20
LDA #$3E                ; $23:9AC2: A9 3E
STA $1203               ; $23:9AC4: 8D 03 12
LDA #$12                ; $23:9AC7: A9 12
STA $1012,x             ; $23:9AC9: 9D 12 10
LDA $1000,x             ; $23:9ACC: BD 00 10
CLC                     ; $23:9ACF: 18
ADC #$20                ; $23:9AD0: 69 20
AND #$80                ; $23:9AD2: 29 80
STA $1000,x             ; $23:9AD4: 9D 00 10
LDA $1003,x             ; $23:9AD7: BD 03 10
ADC #$00                ; $23:9ADA: 69 00
STA $1003,x             ; $23:9ADC: 9D 03 10
INC $100C,x             ; $23:9ADF: FE 0C 10

CODE_239AE2:
JMP CODE_239A4F         ; $23:9AE2: 4C 4F 9A

CODE_239AE5:
LDA $1012,x             ; $23:9AE5: BD 12 10
BNE CODE_239B5E         ; $23:9AE8: D0 74
LDA $1000,x             ; $23:9AEA: BD 00 10
CLC                     ; $23:9AED: 18
ADC #$20                ; $23:9AEE: 69 20
AND #$80                ; $23:9AF0: 29 80
STA $1000,x             ; $23:9AF2: 9D 00 10
STA $00                 ; $23:9AF5: 85 00
LDA $1003,x             ; $23:9AF7: BD 03 10
ADC #$00                ; $23:9AFA: 69 00
STA $1003,x             ; $23:9AFC: 9D 03 10
ASL $00                 ; $23:9AFF: 06 00
ROL A                   ; $23:9B01: 2A
AND #$03                ; $23:9B02: 29 03
STA $1006,x             ; $23:9B04: 9D 06 10
CPX #$02                ; $23:9B07: E0 02
BNE CODE_239B58         ; $23:9B09: D0 4D
LDA #$50                ; $23:9B0B: A9 50
STA $1012,x             ; $23:9B0D: 9D 12 10
LDA $1006               ; $23:9B10: AD 06 10
ASL A                   ; $23:9B13: 0A
TAX                     ; $23:9B14: AA
LDY #$01                ; $23:9B15: A0 01

CODE_239B17:
LDA $1007,y             ; $23:9B17: B9 07 10
CMP.l DATA_2199BB,x     ; $23:9B1A: DF BB 99 21
BEQ CODE_239B26         ; $23:9B1E: F0 06
CMP.l DATA_2199BB+1,x   ; $23:9B20: DF BC 99 21
BNE CODE_239B53         ; $23:9B24: D0 2D

CODE_239B26:
DEY                     ; $23:9B26: 88
BPL CODE_239B17         ; $23:9B27: 10 EE
LDX $1006               ; $23:9B29: AE 06 10
LDA.l DATA_2199C3,x     ; $23:9B2C: BF C3 99 21
STA $1FF9               ; $23:9B30: 8D F9 1F
JSL CODE_2A810D         ; $23:9B33: 22 0D 81 2A
LDA #$07                ; $23:9B37: A9 07
STA $1202               ; $23:9B39: 8D 02 12
LDA #$60                ; $23:9B3C: A9 60
STA $02D8               ; $23:9B3E: 8D D8 02
LDA #$04                ; $23:9B41: A9 04
STA $100B               ; $23:9B43: 8D 0B 10
LDA #$F0                ; $23:9B46: A9 F0
STA $100C               ; $23:9B48: 8D 0C 10
STZ $1012               ; $23:9B4B: 9C 12 10
LDX $19                 ; $23:9B4E: A6 19
PLA                     ; $23:9B50: 68
PLA                     ; $23:9B51: 68
RTS                     ; $23:9B52: 60

CODE_239B53:
LDA #$2A                ; $23:9B53: A9 2A
STA $1203               ; $23:9B55: 8D 03 12

CODE_239B58:
LDX $19                 ; $23:9B58: A6 19
INC $100C,x             ; $23:9B5A: FE 0C 10
RTS                     ; $23:9B5D: 60

CODE_239B5E:
LDY #$10                ; $23:9B5E: A0 10
AND #$04                ; $23:9B60: 29 04
BNE CODE_239B66         ; $23:9B62: D0 02
LDY #$F0                ; $23:9B64: A0 F0

CODE_239B66:
TYA                     ; $23:9B66: 98
STA $100F,x             ; $23:9B67: 9D 0F 10
JMP CODE_239A4F         ; $23:9B6A: 4C 4F 9A

CODE_239B6D:
CPX #$02                ; $23:9B6D: E0 02
BNE CODE_239B76         ; $23:9B6F: D0 05
LDA $1012,x             ; $23:9B71: BD 12 10
BEQ CODE_239B77         ; $23:9B74: F0 01

CODE_239B76:
RTS                     ; $23:9B76: 60

CODE_239B77:
LDA $1019               ; $23:9B77: AD 19 10
BEQ CODE_239B8B         ; $23:9B7A: F0 0F
LDA $17                 ; $23:9B7C: A5 17
AND #$D0                ; $23:9B7E: 29 D0
BEQ CODE_239B8A         ; $23:9B80: F0 08
DEC $1019               ; $23:9B82: CE 19 10
LDA #$00                ; $23:9B85: A9 00
STA $100B               ; $23:9B87: 8D 0B 10

CODE_239B8A:
RTS                     ; $23:9B8A: 60

CODE_239B8B:
PLA                     ; $23:9B8B: 68
PLA                     ; $23:9B8C: 68

CODE_239B8D:
LDA #$02                ; $23:9B8D: A9 02
STA $100B               ; $23:9B8F: 8D 0B 10
LDA #$00                ; $23:9B92: A9 00
STA $100C               ; $23:9B94: 8D 0C 10
RTS                     ; $23:9B97: 60

CODE_239B98:
LDA $100C               ; $23:9B98: AD 0C 10
BNE CODE_239BA5         ; $23:9B9B: D0 08
INC $100C               ; $23:9B9D: EE 0C 10
JSL CODE_29E26B         ; $23:9BA0: 22 6B E2 29
RTS                     ; $23:9BA4: 60

CODE_239BA5:
LDA $15                 ; $23:9BA5: A5 15
AND #$01                ; $23:9BA7: 29 01
BNE CODE_239BB4         ; $23:9BA9: D0 09
DEC $16                 ; $23:9BAB: C6 16
LDA $16                 ; $23:9BAD: A5 16
BNE CODE_239BB4         ; $23:9BAF: D0 03
INC $100B               ; $23:9BB1: EE 0B 10

CODE_239BB4:
RTS                     ; $23:9BB4: 60

CODE_239BB5:
LDA #$01                ; $23:9BB5: A9 01
STA $101E               ; $23:9BB7: 8D 1E 10
LDA #$01                ; $23:9BBA: A9 01
STA $14                 ; $23:9BBC: 85 14
LDA #$80                ; $23:9BBE: A9 80
STA $16                 ; $23:9BC0: 85 16
LDA #$C0                ; $23:9BC2: A9 C0
STA $0100               ; $23:9BC4: 8D 00 01
LDA #$00                ; $23:9BC7: A9 00
STA $0427               ; $23:9BC9: 8D 27 04
RTS                     ; $23:9BCC: 60

CODE_239BCD:
LDA $02D8               ; $23:9BCD: AD D8 02
BNE CODE_239BD8         ; $23:9BD0: D0 06
LDA #$05                ; $23:9BD2: A9 05
STA $100B               ; $23:9BD4: 8D 0B 10
RTS                     ; $23:9BD7: 60

CODE_239BD8:
DEC $02D8               ; $23:9BD8: CE D8 02
RTS                     ; $23:9BDB: 60

DATA_239BDC:
db $32,$34,$36,$00,$38

CODE_239BE1:
LDA $1012               ; $23:9BE1: AD 12 10
BEQ CODE_239C14         ; $23:9BE4: F0 2E
DEC $1012               ; $23:9BE6: CE 12 10
BNE CODE_239BEE         ; $23:9BE9: D0 03
JMP CODE_239B8D         ; $23:9BEB: 4C 8D 9B

CODE_239BEE:
LDA $15                 ; $23:9BEE: A5 15
AND #$1F                ; $23:9BF0: 29 1F
BNE CODE_239C11         ; $23:9BF2: D0 1D
LDA $100D               ; $23:9BF4: AD 0D 10
BEQ CODE_239C11         ; $23:9BF7: F0 18
LDA #$A0                ; $23:9BF9: A9 A0
STA $1012               ; $23:9BFB: 8D 12 10
DEC $100D               ; $23:9BFE: CE 0D 10
LDA #$05                ; $23:9C01: A9 05
STA $1203               ; $23:9C03: 8D 03 12
LDX $0726               ; $23:9C06: AE 26 07
LDA $0736,x             ; $23:9C09: BD 36 07
BMI CODE_239C11         ; $23:9C0C: 30 03
INC $0736,x             ; $23:9C0E: FE 36 07

CODE_239C11:
JMP CODE_239C32         ; $23:9C11: 4C 32 9C

CODE_239C14:
DEC $100C               ; $23:9C14: CE 0C 10
DEC $100C               ; $23:9C17: CE 0C 10
DEC $100C               ; $23:9C1A: CE 0C 10
DEC $100C               ; $23:9C1D: CE 0C 10
LDA $100C               ; $23:9C20: AD 0C 10
CMP #$60                ; $23:9C23: C9 60
BCS CODE_239C32         ; $23:9C25: B0 0B
LDA $1FF9               ; $23:9C27: AD F9 1F
STA $100D               ; $23:9C2A: 8D 0D 10
LDA #$50                ; $23:9C2D: A9 50
STA $1012               ; $23:9C2F: 8D 12 10

CODE_239C32:
LDA #$70                ; $23:9C32: A9 70
STA $09D0               ; $23:9C34: 8D D0 09
STA $09DC               ; $23:9C37: 8D DC 09
LDA #$7C                ; $23:9C3A: A9 7C
STA $09D4               ; $23:9C3C: 8D D4 09
STA $09E0               ; $23:9C3F: 8D E0 09
LDA #$84                ; $23:9C42: A9 84
STA $09D8               ; $23:9C44: 8D D8 09
STA $09E4               ; $23:9C47: 8D E4 09
LDA $100C               ; $23:9C4A: AD 0C 10
STA $09D1               ; $23:9C4D: 8D D1 09
STA $09D5               ; $23:9C50: 8D D5 09
STA $09D9               ; $23:9C53: 8D D9 09
CLC                     ; $23:9C56: 18
ADC #$08                ; $23:9C57: 69 08
STA $09DD               ; $23:9C59: 8D DD 09
STA $09E1               ; $23:9C5C: 8D E1 09
STA $09E5               ; $23:9C5F: 8D E5 09
LDX $1FF9               ; $23:9C62: AE F9 1F
LDA.l DATA_239BDC-1,x   ; $23:9C65: BF DB 9B 23
STA $09D2               ; $23:9C69: 8D D2 09
INC A                   ; $23:9C6C: 1A
STA $09DE               ; $23:9C6D: 8D DE 09
LDA #$0C                ; $23:9C70: A9 0C
STA $09D6               ; $23:9C72: 8D D6 09
INC A                   ; $23:9C75: 1A
STA $09E2               ; $23:9C76: 8D E2 09
INC A                   ; $23:9C79: 1A
STA $09DA               ; $23:9C7A: 8D DA 09
INC A                   ; $23:9C7D: 1A
STA $09E6               ; $23:9C7E: 8D E6 09
LDA #$22                ; $23:9C81: A9 22
STA $09D3               ; $23:9C83: 8D D3 09
STA $09DF               ; $23:9C86: 8D DF 09
STA $09D7               ; $23:9C89: 8D D7 09
STA $09E3               ; $23:9C8C: 8D E3 09
STA $09DB               ; $23:9C8F: 8D DB 09
STA $09E7               ; $23:9C92: 8D E7 09
LDA #$00                ; $23:9C95: A9 00
STA $0A94               ; $23:9C97: 8D 94 0A
STA $0A95               ; $23:9C9A: 8D 95 0A
STA $0A96               ; $23:9C9D: 8D 96 0A
STA $0A97               ; $23:9CA0: 8D 97 0A
STA $0A98               ; $23:9CA3: 8D 98 0A
STA $0A99               ; $23:9CA6: 8D 99 0A
RTS                     ; $23:9CA9: 60
LDA $101C               ; $23:9CAA: AD 1C 10
BEQ CODE_239CB2         ; $23:9CAD: F0 03
DEC $101C               ; $23:9CAF: CE 1C 10

CODE_239CB2:
LDA $101D               ; $23:9CB2: AD 1D 10
BEQ CODE_239CC4         ; $23:9CB5: F0 0D
LDA $101C               ; $23:9CB7: AD 1C 10
BNE CODE_239CC4         ; $23:9CBA: D0 08
LDA #$04                ; $23:9CBC: A9 04
STA $101C               ; $23:9CBE: 8D 1C 10
DEC $101D               ; $23:9CC1: CE 1D 10

CODE_239CC4:
RTS                     ; $23:9CC4: 60

CODE_239CC5:
LDA $100F,x             ; $23:9CC5: BD 0F 10
ASL A                   ; $23:9CC8: 0A
ASL A                   ; $23:9CC9: 0A
ASL A                   ; $23:9CCA: 0A
ASL A                   ; $23:9CCB: 0A
STA $01                 ; $23:9CCC: 85 01
LDA $100F,x             ; $23:9CCE: BD 0F 10
LSR A                   ; $23:9CD1: 4A
LSR A                   ; $23:9CD2: 4A
LSR A                   ; $23:9CD3: 4A
LSR A                   ; $23:9CD4: 4A
CMP #$08                ; $23:9CD5: C9 08
BCC CODE_239CDB         ; $23:9CD7: 90 02
ORA #$F0                ; $23:9CD9: 09 F0

CODE_239CDB:
STA $00                 ; $23:9CDB: 85 00
LDY #$00                ; $23:9CDD: A0 00
CMP #$00                ; $23:9CDF: C9 00
BPL CODE_239CE4         ; $23:9CE1: 10 01
DEY                     ; $23:9CE3: 88

CODE_239CE4:
STY $02                 ; $23:9CE4: 84 02
LDA $1015,x             ; $23:9CE6: BD 15 10
CLC                     ; $23:9CE9: 18
ADC $01                 ; $23:9CEA: 65 01
STA $1015,x             ; $23:9CEC: 9D 15 10
LDA $1000,x             ; $23:9CEF: BD 00 10
ADC $00                 ; $23:9CF2: 65 00
STA $1000,x             ; $23:9CF4: 9D 00 10
LDA $1003,x             ; $23:9CF7: BD 03 10
ADC $02                 ; $23:9CFA: 65 02
STA $1003,x             ; $23:9CFC: 9D 03 10
RTS                     ; $23:9CFF: 60

CODE_239D00:
JSL CODE_2A81A5         ; $23:9D00: 22 A5 81 2A
LDX #$80                ; $23:9D04: A2 80
STX $2115               ; $23:9D06: 8E 15 21
LDA #$80                ; $23:9D09: A9 80
STA $2116               ; $23:9D0B: 8D 16 21
LDA #$00                ; $23:9D0E: A9 00
STA $2117               ; $23:9D10: 8D 17 21
JSL CODE_239D21         ; $23:9D13: 22 21 9D 23
LDA #$80                ; $23:9D17: A9 80
STA $2116               ; $23:9D19: 8D 16 21
LDA #$04                ; $23:9D1C: A9 04
STA $2117               ; $23:9D1E: 8D 17 21

CODE_239D21:
REP #$30                ; $23:9D21: C2 30
LDY #$0000              ; $23:9D23: A0 00 00

CODE_239D26:
LDA #$00FC              ; $23:9D26: A9 FC 00
STA $2118               ; $23:9D29: 8D 18 21
STA $2118               ; $23:9D2C: 8D 18 21
INY                     ; $23:9D2F: C8
CPY #$0130              ; $23:9D30: C0 30 01
BNE CODE_239D26         ; $23:9D33: D0 F1
AND #$0000              ; $23:9D35: 29 00 00
SEP #$30                ; $23:9D38: E2 30
REP #$10                ; $23:9D3A: C2 10
STZ $01                 ; $23:9D3C: 64 01
STZ $04                 ; $23:9D3E: 64 04

CODE_239D40:
LDA #$C0                ; $23:9D40: A9 C0
STA $00                 ; $23:9D42: 85 00
LDY #$000C              ; $23:9D44: A0 0C 00

CODE_239D47:
LDA $04                 ; $23:9D47: A5 04
ASL A                   ; $23:9D49: 0A
CLC                     ; $23:9D4A: 18
ADC $04                 ; $23:9D4B: 65 04
TAX                     ; $23:9D4D: AA
LDA.l PNTR_2282FB,x     ; $23:9D4E: BF FB 82 22
STA $0D                 ; $23:9D52: 85 0D
LDA.l PNTR_2282FB+1,x   ; $23:9D54: BF FC 82 22
STA $0E                 ; $23:9D58: 85 0E
LDA.l PNTR_2282FB+2,x   ; $23:9D5A: BF FD 82 22
STA $0F                 ; $23:9D5E: 85 0F

CODE_239D60:
REP #$20                ; $23:9D60: C2 20
LDA $00                 ; $23:9D62: A5 00
STA $2116               ; $23:9D64: 8D 16 21
LDX #$0000              ; $23:9D67: A2 00 00

CODE_239D6A:
LDA [$0D],y             ; $23:9D6A: B7 0D
STA $2118               ; $23:9D6C: 8D 18 21
INY                     ; $23:9D6F: C8
INY                     ; $23:9D70: C8
INX                     ; $23:9D71: E8
CPX #$0006              ; $23:9D72: E0 06 00
BNE CODE_239D6A         ; $23:9D75: D0 F3
TYA                     ; $23:9D77: 98
CLC                     ; $23:9D78: 18
ADC #$000C              ; $23:9D79: 69 0C 00
TAY                     ; $23:9D7C: A8
AND #$00FF              ; $23:9D7D: 29 FF 00
SEP #$20                ; $23:9D80: E2 20
LDA $00                 ; $23:9D82: A5 00
CLC                     ; $23:9D84: 18
ADC #$20                ; $23:9D85: 69 20
BCC CODE_239D8B         ; $23:9D87: 90 02
INC $01                 ; $23:9D89: E6 01

CODE_239D8B:
STA $00                 ; $23:9D8B: 85 00
AND #$E0                ; $23:9D8D: 29 E0
CMP #$80                ; $23:9D8F: C9 80
BNE CODE_239D60         ; $23:9D91: D0 CD
LDA $01                 ; $23:9D93: A5 01
AND #$03                ; $23:9D95: 29 03
CMP #$02                ; $23:9D97: C9 02
BNE CODE_239D60         ; $23:9D99: D0 C5
DEC $01                 ; $23:9D9B: C6 01
DEC $01                 ; $23:9D9D: C6 01
LDA $00                 ; $23:9D9F: A5 00
CLC                     ; $23:9DA1: 18
ADC #$46                ; $23:9DA2: 69 46
STA $00                 ; $23:9DA4: 85 00
LDA $04                 ; $23:9DA6: A5 04
CMP #$01                ; $23:9DA8: C9 01
BNE CODE_239DB6         ; $23:9DAA: D0 0A
CPY #$015C              ; $23:9DAC: C0 5C 01
BEQ CODE_239DB6         ; $23:9DAF: F0 05
LDY #$000C              ; $23:9DB1: A0 0C 00
BRA CODE_239D60         ; $23:9DB4: 80 AA

CODE_239DB6:
LDA $00                 ; $23:9DB6: A5 00
CLC                     ; $23:9DB8: 18
ADC #$04                ; $23:9DB9: 69 04
STA $00                 ; $23:9DBB: 85 00
LDY #$0000              ; $23:9DBD: A0 00 00
LDA $01                 ; $23:9DC0: A5 01
CMP #$04                ; $23:9DC2: C9 04
BEQ CODE_239DD5         ; $23:9DC4: F0 0F
INC $04                 ; $23:9DC6: E6 04
LDA $04                 ; $23:9DC8: A5 04
CMP #$03                ; $23:9DCA: C9 03
BEQ CODE_239DD1         ; $23:9DCC: F0 03
BRL CODE_239D47         ; $23:9DCE: 82 76 FF

CODE_239DD1:
LDA #$04                ; $23:9DD1: A9 04
STA $01                 ; $23:9DD3: 85 01

CODE_239DD5:
DEC $04                 ; $23:9DD5: C6 04
BMI CODE_239DE2         ; $23:9DD7: 30 09
LDA $04                 ; $23:9DD9: A5 04
CMP #$02                ; $23:9DDB: C9 02
BEQ CODE_239DE5         ; $23:9DDD: F0 06
JMP CODE_239D47         ; $23:9DDF: 4C 47 9D

CODE_239DE2:
SEP #$10                ; $23:9DE2: E2 10
RTL                     ; $23:9DE4: 6B

CODE_239DE5:
BRL CODE_239D40         ; $23:9DE5: 82 58 FF

CODE_239DE8:
JSR CODE_239DEC         ; $23:9DE8: 20 EC 9D
RTL                     ; $23:9DEB: 6B

CODE_239DEC:
LDA $1041               ; $23:9DEC: AD 41 10

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:9DEF: 22 1F FB 20
dw CODE_239DF9
dw CODE_239E18
dw CODE_239E36

; Flag to shuffle N-Space cards

CODE_239DF9:
LDA $0742               ; $23:9DF9: AD 42 07

; $00 means N-Spade was cleared and it's time to shuffle
BNE CODE_239E0F         ; $23:9DFC: D0 11
LDY #$11                ; $23:9DFE: A0 11

CODE_239E00:
LDA.w DATA_219A1C,y     ; $23:9E00: B9 1C 9A
STA $1E84,y             ; $23:9E03: 99 84 1E
DEY                     ; $23:9E06: 88
BPL CODE_239E00         ; $23:9E07: 10 F7

; Load set of cards
;
;
; Shuffle them
JSR CODE_239FE6         ; $23:9E09: 20 E6 9F

; Set flag to keep the cards
INC $0742               ; $23:9E0C: EE 42 07

CODE_239E0F:
INC $1041               ; $23:9E0F: EE 41 10

; N-Spade cursor position
LDA #$11                ; $23:9E12: A9 11
STA $1028               ; $23:9E14: 8D 28 10
RTS                     ; $23:9E17: 60

CODE_239E18:
LDY $1028               ; $23:9E18: AC 28 10
STY $0A                 ; $23:9E1B: 84 0A
LDA $1E84,y             ; $23:9E1D: B9 84 1E
AND #$80                ; $23:9E20: 29 80
BNE CODE_239E2A         ; $23:9E22: D0 06
JSR CODE_23A0DA         ; $23:9E24: 20 DA A0
JMP CODE_239E2D         ; $23:9E27: 4C 2D 9E

CODE_239E2A:
JSR CODE_23A02A         ; $23:9E2A: 20 2A A0

CODE_239E2D:
DEC $1028               ; $23:9E2D: CE 28 10
BPL CODE_239E35         ; $23:9E30: 10 03
INC $1041               ; $23:9E32: EE 41 10

CODE_239E35:
RTS                     ; $23:9E35: 60

CODE_239E36:
INC $1041               ; $23:9E36: EE 41 10
LDY #$19                ; $23:9E39: A0 19

CODE_239E3B:
LDA #$00                ; $23:9E3B: A9 00
STA $1026,y             ; $23:9E3D: 99 26 10
DEY                     ; $23:9E40: 88
BPL CODE_239E3B         ; $23:9E41: 10 F8
LDY #$03                ; $23:9E43: A0 03

CODE_239E45:
LDA #$FF                ; $23:9E45: A9 FF
STA $1037,y             ; $23:9E47: 99 37 10
DEY                     ; $23:9E4A: 88
BPL CODE_239E45         ; $23:9E4B: 10 F8
LDA #$20                ; $23:9E4D: A9 20
STA $1032               ; $23:9E4F: 8D 32 10
LDA #$DA                ; $23:9E52: A9 DA
STA $1033               ; $23:9E54: 8D 33 10
LDA #$CE                ; $23:9E57: A9 CE
STA $103B               ; $23:9E59: 8D 3B 10
LDA #$01                ; $23:9E5C: A9 01
STA $1035               ; $23:9E5E: 8D 35 10
RTS                     ; $23:9E61: 60

CODE_239E62:
LDA $103E               ; $23:9E62: AD 3E 10
BEQ CODE_239E72         ; $23:9E65: F0 0B
INC $0422               ; $23:9E67: EE 22 04
LDA #$0A                ; $23:9E6A: A9 0A
STA $069C               ; $23:9E6C: 8D 9C 06
DEC $103E               ; $23:9E6F: CE 3E 10

CODE_239E72:
JSR CODE_239E76         ; $23:9E72: 20 76 9E
RTL                     ; $23:9E75: 6B

CODE_239E76:
LDA $1034               ; $23:9E76: AD 34 10

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:9E79: 22 1F FB 20
dw CODE_239E8F
dw CODE_239E99
dw CODE_239EC4
dw CODE_239EF0
dw CODE_239EF7
dw CODE_239F46
dw CODE_239F7E
dw CODE_239F86
dw CODE_239FA6

CODE_239E8F:
JSR CODE_23A269         ; $23:9E8F: 20 69 A2
JSR CODE_23A309         ; $23:9E92: 20 09 A3
STZ $02D2               ; $23:9E95: 9C D2 02
RTS                     ; $23:9E98: 60

CODE_239E99:
LDY $1028               ; $23:9E99: AC 28 10
LDA $1E84,y             ; $23:9E9C: B9 84 1E
AND #$80                ; $23:9E9F: 29 80
BNE CODE_239EC0         ; $23:9EA1: D0 1D
LDA #$04                ; $23:9EA3: A9 04
STA $1036               ; $23:9EA5: 8D 36 10
LDA $1028               ; $23:9EA8: AD 28 10
STA $0A                 ; $23:9EAB: 85 0A
JSR CODE_23A1C0         ; $23:9EAD: 20 C0 A1
LDA #$00                ; $23:9EB0: A9 00
STA $102D               ; $23:9EB2: 8D 2D 10
INC $1034               ; $23:9EB5: EE 34 10
LDA #$41                ; $23:9EB8: A9 41
STA $1200               ; $23:9EBA: 8D 00 12
JMP CODE_239EC4         ; $23:9EBD: 4C C4 9E

CODE_239EC0:
DEC $1034               ; $23:9EC0: CE 34 10
RTS                     ; $23:9EC3: 60

CODE_239EC4:
LDA $102D               ; $23:9EC4: AD 2D 10
BEQ CODE_239ECD         ; $23:9EC7: F0 04
DEC $102D               ; $23:9EC9: CE 2D 10
RTS                     ; $23:9ECC: 60

CODE_239ECD:
LDA $1028               ; $23:9ECD: AD 28 10
STA $0A                 ; $23:9ED0: 85 0A
JSR CODE_23A383         ; $23:9ED2: 20 83 A3
DEC $1036               ; $23:9ED5: CE 36 10
LDA $1036               ; $23:9ED8: AD 36 10
CMP #$FE                ; $23:9EDB: C9 FE
BNE CODE_239EEA         ; $23:9EDD: D0 0B
LDA $1028               ; $23:9EDF: AD 28 10
STA $0A                 ; $23:9EE2: 85 0A
JSR CODE_23A02A         ; $23:9EE4: 20 2A A0
INC $1034               ; $23:9EE7: EE 34 10

CODE_239EEA:
LDA #$04                ; $23:9EEA: A9 04
STA $102D               ; $23:9EEC: 8D 2D 10
RTS                     ; $23:9EEF: 60

CODE_239EF0:
INC $1030               ; $23:9EF0: EE 30 10
JSR CODE_23A20B         ; $23:9EF3: 20 0B A2
RTS                     ; $23:9EF6: 60

CODE_239EF7:
LDY $1028               ; $23:9EF7: AC 28 10
LDA $1E84,y             ; $23:9EFA: B9 84 1E
ORA #$80                ; $23:9EFD: 09 80
STA $1E84,y             ; $23:9EFF: 99 84 1E
LDA #$04                ; $23:9F02: A9 04
STA $1034               ; $23:9F04: 8D 34 10
LDA $103D               ; $23:9F07: AD 3D 10
BNE CODE_239F12         ; $23:9F0A: D0 06
JSR CODE_23A454         ; $23:9F0C: 20 54 A4
INC $0741               ; $23:9F0F: EE 41 07

CODE_239F12:
INC $103D               ; $23:9F12: EE 3D 10
LDA $103D               ; $23:9F15: AD 3D 10
CMP #$51                ; $23:9F18: C9 51
BEQ CODE_239F20         ; $23:9F1A: F0 04
JSR CODE_23A49F         ; $23:9F1C: 20 9F A4
RTS                     ; $23:9F1F: 60

CODE_239F20:
STZ $1034               ; $23:9F20: 9C 34 10
STZ $103D               ; $23:9F23: 9C 3D 10
LDY #$00                ; $23:9F26: A0 00
JSR CODE_23A4B0         ; $23:9F28: 20 B0 A4
STZ $02D2               ; $23:9F2B: 9C D2 02
LDA $0741               ; $23:9F2E: AD 41 07
CMP #$09                ; $23:9F31: C9 09
BNE CODE_239F45         ; $23:9F33: D0 10
LDA #$06                ; $23:9F35: A9 06
STA $1034               ; $23:9F37: 8D 34 10
LDA #$40                ; $23:9F3A: A9 40
STA $102B               ; $23:9F3C: 8D 2B 10

; Set the N-Space cards to shuffle again.
STZ $0742               ; $23:9F3F: 9C 42 07
STZ $0741               ; $23:9F42: 9C 41 07

CODE_239F45:
RTS                     ; $23:9F45: 60

CODE_239F46:
LDA #$00                ; $23:9F46: A9 00
STA $1036               ; $23:9F48: 8D 36 10
LDA #$01                ; $23:9F4B: A9 01
STA $0B                 ; $23:9F4D: 85 0B
INC $1034               ; $23:9F4F: EE 34 10
INC $1034               ; $23:9F52: EE 34 10
LDA #$40                ; $23:9F55: A9 40
STA $102B               ; $23:9F57: 8D 2B 10
LDY $1028               ; $23:9F5A: AC 28 10
LDA $1E84,y             ; $23:9F5D: B9 84 1E
AND #$7F                ; $23:9F60: 29 7F
STA $1E84,y             ; $23:9F62: 99 84 1E
LDY $1029               ; $23:9F65: AC 29 10
LDA $1E84,y             ; $23:9F68: B9 84 1E
AND #$7F                ; $23:9F6B: 29 7F
STA $1E84,y             ; $23:9F6D: 99 84 1E
LDA #$2A                ; $23:9F70: A9 2A
STA $1203               ; $23:9F72: 8D 03 12
DEC $1035               ; $23:9F75: CE 35 10
BPL CODE_239F7D         ; $23:9F78: 10 03
DEC $1034               ; $23:9F7A: CE 34 10

CODE_239F7D:
RTS                     ; $23:9F7D: 60

CODE_239F7E:
DEC $102B               ; $23:9F7E: CE 2B 10
BPL CODE_239F85         ; $23:9F81: 10 02
INC $14                 ; $23:9F83: E6 14

CODE_239F85:
RTS                     ; $23:9F85: 60

CODE_239F86:
LDA $102B               ; $23:9F86: AD 2B 10
BEQ CODE_239F8F         ; $23:9F89: F0 04
DEC $102B               ; $23:9F8B: CE 2B 10
RTS                     ; $23:9F8E: 60

CODE_239F8F:
LDA #$00                ; $23:9F8F: A9 00
STA $1036               ; $23:9F91: 8D 36 10
LDY $0B                 ; $23:9F94: A4 0B
LDA $1028,y             ; $23:9F96: B9 28 10
STA $0A                 ; $23:9F99: 85 0A
JSR CODE_23A1C0         ; $23:9F9B: 20 C0 A1
INC $1034               ; $23:9F9E: EE 34 10
LDA #$00                ; $23:9FA1: A9 00
STA $102D               ; $23:9FA3: 8D 2D 10

CODE_239FA6:
LDA $102D               ; $23:9FA6: AD 2D 10
BEQ CODE_239FAF         ; $23:9FA9: F0 04
DEC $102D               ; $23:9FAB: CE 2D 10
RTS                     ; $23:9FAE: 60

CODE_239FAF:
LDY $0B                 ; $23:9FAF: A4 0B
LDA $1028,y             ; $23:9FB1: B9 28 10
STA $0A                 ; $23:9FB4: 85 0A
JSR CODE_23A383         ; $23:9FB6: 20 83 A3
INC $1036               ; $23:9FB9: EE 36 10
LDA $1036               ; $23:9FBC: AD 36 10
CMP #$06                ; $23:9FBF: C9 06
BCC CODE_239FE0         ; $23:9FC1: 90 1D
LDY $0B                 ; $23:9FC3: A4 0B
LDA $1028,y             ; $23:9FC5: B9 28 10
STA $0A                 ; $23:9FC8: 85 0A
JSR CODE_23A0DA         ; $23:9FCA: 20 DA A0
DEC $0B                 ; $23:9FCD: C6 0B
BPL CODE_239FD7         ; $23:9FCF: 10 06
LDA #$00                ; $23:9FD1: A9 00
STA $1034               ; $23:9FD3: 8D 34 10
RTS                     ; $23:9FD6: 60

CODE_239FD7:
LDA #$02                ; $23:9FD7: A9 02
STA $102B               ; $23:9FD9: 8D 2B 10
DEC $1034               ; $23:9FDC: CE 34 10
RTS                     ; $23:9FDF: 60

CODE_239FE0:
LDA #$04                ; $23:9FE0: A9 04
STA $102D               ; $23:9FE2: 8D 2D 10
RTS                     ; $23:9FE5: 60

; Shuffle cards thrice. The cards are stored in $1E84 as 18 cards

CODE_239FE6:
LDA #$02                ; $23:9FE6: A9 02
STA $0A                 ; $23:9FE8: 85 0A

CODE_239FEA:
JSL CODE_22E103         ; $23:9FEA: 22 03 E1 22
AND #$1F                ; $23:9FEE: 29 1F

; Random number generation
; The amount of time card-shifting should be performed. Always 00 or 02.
TAY                     ; $23:9FF0: A8

CODE_239FF1:
LDA $1E92               ; $23:9FF1: AD 92 1E
STA $0B                 ; $23:9FF4: 85 0B
LDX #$0D                ; $23:9FF6: A2 0D

CODE_239FF8:
LDA $1E84,x             ; $23:9FF8: BD 84 1E
STA $1E85,x             ; $23:9FFB: 9D 85 1E
DEX                     ; $23:9FFE: CA
BPL CODE_239FF8         ; $23:9FFF: 10 F7
LDA $0B                 ; $23:A001: A5 0B

; Store card #15 in $0B
;
; Shift the cards one time to the right. Kinda like ROR
;
;
;
;
; Store card #15 as card #00
STA $1E84               ; $23:A003: 8D 84 1E

; |
DEY                     ; $23:A006: 88

; /  Depending on the RNG output from earlier, repeat card-shifting.
BPL CODE_239FF1         ; $23:A007: 10 E8
LDX #$00                ; $23:A009: A2 00

CODE_23A00B:
LDA $1E84,x             ; $23:A00B: BD 84 1E
STA $0B                 ; $23:A00E: 85 0B
LDA $1E89,x             ; $23:A010: BD 89 1E
STA $1E84,x             ; $23:A013: 9D 84 1E
LDA $1E8E,x             ; $23:A016: BD 8E 1E
STA $1E89,x             ; $23:A019: 9D 89 1E
LDA $0B                 ; $23:A01C: A5 0B

; Store card #00 in $0B
;
; Swap card 5 with 0, 6 with 1, etc. until card 10
;
;
;
; Store card #00 as card #11
STA $1E8E,x             ; $23:A01E: 9D 8E 1E

; |
DEX                     ; $23:A021: CA

; |
DEX                     ; $23:A022: CA

; / This branch never gets taken as X always will become FE after the card-swapping.
BPL CODE_23A00B         ; $23:A023: 10 E6
DEC $0A                 ; $23:A025: C6 0A

; Repeat the whole shuffling process
BPL CODE_239FEA         ; $23:A027: 10 C1

; One quirk about this routine is that cards 16 17 and 18 are untouched.
RTS                     ; $23:A029: 60

CODE_23A02A:
REP #$20                ; $23:A02A: C2 20
LDY #$3A                ; $23:A02C: A0 3A

CODE_23A02E:
LDA.w DATA_219AC3,y     ; $23:A02E: B9 C3 9A
STA $1602,y             ; $23:A031: 99 02 16
DEY                     ; $23:A034: 88
DEY                     ; $23:A035: 88
BPL CODE_23A02E         ; $23:A036: 10 F6
LDA $0A                 ; $23:A038: A5 0A
AND #$00FF              ; $23:A03A: 29 FF 00
ASL A                   ; $23:A03D: 0A
TAY                     ; $23:A03E: A8
LDA.w DATA_219A2E,y     ; $23:A03F: B9 2E 9A
STA $102E               ; $23:A042: 8D 2E 10
LDY #$00                ; $23:A045: A0 00
LDX #$04                ; $23:A047: A2 04

CODE_23A049:
LDA $102E               ; $23:A049: AD 2E 10
STA $1602,y             ; $23:A04C: 99 02 16
SEP #$20                ; $23:A04F: E2 20
TYA                     ; $23:A051: 98
CLC                     ; $23:A052: 18
ADC #$0C                ; $23:A053: 69 0C
TAY                     ; $23:A055: A8
LDA $102F               ; $23:A056: AD 2F 10
CLC                     ; $23:A059: 18
ADC #$20                ; $23:A05A: 69 20
STA $102F               ; $23:A05C: 8D 2F 10
LDA $102E               ; $23:A05F: AD 2E 10
ADC #$00                ; $23:A062: 69 00
STA $102E               ; $23:A064: 8D 2E 10
REP #$20                ; $23:A067: C2 20
DEX                     ; $23:A069: CA
BPL CODE_23A049         ; $23:A06A: 10 DD
SEP #$20                ; $23:A06C: E2 20
LDY $0A                 ; $23:A06E: A4 0A
LDA $1E84,y             ; $23:A070: B9 84 1E
AND #$7F                ; $23:A073: 29 7F
STA $0B                 ; $23:A075: 85 0B
ASL A                   ; $23:A077: 0A
ASL A                   ; $23:A078: 0A
ASL A                   ; $23:A079: 0A
TAY                     ; $23:A07A: A8
REP #$20                ; $23:A07B: C2 20
LDA.w DATA_219A52,y     ; $23:A07D: B9 52 9A
STA $1614               ; $23:A080: 8D 14 16
INY                     ; $23:A083: C8
INY                     ; $23:A084: C8
LDA.w DATA_219A52,y     ; $23:A085: B9 52 9A
STA $1616               ; $23:A088: 8D 16 16
INY                     ; $23:A08B: C8
INY                     ; $23:A08C: C8
LDA.w DATA_219A52,y     ; $23:A08D: B9 52 9A
STA $1620               ; $23:A090: 8D 20 16
INY                     ; $23:A093: C8
INY                     ; $23:A094: C8
LDA.w DATA_219A52,y     ; $23:A095: B9 52 9A
STA $1622               ; $23:A098: 8D 22 16
LDA #$FFFF              ; $23:A09B: A9 FF FF
STA $163E               ; $23:A09E: 8D 3E 16
SEP #$20                ; $23:A0A1: E2 20
LDA #$3C                ; $23:A0A3: A9 3C
STA $1600               ; $23:A0A5: 8D 00 16
LDA $0B                 ; $23:A0A8: A5 0B
CMP #$03                ; $23:A0AA: C9 03
BCC CODE_23A0BF         ; $23:A0AC: 90 11
SEC                     ; $23:A0AE: 38
SBC #$03                ; $23:A0AF: E9 03
ASL A                   ; $23:A0B1: 0A
TAY                     ; $23:A0B2: A8
LDA.w DATA_219A87,y     ; $23:A0B3: B9 87 9A
STA $162C               ; $23:A0B6: 8D 2C 16
LDA.w DATA_219A8D,y     ; $23:A0B9: B9 8D 9A
STA $162E               ; $23:A0BC: 8D 2E 16

CODE_23A0BF:
LDA #$F0                ; $23:A0BF: A9 F0
STA $081D               ; $23:A0C1: 8D 1D 08
STA $0821               ; $23:A0C4: 8D 21 08
STA $0825               ; $23:A0C7: 8D 25 08
STA $0829               ; $23:A0CA: 8D 29 08
STA $082D               ; $23:A0CD: 8D 2D 08
STA $0831               ; $23:A0D0: 8D 31 08
STA $0835               ; $23:A0D3: 8D 35 08
STA $0839               ; $23:A0D6: 8D 39 08
RTS                     ; $23:A0D9: 60

CODE_23A0DA:
REP #$20                ; $23:A0DA: C2 20
LDY #$3A                ; $23:A0DC: A0 3A

CODE_23A0DE:
LDA.w DATA_219B3D,y     ; $23:A0DE: B9 3D 9B
STA $1602,y             ; $23:A0E1: 99 02 16
DEY                     ; $23:A0E4: 88
DEY                     ; $23:A0E5: 88
BPL CODE_23A0DE         ; $23:A0E6: 10 F6
LDA $0A                 ; $23:A0E8: A5 0A
AND #$00FF              ; $23:A0EA: 29 FF 00
ASL A                   ; $23:A0ED: 0A
TAY                     ; $23:A0EE: A8
LDA.w DATA_219A2E,y     ; $23:A0EF: B9 2E 9A
STA $102E               ; $23:A0F2: 8D 2E 10
LDY #$00                ; $23:A0F5: A0 00
LDX #$04                ; $23:A0F7: A2 04

CODE_23A0F9:
LDA $102E               ; $23:A0F9: AD 2E 10
STA $1602,y             ; $23:A0FC: 99 02 16
SEP #$20                ; $23:A0FF: E2 20
TYA                     ; $23:A101: 98
CLC                     ; $23:A102: 18
ADC #$0C                ; $23:A103: 69 0C
TAY                     ; $23:A105: A8
LDA $102F               ; $23:A106: AD 2F 10
CLC                     ; $23:A109: 18
ADC #$20                ; $23:A10A: 69 20
STA $102F               ; $23:A10C: 8D 2F 10
LDA $102E               ; $23:A10F: AD 2E 10
ADC #$00                ; $23:A112: 69 00
STA $102E               ; $23:A114: 8D 2E 10
REP #$20                ; $23:A117: C2 20
DEX                     ; $23:A119: CA
BPL CODE_23A0F9         ; $23:A11A: 10 DD
LDA #$FFFF              ; $23:A11C: A9 FF FF
STA $163E               ; $23:A11F: 8D 3E 16
SEP #$20                ; $23:A122: E2 20
LDA #$3C                ; $23:A124: A9 3C
STA $1600               ; $23:A126: 8D 00 16
LDA #$F0                ; $23:A129: A9 F0
STA $081D               ; $23:A12B: 8D 1D 08
STA $0821               ; $23:A12E: 8D 21 08
STA $0825               ; $23:A131: 8D 25 08
STA $0829               ; $23:A134: 8D 29 08
STA $082D               ; $23:A137: 8D 2D 08
STA $0831               ; $23:A13A: 8D 31 08
STA $0835               ; $23:A13D: 8D 35 08
STA $0839               ; $23:A140: 8D 39 08
RTS                     ; $23:A143: 60
LDY #$00                ; $23:A144: A0 00
LDA #$01                ; $23:A146: A9 01
STA $0A                 ; $23:A148: 85 0A
LDX $1028               ; $23:A14A: AE 28 10
LDA $1E84,x             ; $23:A14D: BD 84 1E
STA $0B                 ; $23:A150: 85 0B
ASL A                   ; $23:A152: 0A
ASL A                   ; $23:A153: 0A
TAX                     ; $23:A154: AA

CODE_23A155:
REP #$20                ; $23:A155: C2 20
LDA $1033               ; $23:A157: AD 33 10
STA $1602,y             ; $23:A15A: 99 02 16
INY                     ; $23:A15D: C8
INY                     ; $23:A15E: C8
SEP #$20                ; $23:A15F: E2 20
LDA #$02                ; $23:A161: A9 02
STA $1602,y             ; $23:A163: 99 02 16
INY                     ; $23:A166: C8
LDA.w DATA_219A52,x     ; $23:A167: BD 52 9A
STA $1602,y             ; $23:A16A: 99 02 16
INY                     ; $23:A16D: C8
INX                     ; $23:A16E: E8
LDA.w DATA_219A52,x     ; $23:A16F: BD 52 9A
STA $1602,y             ; $23:A172: 99 02 16
INY                     ; $23:A175: C8
INX                     ; $23:A176: E8
LDA $1033               ; $23:A177: AD 33 10
CLC                     ; $23:A17A: 18
ADC #$20                ; $23:A17B: 69 20
STA $1033               ; $23:A17D: 8D 33 10
LDA $1032               ; $23:A180: AD 32 10
ADC #$00                ; $23:A183: 69 00
STA $1032               ; $23:A185: 8D 32 10
DEC $0A                 ; $23:A188: C6 0A
BPL CODE_23A155         ; $23:A18A: 10 C9
LDA $103D               ; $23:A18C: AD 3D 10
AND #$01                ; $23:A18F: 29 01
BEQ CODE_23A1A1         ; $23:A191: F0 0E
INC $103C               ; $23:A193: EE 3C 10
LDA.w DATA_219A82,x     ; $23:A196: BD 82 9A
LSR A                   ; $23:A199: 4A
LSR A                   ; $23:A19A: 4A
LSR A                   ; $23:A19B: 4A
LSR A                   ; $23:A19C: 4A
ORA #$F0                ; $23:A19D: 09 F0
BNE CODE_23A1AD         ; $23:A19F: D0 0C

CODE_23A1A1:
LDA $103B               ; $23:A1A1: AD 3B 10
CLC                     ; $23:A1A4: 18
ADC #$08                ; $23:A1A5: 69 08
STA $103B               ; $23:A1A7: 8D 3B 10
LDA.w DATA_219A82,x     ; $23:A1AA: BD 82 9A

CODE_23A1AD:
LDX $103C               ; $23:A1AD: AE 3C 10
AND $1037,x             ; $23:A1B0: 3D 37 10
STA $1037,x             ; $23:A1B3: 9D 37 10
STA $1602,y             ; $23:A1B6: 99 02 16
INY                     ; $23:A1B9: C8
LDA #$FF                ; $23:A1BA: A9 FF
STA $1602,y             ; $23:A1BC: 99 02 16
RTS                     ; $23:A1BF: 60

CODE_23A1C0:
REP #$20                ; $23:A1C0: C2 20
LDY #$3C                ; $23:A1C2: A0 3C

CODE_23A1C4:
LDA.w DATA_219AFF,y     ; $23:A1C4: B9 FF 9A
STA $1602,y             ; $23:A1C7: 99 02 16
DEY                     ; $23:A1CA: 88
DEY                     ; $23:A1CB: 88
BPL CODE_23A1C4         ; $23:A1CC: 10 F6
LDA $0A                 ; $23:A1CE: A5 0A
AND #$00FF              ; $23:A1D0: 29 FF 00
ASL A                   ; $23:A1D3: 0A
TAY                     ; $23:A1D4: A8
LDA.w DATA_219A2E,y     ; $23:A1D5: B9 2E 9A
STA $102E               ; $23:A1D8: 8D 2E 10
LDA #$003C              ; $23:A1DB: A9 3C 00
STA $1600               ; $23:A1DE: 8D 00 16
LDY #$00                ; $23:A1E1: A0 00
LDX #$04                ; $23:A1E3: A2 04

CODE_23A1E5:
LDA $102E               ; $23:A1E5: AD 2E 10
STA $1602,y             ; $23:A1E8: 99 02 16
SEP #$20                ; $23:A1EB: E2 20
TYA                     ; $23:A1ED: 98
CLC                     ; $23:A1EE: 18
ADC #$0C                ; $23:A1EF: 69 0C
TAY                     ; $23:A1F1: A8
LDA $102F               ; $23:A1F2: AD 2F 10
CLC                     ; $23:A1F5: 18
ADC #$20                ; $23:A1F6: 69 20
STA $102F               ; $23:A1F8: 8D 2F 10
LDA $102E               ; $23:A1FB: AD 2E 10
ADC #$00                ; $23:A1FE: 69 00
STA $102E               ; $23:A200: 8D 2E 10
REP #$20                ; $23:A203: C2 20
DEX                     ; $23:A205: CA
BPL CODE_23A1E5         ; $23:A206: 10 DD
SEP #$20                ; $23:A208: E2 20
RTS                     ; $23:A20A: 60

CODE_23A20B:
LDA $1030               ; $23:A20B: AD 30 10
AND #$01                ; $23:A20E: 29 01
BNE CODE_23A24B         ; $23:A210: D0 39
LDY $1028               ; $23:A212: AC 28 10
LDA $1E84,y             ; $23:A215: B9 84 1E
CMP $1031               ; $23:A218: CD 31 10
BEQ CODE_23A265         ; $23:A21B: F0 48
LDA $1E84,y             ; $23:A21D: B9 84 1E
CMP #$08                ; $23:A220: C9 08
BNE CODE_23A22A         ; $23:A222: D0 06
LDA $1031               ; $23:A224: AD 31 10
JMP CODE_23A239         ; $23:A227: 4C 39 A2

CODE_23A22A:
LDA $1031               ; $23:A22A: AD 31 10
CMP #$08                ; $23:A22D: C9 08
BNE CODE_23A23F         ; $23:A22F: D0 0E
LDA $1E84,y             ; $23:A231: B9 84 1E
ORA #$80                ; $23:A234: 09 80
LDY $1029               ; $23:A236: AC 29 10

CODE_23A239:
STA $1E84,y             ; $23:A239: 99 84 1E
JMP CODE_23A265         ; $23:A23C: 4C 65 A2

CODE_23A23F:
INC $1034               ; $23:A23F: EE 34 10
INC $1034               ; $23:A242: EE 34 10
LDA #$30                ; $23:A245: A9 30
STA $102B               ; $23:A247: 8D 2B 10
RTS                     ; $23:A24A: 60

CODE_23A24B:
LDY $1028               ; $23:A24B: AC 28 10
STY $1029               ; $23:A24E: 8C 29 10
LDA $1E84,y             ; $23:A251: B9 84 1E
STA $1031               ; $23:A254: 8D 31 10
LDA $1E84,y             ; $23:A257: B9 84 1E
ORA #$80                ; $23:A25A: 09 80
STA $1E84,y             ; $23:A25C: 99 84 1E
LDA #$00                ; $23:A25F: A9 00
STA $1034               ; $23:A261: 8D 34 10
RTS                     ; $23:A264: 60

CODE_23A265:
INC $1034               ; $23:A265: EE 34 10
RTS                     ; $23:A268: 60

CODE_23A269:
LDA $102B               ; $23:A269: AD 2B 10
BEQ CODE_23A272         ; $23:A26C: F0 04
DEC $102B               ; $23:A26E: CE 2B 10
RTS                     ; $23:A271: 60

CODE_23A272:
JSR CODE_23A4DC         ; $23:A272: 20 DC A4
BCC CODE_23A27B         ; $23:A275: 90 04
INC $1034               ; $23:A277: EE 34 10
RTS                     ; $23:A27A: 60

CODE_23A27B:
LDA $17                 ; $23:A27B: A5 17
AND #$0F                ; $23:A27D: 29 0F
BEQ CODE_23A2E9         ; $23:A27F: F0 68
LDA #$08                ; $23:A281: A9 08
STA $102B               ; $23:A283: 8D 2B 10
LDA #$01                ; $23:A286: A9 01
STA $1203               ; $23:A288: 8D 03 12
LDA $17                 ; $23:A28B: A5 17
AND #$08                ; $23:A28D: 29 08
BEQ CODE_23A2A5         ; $23:A28F: F0 14
LDA $1028               ; $23:A291: AD 28 10
SEC                     ; $23:A294: 38
SBC #$06                ; $23:A295: E9 06
STA $1028               ; $23:A297: 8D 28 10
BCS CODE_23A2A5         ; $23:A29A: B0 09
LDA $1028               ; $23:A29C: AD 28 10
CLC                     ; $23:A29F: 18
ADC #$12                ; $23:A2A0: 69 12
STA $1028               ; $23:A2A2: 8D 28 10

CODE_23A2A5:
LDA $17                 ; $23:A2A5: A5 17
AND #$04                ; $23:A2A7: 29 04
BEQ CODE_23A2C4         ; $23:A2A9: F0 19
LDA $1028               ; $23:A2AB: AD 28 10
CLC                     ; $23:A2AE: 18
ADC #$06                ; $23:A2AF: 69 06
STA $1028               ; $23:A2B1: 8D 28 10
LDA $1028               ; $23:A2B4: AD 28 10
CMP #$12                ; $23:A2B7: C9 12
BCC CODE_23A2C4         ; $23:A2B9: 90 09
LDA $1028               ; $23:A2BB: AD 28 10
SEC                     ; $23:A2BE: 38
SBC #$12                ; $23:A2BF: E9 12
STA $1028               ; $23:A2C1: 8D 28 10

CODE_23A2C4:
LDA $17                 ; $23:A2C4: A5 17
AND #$01                ; $23:A2C6: 29 01
BEQ CODE_23A2D9         ; $23:A2C8: F0 0F
INC $1028               ; $23:A2CA: EE 28 10
LDA $1028               ; $23:A2CD: AD 28 10
CMP #$12                ; $23:A2D0: C9 12
BCC CODE_23A2D9         ; $23:A2D2: 90 05
LDA #$00                ; $23:A2D4: A9 00
STA $1028               ; $23:A2D6: 8D 28 10

CODE_23A2D9:
LDA $17                 ; $23:A2D9: A5 17
AND #$02                ; $23:A2DB: 29 02
BEQ CODE_23A2E9         ; $23:A2DD: F0 0A
DEC $1028               ; $23:A2DF: CE 28 10
BPL CODE_23A2E9         ; $23:A2E2: 10 05
LDA #$11                ; $23:A2E4: A9 11
STA $1028               ; $23:A2E6: 8D 28 10

CODE_23A2E9:
RTS                     ; $23:A2E9: 60

CODE_23A2EA:
LDA $1026               ; $23:A2EA: AD 26 10
STA $0804,y             ; $23:A2ED: 99 04 08
LDA $1027               ; $23:A2F0: AD 27 10
STA $0805,y             ; $23:A2F3: 99 05 08
LDA.w DATA_2199CE,x     ; $23:A2F6: BD CE 99
STA $0806,y             ; $23:A2F9: 99 06 08
LDA.w DATA_2199D4,x     ; $23:A2FC: BD D4 99
STA $0807,y             ; $23:A2FF: 99 07 08
TYA                     ; $23:A302: 98
CLC                     ; $23:A303: 18
ADC #$04                ; $23:A304: 69 04
TAY                     ; $23:A306: A8
INX                     ; $23:A307: E8
RTS                     ; $23:A308: 60

CODE_23A309:
LDX $1028               ; $23:A309: AE 28 10
LDA.w DATA_2199DA,x     ; $23:A30C: BD DA 99
STA $1026               ; $23:A30F: 8D 26 10
STA $102A               ; $23:A312: 8D 2A 10
LDA.w DATA_2199EC,x     ; $23:A315: BD EC 99
STA $1027               ; $23:A318: 8D 27 10
LDX #$00                ; $23:A31B: A2 00
LDY #$00                ; $23:A31D: A0 00

CODE_23A31F:
JSR CODE_23A2EA         ; $23:A31F: 20 EA A2
LDA $1026               ; $23:A322: AD 26 10
CLC                     ; $23:A325: 18
ADC #$10                ; $23:A326: 69 10
STA $1026               ; $23:A328: 8D 26 10
CPX #$02                ; $23:A32B: E0 02
BCC CODE_23A31F         ; $23:A32D: 90 F0
LDA $1027               ; $23:A32F: AD 27 10
CLC                     ; $23:A332: 18
ADC #$10                ; $23:A333: 69 10
STA $1027               ; $23:A335: 8D 27 10
LDA $102A               ; $23:A338: AD 2A 10
STA $1026               ; $23:A33B: 8D 26 10
JSR CODE_23A2EA         ; $23:A33E: 20 EA A2
LDA $1026               ; $23:A341: AD 26 10
CLC                     ; $23:A344: 18
ADC #$10                ; $23:A345: 69 10
STA $1026               ; $23:A347: 8D 26 10
JSR CODE_23A2EA         ; $23:A34A: 20 EA A2
LDA $1027               ; $23:A34D: AD 27 10
CLC                     ; $23:A350: 18
ADC #$10                ; $23:A351: 69 10
STA $1027               ; $23:A353: 8D 27 10
LDA $102A               ; $23:A356: AD 2A 10
STA $1026               ; $23:A359: 8D 26 10

CODE_23A35C:
JSR CODE_23A2EA         ; $23:A35C: 20 EA A2
LDA $1026               ; $23:A35F: AD 26 10
CLC                     ; $23:A362: 18
ADC #$10                ; $23:A363: 69 10
STA $1026               ; $23:A365: 8D 26 10
CPX #$06                ; $23:A368: E0 06
BCC CODE_23A35C         ; $23:A36A: 90 F0
STY $102C               ; $23:A36C: 8C 2C 10
REP #$20                ; $23:A36F: C2 20
LDA #$0202              ; $23:A371: A9 02 02
STA $0A20               ; $23:A374: 8D 20 0A
STA $0A22               ; $23:A377: 8D 22 0A
STA $0A24               ; $23:A37A: 8D 24 0A
STA $0A26               ; $23:A37D: 8D 26 0A
SEP #$20                ; $23:A380: E2 20
RTS                     ; $23:A382: 60

CODE_23A383:
LDX $0A                 ; $23:A383: A6 0A
LDA.w DATA_2199DA,x     ; $23:A385: BD DA 99
CLC                     ; $23:A388: 18
ADC #$08                ; $23:A389: 69 08
STA $1026               ; $23:A38B: 8D 26 10
STA $102A               ; $23:A38E: 8D 2A 10
LDA.w DATA_2199EC,x     ; $23:A391: BD EC 99
CLC                     ; $23:A394: 18
ADC #$08                ; $23:A395: 69 08
STA $1027               ; $23:A397: 8D 27 10
LDX #$00                ; $23:A39A: A2 00
LDY $102C               ; $23:A39C: AC 2C 10

CODE_23A39F:
LDA $1026               ; $23:A39F: AD 26 10
STA $0804,y             ; $23:A3A2: 99 04 08
STA $0808,y             ; $23:A3A5: 99 08 08
INY                     ; $23:A3A8: C8
LDA $1027               ; $23:A3A9: AD 27 10
STA $0804,y             ; $23:A3AC: 99 04 08
CLC                     ; $23:A3AF: 18
ADC #$08                ; $23:A3B0: 69 08
STA $0808,y             ; $23:A3B2: 99 08 08
INY                     ; $23:A3B5: C8
JSR CODE_23A439         ; $23:A3B6: 20 39 A4
STA $0804,y             ; $23:A3B9: 99 04 08
CPX #$02                ; $23:A3BC: E0 02
BCC CODE_23A3C7         ; $23:A3BE: 90 07
LDA $00                 ; $23:A3C0: A5 00
STA $0808,y             ; $23:A3C2: 99 08 08
BRA CODE_23A3CB         ; $23:A3C5: 80 04

CODE_23A3C7:
INC A                   ; $23:A3C7: 1A
STA $0808,y             ; $23:A3C8: 99 08 08

CODE_23A3CB:
INY                     ; $23:A3CB: C8
LDA #$00                ; $23:A3CC: A9 00
LDA #$0C                ; $23:A3CE: A9 0C
STA $0804,y             ; $23:A3D0: 99 04 08
STA $0808,y             ; $23:A3D3: 99 08 08
TYA                     ; $23:A3D6: 98
CLC                     ; $23:A3D7: 18
ADC #$05                ; $23:A3D8: 69 05
TAY                     ; $23:A3DA: A8
INX                     ; $23:A3DB: E8
CPX #$04                ; $23:A3DC: E0 04
BCS CODE_23A400         ; $23:A3DE: B0 20
LDA $1026               ; $23:A3E0: AD 26 10
CLC                     ; $23:A3E3: 18
ADC #$08                ; $23:A3E4: 69 08
STA $1026               ; $23:A3E6: 8D 26 10
TXA                     ; $23:A3E9: 8A
AND #$01                ; $23:A3EA: 29 01
BNE CODE_23A3FD         ; $23:A3EC: D0 0F
LDA $1027               ; $23:A3EE: AD 27 10
CLC                     ; $23:A3F1: 18
ADC #$10                ; $23:A3F2: 69 10
STA $1027               ; $23:A3F4: 8D 27 10
LDA $102A               ; $23:A3F7: AD 2A 10
STA $1026               ; $23:A3FA: 8D 26 10

CODE_23A3FD:
JMP CODE_23A39F         ; $23:A3FD: 4C 9F A3

CODE_23A400:
LDA $0827               ; $23:A400: AD 27 08
ORA #$40                ; $23:A403: 09 40
STA $0827               ; $23:A405: 8D 27 08
LDA $082B               ; $23:A408: AD 2B 08
ORA #$40                ; $23:A40B: 09 40
STA $082B               ; $23:A40D: 8D 2B 08
LDA $0833               ; $23:A410: AD 33 08
ORA #$80                ; $23:A413: 09 80
STA $0833               ; $23:A415: 8D 33 08
LDA $0837               ; $23:A418: AD 37 08
ORA #$40                ; $23:A41B: 09 40
STA $0837               ; $23:A41D: 8D 37 08
LDA $083B               ; $23:A420: AD 3B 08
ORA #$C0                ; $23:A423: 09 C0
STA $083B               ; $23:A425: 8D 3B 08
REP #$20                ; $23:A428: C2 20
STZ $0A27               ; $23:A42A: 9C 27 0A
STZ $0A29               ; $23:A42D: 9C 29 0A
STZ $0A2B               ; $23:A430: 9C 2B 0A
STZ $0A2D               ; $23:A433: 9C 2D 0A
SEP #$20                ; $23:A436: E2 20
RTS                     ; $23:A438: 60

CODE_23A439:
STX $0A                 ; $23:A439: 86 0A
LDX $1036               ; $23:A43B: AE 36 10
LDA.w DATA_219A17,x     ; $23:A43E: BD 17 9A
CLC                     ; $23:A441: 18
ADC $0A                 ; $23:A442: 65 0A
TAX                     ; $23:A444: AA
LDA.w DATA_219A03,x     ; $23:A445: BD 03 9A
LDX $0A                 ; $23:A448: A6 0A
CPX #$02                ; $23:A44A: E0 02
BCS CODE_23A450         ; $23:A44C: B0 02
STA $00                 ; $23:A44E: 85 00

CODE_23A450:
RTS                     ; $23:A450: 60

DATA_23A451:
db $01,$02,$09

CODE_23A454:
LDY $1028               ; $23:A454: AC 28 10
LDA $1E84,y             ; $23:A457: B9 84 1E
AND #$0F                ; $23:A45A: 29 0F
STA $0C                 ; $23:A45C: 85 0C
CMP #$03                ; $23:A45E: C9 03
BNE CODE_23A46F         ; $23:A460: D0 0D
LDX $0726               ; $23:A462: AE 26 07
INC $0736,x             ; $23:A465: FE 36 07
LDA #$05                ; $23:A468: A9 05
STA $1203               ; $23:A46A: 8D 03 12
BNE CODE_23A49E         ; $23:A46D: D0 2F

CODE_23A46F:
CMP #$04                ; $23:A46F: C9 04
BCC CODE_23A48A         ; $23:A471: 90 17
LDY #$0A                ; $23:A473: A0 0A
CMP #$04                ; $23:A475: C9 04
BEQ CODE_23A47B         ; $23:A477: F0 02
LDY #$14                ; $23:A479: A0 14

CODE_23A47B:
TYA                     ; $23:A47B: 98
CLC                     ; $23:A47C: 18
ADC $103E               ; $23:A47D: 6D 3E 10
STA $103E               ; $23:A480: 8D 3E 10
LDA #$01                ; $23:A483: A9 01
STA $1203               ; $23:A485: 8D 03 12
BNE CODE_23A49E         ; $23:A488: D0 14

CODE_23A48A:
LDA $0C                 ; $23:A48A: A5 0C
CMP #$03                ; $23:A48C: C9 03
BCS CODE_23A49E         ; $23:A48E: B0 0E
TAX                     ; $23:A490: AA
LDA.l DATA_23A451,x     ; $23:A491: BF 51 A4 23
JSL CODE_20F634         ; $23:A495: 22 34 F6 20
LDA #$29                ; $23:A499: A9 29
STA $1203               ; $23:A49B: 8D 03 12

CODE_23A49E:
RTS                     ; $23:A49E: 60

CODE_23A49F:
LDA $103D               ; $23:A49F: AD 3D 10
DEC A                   ; $23:A4A2: 3A
PHA                     ; $23:A4A3: 48
AND #$06                ; $23:A4A4: 29 06
TAY                     ; $23:A4A6: A8
PLA                     ; $23:A4A7: 68
AND #$18                ; $23:A4A8: 29 18
LSR A                   ; $23:A4AA: 4A
LSR A                   ; $23:A4AB: 4A
LSR A                   ; $23:A4AC: 4A
STA $02D2               ; $23:A4AD: 8D D2 02

CODE_23A4B0:
REP #$20                ; $23:A4B0: C2 20
LDA.w DATA_219A93,y     ; $23:A4B2: B9 93 9A
STA $1386               ; $23:A4B5: 8D 86 13
LDA.w DATA_219A9B,y     ; $23:A4B8: B9 9B 9A
STA $1392               ; $23:A4BB: 8D 92 13
LDA.w DATA_219AA3,y     ; $23:A4BE: B9 A3 9A
STA $1394               ; $23:A4C1: 8D 94 13
LDA.w DATA_219AAB,y     ; $23:A4C4: B9 AB 9A
STA $1396               ; $23:A4C7: 8D 96 13
LDA.w DATA_219AB3,y     ; $23:A4CA: B9 B3 9A
STA $1398               ; $23:A4CD: 8D 98 13
LDA.w DATA_219ABB,y     ; $23:A4D0: B9 BB 9A
STA $139C               ; $23:A4D3: 8D 9C 13
SEP #$20                ; $23:A4D6: E2 20
INC $1500               ; $23:A4D8: EE 00 15
RTS                     ; $23:A4DB: 60

CODE_23A4DC:
LDA $18                 ; $23:A4DC: A5 18
AND #$C0                ; $23:A4DE: 29 C0
BNE CODE_23A4EC         ; $23:A4E0: D0 0A
LDX $0726               ; $23:A4E2: AE 26 07
LDA $00F8,x             ; $23:A4E5: BD F8 00
AND #$C0                ; $23:A4E8: 29 C0
BEQ CODE_23A4EE         ; $23:A4EA: F0 02

CODE_23A4EC:
SEC                     ; $23:A4EC: 38
RTS                     ; $23:A4ED: 60

CODE_23A4EE:
CLC                     ; $23:A4EE: 18
RTS                     ; $23:A4EF: 60

ORG $23A540

DATA_23A540:
db $32,$50,$AD,$C1,$32,$50,$AD,$C1

; prepare battle level data

CODE_23A548:
LDX #$00                ; $23:A548: A2 00

CODE_23A54A:
LDA #$02                ; $23:A54A: A9 02
JSL CODE_2098A8         ; $23:A54C: 22 A8 98 20

; clear out everything first
JSL CODE_209844         ; $23:A550: 22 44 98 20
CPX #$F0                ; $23:A554: E0 F0
BNE CODE_23A54A         ; $23:A556: D0 F2
LDX #$D0                ; $23:A558: A2 D0

CODE_23A55A:
LDA #$50                ; $23:A55A: A9 50

; lay down some ground
JSL CODE_209844         ; $23:A55C: 22 44 98 20
CPX #$F0                ; $23:A560: E0 F0
BNE CODE_23A55A         ; $23:A562: D0 F6

; lay down everything else
JSL CODE_20990B         ; $23:A564: 22 0B 99 20
RTL                     ; $23:A568: 6B

CODE_23A569:
LDA $0E                 ; $23:A569: A5 0E
AND #$E0                ; $23:A56B: 29 E0
LSR A                   ; $23:A56D: 4A
LSR A                   ; $23:A56E: 4A
LSR A                   ; $23:A56F: 4A
LSR A                   ; $23:A570: 4A
LSR A                   ; $23:A571: 4A
TAX                     ; $23:A572: AA
LDA $0706               ; $23:A573: AD 06 07
LSR A                   ; $23:A576: 4A
LSR A                   ; $23:A577: 4A
LSR A                   ; $23:A578: 4A
LSR A                   ; $23:A579: 4A
CLC                     ; $23:A57A: 18
ADC.w DATA_21A379,x     ; $23:A57B: 7D 79 A3
TAX                     ; $23:A57E: AA
DEX                     ; $23:A57F: CA
TXA                     ; $23:A580: 8A

; ExecutePtrLong
JSL CODE_20FB3A         ; $23:A581: 22 3A FB 20
dl CODE_23A5FE
dl CODE_23A603
dl CODE_23A608
dl CODE_23A920
dl CODE_23A61F
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl $000000
dl CODE_23A6C1
dl CODE_23A6C1
dl CODE_23A6C1
dl CODE_23A728
dl CODE_23A728
dl CODE_23A81D
dl CODE_23A81D
dl CODE_23A8AE
dl CODE_23A8AE

CODE_23A5E8:
LDA $0E                 ; $23:A5E8: A5 0E
AND #$E0                ; $23:A5EA: 29 E0
LSR A                   ; $23:A5EC: 4A
CLC                     ; $23:A5ED: 18
ADC $0706               ; $23:A5EE: 6D 06 07
TAX                     ; $23:A5F1: AA

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:A5F2: 22 1F FB 20
dw CODE_23A635
dw CODE_23A63A
dw CODE_23A658
dw CODE_23A660

CODE_23A5FE:
LDX #$00                ; $23:A5FE: A2 00
JMP CODE_23A60A         ; $23:A600: 4C 0A A6

CODE_23A603:
LDX #$01                ; $23:A603: A2 01
JMP CODE_23A60A         ; $23:A605: 4C 0A A6

CODE_23A608:
LDX #$02                ; $23:A608: A2 02

CODE_23A60A:
LDA $0706               ; $23:A60A: A6 06 07
AND #$0F                ; $23:A60D: 29 0F
STA $00                 ; $23:A60F: 85 00
LDY $0700               ; $23:A611: AC 00 07

CODE_23A614:
LDA.w DATA_21A464,x     ; $23:A614: BD 64 A4
STA [$2E],y             ; $23:A617: 97 2E
INY                     ; $23:A619: C8
DEC $00                 ; $23:A61A: C6 00
BPL CODE_23A614         ; $23:A61C: 10 F6
RTL                     ; $23:A61E: 6B

CODE_23A61F:
LDA $0706               ; $23:A61F: AD 06 07
AND #$0F                ; $23:A622: 29 0F
TAX                     ; $23:A624: AA
LDY $0700               ; $23:A625: AC 00 07

CODE_23A628:
LDA #$C0                ; $23:A628: A9 C0
STA [$2E],y             ; $23:A62A: 97 2E
TYA                     ; $23:A62C: 98
CLC                     ; $23:A62D: 18
ADC #$10                ; $23:A62E: 69 10
TAY                     ; $23:A630: A8
DEX                     ; $23:A631: CA
BPL CODE_23A628         ; $23:A632: 10 F4
RTL                     ; $23:A634: 6B

CODE_23A635:
LDX #$00                ; $23:A635: A2 00
JMP CODE_23A63C         ; $23:A637: 4C 3C A6

CODE_23A63A:
LDX #$04                ; $23:A63A: A2 04

CODE_23A63C:
LDY $0700               ; $23:A63C: AC 00 07

CODE_23A63F:
LDA.w DATA_21A467,x     ; $23:A63F: BD 67 A4
STA [$2E],y             ; $23:A642: 97 2E
INY                     ; $23:A644: C8
INX                     ; $23:A645: E8
TXA                     ; $23:A646: 8A
AND #$01                ; $23:A647: 29 01
BNE CODE_23A63F         ; $23:A649: D0 F4
LDA $0700               ; $23:A64B: AD 00 07
CLC                     ; $23:A64E: 18
ADC #$10                ; $23:A64F: 69 10
TAY                     ; $23:A651: A8
TXA                     ; $23:A652: 8A
AND #$03                ; $23:A653: 29 03
BNE CODE_23A63F         ; $23:A655: D0 E8
RTL                     ; $23:A657: 6B

CODE_23A658:
LDY $0700               ; $23:A658: AC 00 07
LDA #$BC                ; $23:A65B: A9 BC
STA [$2E],y             ; $23:A65D: 97 2E
RTL                     ; $23:A65F: 6B

CODE_23A660:
LDX #$00                ; $23:A660: A2 00

CODE_23A662:
LDY $0700               ; $23:A662: AC 00 07
LDA #$09                ; $23:A665: A9 09
STA $00                 ; $23:A667: 85 00

CODE_23A669:
LDA.w DATA_21A46F,x     ; $23:A669: BD 6F A4
STA [$2E],y             ; $23:A66C: 97 2E
INY                     ; $23:A66E: C8
INX                     ; $23:A66F: E8
DEC $00                 ; $23:A670: C6 00
BPL CODE_23A669         ; $23:A672: 10 F5
LDA $0700               ; $23:A674: AD 00 07
CLC                     ; $23:A677: 18
ADC #$10                ; $23:A678: 69 10
STA $0700               ; $23:A67A: 8D 00 07
CPX #$14                ; $23:A67D: E0 14
BNE CODE_23A662         ; $23:A67F: D0 E1
RTL                     ; $23:A681: 6B

CODE_23A682:
LDY $0700               ; $23:A682: AC 00 07
LDA #$42                ; $23:A685: A9 42
STA [$2E],y             ; $23:A687: 97 2E
TYA                     ; $23:A689: 98
CLC                     ; $23:A68A: 18
ADC #$10                ; $23:A68B: 69 10
TAY                     ; $23:A68D: A8
LDA $2F                 ; $23:A68E: A5 2F
ADC #$00                ; $23:A690: 69 00
STA $2F                 ; $23:A692: 85 2F
LDA #$42                ; $23:A694: A9 42
STA [$2E],y             ; $23:A696: 97 2E
RTL                     ; $23:A698: 6B

CODE_23A699:
LDY $0700               ; $23:A699: AC 00 07
LDA #$00                ; $23:A69C: A9 00
STA [$2E],y             ; $23:A69E: 97 2E
REP #$30                ; $23:A6A0: C2 30
TYA                     ; $23:A6A2: 98
ORA #$2000              ; $23:A6A3: 09 00 20
TAY                     ; $23:A6A6: A8
LDA #$0100              ; $23:A6A7: A9 00 01
XBA                     ; $23:A6AA: EB
SEP #$20                ; $23:A6AB: E2 20
STA [$2E],y             ; $23:A6AD: 97 2E
SEP #$10                ; $23:A6AF: E2 10
TYA                     ; $23:A6B1: 98
CLC                     ; $23:A6B2: 18
ADC #$10                ; $23:A6B3: 69 10
TAY                     ; $23:A6B5: A8
LDA $2F                 ; $23:A6B6: A5 2F
ADC #$00                ; $23:A6B8: 69 00
STA $2F                 ; $23:A6BA: 85 2F
LDA #$43                ; $23:A6BC: A9 43
STA [$2E],y             ; $23:A6BE: 97 2E
RTL                     ; $23:A6C0: 6B

CODE_23A6C1:
LDA $2E                 ; $23:A6C1: A5 2E
STA $00                 ; $23:A6C3: 85 00
LDA $2F                 ; $23:A6C5: A5 2F
STA $01                 ; $23:A6C7: 85 01
LDA $0706               ; $23:A6C9: AD 06 07
SEC                     ; $23:A6CC: 38
SBC #$90                ; $23:A6CD: E9 90
AND #$F0                ; $23:A6CF: 29 F0
LSR A                   ; $23:A6D1: 4A
LSR A                   ; $23:A6D2: 4A
LSR A                   ; $23:A6D3: 4A
TAX                     ; $23:A6D4: AA
LDA $0706               ; $23:A6D5: AD 06 07
AND #$0F                ; $23:A6D8: 29 0F
STA $02                 ; $23:A6DA: 85 02
LDY $0700               ; $23:A6DC: AC 00 07
LDA.w DATA_21A483,x     ; $23:A6DF: BD 83 A4
STA [$2E],y             ; $23:A6E2: 97 2E
JSL CODE_2AB73A         ; $23:A6E4: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:A6E8: 22 BB BE 23
LDA.w DATA_21A483+1,x   ; $23:A6EC: BD 84 A4
STA [$2E],y             ; $23:A6EF: 97 2E
BRA CODE_23A706         ; $23:A6F1: 80 13

CODE_23A6F3:
LDY $0700               ; $23:A6F3: AC 00 07
LDA #$BA                ; $23:A6F6: A9 BA
STA [$2E],y             ; $23:A6F8: 97 2E
JSL CODE_2AB73A         ; $23:A6FA: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:A6FE: 22 BB BE 23
LDA #$BB                ; $23:A702: A9 BB
STA [$2E],y             ; $23:A704: 97 2E

CODE_23A706:
JSL CODE_2AB73A         ; $23:A706: 22 3A B7 2A
LDA $00                 ; $23:A70A: A5 00
STA $2E                 ; $23:A70C: 85 2E
LDA $01                 ; $23:A70E: A5 01
STA $2F                 ; $23:A710: 85 2F
LDA $0700               ; $23:A712: AD 00 07
CLC                     ; $23:A715: 18
ADC #$10                ; $23:A716: 69 10
STA $0700               ; $23:A718: 8D 00 07
LDA $2F                 ; $23:A71B: A5 2F
ADC #$00                ; $23:A71D: 69 00
STA $2F                 ; $23:A71F: 85 2F
STA $01                 ; $23:A721: 85 01
DEC $02                 ; $23:A723: C6 02
BPL CODE_23A6F3         ; $23:A725: 10 CC
RTL                     ; $23:A727: 6B

CODE_23A728:
LDA $0706               ; $23:A728: AD 06 07
PHA                     ; $23:A72B: 48
SEC                     ; $23:A72C: 38
SBC #$C0                ; $23:A72D: E9 C0
AND #$F0                ; $23:A72F: 29 F0
LSR A                   ; $23:A731: 4A
LSR A                   ; $23:A732: 4A
LSR A                   ; $23:A733: 4A
TAX                     ; $23:A734: AA
PLA                     ; $23:A735: 68
AND #$0F                ; $23:A736: 29 0F
STA $02                 ; $23:A738: 85 02

CODE_23A73A:
LDA $2E                 ; $23:A73A: A5 2E
STA $00                 ; $23:A73C: 85 00
LDA $2F                 ; $23:A73E: A5 2F
STA $01                 ; $23:A740: 85 01

CODE_23A742:
LDY $0700               ; $23:A742: AC 00 07
LDA #$BA                ; $23:A745: A9 BA
STA [$2E],y             ; $23:A747: 97 2E
JSL CODE_2AB73A         ; $23:A749: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:A74D: 22 BB BE 23
LDA #$BB                ; $23:A751: A9 BB
STA [$2E],y             ; $23:A753: 97 2E
JSL CODE_2AB73A         ; $23:A755: 22 3A B7 2A
LDA $00                 ; $23:A759: A5 00
STA $2E                 ; $23:A75B: 85 2E
LDA $01                 ; $23:A75D: A5 01
STA $2F                 ; $23:A75F: 85 2F
LDA $0700               ; $23:A761: AD 00 07
CLC                     ; $23:A764: 18
ADC #$10                ; $23:A765: 69 10
STA $0700               ; $23:A767: 8D 00 07
LDA $2F                 ; $23:A76A: A5 2F
ADC #$00                ; $23:A76C: 69 00
STA $2F                 ; $23:A76E: 85 2F
STA $01                 ; $23:A770: 85 01
DEC $02                 ; $23:A772: C6 02
BNE CODE_23A742         ; $23:A774: D0 CC
LDY $0700               ; $23:A776: AC 00 07
LDA.w DATA_21A483,x     ; $23:A779: BD 83 A4
STA [$2E],y             ; $23:A77C: 97 2E
JSL CODE_2AB73A         ; $23:A77E: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:A782: 22 BB BE 23
LDA.w DATA_21A483+1,x   ; $23:A786: BD 84 A4
STA [$2E],y             ; $23:A789: 97 2E
JSL CODE_2AB73A         ; $23:A78B: 22 3A B7 2A
RTL                     ; $23:A78F: 6B

CODE_23A790:
LDA $2E                 ; $23:A790: A5 2E
STA $00                 ; $23:A792: 85 00
LDA $2F                 ; $23:A794: A5 2F
STA $01                 ; $23:A796: 85 01
LDX #$06                ; $23:A798: A2 06
LDA $0706               ; $23:A79A: AD 06 07
AND #$0F                ; $23:A79D: 29 0F
STA $02                 ; $23:A79F: 85 02
LDY $0700               ; $23:A7A1: AC 00 07
LDA [$2E],y             ; $23:A7A4: B7 2E
CMP.w DATA_21A483,x     ; $23:A7A6: DD 83 A4
BEQ CODE_23A7C3         ; $23:A7A9: F0 18
LDA.w DATA_21A483,x     ; $23:A7AB: BD 83 A4
STA [$2E],y             ; $23:A7AE: 97 2E
JSL CODE_2AB73A         ; $23:A7B0: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:A7B4: 22 BB BE 23
LDA.w DATA_21A483+1,x   ; $23:A7B8: BD 84 A4
STA [$2E],y             ; $23:A7BB: 97 2E
JSL CODE_2AB73A         ; $23:A7BD: 22 3A B7 2A
BRA CODE_23A7DA         ; $23:A7C1: 80 17

CODE_23A7C3:
LDY $0700               ; $23:A7C3: AC 00 07
LDA #$BA                ; $23:A7C6: A9 BA
STA [$2E],y             ; $23:A7C8: 97 2E
JSL CODE_2AB73A         ; $23:A7CA: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:A7CE: 22 BB BE 23
LDA #$BB                ; $23:A7D2: A9 BB
STA [$2E],y             ; $23:A7D4: 97 2E
JSL CODE_2AB73A         ; $23:A7D6: 22 3A B7 2A

CODE_23A7DA:
LDA $00                 ; $23:A7DA: A5 00
STA $2E                 ; $23:A7DC: 85 2E
LDA $01                 ; $23:A7DE: A5 01
STA $2F                 ; $23:A7E0: 85 2F
LDA $0700               ; $23:A7E2: AD 00 07
CLC                     ; $23:A7E5: 18
ADC #$10                ; $23:A7E6: 69 10
STA $0700               ; $23:A7E8: 8D 00 07
LDA $2F                 ; $23:A7EB: A5 2F
ADC #$00                ; $23:A7ED: 69 00
STA $2F                 ; $23:A7EF: 85 2F
STA $01                 ; $23:A7F1: 85 01
DEC $02                 ; $23:A7F3: C6 02
BNE CODE_23A7C3         ; $23:A7F5: D0 CC
LDY $0700               ; $23:A7F7: AC 00 07
LDA.w DATA_21A483,x     ; $23:A7FA: BD 83 A4
STA [$2E],y             ; $23:A7FD: 97 2E
JSL CODE_2AB73A         ; $23:A7FF: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:A803: 22 BB BE 23
LDA.w DATA_21A483+1,x   ; $23:A807: BD 84 A4
STA [$2E],y             ; $23:A80A: 97 2E
JSL CODE_2AB73A         ; $23:A80C: 22 3A B7 2A
RTL                     ; $23:A810: 6B

CODE_23A811:
LDX #$08                ; $23:A811: A2 08
LDA $0706               ; $23:A813: AD 06 07
AND #$0F                ; $23:A816: 29 0F
STA $02                 ; $23:A818: 85 02
JMP CODE_23A73A         ; $23:A81A: 4C 3A A7

CODE_23A81D:
LDA $0706               ; $23:A81D: AD 06 07
SEC                     ; $23:A820: 38
SBC #$E0                ; $23:A821: E9 E0
LSR A                   ; $23:A823: 4A
LSR A                   ; $23:A824: 4A
LSR A                   ; $23:A825: 4A
LSR A                   ; $23:A826: 4A
TAX                     ; $23:A827: AA

CODE_23A828:
LDA $2E                 ; $23:A828: A5 2E
STA $00                 ; $23:A82A: 85 00
LDA $2F                 ; $23:A82C: A5 2F
STA $01                 ; $23:A82E: 85 01
LDA $0706               ; $23:A830: AD 06 07
AND #$0F                ; $23:A833: 29 0F
STA $02                 ; $23:A835: 85 02
LDY $0700               ; $23:A837: AC 00 07
LDA.w DATA_21A48D,x     ; $23:A83A: BD 8D A4
STA [$2E],y             ; $23:A83D: 97 2E
BRA CODE_23A857         ; $23:A83F: 80 16

CODE_23A841:
LDA [$2E],y             ; $23:A841: B7 2E
CMP #$BA                ; $23:A843: C9 BA
BEQ CODE_23A84F         ; $23:A845: F0 08
CMP #$BB                ; $23:A847: C9 BB
BEQ CODE_23A853         ; $23:A849: F0 08
LDA #$B8                ; $23:A84B: A9 B8
BRA CODE_23A855         ; $23:A84D: 80 06

CODE_23A84F:
LDA #$A5                ; $23:A84F: A9 A5
BRA CODE_23A855         ; $23:A851: 80 02

CODE_23A853:
LDA #$A6                ; $23:A853: A9 A6

CODE_23A855:
STA [$2E],y             ; $23:A855: 97 2E

CODE_23A857:
JSL CODE_2AB73A         ; $23:A857: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:A85B: 22 BB BE 23
DEC $02                 ; $23:A85F: C6 02
BPL CODE_23A841         ; $23:A861: 10 DE
LDA $00                 ; $23:A863: A5 00
STA $2E                 ; $23:A865: 85 2E
LDA $01                 ; $23:A867: A5 01
STA $2F                 ; $23:A869: 85 2F
LDA $0700               ; $23:A86B: AD 00 07
CLC                     ; $23:A86E: 18
ADC #$10                ; $23:A86F: 69 10
STA $0700               ; $23:A871: 8D 00 07
TAY                     ; $23:A874: A8
LDA $2F                 ; $23:A875: A5 2F
ADC #$00                ; $23:A877: 69 00
STA $2F                 ; $23:A879: 85 2F
STA $01                 ; $23:A87B: 85 01
LDA $0706               ; $23:A87D: AD 06 07
AND #$0F                ; $23:A880: 29 0F
STA $02                 ; $23:A882: 85 02
LDA.w DATA_21A490,x     ; $23:A884: BD 90 A4
STA [$2E],y             ; $23:A887: 97 2E
BRA CODE_23A8A1         ; $23:A889: 80 16

CODE_23A88B:
LDA [$2E],y             ; $23:A88B: B7 2E
CMP #$BA                ; $23:A88D: C9 BA
BEQ CODE_23A899         ; $23:A88F: F0 08
CMP #$BB                ; $23:A891: C9 BB
BEQ CODE_23A89D         ; $23:A893: F0 08
LDA #$B9                ; $23:A895: A9 B9
BRA CODE_23A89F         ; $23:A897: 80 06

CODE_23A899:
LDA #$AA                ; $23:A899: A9 AA
BRA CODE_23A89F         ; $23:A89B: 80 02

CODE_23A89D:
LDA #$AB                ; $23:A89D: A9 AB

CODE_23A89F:
STA [$2E],y             ; $23:A89F: 97 2E

CODE_23A8A1:
JSL CODE_2AB73A         ; $23:A8A1: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:A8A5: 22 BB BE 23
DEC $02                 ; $23:A8A9: C6 02
BPL CODE_23A88B         ; $23:A8AB: 10 DE
RTL                     ; $23:A8AD: 6B

CODE_23A8AE:
LDA $2E                 ; $23:A8AE: A5 2E
STA $00                 ; $23:A8B0: 85 00
LDA $2F                 ; $23:A8B2: A5 2F
STA $01                 ; $23:A8B4: 85 01
LDA $0706               ; $23:A8B6: AD 06 07
SEC                     ; $23:A8B9: 38
SBC #$10                ; $23:A8BA: E9 10
LSR A                   ; $23:A8BC: 4A
LSR A                   ; $23:A8BD: 4A
LSR A                   ; $23:A8BE: 4A
LSR A                   ; $23:A8BF: 4A
TAX                     ; $23:A8C0: AA
LDA $0706               ; $23:A8C1: AD 06 07
AND #$0F                ; $23:A8C4: 29 0F
STA $02                 ; $23:A8C6: 85 02
LDY $0700               ; $23:A8C8: AC 00 07

CODE_23A8CB:
LDA #$B8                ; $23:A8CB: A9 B8
STA [$2E],y             ; $23:A8CD: 97 2E
JSL CODE_2AB73A         ; $23:A8CF: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:A8D3: 22 BB BE 23
DEC $02                 ; $23:A8D7: C6 02
BNE CODE_23A8CB         ; $23:A8D9: D0 F0
LDA.w DATA_21A48D,x     ; $23:A8DB: BD 8D A4
STA [$2E],y             ; $23:A8DE: 97 2E
LDA $00                 ; $23:A8E0: A5 00
STA $2E                 ; $23:A8E2: 85 2E
LDA $01                 ; $23:A8E4: A5 01
STA $2F                 ; $23:A8E6: 85 2F
LDA $0700               ; $23:A8E8: AD 00 07
CLC                     ; $23:A8EB: 18
ADC #$10                ; $23:A8EC: 69 10
STA $0700               ; $23:A8EE: 8D 00 07
TAY                     ; $23:A8F1: A8
LDA $2F                 ; $23:A8F2: A5 2F
ADC #$00                ; $23:A8F4: 69 00
STA $2F                 ; $23:A8F6: 85 2F
STA $01                 ; $23:A8F8: 85 01
LDA $0706               ; $23:A8FA: AD 06 07
AND #$0F                ; $23:A8FD: 29 0F
STA $02                 ; $23:A8FF: 85 02

CODE_23A901:
LDA #$B9                ; $23:A901: A9 B9
STA [$2E],y             ; $23:A903: 97 2E
JSL CODE_2AB73A         ; $23:A905: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:A909: 22 BB BE 23
DEC $02                 ; $23:A90D: C6 02
BNE CODE_23A901         ; $23:A90F: D0 F0
LDA.w DATA_21A490,x     ; $23:A911: BD 90 A4
STA [$2E],y             ; $23:A914: 97 2E
JSL CODE_2AB73A         ; $23:A916: 22 3A B7 2A
RTL                     ; $23:A91A: 6B

CODE_23A91B:
LDX #$02                ; $23:A91B: A2 02
JMP CODE_23A828         ; $23:A91D: 4C 28 A8

CODE_23A920:
LDA $0706               ; $23:A920: AD 06 07
AND #$0F                ; $23:A923: 29 0F
STA $02                 ; $23:A925: 85 02
LDY $0700               ; $23:A927: AC 00 07

CODE_23A92A:
LDX #$41                ; $23:A92A: A2 41
JSR CODE_23BE71         ; $23:A92C: 20 71 BE
CMP #$00                ; $23:A92F: C9 00
BNE CODE_23A935         ; $23:A931: D0 02
LDX #$40                ; $23:A933: A2 40

CODE_23A935:
TXA                     ; $23:A935: 8A
STA [$2E],y             ; $23:A936: 97 2E
INC $0F                 ; $23:A938: E6 0F
JSL CODE_23BEBB         ; $23:A93A: 22 BB BE 23
DEC $02                 ; $23:A93E: C6 02
BPL CODE_23A92A         ; $23:A940: 10 E8
RTL                     ; $23:A942: 6B

CODE_23A943:
LDA $2E                 ; $23:A943: A5 2E
STA $00                 ; $23:A945: 85 00
LDA $2F                 ; $23:A947: A5 2F
STA $01                 ; $23:A949: 85 01
LDX #$00                ; $23:A94B: A2 00
STX $03                 ; $23:A94D: 86 03

CODE_23A94F:
LDA #$19                ; $23:A94F: A9 19
STA $02                 ; $23:A951: 85 02
LDY $0700               ; $23:A953: AC 00 07

CODE_23A956:
LDA.w DATA_21A493,x     ; $23:A956: BD 93 A4
STA [$2E],y             ; $23:A959: 97 2E
JSL CODE_2AB73A         ; $23:A95B: 22 3A B7 2A
TYA                     ; $23:A95F: 98
CLC                     ; $23:A960: 18
ADC #$10                ; $23:A961: 69 10
TAY                     ; $23:A963: A8
LDA $2F                 ; $23:A964: A5 2F
ADC #$00                ; $23:A966: 69 00
STA $2F                 ; $23:A968: 85 2F
DEC $02                 ; $23:A96A: C6 02
BPL CODE_23A956         ; $23:A96C: 10 E8
LDA [$2E],y             ; $23:A96E: B7 2E
CMP #$2C                ; $23:A970: C9 2C
BEQ CODE_23A978         ; $23:A972: F0 04
CMP #$9A                ; $23:A974: C9 9A
BNE CODE_23A987         ; $23:A976: D0 0F

CODE_23A978:
LDA #$0D                ; $23:A978: A9 0D
STA [$2E],y             ; $23:A97A: 97 2E
LDA $2F                 ; $23:A97C: A5 2F
CLC                     ; $23:A97E: 18
ADC #$20                ; $23:A97F: 69 20
STA $2F                 ; $23:A981: 85 2F
LDA #$01                ; $23:A983: A9 01
STA [$2E],y             ; $23:A985: 97 2E

CODE_23A987:
REP #$20                ; $23:A987: C2 20
LDA $00                 ; $23:A989: A5 00
STA $2E                 ; $23:A98B: 85 2E
SEP #$20                ; $23:A98D: E2 20
LDY $0700               ; $23:A98F: AC 00 07
INY                     ; $23:A992: C8
TYA                     ; $23:A993: 98
AND #$0F                ; $23:A994: 29 0F
BNE CODE_23A9D6         ; $23:A996: D0 3E
LDA $070A               ; $23:A998: AD 0A 07
CMP #$01                ; $23:A99B: C9 01
BEQ CODE_23A9B7         ; $23:A99D: F0 18
CMP #$04                ; $23:A99F: C9 04
BEQ CODE_23A9B7         ; $23:A9A1: F0 14
CMP #$0C                ; $23:A9A3: C9 0C
BEQ CODE_23A9B7         ; $23:A9A5: F0 10
CMP #$09                ; $23:A9A7: C9 09
BEQ CODE_23A9B7         ; $23:A9A9: F0 0C
CMP #$03                ; $23:A9AB: C9 03
BEQ CODE_23A9B7         ; $23:A9AD: F0 08
CMP #$0E                ; $23:A9AF: C9 0E
BEQ CODE_23A9B7         ; $23:A9B1: F0 04
CMP #$0D                ; $23:A9B3: C9 0D
BNE CODE_23A9C0         ; $23:A9B5: D0 09

CODE_23A9B7:
LDA $03                 ; $23:A9B7: A5 03
CMP #$01                ; $23:A9B9: C9 01
BNE CODE_23A9C0         ; $23:A9BB: D0 03
JSR CODE_23A9E5         ; $23:A9BD: 20 E5 A9

CODE_23A9C0:
REP #$20                ; $23:A9C0: C2 20
LDA $2E                 ; $23:A9C2: A5 2E
CLC                     ; $23:A9C4: 18
ADC #$01B0              ; $23:A9C5: 69 B0 01
STA $2E                 ; $23:A9C8: 85 2E
STA $00                 ; $23:A9CA: 85 00
SEP #$20                ; $23:A9CC: E2 20
INC $03                 ; $23:A9CE: E6 03
LDA $0700               ; $23:A9D0: AD 00 07
AND #$F0                ; $23:A9D3: 29 F0
TAY                     ; $23:A9D5: A8

CODE_23A9D6:
STY $0700               ; $23:A9D6: 8C 00 07
LDX #$01                ; $23:A9D9: A2 01
LDA $03                 ; $23:A9DB: A5 03
CMP #$02                ; $23:A9DD: C9 02
BEQ CODE_23A9E4         ; $23:A9DF: F0 03
JMP CODE_23A94F         ; $23:A9E1: 4C 4F A9

CODE_23A9E4:
RTL                     ; $23:A9E4: 6B

CODE_23A9E5:
PHB                     ; $23:A9E5: 8B
LDA #$2A                ; $23:A9E6: A9 2A
PHA                     ; $23:A9E8: 48
PLB                     ; $23:A9E9: AB
INC $2F                 ; $23:A9EA: E6 2F
LDA $2E                 ; $23:A9EC: A5 2E
CLC                     ; $23:A9EE: 18
ADC #$40                ; $23:A9EF: 69 40
STA $2E                 ; $23:A9F1: 85 2E
LDA $2F                 ; $23:A9F3: A5 2F
ADC #$00                ; $23:A9F5: 69 00
STA $2F                 ; $23:A9F7: 85 2F
LDY #$00                ; $23:A9F9: A0 00
STY $06                 ; $23:A9FB: 84 06
LDX #$06                ; $23:A9FD: A2 06
LDA $070A               ; $23:A9FF: AD 0A 07

CODE_23AA02:
CMP.w DATA_2AB9F1,x     ; $23:AA02: DD F1 B9
BEQ CODE_23AA0A         ; $23:AA05: F0 03
DEX                     ; $23:AA07: CA
BNE CODE_23AA02         ; $23:AA08: D0 F8

CODE_23AA0A:
TXA                     ; $23:AA0A: 8A
ASL A                   ; $23:AA0B: 0A
TAX                     ; $23:AA0C: AA
REP #$20                ; $23:AA0D: C2 20
LDA.w DATA_2AB9E3,x     ; $23:AA0F: BD E3 B9
STA $0C                 ; $23:AA12: 85 0C
LDA.w DATA_2ABBD8,x     ; $23:AA14: BD D8 BB
STA $D8                 ; $23:AA17: 85 D8
LDA $2E                 ; $23:AA19: A5 2E
CLC                     ; $23:AA1B: 18
ADC #$2000              ; $23:AA1C: 69 00 20
STA $DB                 ; $23:AA1F: 85 DB
SEP #$20                ; $23:AA21: E2 20
LDA $30                 ; $23:AA23: A5 30
STA $DD                 ; $23:AA25: 85 DD

CODE_23AA27:
LDX #$0F                ; $23:AA27: A2 0F

CODE_23AA29:
LDA ($0C),y             ; $23:AA29: B1 0C
STA [$2E],y             ; $23:AA2B: 97 2E
LDA ($D8),y             ; $23:AA2D: B1 D8
STA [$DB],y             ; $23:AA2F: 97 DB
INY                     ; $23:AA31: C8
DEX                     ; $23:AA32: CA
BPL CODE_23AA29         ; $23:AA33: 10 F4
INC $06                 ; $23:AA35: E6 06
LDA $06                 ; $23:AA37: A5 06
CMP #$06                ; $23:AA39: C9 06
BNE CODE_23AA27         ; $23:AA3B: D0 EA
LDA $00                 ; $23:AA3D: A5 00
STA $2E                 ; $23:AA3F: 85 2E
LDA $01                 ; $23:AA41: A5 01
STA $2F                 ; $23:AA43: 85 2F
PLB                     ; $23:AA45: AB
RTS                     ; $23:AA46: 60

CODE_23AA47:
TXA                     ; $23:AA47: 8A
SEC                     ; $23:AA48: 38
SBC #$10                ; $23:AA49: E9 10
TAX                     ; $23:AA4B: AA
LDY $0700               ; $23:AA4C: AC 00 07
CPX #$0B                ; $23:AA4F: E0 0B
BEQ CODE_23AA57         ; $23:AA51: F0 04
CPX #$0F                ; $23:AA53: E0 0F
BNE CODE_23AA67         ; $23:AA55: D0 10

CODE_23AA57:
JSR CODE_23BE71         ; $23:AA57: 20 71 BE
CMP #$00                ; $23:AA5A: C9 00
BEQ CODE_23AA67         ; $23:AA5C: F0 09
LDA #$5F                ; $23:AA5E: A9 5F
CPX #$0B                ; $23:AA60: E0 0B
BEQ CODE_23AA6A         ; $23:AA62: F0 06
JMP CODE_23AA89         ; $23:AA64: 4C 89 AA

CODE_23AA67:
LDA.w DATA_21A495,x     ; $23:AA67: BD 95 A4

CODE_23AA6A:
STA [$2E],y             ; $23:AA6A: 97 2E
PHA                     ; $23:AA6C: 48
JSL CODE_2AB73A         ; $23:AA6D: 22 3A B7 2A
PLA                     ; $23:AA71: 68
CMP #$70                ; $23:AA72: C9 70
BNE CODE_23AA89         ; $23:AA74: D0 13
TYA                     ; $23:AA76: 98
SEC                     ; $23:AA77: 38
SBC #$10                ; $23:AA78: E9 10
TAY                     ; $23:AA7A: A8
LDA $2F                 ; $23:AA7B: A5 2F
SBC #$00                ; $23:AA7D: E9 00
STA $2F                 ; $23:AA7F: 85 2F
LDA #$C1                ; $23:AA81: A9 C1
STA [$2E],y             ; $23:AA83: 97 2E
JSL CODE_2AB73A         ; $23:AA85: 22 3A B7 2A

CODE_23AA89:
RTL                     ; $23:AA89: 6B

CODE_23AA8A:
LDA $0706               ; $23:AA8A: AD 06 07
SEC                     ; $23:AA8D: 38
SBC #$10                ; $23:AA8E: E9 10
LSR A                   ; $23:AA90: 4A
LSR A                   ; $23:AA91: 4A
LSR A                   ; $23:AA92: 4A
LSR A                   ; $23:AA93: 4A
TAX                     ; $23:AA94: AA

CODE_23AA95:
LDA $0706               ; $23:AA95: AD 06 07
AND #$0F                ; $23:AA98: 29 0F
STA $02                 ; $23:AA9A: 85 02
LDY $0700               ; $23:AA9C: AC 00 07

CODE_23AA9F:
CPX #$07                ; $23:AA9F: E0 07
BNE CODE_23AAAA         ; $23:AAA1: D0 07
JSR CODE_23BE71         ; $23:AAA3: 20 71 BE
CMP #$00                ; $23:AAA6: C9 00
BNE CODE_23AAB3         ; $23:AAA8: D0 09

CODE_23AAAA:
LDA.w DATA_21A4AE,x     ; $23:AAAA: BD AE A4
STA [$2E],y             ; $23:AAAD: 97 2E
JSL CODE_2AB73A         ; $23:AAAF: 22 3A B7 2A

CODE_23AAB3:
JSL CODE_23BEBB         ; $23:AAB3: 22 BB BE 23
DEC $02                 ; $23:AAB7: C6 02
BPL CODE_23AA9F         ; $23:AAB9: 10 E4
RTL                     ; $23:AABB: 6B

CODE_23AABC:
LDX #$08                ; $23:AABC: A2 08
JMP CODE_23AA95         ; $23:AABE: 4C 95 AA

CODE_23AAC1:
LDX #$00                ; $23:AAC1: A2 00
LDY #$00                ; $23:AAC3: A0 00
BRA CODE_23AAD1         ; $23:AAC5: 80 0A

CODE_23AAC7:
LDX #$15                ; $23:AAC7: A2 15
LDY #$01                ; $23:AAC9: A0 01
BRA CODE_23AAD1         ; $23:AACB: 80 04

CODE_23AACD:
LDX #$22                ; $23:AACD: A2 22
LDY #$02                ; $23:AACF: A0 02

CODE_23AAD1:
LDA $30                 ; $23:AAD1: A5 30
STA $DA                 ; $23:AAD3: 85 DA
STZ $DB                 ; $23:AAD5: 64 DB
LDA $1EBF               ; $23:AAD7: AD BF 1E
CMP #$01                ; $23:AADA: C9 01
BEQ CODE_23AAF2         ; $23:AADC: F0 14
CMP #$14                ; $23:AADE: C9 14
BEQ CODE_23AAF2         ; $23:AAE0: F0 10
CMP #$1C                ; $23:AAE2: C9 1C
BEQ CODE_23AAF2         ; $23:AAE4: F0 0C
CMP #$1F                ; $23:AAE6: C9 1F
BEQ CODE_23AAF2         ; $23:AAE8: F0 08
CMP #$20                ; $23:AAEA: C9 20
BEQ CODE_23AAF2         ; $23:AAEC: F0 04
CMP #$29                ; $23:AAEE: C9 29
BNE CODE_23AAF4         ; $23:AAF0: D0 02

CODE_23AAF2:
INC $DB                 ; $23:AAF2: E6 DB

CODE_23AAF4:
REP #$21                ; $23:AAF4: C2 21
LDA $2E                 ; $23:AAF6: A5 2E
STA $00                 ; $23:AAF8: 85 00
SEP #$20                ; $23:AAFA: E2 20
STY $0C                 ; $23:AAFC: 84 0C

CODE_23AAFE:
LDY $0C                 ; $23:AAFE: A4 0C
LDA.w DATA_21A5B0,y     ; $23:AB00: B9 B0 A5
STA $02                 ; $23:AB03: 85 02
LDY $0700               ; $23:AB05: AC 00 07

CODE_23AB08:
REP #$21                ; $23:AB08: C2 21
LDA $2E                 ; $23:AB0A: A5 2E
ADC #$2000              ; $23:AB0C: 69 00 20
STA $D8                 ; $23:AB0F: 85 D8
SEP #$20                ; $23:AB11: E2 20
LDA $DB                 ; $23:AB13: A5 DB
BNE CODE_23AB1C         ; $23:AB15: D0 05
LDA.w DATA_21A4B7,x     ; $23:AB17: BD B7 A4
BRA CODE_23AB1F         ; $23:AB1A: 80 03

CODE_23AB1C:
LDA.w DATA_21A50A,x     ; $23:AB1C: BD 0A A5

CODE_23AB1F:
CMP #$80                ; $23:AB1F: C9 80
BNE CODE_23AB26         ; $23:AB21: D0 03
JMP CODE_23ABE9         ; $23:AB23: 4C E9 AB

CODE_23AB26:
STA $03                 ; $23:AB26: 85 03
CMP #$92                ; $23:AB28: C9 92
BEQ CODE_23AB34         ; $23:AB2A: F0 08
CMP #$93                ; $23:AB2C: C9 93
BNE CODE_23AB3B         ; $23:AB2E: D0 0B
LDA $DB                 ; $23:AB30: A5 DB
BNE CODE_23AB3B         ; $23:AB32: D0 07

CODE_23AB34:
LDA #$00                ; $23:AB34: A9 00
STA [$D8],y             ; $23:AB36: 97 D8
JMP CODE_23ABD9         ; $23:AB38: 4C D9 AB

CODE_23AB3B:
LDA $DB                 ; $23:AB3B: A5 DB
BNE CODE_23AB46         ; $23:AB3D: D0 07
LDA [$D8],y             ; $23:AB3F: B7 D8
BEQ CODE_23AB46         ; $23:AB41: F0 03

CODE_23AB43:
JMP CODE_23ABE9         ; $23:AB43: 4C E9 AB

CODE_23AB46:
LDA.w DATA_21A55D,x     ; $23:AB46: BD 5D A5
STA [$D8],y             ; $23:AB49: 97 D8
BEQ CODE_23AB50         ; $23:AB4B: F0 03
JMP CODE_23ABD9         ; $23:AB4D: 4C D9 AB

CODE_23AB50:
LDA [$2E],y             ; $23:AB50: B7 2E
CMP #$03                ; $23:AB52: C9 03
BEQ CODE_23ABBB         ; $23:AB54: F0 65
CMP #$90                ; $23:AB56: C9 90
BCC CODE_23ABD9         ; $23:AB58: 90 7F
CMP #$9F                ; $23:AB5A: C9 9F
BCS CODE_23ABD9         ; $23:AB5C: B0 7B
CMP $03                 ; $23:AB5E: C5 03
BEQ CODE_23AB43         ; $23:AB60: F0 E1
LDA $DB                 ; $23:AB62: A5 DB
BEQ CODE_23AB8C         ; $23:AB64: F0 26
LDA $03                 ; $23:AB66: A5 03
CMP #$94                ; $23:AB68: C9 94
BEQ CODE_23AB70         ; $23:AB6A: F0 04
CMP #$95                ; $23:AB6C: C9 95
BNE CODE_23AB8C         ; $23:AB6E: D0 1C

CODE_23AB70:
LDA [$2E],y             ; $23:AB70: B7 2E
CMP #$94                ; $23:AB72: C9 94
BEQ CODE_23ABD5         ; $23:AB74: F0 5F
CMP #$91                ; $23:AB76: C9 91
BEQ CODE_23ABBB         ; $23:AB78: F0 41
CMP #$95                ; $23:AB7A: C9 95
BEQ CODE_23ABBB         ; $23:AB7C: F0 3D
CMP #$98                ; $23:AB7E: C9 98
BEQ CODE_23ABD5         ; $23:AB80: F0 53
LDA #$01                ; $23:AB82: A9 01
STA [$D8],y             ; $23:AB84: 97 D8
LDA #$03                ; $23:AB86: A9 03
STA $03                 ; $23:AB88: 85 03
BRA CODE_23ABD9         ; $23:AB8A: 80 4D

CODE_23AB8C:
LDA $03                 ; $23:AB8C: A5 03
CMP #$94                ; $23:AB8E: C9 94
BCS CODE_23ABBB         ; $23:AB90: B0 29
INC $03                 ; $23:AB92: E6 03
INC $03                 ; $23:AB94: E6 03
LDA $1EBF               ; $23:AB96: AD BF 1E
CMP #$01                ; $23:AB99: C9 01
BEQ CODE_23ABAB         ; $23:AB9B: F0 0E
LDA $0727               ; $23:AB9D: AD 27 07
CMP #$06                ; $23:ABA0: C9 06
BNE CODE_23ABD9         ; $23:ABA2: D0 35
LDA $1EBF               ; $23:ABA4: AD BF 1E
CMP #$29                ; $23:ABA7: C9 29
BNE CODE_23ABD9         ; $23:ABA9: D0 2E

CODE_23ABAB:
LDA [$2E],y             ; $23:ABAB: B7 2E
CMP #$98                ; $23:ABAD: C9 98
BNE CODE_23ABD9         ; $23:ABAF: D0 28
LDA #$01                ; $23:ABB1: A9 01
STA [$D8],y             ; $23:ABB3: 97 D8
LDA #$02                ; $23:ABB5: A9 02
STA $03                 ; $23:ABB7: 85 03
BRA CODE_23ABD9         ; $23:ABB9: 80 1E

CODE_23ABBB:
LDA $DB                 ; $23:ABBB: A5 DB
BEQ CODE_23ABD5         ; $23:ABBD: F0 16
LDA $03                 ; $23:ABBF: A5 03
CMP #$93                ; $23:ABC1: C9 93
BEQ CODE_23ABD9         ; $23:ABC3: F0 14
LDA [$2E],y             ; $23:ABC5: B7 2E
INC A                   ; $23:ABC7: 1A
INC A                   ; $23:ABC8: 1A
STA $03                 ; $23:ABC9: 85 03
AND #$F0                ; $23:ABCB: 29 F0
BNE CODE_23ABD9         ; $23:ABCD: D0 0A
LDA #$01                ; $23:ABCF: A9 01
STA [$D8],y             ; $23:ABD1: 97 D8
BRA CODE_23ABD9         ; $23:ABD3: 80 04

CODE_23ABD5:
LDA #$98                ; $23:ABD5: A9 98
STA $03                 ; $23:ABD7: 85 03

CODE_23ABD9:
LDA $03                 ; $23:ABD9: A5 03
STA [$2E],y             ; $23:ABDB: 97 2E
CMP #$98                ; $23:ABDD: C9 98
BNE CODE_23ABE5         ; $23:ABDF: D0 04
JSL CODE_2AB73A         ; $23:ABE1: 22 3A B7 2A

CODE_23ABE5:
JSL CODE_2A8794         ; $23:ABE5: 22 94 87 2A

CODE_23ABE9:
JSL CODE_23BEBB         ; $23:ABE9: 22 BB BE 23
INX                     ; $23:ABED: E8
DEC $02                 ; $23:ABEE: C6 02
BMI CODE_23ABF5         ; $23:ABF0: 30 03
JMP CODE_23AB08         ; $23:ABF2: 4C 08 AB

CODE_23ABF5:
LDA $00                 ; $23:ABF5: A5 00
STA $2E                 ; $23:ABF7: 85 2E
LDA $01                 ; $23:ABF9: A5 01
STA $2F                 ; $23:ABFB: 85 2F
LDA $0700               ; $23:ABFD: AD 00 07
CLC                     ; $23:AC00: 18
ADC #$10                ; $23:AC01: 69 10
STA $0700               ; $23:AC03: 8D 00 07
LDA $2F                 ; $23:AC06: A5 2F
ADC #$00                ; $23:AC08: 69 00
STA $2F                 ; $23:AC0A: 85 2F
STA $01                 ; $23:AC0C: 85 01
LDA.w DATA_21A4B7,x     ; $23:AC0E: BD B7 A4
CMP #$FF                ; $23:AC11: C9 FF
BEQ CODE_23AC18         ; $23:AC13: F0 03
JMP CODE_23AAFE         ; $23:AC15: 4C FE AA

CODE_23AC18:
RTL                     ; $23:AC18: 6B

CODE_23AC19:
JSR CODE_23ACF3         ; $23:AC19: 20 F3 AC

CODE_23AC1C:
LDA.w DATA_21A5B3,x     ; $23:AC1C: BD B3 A5
STA [$2E],y             ; $23:AC1F: 97 2E
JSL CODE_23BEBB         ; $23:AC21: 22 BB BE 23
DEC $02                 ; $23:AC25: C6 02
BPL CODE_23AC1C         ; $23:AC27: 10 F3
RTL                     ; $23:AC29: 6B

CODE_23AC2A:
JSR CODE_23ACF3         ; $23:AC2A: 20 F3 AC

CODE_23AC2D:
LDA.w DATA_21A5B5,x     ; $23:AC2D: BD B5 A5
STA [$2E],y             ; $23:AC30: 97 2E
TYA                     ; $23:AC32: 98
CLC                     ; $23:AC33: 18
ADC #$10                ; $23:AC34: 69 10
TAY                     ; $23:AC36: A8
LDA $2F                 ; $23:AC37: A5 2F
ADC #$00                ; $23:AC39: 69 00
STA $2F                 ; $23:AC3B: 85 2F
DEC $02                 ; $23:AC3D: C6 02
BPL CODE_23AC2D         ; $23:AC3F: 10 EC
RTL                     ; $23:AC41: 6B

CODE_23AC42:
JSR CODE_23ACF3         ; $23:AC42: 20 F3 AC

CODE_23AC45:
LDA.w DATA_21A5B7,x     ; $23:AC45: BD B7 A5
STA [$2E],y             ; $23:AC48: 97 2E
TYA                     ; $23:AC4A: 98
CLC                     ; $23:AC4B: 18
ADC #$10                ; $23:AC4C: 69 10
TAY                     ; $23:AC4E: A8
STA $0700               ; $23:AC4F: 8D 00 07
LDA $2F                 ; $23:AC52: A5 2F
ADC #$00                ; $23:AC54: 69 00
STA $2F                 ; $23:AC56: 85 2F
JSL CODE_23BEBB         ; $23:AC58: 22 BB BE 23
DEC $02                 ; $23:AC5C: C6 02
BPL CODE_23AC45         ; $23:AC5E: 10 E5
RTL                     ; $23:AC60: 6B

CODE_23AC61:
JSR CODE_23ACF3         ; $23:AC61: 20 F3 AC

CODE_23AC64:
LDA.w DATA_21A5B9,x     ; $23:AC64: BD B9 A5
STA [$2E],y             ; $23:AC67: 97 2E
TYA                     ; $23:AC69: 98
SEC                     ; $23:AC6A: 38
SBC #$10                ; $23:AC6B: E9 10
TAY                     ; $23:AC6D: A8
STA $0700               ; $23:AC6E: 8D 00 07
LDA $2F                 ; $23:AC71: A5 2F
SBC #$00                ; $23:AC73: E9 00
STA $2F                 ; $23:AC75: 85 2F
JSL CODE_23BEBB         ; $23:AC77: 22 BB BE 23
DEC $02                 ; $23:AC7B: C6 02
BPL CODE_23AC64         ; $23:AC7D: 10 E5
RTL                     ; $23:AC7F: 6B

CODE_23AC80:
JSR CODE_23ACF3         ; $23:AC80: 20 F3 AC

CODE_23AC83:
LDA.w DATA_21A5BB,x     ; $23:AC83: BD BB A5
STA [$2E],y             ; $23:AC86: 97 2E
TYA                     ; $23:AC88: 98
CLC                     ; $23:AC89: 18
ADC #$10                ; $23:AC8A: 69 10
TAY                     ; $23:AC8C: A8
LDA $2F                 ; $23:AC8D: A5 2F
ADC #$00                ; $23:AC8F: 69 00
STA $2F                 ; $23:AC91: 85 2F
LDA.w DATA_21A5BD,x     ; $23:AC93: BD BD A5
STA [$2E],y             ; $23:AC96: 97 2E
TYA                     ; $23:AC98: 98
CLC                     ; $23:AC99: 18
ADC #$10                ; $23:AC9A: 69 10
TAY                     ; $23:AC9C: A8
LDA $2F                 ; $23:AC9D: A5 2F
ADC #$00                ; $23:AC9F: 69 00
STA $2F                 ; $23:ACA1: 85 2F
STY $0700               ; $23:ACA3: 8C 00 07
JSL CODE_23BEBB         ; $23:ACA6: 22 BB BE 23
DEC $02                 ; $23:ACAA: C6 02
BPL CODE_23AC83         ; $23:ACAC: 10 D5
RTL                     ; $23:ACAE: 6B

CODE_23ACAF:
JSR CODE_23ACF3         ; $23:ACAF: 20 F3 AC

CODE_23ACB2:
LDA.w DATA_21A5BF,x     ; $23:ACB2: BD BF A5
STA [$2E],y             ; $23:ACB5: 97 2E
TYA                     ; $23:ACB7: 98
CLC                     ; $23:ACB8: 18
ADC #$10                ; $23:ACB9: 69 10
TAY                     ; $23:ACBB: A8
LDA $2F                 ; $23:ACBC: A5 2F
ADC #$00                ; $23:ACBE: 69 00
STA $2F                 ; $23:ACC0: 85 2F
LDA.w DATA_21A5C1,x     ; $23:ACC2: BD C1 A5
STA [$2E],y             ; $23:ACC5: 97 2E
TYA                     ; $23:ACC7: 98
CLC                     ; $23:ACC8: 18
ADC #$10                ; $23:ACC9: 69 10
TAY                     ; $23:ACCB: A8
LDA $2F                 ; $23:ACCC: A5 2F
ADC #$00                ; $23:ACCE: 69 00
STA $2F                 ; $23:ACD0: 85 2F
DEY                     ; $23:ACD2: 88
TYA                     ; $23:ACD3: 98
AND #$0F                ; $23:ACD4: 29 0F
CMP #$0F                ; $23:ACD6: C9 0F
BNE CODE_23ACEE         ; $23:ACD8: D0 14
LDA $2E                 ; $23:ACDA: A5 2E
SEC                     ; $23:ACDC: 38
SBC #$B0                ; $23:ACDD: E9 B0
STA $2E                 ; $23:ACDF: 85 2E
LDA $2F                 ; $23:ACE1: A5 2F
SBC #$01                ; $23:ACE3: E9 01
STA $2F                 ; $23:ACE5: 85 2F
INY                     ; $23:ACE7: C8
TYA                     ; $23:ACE8: 98
AND #$F0                ; $23:ACE9: 29 F0
ORA #$0F                ; $23:ACEB: 09 0F
TAY                     ; $23:ACED: A8

CODE_23ACEE:
DEC $02                 ; $23:ACEE: C6 02
BPL CODE_23ACB2         ; $23:ACF0: 10 C0
RTL                     ; $23:ACF2: 6B

CODE_23ACF3:
LDA $0706               ; $23:ACF3: AD 06 07
AND #$0F                ; $23:ACF6: 29 0F
STA $02                 ; $23:ACF8: 85 02
LDY $0700               ; $23:ACFA: AC 00 07
LDX #$00                ; $23:ACFD: A2 00
LDA $070A               ; $23:ACFF: AD 0A 07
CMP #$02                ; $23:AD02: C9 02
BNE CODE_23AD08         ; $23:AD04: D0 02
LDX #$01                ; $23:AD06: A2 01

CODE_23AD08:
RTS                     ; $23:AD08: 60

CODE_23AD09:
LDY #$00                ; $23:AD09: A0 00
LDA [$2B],y             ; $23:AD0B: B7 2B
STA $02                 ; $23:AD0D: 85 02
REP #$20                ; $23:AD0F: C2 20
INC $2B                 ; $23:AD11: E6 2B
LDA $2E                 ; $23:AD13: A5 2E
STA $00                 ; $23:AD15: 85 00
SEP #$20                ; $23:AD17: E2 20
LDA $0706               ; $23:AD19: AD 06 07
AND #$0F                ; $23:AD1C: 29 0F
STA $03                 ; $23:AD1E: 85 03
LDX #$00                ; $23:AD20: A2 00

CODE_23AD22:
STZ $D8                 ; $23:AD22: 64 D8
LDY $0700               ; $23:AD24: AC 00 07
LDA $02                 ; $23:AD27: A5 02
STA $04                 ; $23:AD29: 85 04
BPL CODE_23AD3A         ; $23:AD2B: 10 0D
LDA $0727               ; $23:AD2D: AD 27 07
CMP #$04                ; $23:AD30: C9 04
BNE CODE_23AD3A         ; $23:AD32: D0 06
DEC $04                 ; $23:AD34: C6 04
LDA #$8B                ; $23:AD36: A9 8B
STA $D8                 ; $23:AD38: 85 D8

CODE_23AD3A:
LDA $D8                 ; $23:AD3A: A5 D8
BNE CODE_23AD41         ; $23:AD3C: D0 03
LDA.w DATA_21A5C3,x     ; $23:AD3E: BD C3 A5

CODE_23AD41:
STA [$2E],y             ; $23:AD41: 97 2E
JSL CODE_23BEBB         ; $23:AD43: 22 BB BE 23
DEC $04                 ; $23:AD47: C6 04
LDA $04                 ; $23:AD49: A5 04
CMP #$FF                ; $23:AD4B: C9 FF
BNE CODE_23AD3A         ; $23:AD4D: D0 EB
REP #$20                ; $23:AD4F: C2 20
LDA $00                 ; $23:AD51: A5 00
STA $2E                 ; $23:AD53: 85 2E
SEP #$20                ; $23:AD55: E2 20
LDA $0700               ; $23:AD57: AD 00 07
CLC                     ; $23:AD5A: 18
ADC #$10                ; $23:AD5B: 69 10
STA $0700               ; $23:AD5D: 8D 00 07
LDA $2F                 ; $23:AD60: A5 2F
ADC #$00                ; $23:AD62: 69 00
STA $2F                 ; $23:AD64: 85 2F
STA $01                 ; $23:AD66: 85 01
LDX #$01                ; $23:AD68: A2 01
DEC $03                 ; $23:AD6A: C6 03
BPL CODE_23AD22         ; $23:AD6C: 10 B4
RTL                     ; $23:AD6E: 6B

CODE_23AD6F:
LDX #$00                ; $23:AD6F: A2 00
BEQ CODE_23AD75         ; $23:AD71: F0 02

CODE_23AD73:
LDX #$01                ; $23:AD73: A2 01

CODE_23AD75:
STX $02                 ; $23:AD75: 86 02
LDA $2E                 ; $23:AD77: A5 2E
STA $00                 ; $23:AD79: 85 00
LDA $2F                 ; $23:AD7B: A5 2F
STA $01                 ; $23:AD7D: 85 01
LDA $0706               ; $23:AD7F: AD 06 07
AND #$0F                ; $23:AD82: 29 0F
STA $03                 ; $23:AD84: 85 03
LDY $0700               ; $23:AD86: AC 00 07

CODE_23AD89:
LDX $02                 ; $23:AD89: A6 02
LDA.w DATA_21A5C5,x     ; $23:AD8B: BD C5 A5
STA [$2E],y             ; $23:AD8E: 97 2E

CODE_23AD90:
TYA                     ; $23:AD90: 98
CLC                     ; $23:AD91: 18
ADC #$10                ; $23:AD92: 69 10
TAY                     ; $23:AD94: A8
LDA $2F                 ; $23:AD95: A5 2F
ADC #$00                ; $23:AD97: 69 00
STA $2F                 ; $23:AD99: 85 2F
LDA [$2E],y             ; $23:AD9B: B7 2E
CMP #$02                ; $23:AD9D: C9 02
BNE CODE_23ADA8         ; $23:AD9F: D0 07
LDA.w DATA_21A5C7,x     ; $23:ADA1: BD C7 A5
STA [$2E],y             ; $23:ADA4: 97 2E
BRA CODE_23AD90         ; $23:ADA6: 80 E8

CODE_23ADA8:
TYA                     ; $23:ADA8: 98
SEC                     ; $23:ADA9: 38
SBC #$10                ; $23:ADAA: E9 10
TAY                     ; $23:ADAC: A8
LDA $2F                 ; $23:ADAD: A5 2F
SBC #$00                ; $23:ADAF: E9 00
STA $2F                 ; $23:ADB1: 85 2F
LDA.w DATA_21A5C9,x     ; $23:ADB3: BD C9 A5
STA [$2E],y             ; $23:ADB6: 97 2E
LDA $00                 ; $23:ADB8: A5 00
STA $2E                 ; $23:ADBA: 85 2E
LDA $01                 ; $23:ADBC: A5 01
STA $2F                 ; $23:ADBE: 85 2F
LDY $0700               ; $23:ADC0: AC 00 07
INY                     ; $23:ADC3: C8
TYA                     ; $23:ADC4: 98
AND #$0F                ; $23:ADC5: 29 0F
BNE CODE_23ADDD         ; $23:ADC7: D0 14
REP #$20                ; $23:ADC9: C2 20
LDA $2E                 ; $23:ADCB: A5 2E
CLC                     ; $23:ADCD: 18
ADC #$01B0              ; $23:ADCE: 69 B0 01
STA $2E                 ; $23:ADD1: 85 2E
STA $00                 ; $23:ADD3: 85 00
SEP #$20                ; $23:ADD5: E2 20
LDA $0700               ; $23:ADD7: AD 00 07
AND #$F0                ; $23:ADDA: 29 F0
TAY                     ; $23:ADDC: A8

CODE_23ADDD:
STY $0700               ; $23:ADDD: 8C 00 07

CODE_23ADE0:
TYA                     ; $23:ADE0: 98
CLC                     ; $23:ADE1: 18
ADC #$10                ; $23:ADE2: 69 10
TAY                     ; $23:ADE4: A8
LDA $2F                 ; $23:ADE5: A5 2F
ADC #$00                ; $23:ADE7: 69 00
STA $2F                 ; $23:ADE9: 85 2F
LDA [$2E],y             ; $23:ADEB: B7 2E
CMP.w DATA_21A5CF,x     ; $23:ADED: DD CF A5
BNE CODE_23ADF9         ; $23:ADF0: D0 07
LDA.w DATA_21A5CD,x     ; $23:ADF2: BD CD A5
STA [$2E],y             ; $23:ADF5: 97 2E
BRA CODE_23ADE0         ; $23:ADF7: 80 E7

CODE_23ADF9:
DEC $03                 ; $23:ADF9: C6 03
BMI CODE_23AE2D         ; $23:ADFB: 30 30
LDA $00                 ; $23:ADFD: A5 00
STA $2E                 ; $23:ADFF: 85 2E
LDA $01                 ; $23:AE01: A5 01
STA $2F                 ; $23:AE03: 85 2F
LDX #$02                ; $23:AE05: A2 02
LDY $0700               ; $23:AE07: AC 00 07

CODE_23AE0A:
INY                     ; $23:AE0A: C8
TYA                     ; $23:AE0B: 98
AND #$0F                ; $23:AE0C: 29 0F
BNE CODE_23AE24         ; $23:AE0E: D0 14
REP #$20                ; $23:AE10: C2 20
LDA $2E                 ; $23:AE12: A5 2E
CLC                     ; $23:AE14: 18
ADC #$01B0              ; $23:AE15: 69 B0 01
STA $2E                 ; $23:AE18: 85 2E
STA $00                 ; $23:AE1A: 85 00
SEP #$20                ; $23:AE1C: E2 20
LDA $0700               ; $23:AE1E: AD 00 07
AND #$F0                ; $23:AE21: 29 F0
TAY                     ; $23:AE23: A8

CODE_23AE24:
DEX                     ; $23:AE24: CA
BPL CODE_23AE0A         ; $23:AE25: 10 E3
STY $0700               ; $23:AE27: 8C 00 07
JMP CODE_23AD89         ; $23:AE2A: 4C 89 AD

CODE_23AE2D:
RTL                     ; $23:AE2D: 6B

CODE_23AE2E:
LDA $2E                 ; $23:AE2E: A5 2E
STA $00                 ; $23:AE30: 85 00
LDA $2F                 ; $23:AE32: A5 2F
STA $01                 ; $23:AE34: 85 01
LDY $0700               ; $23:AE36: AC 00 07
LDA $0706               ; $23:AE39: AD 06 07
AND #$0F                ; $23:AE3C: 29 0F
TAX                     ; $23:AE3E: AA

CODE_23AE3F:
LDA #$9C                ; $23:AE3F: A9 9C
STA [$2E],y             ; $23:AE41: 97 2E
JSL CODE_23BEBB         ; $23:AE43: 22 BB BE 23
DEX                     ; $23:AE47: CA
BPL CODE_23AE3F         ; $23:AE48: 10 F5
LDA $00                 ; $23:AE4A: A5 00
STA $2E                 ; $23:AE4C: 85 2E
LDA $01                 ; $23:AE4E: A5 01
STA $2F                 ; $23:AE50: 85 2F
LDA $0700               ; $23:AE52: AD 00 07
CLC                     ; $23:AE55: 18
ADC #$10                ; $23:AE56: 69 10
STA $0700               ; $23:AE58: 8D 00 07
TAY                     ; $23:AE5B: A8
LDA $2F                 ; $23:AE5C: A5 2F
ADC #$00                ; $23:AE5E: 69 00
STA $2F                 ; $23:AE60: 85 2F
LDA $0706               ; $23:AE62: AD 06 07
AND #$0F                ; $23:AE65: 29 0F
TAX                     ; $23:AE67: AA
LDA #$90                ; $23:AE68: A9 90
STA [$2E],y             ; $23:AE6A: 97 2E
JMP CODE_23AE73         ; $23:AE6C: 4C 73 AE

CODE_23AE6F:
LDA #$8E                ; $23:AE6F: A9 8E
STA [$2E],y             ; $23:AE71: 97 2E

CODE_23AE73:
JSL CODE_23BEBB         ; $23:AE73: 22 BB BE 23
DEX                     ; $23:AE77: CA
BPL CODE_23AE6F         ; $23:AE78: 10 F5
RTL                     ; $23:AE7A: 6B

CODE_23AE7B:
LDA $0706               ; $23:AE7B: AD 06 07
AND #$0F                ; $23:AE7E: 29 0F
TAX                     ; $23:AE80: AA
LDY $0700               ; $23:AE81: AC 00 07
LDA #$76                ; $23:AE84: A9 76
STA [$2E],y             ; $23:AE86: 97 2E
JSL CODE_2AB73A         ; $23:AE88: 22 3A B7 2A
TYA                     ; $23:AE8C: 98
CLC                     ; $23:AE8D: 18
ADC #$10                ; $23:AE8E: 69 10
TAY                     ; $23:AE90: A8
LDA $2F                 ; $23:AE91: A5 2F
ADC #$00                ; $23:AE93: 69 00
STA $2F                 ; $23:AE95: 85 2F
DEX                     ; $23:AE97: CA
BMI CODE_23AEC6         ; $23:AE98: 30 2C
LDA #$77                ; $23:AE9A: A9 77
STA [$2E],y             ; $23:AE9C: 97 2E
JSL CODE_2AB73A         ; $23:AE9E: 22 3A B7 2A
TYA                     ; $23:AEA2: 98
CLC                     ; $23:AEA3: 18
ADC #$10                ; $23:AEA4: 69 10
TAY                     ; $23:AEA6: A8
LDA $2F                 ; $23:AEA7: A5 2F
ADC #$00                ; $23:AEA9: 69 00
STA $2F                 ; $23:AEAB: 85 2F
DEX                     ; $23:AEAD: CA
BMI CODE_23AEC6         ; $23:AEAE: 30 16

CODE_23AEB0:
LDA #$78                ; $23:AEB0: A9 78
STA [$2E],y             ; $23:AEB2: 97 2E
JSL CODE_2AB73A         ; $23:AEB4: 22 3A B7 2A
TYA                     ; $23:AEB8: 98
CLC                     ; $23:AEB9: 18
ADC #$10                ; $23:AEBA: 69 10
TAY                     ; $23:AEBC: A8
LDA $2F                 ; $23:AEBD: A5 2F
ADC #$00                ; $23:AEBF: 69 00
STA $2F                 ; $23:AEC1: 85 2F
DEX                     ; $23:AEC3: CA
BPL CODE_23AEB0         ; $23:AEC4: 10 EA

CODE_23AEC6:
RTL                     ; $23:AEC6: 6B

CODE_23AEC7:
LDA $2E                 ; $23:AEC7: A5 2E
STA $00                 ; $23:AEC9: 85 00
LDA $2F                 ; $23:AECB: A5 2F
STA $01                 ; $23:AECD: 85 01
LDA $0706               ; $23:AECF: AD 06 07
PHA                     ; $23:AED2: 48
SEC                     ; $23:AED3: 38
SBC #$40                ; $23:AED4: E9 40
LSR A                   ; $23:AED6: 4A
LSR A                   ; $23:AED7: 4A
LSR A                   ; $23:AED8: 4A
LSR A                   ; $23:AED9: 4A
TAX                     ; $23:AEDA: AA
PLA                     ; $23:AEDB: 68
AND #$0F                ; $23:AEDC: 29 0F
STA $02                 ; $23:AEDE: 85 02
STA $03                 ; $23:AEE0: 85 03
LDY $0700               ; $23:AEE2: AC 00 07

CODE_23AEE5:
LDA.w DATA_21A5CF,x     ; $23:AEE5: BD CF A5
STA [$2E],y             ; $23:AEE8: 97 2E
JSL CODE_2AB73A         ; $23:AEEA: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:AEEE: 22 BB BE 23
DEC $03                 ; $23:AEF2: C6 03
BPL CODE_23AEE5         ; $23:AEF4: 10 EF
LDA $00                 ; $23:AEF6: A5 00
STA $2E                 ; $23:AEF8: 85 2E
LDA $01                 ; $23:AEFA: A5 01
STA $2F                 ; $23:AEFC: 85 2F
LDA $0700               ; $23:AEFE: AD 00 07
CLC                     ; $23:AF01: 18
ADC #$10                ; $23:AF02: 69 10
STA $0700               ; $23:AF04: 8D 00 07
TAY                     ; $23:AF07: A8
LDA $2F                 ; $23:AF08: A5 2F
ADC #$00                ; $23:AF0A: 69 00
STA $2F                 ; $23:AF0C: 85 2F
STA $01                 ; $23:AF0E: 85 01
LDA $02                 ; $23:AF10: A5 02
STA $03                 ; $23:AF12: 85 03

CODE_23AF14:
LDA.w DATA_21A5D1,x     ; $23:AF14: BD D1 A5
CMP #$C1                ; $23:AF17: C9 C1
BEQ CODE_23AF29         ; $23:AF19: F0 0E
STA [$2E],y             ; $23:AF1B: 97 2E
JSL CODE_2AB73A         ; $23:AF1D: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:AF21: 22 BB BE 23
DEC $03                 ; $23:AF25: C6 03
BPL CODE_23AF14         ; $23:AF27: 10 EB

CODE_23AF29:
RTL                     ; $23:AF29: 6B

CODE_23AF2A:
LDY #$00                ; $23:AF2A: A0 00
LDA [$2B],y             ; $23:AF2C: B7 2B
STA $02                 ; $23:AF2E: 85 02
REP #$20                ; $23:AF30: C2 20
INC $2B                 ; $23:AF32: E6 2B
LDA $2E                 ; $23:AF34: A5 2E
STA $00                 ; $23:AF36: 85 00
SEP #$20                ; $23:AF38: E2 20
LDA $0706               ; $23:AF3A: AD 06 07
PHA                     ; $23:AF3D: 48
SEC                     ; $23:AF3E: 38
SBC #$60                ; $23:AF3F: E9 60
LSR A                   ; $23:AF41: 4A
LSR A                   ; $23:AF42: 4A
LSR A                   ; $23:AF43: 4A
LSR A                   ; $23:AF44: 4A
TAX                     ; $23:AF45: AA
PLA                     ; $23:AF46: 68
AND #$0F                ; $23:AF47: 29 0F
STA $03                 ; $23:AF49: 85 03
LDA $02                 ; $23:AF4B: A5 02
STA $04                 ; $23:AF4D: 85 04
LDY $0700               ; $23:AF4F: AC 00 07
LDA $02BF               ; $23:AF52: AD BF 02
CMP #$01                ; $23:AF55: C9 01
BEQ CODE_23AF69         ; $23:AF57: F0 10
CMP #$05                ; $23:AF59: C9 05
BEQ CODE_23AF69         ; $23:AF5B: F0 0C
CMP #$06                ; $23:AF5D: C9 06
BEQ CODE_23AF69         ; $23:AF5F: F0 08
CMP #$07                ; $23:AF61: C9 07
BEQ CODE_23AF69         ; $23:AF63: F0 04
CMP #$0D                ; $23:AF65: C9 0D
BNE CODE_23AF6D         ; $23:AF67: D0 04

CODE_23AF69:
CPX #$02                ; $23:AF69: E0 02
BEQ CODE_23AF87         ; $23:AF6B: F0 1A

CODE_23AF6D:
LDA.w DATA_21A5D3,x     ; $23:AF6D: BD D3 A5
STA [$2E],y             ; $23:AF70: 97 2E
JSL CODE_2AB73A         ; $23:AF72: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:AF76: 22 BB BE 23
DEC $04                 ; $23:AF7A: C6 04
LDA $04                 ; $23:AF7C: A5 04
CMP #$FF                ; $23:AF7E: C9 FF
BNE CODE_23AF6D         ; $23:AF80: D0 EB

CODE_23AF82:
DEC $03                 ; $23:AF82: C6 03
BPL CODE_23AFB1         ; $23:AF84: 10 2B
RTL                     ; $23:AF86: 6B

CODE_23AF87:
LDX #$08                ; $23:AF87: A2 08
LDA.w DATA_21A5D3,x     ; $23:AF89: BD D3 A5
STA [$2E],y             ; $23:AF8C: 97 2E
REP #$30                ; $23:AF8E: C2 30
TYA                     ; $23:AF90: 98
AND #$00FF              ; $23:AF91: 29 FF 00
ORA #$2000              ; $23:AF94: 09 00 20
TAY                     ; $23:AF97: A8
SEP #$20                ; $23:AF98: E2 20
LDA #$01                ; $23:AF9A: A9 01
STA [$2E],y             ; $23:AF9C: 97 2E
SEP #$10                ; $23:AF9E: E2 10
JSL CODE_23BEBB         ; $23:AFA0: 22 BB BE 23
DEC $04                 ; $23:AFA4: C6 04
LDA $04                 ; $23:AFA6: A5 04
CMP #$FF                ; $23:AFA8: C9 FF
BNE CODE_23AF87         ; $23:AFAA: D0 DB
DEC $03                 ; $23:AFAC: C6 03
BPL CODE_23AFB1         ; $23:AFAE: 10 01
RTL                     ; $23:AFB0: 6B

CODE_23AFB1:
LDA $00                 ; $23:AFB1: A5 00
STA $2E                 ; $23:AFB3: 85 2E
LDA $01                 ; $23:AFB5: A5 01
STA $2F                 ; $23:AFB7: 85 2F
LDA $0700               ; $23:AFB9: AD 00 07
CLC                     ; $23:AFBC: 18
ADC #$10                ; $23:AFBD: 69 10
STA $0700               ; $23:AFBF: 8D 00 07
TAY                     ; $23:AFC2: A8
LDA $2F                 ; $23:AFC3: A5 2F
ADC #$00                ; $23:AFC5: 69 00
STA $2F                 ; $23:AFC7: 85 2F
STA $01                 ; $23:AFC9: 85 01
LDA $02                 ; $23:AFCB: A5 02
STA $04                 ; $23:AFCD: 85 04

CODE_23AFCF:
CPX #$07                ; $23:AFCF: E0 07
BNE CODE_23AFE2         ; $23:AFD1: D0 0F
REP #$30                ; $23:AFD3: C2 30
TYA                     ; $23:AFD5: 98
ORA #$2000              ; $23:AFD6: 09 00 20
TAY                     ; $23:AFD9: A8
SEP #$20                ; $23:AFDA: E2 20
LDA #$00                ; $23:AFDC: A9 00
STA [$2E],y             ; $23:AFDE: 97 2E
SEP #$10                ; $23:AFE0: E2 10

CODE_23AFE2:
CPX #$08                ; $23:AFE2: E0 08
BEQ CODE_23AFFE         ; $23:AFE4: F0 18
LDA.w DATA_21A5DC,x     ; $23:AFE6: BD DC A5
STA [$2E],y             ; $23:AFE9: 97 2E
JSL CODE_2AB73A         ; $23:AFEB: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:AFEF: 22 BB BE 23
DEC $04                 ; $23:AFF3: C6 04
LDA $04                 ; $23:AFF5: A5 04
CMP #$FF                ; $23:AFF7: C9 FF
BNE CODE_23AFCF         ; $23:AFF9: D0 D4
JMP CODE_23AF82         ; $23:AFFB: 4C 82 AF

CODE_23AFFE:
LDA.w DATA_21A5DC,x     ; $23:AFFE: BD DC A5
STA [$2E],y             ; $23:B001: 97 2E
REP #$30                ; $23:B003: C2 30
TYA                     ; $23:B005: 98
AND #$00FF              ; $23:B006: 29 FF 00
ORA #$2000              ; $23:B009: 09 00 20
TAY                     ; $23:B00C: A8
SEP #$20                ; $23:B00D: E2 20
LDA #$01                ; $23:B00F: A9 01
STA [$2E],y             ; $23:B011: 97 2E
SEP #$10                ; $23:B013: E2 10
JSL CODE_23BEBB         ; $23:B015: 22 BB BE 23
DEC $04                 ; $23:B019: C6 04
LDA $04                 ; $23:B01B: A5 04
CMP #$FF                ; $23:B01D: C9 FF
BNE CODE_23AFCF         ; $23:B01F: D0 AE
JMP CODE_23AF82         ; $23:B021: 4C 82 AF

CODE_23B024:
LDX #$01                ; $23:B024: A2 01
BEQ CODE_23B02A         ; $23:B026: F0 02

CODE_23B028:
LDX #$00                ; $23:B028: A2 00

CODE_23B02A:
LDA $0706               ; $23:B02A: AD 06 07
AND #$0F                ; $23:B02D: 29 0F
STA $02                 ; $23:B02F: 85 02
LDY $0700               ; $23:B031: AC 00 07

CODE_23B034:
LDA.w DATA_21A5E5,x     ; $23:B034: BD E5 A5
STA [$2E],y             ; $23:B037: 97 2E
JSL CODE_23BEBB         ; $23:B039: 22 BB BE 23
DEC $02                 ; $23:B03D: C6 02
BPL CODE_23B034         ; $23:B03F: 10 F3
RTL                     ; $23:B041: 6B

CODE_23B042:
LDX #$02                ; $23:B042: A2 02
LDA $0706               ; $23:B044: AD 06 07
JMP CODE_23B057         ; $23:B047: 4C 57 B0

CODE_23B04A:
LDA $0706               ; $23:B04A: AD 06 07
PHA                     ; $23:B04D: 48
SEC                     ; $23:B04E: 38
SBC #$50                ; $23:B04F: E9 50
LSR A                   ; $23:B051: 4A
LSR A                   ; $23:B052: 4A
LSR A                   ; $23:B053: 4A
LSR A                   ; $23:B054: 4A
TAX                     ; $23:B055: AA
PLA                     ; $23:B056: 68

CODE_23B057:
AND #$0F                ; $23:B057: 29 0F
STA $02                 ; $23:B059: 85 02
LDY $0700               ; $23:B05B: AC 00 07

CODE_23B05E:
LDA.w DATA_21A5E7,x     ; $23:B05E: BD E7 A5
STA [$2E],y             ; $23:B061: 97 2E
JSL CODE_23BEBB         ; $23:B063: 22 BB BE 23
DEC $02                 ; $23:B067: C6 02
BPL CODE_23B05E         ; $23:B069: 10 F3
RTL                     ; $23:B06B: 6B

CODE_23B06C:
LDY $0700               ; $23:B06C: AC 00 07
LDA #$06                ; $23:B06F: A9 06
STA [$2E],y             ; $23:B071: 97 2E
RTL                     ; $23:B073: 6B

CODE_23B074:
LDA $0706               ; $23:B074: AD 06 07
AND #$0F                ; $23:B077: 29 0F
TAX                     ; $23:B079: AA
LDY $0700               ; $23:B07A: AC 00 07

CODE_23B07D:
LDA #$5B                ; $23:B07D: A9 5B
STA [$2E],y             ; $23:B07F: 97 2E
JSL CODE_23BEBB         ; $23:B081: 22 BB BE 23
DEX                     ; $23:B085: CA
BPL CODE_23B07D         ; $23:B086: 10 F5
RTL                     ; $23:B088: 6B

CODE_23B089:
STX $0B                 ; $23:B089: 86 0B
REP #$20                ; $23:B08B: C2 20
LDA $2E                 ; $23:B08D: A5 2E
STA $02                 ; $23:B08F: 85 02
SEP #$20                ; $23:B091: E2 20
LDA $0706               ; $23:B093: AD 06 07
AND #$0F                ; $23:B096: 29 0F
STA $00                 ; $23:B098: 85 00
LDX #$00                ; $23:B09A: A2 00

CODE_23B09C:
TXA                     ; $23:B09C: 8A
LDX $0B                 ; $23:B09D: A6 0B
CLC                     ; $23:B09F: 18
ADC.w DATA_21A644,x     ; $23:B0A0: 7D 44 A6
STA $0C                 ; $23:B0A3: 85 0C
TAX                     ; $23:B0A5: AA
LDA $0706               ; $23:B0A6: AD 06 07
AND #$C0                ; $23:B0A9: 29 C0
STA $01                 ; $23:B0AB: 85 01
LDY $0700               ; $23:B0AD: AC 00 07
CPX #$06                ; $23:B0B0: E0 06
BNE CODE_23B0C8         ; $23:B0B2: D0 14
LDA $0350               ; $23:B0B4: AD 50 03
CMP #$0C                ; $23:B0B7: C9 0C
BNE CODE_23B0C8         ; $23:B0B9: D0 0D
LDA [$2E],y             ; $23:B0BB: B7 2E
CMP #$80                ; $23:B0BD: C9 80
BEQ CODE_23B0C8         ; $23:B0BF: F0 07
JSR CODE_23B1A5         ; $23:B0C1: 20 A5 B1
LDA #$0A                ; $23:B0C4: A9 0A
BRA CODE_23B0CB         ; $23:B0C6: 80 03

CODE_23B0C8:
LDA.w DATA_21A5EA,x     ; $23:B0C8: BD EA A5

CODE_23B0CB:
STA [$2E],y             ; $23:B0CB: 97 2E

CODE_23B0CD:
JSR CODE_23B36A         ; $23:B0CD: 20 6A B3
LDA [$2E],y             ; $23:B0D0: B7 2E
CMP #$53                ; $23:B0D2: C9 53
BEQ CODE_23B0FB         ; $23:B0D4: F0 25
CMP #$55                ; $23:B0D6: C9 55
BEQ CODE_23B0FB         ; $23:B0D8: F0 21
LDX $0C                 ; $23:B0DA: A6 0C
CPX #$06                ; $23:B0DC: E0 06
BNE CODE_23B0F4         ; $23:B0DE: D0 14
LDA $0350               ; $23:B0E0: AD 50 03
CMP #$0C                ; $23:B0E3: C9 0C
BNE CODE_23B0F4         ; $23:B0E5: D0 0D
LDA [$2E],y             ; $23:B0E7: B7 2E
CMP #$80                ; $23:B0E9: C9 80
BEQ CODE_23B0F4         ; $23:B0EB: F0 07
JSR CODE_23B1A5         ; $23:B0ED: 20 A5 B1
LDA #$0B                ; $23:B0F0: A9 0B
BRA CODE_23B0F7         ; $23:B0F2: 80 03

CODE_23B0F4:
LDA.w DATA_21A5F6,x     ; $23:B0F4: BD F6 A5

CODE_23B0F7:
STA [$2E],y             ; $23:B0F7: 97 2E
BRA CODE_23B0CD         ; $23:B0F9: 80 D2

CODE_23B0FB:
TYA                     ; $23:B0FB: 98
SEC                     ; $23:B0FC: 38
SBC #$10                ; $23:B0FD: E9 10
TAY                     ; $23:B0FF: A8
LDA $2F                 ; $23:B100: A5 2F
SBC #$00                ; $23:B102: E9 00
STA $2F                 ; $23:B104: 85 2F
LDX $0C                 ; $23:B106: A6 0C
CPX #$06                ; $23:B108: E0 06
BNE CODE_23B11D         ; $23:B10A: D0 11
LDA $0350               ; $23:B10C: AD 50 03
CMP #$0C                ; $23:B10F: C9 0C
BNE CODE_23B11D         ; $23:B111: D0 0A
LDA [$2E],y             ; $23:B113: B7 2E
CMP #$0B                ; $23:B115: C9 0B
BNE CODE_23B11D         ; $23:B117: D0 04
LDA #$0C                ; $23:B119: A9 0C
BRA CODE_23B120         ; $23:B11B: 80 03

CODE_23B11D:
LDA.w DATA_21A602,x     ; $23:B11D: BD 02 A6

CODE_23B120:
STA [$2E],y             ; $23:B120: 97 2E
REP #$20                ; $23:B122: C2 20
LDA $02                 ; $23:B124: A5 02
STA $2E                 ; $23:B126: 85 2E
SEP #$20                ; $23:B128: E2 20
LDY $0700               ; $23:B12A: AC 00 07
INY                     ; $23:B12D: C8
TYA                     ; $23:B12E: 98
AND #$0F                ; $23:B12F: 29 0F
BNE CODE_23B153         ; $23:B131: D0 20
LDA $0700               ; $23:B133: AD 00 07
AND #$F0                ; $23:B136: 29 F0
TAY                     ; $23:B138: A8
REP #$20                ; $23:B139: C2 20
LDA $2E                 ; $23:B13B: A5 2E
CLC                     ; $23:B13D: 18
ADC #$01B0              ; $23:B13E: 69 B0 01
STA $2E                 ; $23:B141: 85 2E
STA $02                 ; $23:B143: 85 02
SEP #$20                ; $23:B145: E2 20
LDA $03                 ; $23:B147: A5 03
STA $04                 ; $23:B149: 85 04
LDA $0E                 ; $23:B14B: A5 0E
AND #$10                ; $23:B14D: 29 10
BNE CODE_23B153         ; $23:B14F: D0 02
INC $04                 ; $23:B151: E6 04

CODE_23B153:
STY $0700               ; $23:B153: 8C 00 07
DEC $00                 ; $23:B156: C6 00
LDX #$01                ; $23:B158: A2 01
LDA $00                 ; $23:B15A: A5 00
CMP #$01                ; $23:B15C: C9 01
BPL CODE_23B165         ; $23:B15E: 10 05
INX                     ; $23:B160: E8
CMP #$00                ; $23:B161: C9 00
BNE CODE_23B16A         ; $23:B163: D0 05

CODE_23B165:
STX $0C                 ; $23:B165: 86 0C
JMP CODE_23B09C         ; $23:B167: 4C 9C B0

CODE_23B16A:
LDA [$2E],y             ; $23:B16A: B7 2E
CMP #$80                ; $23:B16C: C9 80
BEQ CODE_23B182         ; $23:B16E: F0 12
CMP #$90                ; $23:B170: C9 90
BCC CODE_23B17C         ; $23:B172: 90 08
CMP #$9F                ; $23:B174: C9 9F
BCS CODE_23B17C         ; $23:B176: B0 04
LDA #$9D                ; $23:B178: A9 9D
BRA CODE_23B180         ; $23:B17A: 80 04

CODE_23B17C:
AND #$C0                ; $23:B17C: 29 C0
ORA #$0B                ; $23:B17E: 09 0B

CODE_23B180:
STA [$2E],y             ; $23:B180: 97 2E

CODE_23B182:
JSR CODE_23B36A         ; $23:B182: 20 6A B3
LDA [$2E],y             ; $23:B185: B7 2E
CMP #$53                ; $23:B187: C9 53
BEQ CODE_23B18F         ; $23:B189: F0 04
CMP #$57                ; $23:B18B: C9 57
BNE CODE_23B190         ; $23:B18D: D0 01

CODE_23B18F:
RTL                     ; $23:B18F: 6B

CODE_23B190:
LDX #$18                ; $23:B190: A2 18
LDA [$2E],y             ; $23:B192: B7 2E

CODE_23B194:
CMP.w DATA_21A60E,x     ; $23:B194: DD 0E A6
BEQ CODE_23B19E         ; $23:B197: F0 05
DEX                     ; $23:B199: CA
BPL CODE_23B194         ; $23:B19A: 10 F8
BRA CODE_23B182         ; $23:B19C: 80 E4

CODE_23B19E:
LDA.w DATA_21A627,x     ; $23:B19E: BD 27 A6
STA [$2E],y             ; $23:B1A1: 97 2E
BRA CODE_23B182         ; $23:B1A3: 80 DD

CODE_23B1A5:
PHX                     ; $23:B1A5: DA
PHY                     ; $23:B1A6: 5A
REP #$30                ; $23:B1A7: C2 30
TYA                     ; $23:B1A9: 98
AND #$00FF              ; $23:B1AA: 29 FF 00
ORA #$2000              ; $23:B1AD: 09 00 20
TAY                     ; $23:B1B0: A8
SEP #$20                ; $23:B1B1: E2 20
LDA #$01                ; $23:B1B3: A9 01
STA [$2E],y             ; $23:B1B5: 97 2E
SEP #$10                ; $23:B1B7: E2 10
PLY                     ; $23:B1B9: 7A
PLX                     ; $23:B1BA: FA
RTS                     ; $23:B1BB: 60

CODE_23B1BC:
LDA $2E                 ; $23:B1BC: A5 2E
STA $00                 ; $23:B1BE: 85 00
LDA $2F                 ; $23:B1C0: A5 2F
STA $01                 ; $23:B1C2: 85 01
LDA $0706               ; $23:B1C4: AD 06 07
SEC                     ; $23:B1C7: 38
SBC #$50                ; $23:B1C8: E9 50
PHA                     ; $23:B1CA: 48
AND #$F0                ; $23:B1CB: 29 F0
LSR A                   ; $23:B1CD: 4A
LSR A                   ; $23:B1CE: 4A
LSR A                   ; $23:B1CF: 4A
LSR A                   ; $23:B1D0: 4A
STA $02                 ; $23:B1D1: 85 02
PLA                     ; $23:B1D3: 68
AND #$0F                ; $23:B1D4: 29 0F
STA $03                 ; $23:B1D6: 85 03
STA $05                 ; $23:B1D8: 85 05
STZ $04                 ; $23:B1DA: 64 04

CODE_23B1DC:
LDX $02                 ; $23:B1DC: A6 02
LDA $04                 ; $23:B1DE: A5 04
CLC                     ; $23:B1E0: 18
ADC.w DATA_21A644,x     ; $23:B1E1: 7D 44 A6
TAX                     ; $23:B1E4: AA
LDY $0700               ; $23:B1E5: AC 00 07
LDA.w DATA_21A648,x     ; $23:B1E8: BD 48 A6
STA [$2E],y             ; $23:B1EB: 97 2E
JSL CODE_23BEBB         ; $23:B1ED: 22 BB BE 23
DEC $05                 ; $23:B1F1: C6 05

CODE_23B1F3:
LDA.w DATA_21A654,x     ; $23:B1F3: BD 54 A6
STA [$2E],y             ; $23:B1F6: 97 2E
JSL CODE_23BEBB         ; $23:B1F8: 22 BB BE 23
DEC $05                 ; $23:B1FC: C6 05
LDA $05                 ; $23:B1FE: A5 05
CMP #$01                ; $23:B200: C9 01
BNE CODE_23B1F3         ; $23:B202: D0 EF
LDA.w DATA_21A660,x     ; $23:B204: BD 60 A6
STA [$2E],y             ; $23:B207: 97 2E
JSL CODE_23BEBB         ; $23:B209: 22 BB BE 23
LDA $00                 ; $23:B20D: A5 00
STA $2E                 ; $23:B20F: 85 2E
LDA $01                 ; $23:B211: A5 01
STA $2F                 ; $23:B213: 85 2F
LDA $0700               ; $23:B215: AD 00 07
CLC                     ; $23:B218: 18
ADC #$10                ; $23:B219: 69 10
STA $0700               ; $23:B21B: 8D 00 07
LDA $2F                 ; $23:B21E: A5 2F
ADC #$00                ; $23:B220: 69 00
STA $2F                 ; $23:B222: 85 2F
STA $01                 ; $23:B224: 85 01
LDA $03                 ; $23:B226: A5 03
STA $05                 ; $23:B228: 85 05
INC $04                 ; $23:B22A: E6 04
LDA $04                 ; $23:B22C: A5 04
CMP #$02                ; $23:B22E: C9 02
BNE CODE_23B1DC         ; $23:B230: D0 AA
RTL                     ; $23:B232: 6B

CODE_23B233:
LDA #$3B                ; $23:B233: A9 3B
STA $05ED               ; $23:B235: 8D ED 05
JSL CODE_22E103         ; $23:B238: 22 03 E1 22
RTL                     ; $23:B23C: 6B

CODE_23B23D:
LDY $0700               ; $23:B23D: AC 00 07

CODE_23B240:
LDA [$2E],y             ; $23:B240: B7 2E
CMP #$80                ; $23:B242: C9 80
BEQ CODE_23B24A         ; $23:B244: F0 04
CMP #$80                ; $23:B246: C9 80
BNE CODE_23B253         ; $23:B248: D0 09

CODE_23B24A:
LDA #$85                ; $23:B24A: A9 85
STA [$2E],y             ; $23:B24C: 97 2E
JSR CODE_23B36A         ; $23:B24E: 20 6A B3
BRA CODE_23B240         ; $23:B251: 80 ED

CODE_23B253:
RTL                     ; $23:B253: 6B

CODE_23B254:
LDA $0706               ; $23:B254: AD 06 07
AND #$0F                ; $23:B257: 29 0F
TAX                     ; $23:B259: AA
LDY $0700               ; $23:B25A: AC 00 07

CODE_23B25D:
LDA #$86                ; $23:B25D: A9 86
STA [$2E],y             ; $23:B25F: 97 2E
JSL CODE_23BEBB         ; $23:B261: 22 BB BE 23
DEX                     ; $23:B265: CA
BPL CODE_23B25D         ; $23:B266: 10 F5
RTL                     ; $23:B268: 6B

CODE_23B269:
LDX #$00                ; $23:B269: A2 00
BEQ CODE_23B26F         ; $23:B26B: F0 02

CODE_23B26D:
LDX #$02                ; $23:B26D: A2 02

CODE_23B26F:
LDA $2E                 ; $23:B26F: A5 2E
STA $00                 ; $23:B271: 85 00
LDA $2F                 ; $23:B273: A5 2F
STA $01                 ; $23:B275: 85 01
LDA $0706               ; $23:B277: AD 06 07
AND #$0F                ; $23:B27A: 29 0F
STA $02                 ; $23:B27C: 85 02
LDY $0700               ; $23:B27E: AC 00 07

CODE_23B281:
LDA $02                 ; $23:B281: A5 02
STA $03                 ; $23:B283: 85 03
LDA.w DATA_21A67B,x     ; $23:B285: BD 7B A6
STA [$2E],y             ; $23:B288: 97 2E
BRA CODE_23B291         ; $23:B28A: 80 05

CODE_23B28C:
LDA.w DATA_21A67F,x     ; $23:B28C: BD 7F A6
STA [$2E],y             ; $23:B28F: 97 2E

CODE_23B291:
JSL CODE_23BEBB         ; $23:B291: 22 BB BE 23
DEC $03                 ; $23:B295: C6 03
BNE CODE_23B28C         ; $23:B297: D0 F3
LDA.w DATA_21A683,x     ; $23:B299: BD 83 A6
STA [$2E],y             ; $23:B29C: 97 2E
LDA $00                 ; $23:B29E: A5 00
STA $2E                 ; $23:B2A0: 85 2E
LDA $01                 ; $23:B2A2: A5 01
STA $2F                 ; $23:B2A4: 85 2F
LDA $0700               ; $23:B2A6: AD 00 07
CLC                     ; $23:B2A9: 18
ADC #$10                ; $23:B2AA: 69 10
STA $0700               ; $23:B2AC: 8D 00 07
TAY                     ; $23:B2AF: A8
LDA $2F                 ; $23:B2B0: A5 2F
ADC #$00                ; $23:B2B2: 69 00
STA $2F                 ; $23:B2B4: 85 2F
STA $01                 ; $23:B2B6: 85 01
INX                     ; $23:B2B8: E8
CPY #$B0                ; $23:B2B9: C0 B0
BCC CODE_23B281         ; $23:B2BB: 90 C4
RTL                     ; $23:B2BD: 6B

CODE_23B2BE:
LDY #$00                ; $23:B2BE: A0 00
LDA [$2B],y             ; $23:B2C0: B7 2B
STA $02                 ; $23:B2C2: 85 02
LDA $2B                 ; $23:B2C4: A5 2B
CLC                     ; $23:B2C6: 18
ADC #$01                ; $23:B2C7: 69 01
STA $2B                 ; $23:B2C9: 85 2B
LDA $2C                 ; $23:B2CB: A5 2C
ADC #$00                ; $23:B2CD: 69 00
STA $2C                 ; $23:B2CF: 85 2C
LDA $2E                 ; $23:B2D1: A5 2E
STA $00                 ; $23:B2D3: 85 00
LDA $2F                 ; $23:B2D5: A5 2F
STA $01                 ; $23:B2D7: 85 01
LDA $0706               ; $23:B2D9: AD 06 07
PHA                     ; $23:B2DC: 48
SEC                     ; $23:B2DD: 38
SBC #$C0                ; $23:B2DE: E9 C0
LSR A                   ; $23:B2E0: 4A
LSR A                   ; $23:B2E1: 4A
LSR A                   ; $23:B2E2: 4A
LSR A                   ; $23:B2E3: 4A
TAY                     ; $23:B2E4: A8
LDX.w DATA_21A693,y     ; $23:B2E5: BE 93 A6
PLA                     ; $23:B2E8: 68
AND #$0F                ; $23:B2E9: 29 0F
STA $03                 ; $23:B2EB: 85 03
LDA $02                 ; $23:B2ED: A5 02
STA $04                 ; $23:B2EF: 85 04
LDY $0700               ; $23:B2F1: AC 00 07
LDA.w DATA_21A687,x     ; $23:B2F4: BD 87 A6
STA [$2E],y             ; $23:B2F7: 97 2E
JSL CODE_2AB73A         ; $23:B2F9: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:B2FD: 22 BB BE 23
DEC $04                 ; $23:B301: C6 04
BEQ CODE_23B316         ; $23:B303: F0 11

CODE_23B305:
LDA.w DATA_21A687+1,x   ; $23:B305: BD 88 A6
STA [$2E],y             ; $23:B308: 97 2E
JSL CODE_2AB73A         ; $23:B30A: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:B30E: 22 BB BE 23
DEC $04                 ; $23:B312: C6 04
BNE CODE_23B305         ; $23:B314: D0 EF

CODE_23B316:
LDA.w DATA_21A687+2,x   ; $23:B316: BD 89 A6
STA [$2E],y             ; $23:B319: 97 2E
JSL CODE_2AB73A         ; $23:B31B: 22 3A B7 2A
LDA $00                 ; $23:B31F: A5 00
STA $2E                 ; $23:B321: 85 2E
LDA $01                 ; $23:B323: A5 01
STA $2F                 ; $23:B325: 85 2F
LDA $0700               ; $23:B327: AD 00 07
CLC                     ; $23:B32A: 18
ADC #$10                ; $23:B32B: 69 10
STA $0700               ; $23:B32D: 8D 00 07
TAY                     ; $23:B330: A8
LDA $2F                 ; $23:B331: A5 2F
ADC #$00                ; $23:B333: 69 00
STA $2F                 ; $23:B335: 85 2F
STA $01                 ; $23:B337: 85 01
DEC $03                 ; $23:B339: C6 03
BMI CODE_23B368         ; $23:B33B: 30 2B
LDA $02                 ; $23:B33D: A5 02
STA $04                 ; $23:B33F: 85 04
LDA.w DATA_21A68D,x     ; $23:B341: BD 8D A6
STA [$2E],y             ; $23:B344: 97 2E
JSL CODE_2AB73A         ; $23:B346: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:B34A: 22 BB BE 23
DEC $04                 ; $23:B34E: C6 04
BEQ CODE_23B363         ; $23:B350: F0 11

CODE_23B352:
LDA.w DATA_21A68D+1,x   ; $23:B352: BD 8E A6
STA [$2E],y             ; $23:B355: 97 2E
JSL CODE_2AB73A         ; $23:B357: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:B35B: 22 BB BE 23
DEC $04                 ; $23:B35F: C6 04
BNE CODE_23B352         ; $23:B361: D0 EF

CODE_23B363:
LDA.w DATA_21A68D+2,x   ; $23:B363: BD 8F A6
STA [$2E],y             ; $23:B366: 97 2E

CODE_23B368:
RTL                     ; $23:B368: 6B

CODE_23B369:
RTL                     ; $23:B369: 6B

CODE_23B36A:
TYA                     ; $23:B36A: 98
CLC                     ; $23:B36B: 18
ADC #$10                ; $23:B36C: 69 10
TAY                     ; $23:B36E: A8
LDA $2F                 ; $23:B36F: A5 2F
ADC #$00                ; $23:B371: 69 00
STA $2F                 ; $23:B373: 85 2F
RTS                     ; $23:B375: 60
LDA $05                 ; $23:B376: A5 05
STA $2F                 ; $23:B378: 85 2F
LDY $0700               ; $23:B37A: AC 00 07
INY                     ; $23:B37D: C8
TYA                     ; $23:B37E: 98
AND #$0F                ; $23:B37F: 29 0F
BNE CODE_23B3B4         ; $23:B381: D0 31
LDY #$00                ; $23:B383: A0 00
LDA $0E                 ; $23:B385: A5 0E
AND #$10                ; $23:B387: 29 10
BEQ CODE_23B38C         ; $23:B389: F0 01
INY                     ; $23:B38B: C8

CODE_23B38C:
STY $09                 ; $23:B38C: 84 09
LDA $2E                 ; $23:B38E: A5 2E
CLC                     ; $23:B390: 18
ADC #$B0                ; $23:B391: 69 B0
STA $2E                 ; $23:B393: 85 2E
LDA $2F                 ; $23:B395: A5 2F
ADC $09                 ; $23:B397: 65 09
STA $2F                 ; $23:B399: 85 2F
STA $05                 ; $23:B39B: 85 05
LDA $0F                 ; $23:B39D: A5 0F
AND #$F0                ; $23:B39F: 29 F0
LSR A                   ; $23:B3A1: 4A
LSR A                   ; $23:B3A2: 4A
LSR A                   ; $23:B3A3: 4A
TAY                     ; $23:B3A4: A8
INY                     ; $23:B3A5: C8
INY                     ; $23:B3A6: C8
LDA.w DATA_218200+1,y   ; $23:B3A7: B9 01 82
STA $04                 ; $23:B3AA: 85 04
INC $04                 ; $23:B3AC: E6 04
LDA $0700               ; $23:B3AE: AD 00 07
AND #$F0                ; $23:B3B1: 29 F0
TAY                     ; $23:B3B3: A8

CODE_23B3B4:
STY $0700               ; $23:B3B4: 8C 00 07
RTS                     ; $23:B3B7: 60

CODE_23B3B8:
LDX $0706               ; $23:B3B8: AE 06 07
LDY $0700               ; $23:B3BB: AC 00 07
LDA.w DATA_21A69B,x     ; $23:B3BE: BD 9B A6
STA [$2E],y             ; $23:B3C1: 97 2E
JSL CODE_2AB73A         ; $23:B3C3: 22 3A B7 2A
PHX                     ; $23:B3C7: DA
LDX #$00                ; $23:B3C8: A2 00
CMP #$33                ; $23:B3CA: C9 33
BEQ CODE_23B3E5         ; $23:B3CC: F0 17
CMP #$35                ; $23:B3CE: C9 35
BEQ CODE_23B3E4         ; $23:B3D0: F0 12
CMP #$A7                ; $23:B3D2: C9 A7
BEQ CODE_23B3E3         ; $23:B3D4: F0 0D
CMP #$AC                ; $23:B3D6: C9 AC
BEQ CODE_23B3E2         ; $23:B3D8: F0 08
CMP #$A9                ; $23:B3DA: C9 A9
BEQ CODE_23B3E1         ; $23:B3DC: F0 03
JMP CODE_23B48E         ; $23:B3DE: 4C 8E B4

CODE_23B3E1:
INX                     ; $23:B3E1: E8

CODE_23B3E2:
INX                     ; $23:B3E2: E8

CODE_23B3E3:
INX                     ; $23:B3E3: E8

CODE_23B3E4:
INX                     ; $23:B3E4: E8

CODE_23B3E5:
LDA $30                 ; $23:B3E5: A5 30
STA $DA                 ; $23:B3E7: 85 DA
STA $DD                 ; $23:B3E9: 85 DD
REP #$20                ; $23:B3EB: C2 20
LDA $2E                 ; $23:B3ED: A5 2E
SEC                     ; $23:B3EF: 38
SBC #$000F              ; $23:B3F0: E9 0F 00
STA $D8                 ; $23:B3F3: 85 D8
CLC                     ; $23:B3F5: 18
ADC #$0020              ; $23:B3F6: 69 20 00
STA $DB                 ; $23:B3F9: 85 DB
SEP #$20                ; $23:B3FB: E2 20
PHY                     ; $23:B3FD: 5A
INY                     ; $23:B3FE: C8
TYA                     ; $23:B3FF: 98
AND #$0F                ; $23:B400: 29 0F
BNE CODE_23B417         ; $23:B402: D0 13
REP #$21                ; $23:B404: C2 21
LDA $D8                 ; $23:B406: A5 D8
ADC #$01A0              ; $23:B408: 69 A0 01
STA $D8                 ; $23:B40B: 85 D8
LDA $DB                 ; $23:B40D: A5 DB
CLC                     ; $23:B40F: 18
ADC #$01A0              ; $23:B410: 69 A0 01
STA $DB                 ; $23:B413: 85 DB
SEP #$20                ; $23:B415: E2 20

CODE_23B417:
PLY                     ; $23:B417: 7A
LDA [$D8],y             ; $23:B418: B7 D8
CMP #$34                ; $23:B41A: C9 34
BEQ CODE_23B43F         ; $23:B41C: F0 21
LDA [$DB],y             ; $23:B41E: B7 DB
CMP #$9A                ; $23:B420: C9 9A
BEQ CODE_23B433         ; $23:B422: F0 0F
CMP #$26                ; $23:B424: C9 26
BEQ CODE_23B433         ; $23:B426: F0 0B
DEY                     ; $23:B428: 88
DEY                     ; $23:B429: 88
LDA [$D8],y             ; $23:B42A: B7 D8
CMP #$A0                ; $23:B42C: C9 A0
BNE CODE_23B472         ; $23:B42E: D0 42
INY                     ; $23:B430: C8
BRA CODE_23B44A         ; $23:B431: 80 17

CODE_23B433:
REP #$20                ; $23:B433: C2 20
LDA $DB                 ; $23:B435: A5 DB
SEC                     ; $23:B437: 38
SBC #$0011              ; $23:B438: E9 11 00
STA $D8                 ; $23:B43B: 85 D8
SEP #$20                ; $23:B43D: E2 20

CODE_23B43F:
REP #$21                ; $23:B43F: C2 21
LDA $D8                 ; $23:B441: A5 D8
ADC #$0010              ; $23:B443: 69 10 00
STA $D8                 ; $23:B446: 85 D8
SEP #$20                ; $23:B448: E2 20

CODE_23B44A:
PHY                     ; $23:B44A: 5A
INY                     ; $23:B44B: C8
TYA                     ; $23:B44C: 98
AND #$0F                ; $23:B44D: 29 0F
BNE CODE_23B45D         ; $23:B44F: D0 0C
REP #$20                ; $23:B451: C2 20
LDA $D8                 ; $23:B453: A5 D8
SEC                     ; $23:B455: 38
SBC #$01A0              ; $23:B456: E9 A0 01
STA $D8                 ; $23:B459: 85 D8
SEP #$20                ; $23:B45B: E2 20

CODE_23B45D:
PLY                     ; $23:B45D: 7A
LDA.l DATA_23B49E,x     ; $23:B45E: BF 9E B4 23
STA [$D8],y             ; $23:B462: 97 D8
LDA $D9                 ; $23:B464: A5 D9
CLC                     ; $23:B466: 18
ADC #$20                ; $23:B467: 69 20
STA $D9                 ; $23:B469: 85 D9
LDA #$01                ; $23:B46B: A9 01
STA [$D8],y             ; $23:B46D: 97 D8
PLX                     ; $23:B46F: FA
BRA CODE_23B49D         ; $23:B470: 80 2B

CODE_23B472:
REP #$20                ; $23:B472: C2 20
LDA $D8                 ; $23:B474: A5 D8
CLC                     ; $23:B476: 18
ADC #$0020              ; $23:B477: 69 20 00
STA $D8                 ; $23:B47A: 85 D8
SEP #$20                ; $23:B47C: E2 20
LDA [$D8],y             ; $23:B47E: B7 D8
CMP #$9A                ; $23:B480: C9 9A
BNE CODE_23B48E         ; $23:B482: D0 0A
LDA $0350               ; $23:B484: AD 50 03
CMP #$1D                ; $23:B487: C9 1D
BEQ CODE_23B48E         ; $23:B489: F0 03
INY                     ; $23:B48B: C8
BRA CODE_23B44A         ; $23:B48C: 80 BC

CODE_23B48E:
PLX                     ; $23:B48E: FA
LDA [$2E],y             ; $23:B48F: B7 2E
CMP #$0D                ; $23:B491: C9 0D
BEQ CODE_23B49D         ; $23:B493: F0 08
CMP #$04                ; $23:B495: C9 04
BEQ CODE_23B49D         ; $23:B497: F0 04
JSL CODE_2AB73A         ; $23:B499: 22 3A B7 2A

CODE_23B49D:
RTL                     ; $23:B49D: 6B

DATA_23B49E:
db $09,$0A,$02,$05,$04

CODE_23B4A3:
LDA $2E                 ; $23:B4A3: A5 2E
STA $00                 ; $23:B4A5: 85 00
LDA $2F                 ; $23:B4A7: A5 2F
STA $01                 ; $23:B4A9: 85 01
STZ $02                 ; $23:B4AB: 64 02
LDA $0706               ; $23:B4AD: AD 06 07
PHA                     ; $23:B4B0: 48
AND #$0F                ; $23:B4B1: 29 0F
STA $03                 ; $23:B4B3: 85 03
PLA                     ; $23:B4B5: 68
SEC                     ; $23:B4B6: 38
SBC #$10                ; $23:B4B7: E9 10
AND #$C0                ; $23:B4B9: 29 C0
CLC                     ; $23:B4BB: 18
ROL A                   ; $23:B4BC: 2A
ROL A                   ; $23:B4BD: 2A
ROL A                   ; $23:B4BE: 2A
TAX                     ; $23:B4BF: AA

CODE_23B4C0:
LDY $0700               ; $23:B4C0: AC 00 07
LDA $02                 ; $23:B4C3: A5 02
STA $04                 ; $23:B4C5: 85 04
BEQ CODE_23B4E5         ; $23:B4C7: F0 1C

CODE_23B4C9:
TXA                     ; $23:B4C9: 8A
BNE CODE_23B4D2         ; $23:B4CA: D0 06
JSL CODE_2AB73A         ; $23:B4CC: 22 3A B7 2A
BRA CODE_23B4D8         ; $23:B4D0: 80 06

CODE_23B4D2:
LDA [$2E],y             ; $23:B4D2: B7 2E
CMP #$04                ; $23:B4D4: C9 04
BEQ CODE_23B4DD         ; $23:B4D6: F0 05

CODE_23B4D8:
LDA.w DATA_21A6A7,x     ; $23:B4D8: BD A7 A6
STA [$2E],y             ; $23:B4DB: 97 2E

CODE_23B4DD:
JSL CODE_23BEBB         ; $23:B4DD: 22 BB BE 23
DEC $04                 ; $23:B4E1: C6 04
BNE CODE_23B4C9         ; $23:B4E3: D0 E4

CODE_23B4E5:
LDA.w DATA_21A6AA,x     ; $23:B4E5: BD AA A6
STA [$2E],y             ; $23:B4E8: 97 2E
JSL CODE_2A89DC         ; $23:B4EA: 22 DC 89 2A
LDA $00                 ; $23:B4EE: A5 00
STA $2E                 ; $23:B4F0: 85 2E
LDA $01                 ; $23:B4F2: A5 01
STA $2F                 ; $23:B4F4: 85 2F
LDA $0700               ; $23:B4F6: AD 00 07
CLC                     ; $23:B4F9: 18
ADC #$10                ; $23:B4FA: 69 10
STA $0700               ; $23:B4FC: 8D 00 07
LDA $2F                 ; $23:B4FF: A5 2F
ADC #$00                ; $23:B501: 69 00
STA $2F                 ; $23:B503: 85 2F
STA $01                 ; $23:B505: 85 01
INC $02                 ; $23:B507: E6 02
DEC $03                 ; $23:B509: C6 03
BPL CODE_23B4C0         ; $23:B50B: 10 B3
RTL                     ; $23:B50D: 6B

CODE_23B50E:
LDA $2E                 ; $23:B50E: A5 2E
STA $00                 ; $23:B510: 85 00
LDA $2F                 ; $23:B512: A5 2F
STA $01                 ; $23:B514: 85 01
STZ $02                 ; $23:B516: 64 02
LDA $0706               ; $23:B518: AD 06 07
PHA                     ; $23:B51B: 48
AND #$0F                ; $23:B51C: 29 0F
STA $03                 ; $23:B51E: 85 03
PLA                     ; $23:B520: 68
SEC                     ; $23:B521: 38
SBC #$10                ; $23:B522: E9 10
AND #$C0                ; $23:B524: 29 C0
CLC                     ; $23:B526: 18
ROL A                   ; $23:B527: 2A
ROL A                   ; $23:B528: 2A
ROL A                   ; $23:B529: 2A
TAX                     ; $23:B52A: AA

CODE_23B52B:
LDY $0700               ; $23:B52B: AC 00 07
LDA $02                 ; $23:B52E: A5 02
STA $04                 ; $23:B530: 85 04
LDA.w DATA_21A6AD,x     ; $23:B532: BD AD A6
STA [$2E],y             ; $23:B535: 97 2E
JSL CODE_2A8AE2         ; $23:B537: 22 E2 8A 2A
BRA CODE_23B55F         ; $23:B53B: 80 22

CODE_23B53D:
REP #$21                ; $23:B53D: C2 21
LDA $2E                 ; $23:B53F: A5 2E
ADC #$2000              ; $23:B541: 69 00 20
STA $D8                 ; $23:B544: 85 D8
SEP #$20                ; $23:B546: E2 20
LDA $30                 ; $23:B548: A5 30
STA $DA                 ; $23:B54A: 85 DA
LDA [$D8],y             ; $23:B54C: B7 D8
BEQ CODE_23B55A         ; $23:B54E: F0 0A
LDA [$2E],y             ; $23:B550: B7 2E
CMP #$02                ; $23:B552: C9 02
BEQ CODE_23B55F         ; $23:B554: F0 09
CMP #$09                ; $23:B556: C9 09
BEQ CODE_23B55F         ; $23:B558: F0 05

CODE_23B55A:
LDA.w DATA_21A6A7,x     ; $23:B55A: BD A7 A6
STA [$2E],y             ; $23:B55D: 97 2E

CODE_23B55F:
JSL CODE_23BEBB         ; $23:B55F: 22 BB BE 23
DEC $04                 ; $23:B563: C6 04
BPL CODE_23B53D         ; $23:B565: 10 D6
INC $02                 ; $23:B567: E6 02
LDA $00                 ; $23:B569: A5 00
STA $2E                 ; $23:B56B: 85 2E
LDA $01                 ; $23:B56D: A5 01
STA $2F                 ; $23:B56F: 85 2F
LDA $0700               ; $23:B571: AD 00 07
CLC                     ; $23:B574: 18
ADC #$0F                ; $23:B575: 69 0F
TAY                     ; $23:B577: A8
LDA $2F                 ; $23:B578: A5 2F
ADC #$00                ; $23:B57A: 69 00
STA $2F                 ; $23:B57C: 85 2F
STA $01                 ; $23:B57E: 85 01
TYA                     ; $23:B580: 98
AND #$0F                ; $23:B581: 29 0F
CMP #$0F                ; $23:B583: C9 0F
BNE CODE_23B5A2         ; $23:B585: D0 1B
REP #$20                ; $23:B587: C2 20
LDA $2E                 ; $23:B589: A5 2E
SEC                     ; $23:B58B: 38
SBC #$01B0              ; $23:B58C: E9 B0 01
STA $2E                 ; $23:B58F: 85 2E
STA $00                 ; $23:B591: 85 00
SEP #$20                ; $23:B593: E2 20
TYA                     ; $23:B595: 98
CLC                     ; $23:B596: 18
ADC #$10                ; $23:B597: 69 10
TAY                     ; $23:B599: A8
LDA $2F                 ; $23:B59A: A5 2F
ADC #$00                ; $23:B59C: 69 00
STA $2F                 ; $23:B59E: 85 2F
STA $01                 ; $23:B5A0: 85 01

CODE_23B5A2:
STY $0700               ; $23:B5A2: 8C 00 07
DEC $03                 ; $23:B5A5: C6 03
BPL CODE_23B52B         ; $23:B5A7: 10 82
RTL                     ; $23:B5A9: 6B

CODE_23B5AA:
LDA $2E                 ; $23:B5AA: A5 2E
STA $00                 ; $23:B5AC: 85 00
LDA $2F                 ; $23:B5AE: A5 2F
STA $01                 ; $23:B5B0: 85 01
LDA $0706               ; $23:B5B2: AD 06 07
PHA                     ; $23:B5B5: 48
AND #$0F                ; $23:B5B6: 29 0F
STA $02                 ; $23:B5B8: 85 02
PLA                     ; $23:B5BA: 68
SEC                     ; $23:B5BB: 38
SBC #$10                ; $23:B5BC: E9 10
AND #$C0                ; $23:B5BE: 29 C0
CLC                     ; $23:B5C0: 18
ROL A                   ; $23:B5C1: 2A
ROL A                   ; $23:B5C2: 2A
ROL A                   ; $23:B5C3: 2A
TAX                     ; $23:B5C4: AA

CODE_23B5C5:
LDY $0700               ; $23:B5C5: AC 00 07
LDA $02                 ; $23:B5C8: A5 02
STA $04                 ; $23:B5CA: 85 04
LDA.w DATA_21A6B0,x     ; $23:B5CC: BD B0 A6
STA [$2E],y             ; $23:B5CF: 97 2E
TXA                     ; $23:B5D1: 8A
BEQ CODE_23B5DF         ; $23:B5D2: F0 0B
JSL CODE_2A881E         ; $23:B5D4: 22 1E 88 2A
BRA CODE_23B5DF         ; $23:B5D8: 80 05

CODE_23B5DA:
LDA.w DATA_21A6A7,x     ; $23:B5DA: BD A7 A6
STA [$2E],y             ; $23:B5DD: 97 2E

CODE_23B5DF:
JSL CODE_23BEBB         ; $23:B5DF: 22 BB BE 23
DEC $04                 ; $23:B5E3: C6 04
BPL CODE_23B5DA         ; $23:B5E5: 10 F3
LDA $00                 ; $23:B5E7: A5 00
STA $2E                 ; $23:B5E9: 85 2E
LDA $01                 ; $23:B5EB: A5 01
STA $2F                 ; $23:B5ED: 85 2F
LDA $0700               ; $23:B5EF: AD 00 07
CLC                     ; $23:B5F2: 18
ADC #$10                ; $23:B5F3: 69 10
TAY                     ; $23:B5F5: A8
LDA $2F                 ; $23:B5F6: A5 2F
ADC #$00                ; $23:B5F8: 69 00
STA $2F                 ; $23:B5FA: 85 2F
STA $01                 ; $23:B5FC: 85 01
INY                     ; $23:B5FE: C8
TYA                     ; $23:B5FF: 98
AND #$0F                ; $23:B600: 29 0F
BNE CODE_23B617         ; $23:B602: D0 13
REP #$20                ; $23:B604: C2 20
LDA $2E                 ; $23:B606: A5 2E
CLC                     ; $23:B608: 18
ADC #$01B0              ; $23:B609: 69 B0 01
STA $2E                 ; $23:B60C: 85 2E
STA $00                 ; $23:B60E: 85 00
SEP #$20                ; $23:B610: E2 20
DEY                     ; $23:B612: 88
TYA                     ; $23:B613: 98
AND #$F0                ; $23:B614: 29 F0
TAY                     ; $23:B616: A8

CODE_23B617:
STY $0700               ; $23:B617: 8C 00 07
DEC $02                 ; $23:B61A: C6 02
BMI CODE_23B621         ; $23:B61C: 30 03
JMP CODE_23B5C5         ; $23:B61E: 4C C5 B5

CODE_23B621:
RTL                     ; $23:B621: 6B

CODE_23B622:
LDA $2E                 ; $23:B622: A5 2E
STA $00                 ; $23:B624: 85 00
LDA $2F                 ; $23:B626: A5 2F
STA $01                 ; $23:B628: 85 01
LDA $0706               ; $23:B62A: AD 06 07
PHA                     ; $23:B62D: 48
AND #$0F                ; $23:B62E: 29 0F
STA $02                 ; $23:B630: 85 02
PLA                     ; $23:B632: 68
SEC                     ; $23:B633: 38
SBC #$10                ; $23:B634: E9 10
AND #$C0                ; $23:B636: 29 C0
CLC                     ; $23:B638: 18
ROL A                   ; $23:B639: 2A
ROL A                   ; $23:B63A: 2A
ROL A                   ; $23:B63B: 2A
TAX                     ; $23:B63C: AA

CODE_23B63D:
LDY $0700               ; $23:B63D: AC 00 07
LDA $02                 ; $23:B640: A5 02
STA $04                 ; $23:B642: 85 04
BEQ CODE_23B666         ; $23:B644: F0 20

CODE_23B646:
REP #$21                ; $23:B646: C2 21
LDA $2E                 ; $23:B648: A5 2E
ADC #$2000              ; $23:B64A: 69 00 20
STA $D8                 ; $23:B64D: 85 D8
SEP #$20                ; $23:B64F: E2 20
LDA $30                 ; $23:B651: A5 30
STA $DA                 ; $23:B653: 85 DA
LDA [$D8],y             ; $23:B655: B7 D8
BNE CODE_23B65E         ; $23:B657: D0 05
LDA.w DATA_21A6A7,x     ; $23:B659: BD A7 A6
STA [$2E],y             ; $23:B65C: 97 2E

CODE_23B65E:
JSL CODE_23BEBB         ; $23:B65E: 22 BB BE 23
DEC $04                 ; $23:B662: C6 04
BNE CODE_23B646         ; $23:B664: D0 E0

CODE_23B666:
LDA.w DATA_21A6B3,x     ; $23:B666: BD B3 A6
STA [$2E],y             ; $23:B669: 97 2E
TXA                     ; $23:B66B: 8A
BEQ CODE_23B67A         ; $23:B66C: F0 0C
PHX                     ; $23:B66E: DA
LDX #$00                ; $23:B66F: A2 00
JSL CODE_2A8844         ; $23:B671: 22 44 88 2A
JSL CODE_2A87B2         ; $23:B675: 22 B2 87 2A
PLX                     ; $23:B679: FA

CODE_23B67A:
LDA $00                 ; $23:B67A: A5 00
STA $2E                 ; $23:B67C: 85 2E
LDA $01                 ; $23:B67E: A5 01
STA $2F                 ; $23:B680: 85 2F
LDA $0700               ; $23:B682: AD 00 07
CLC                     ; $23:B685: 18
ADC #$10                ; $23:B686: 69 10
STA $0700               ; $23:B688: 8D 00 07
LDA $2F                 ; $23:B68B: A5 2F
ADC #$00                ; $23:B68D: 69 00
STA $2F                 ; $23:B68F: 85 2F
STA $01                 ; $23:B691: 85 01
DEC $02                 ; $23:B693: C6 02
BPL CODE_23B63D         ; $23:B695: 10 A6
RTL                     ; $23:B697: 6B

CODE_23B698:
LDA $2E                 ; $23:B698: A5 2E
STA $00                 ; $23:B69A: 85 00
LDA $2F                 ; $23:B69C: A5 2F
STA $01                 ; $23:B69E: 85 01
LDA #$00                ; $23:B6A0: A9 00
STA $02                 ; $23:B6A2: 85 02
LDA $0706               ; $23:B6A4: AD 06 07
PHA                     ; $23:B6A7: 48
AND #$0F                ; $23:B6A8: 29 0F
STA $03                 ; $23:B6AA: 85 03
PLA                     ; $23:B6AC: 68
SEC                     ; $23:B6AD: 38
SBC #$10                ; $23:B6AE: E9 10
AND #$C0                ; $23:B6B0: 29 C0
CLC                     ; $23:B6B2: 18
ROL A                   ; $23:B6B3: 2A
ROL A                   ; $23:B6B4: 2A
ROL A                   ; $23:B6B5: 2A
TAX                     ; $23:B6B6: AA

CODE_23B6B7:
LDY $0700               ; $23:B6B7: AC 00 07
LDA $02                 ; $23:B6BA: A5 02
STA $04                 ; $23:B6BC: 85 04
BEQ CODE_23B6DF         ; $23:B6BE: F0 1F

CODE_23B6C0:
LDA.w DATA_21A6A7,x     ; $23:B6C0: BD A7 A6
STA [$2E],y             ; $23:B6C3: 97 2E
JSL CODE_23BEBB         ; $23:B6C5: 22 BB BE 23
TXA                     ; $23:B6C9: 8A
BEQ CODE_23B6D2         ; $23:B6CA: F0 06
LDA [$2E],y             ; $23:B6CC: B7 2E
CMP #$08                ; $23:B6CE: C9 08
BEQ CODE_23B6D7         ; $23:B6D0: F0 05

CODE_23B6D2:
LDA.w DATA_21A6A7,x     ; $23:B6D2: BD A7 A6
STA [$2E],y             ; $23:B6D5: 97 2E

CODE_23B6D7:
JSL CODE_23BEBB         ; $23:B6D7: 22 BB BE 23
DEC $04                 ; $23:B6DB: C6 04
BNE CODE_23B6C0         ; $23:B6DD: D0 E1

CODE_23B6DF:
LDA.w DATA_21A6B6,x     ; $23:B6DF: BD B6 A6
STA [$2E],y             ; $23:B6E2: 97 2E
TXA                     ; $23:B6E4: 8A
BNE CODE_23B6EF         ; $23:B6E5: D0 08
PHX                     ; $23:B6E7: DA
LDX #$04                ; $23:B6E8: A2 04
JSL CODE_2A89DC         ; $23:B6EA: 22 DC 89 2A
PLX                     ; $23:B6EE: FA

CODE_23B6EF:
JSL CODE_23BEBB         ; $23:B6EF: 22 BB BE 23
LDA.w DATA_21A6B9,x     ; $23:B6F3: BD B9 A6
STA [$2E],y             ; $23:B6F6: 97 2E
CMP #$9F                ; $23:B6F8: C9 9F
BNE CODE_23B700         ; $23:B6FA: D0 04
JSL CODE_2A89DC         ; $23:B6FC: 22 DC 89 2A

CODE_23B700:
LDA $00                 ; $23:B700: A5 00
STA $2E                 ; $23:B702: 85 2E
LDA $01                 ; $23:B704: A5 01
STA $2F                 ; $23:B706: 85 2F
LDA $0700               ; $23:B708: AD 00 07
CLC                     ; $23:B70B: 18
ADC #$10                ; $23:B70C: 69 10
STA $0700               ; $23:B70E: 8D 00 07
LDA $2F                 ; $23:B711: A5 2F
ADC #$00                ; $23:B713: 69 00
STA $2F                 ; $23:B715: 85 2F
STA $01                 ; $23:B717: 85 01
INC $02                 ; $23:B719: E6 02
DEC $03                 ; $23:B71B: C6 03
BPL CODE_23B6B7         ; $23:B71D: 10 98
RTL                     ; $23:B71F: 6B

CODE_23B720:
LDA $2E                 ; $23:B720: A5 2E
STA $00                 ; $23:B722: 85 00
LDA $2F                 ; $23:B724: A5 2F
STA $01                 ; $23:B726: 85 01
LDA #$00                ; $23:B728: A9 00
STA $02                 ; $23:B72A: 85 02
LDA $0706               ; $23:B72C: AD 06 07
PHA                     ; $23:B72F: 48
AND #$0F                ; $23:B730: 29 0F
STA $03                 ; $23:B732: 85 03
PLA                     ; $23:B734: 68
SEC                     ; $23:B735: 38
SBC #$10                ; $23:B736: E9 10
AND #$C0                ; $23:B738: 29 C0
CLC                     ; $23:B73A: 18
ROL A                   ; $23:B73B: 2A
ROL A                   ; $23:B73C: 2A
ROL A                   ; $23:B73D: 2A
TAX                     ; $23:B73E: AA

CODE_23B73F:
LDY $0700               ; $23:B73F: AC 00 07
LDA $02                 ; $23:B742: A5 02
STA $04                 ; $23:B744: 85 04
LDA.w DATA_21A6BC,x     ; $23:B746: BD BC A6
STA [$2E],y             ; $23:B749: 97 2E
CMP #$9C                ; $23:B74B: C9 9C
BNE CODE_23B757         ; $23:B74D: D0 08
PHX                     ; $23:B74F: DA
LDX #$03                ; $23:B750: A2 03
JSL CODE_2A8AE2         ; $23:B752: 22 E2 8A 2A
PLX                     ; $23:B756: FA

CODE_23B757:
JSL CODE_23BEBB         ; $23:B757: 22 BB BE 23
LDA.w DATA_21A6BF,x     ; $23:B75B: BD BF A6
STA [$2E],y             ; $23:B75E: 97 2E
CMP #$9D                ; $23:B760: C9 9D
BNE CODE_23B795         ; $23:B762: D0 31
JSL CODE_2A87B2         ; $23:B764: 22 B2 87 2A
BRA CODE_23B795         ; $23:B768: 80 2B

CODE_23B76A:
REP #$21                ; $23:B76A: C2 21
LDA $2E                 ; $23:B76C: A5 2E
ADC #$2000              ; $23:B76E: 69 00 20
STA $D8                 ; $23:B771: 85 D8
SEP #$20                ; $23:B773: E2 20
LDA $30                 ; $23:B775: A5 30
STA $DA                 ; $23:B777: 85 DA
LDA [$D8],y             ; $23:B779: B7 D8
BEQ CODE_23B787         ; $23:B77B: F0 0A
LDA [$2E],y             ; $23:B77D: B7 2E
CMP #$02                ; $23:B77F: C9 02
BEQ CODE_23B78C         ; $23:B781: F0 09
CMP #$07                ; $23:B783: C9 07
BEQ CODE_23B78C         ; $23:B785: F0 05

CODE_23B787:
LDA.w DATA_21A6A7,x     ; $23:B787: BD A7 A6
STA [$2E],y             ; $23:B78A: 97 2E

CODE_23B78C:
JSL CODE_23BEBB         ; $23:B78C: 22 BB BE 23
LDA.w DATA_21A6A7,x     ; $23:B790: BD A7 A6
STA [$2E],y             ; $23:B793: 97 2E

CODE_23B795:
JSL CODE_23BEBB         ; $23:B795: 22 BB BE 23
DEC $04                 ; $23:B799: C6 04
BPL CODE_23B76A         ; $23:B79B: 10 CD
LDA $00                 ; $23:B79D: A5 00
STA $2E                 ; $23:B79F: 85 2E
LDA $01                 ; $23:B7A1: A5 01
STA $2F                 ; $23:B7A3: 85 2F
LDA $0700               ; $23:B7A5: AD 00 07
CLC                     ; $23:B7A8: 18
ADC #$0E                ; $23:B7A9: 69 0E
TAY                     ; $23:B7AB: A8
LDA $2F                 ; $23:B7AC: A5 2F
ADC #$00                ; $23:B7AE: 69 00
STA $2F                 ; $23:B7B0: 85 2F
STA $01                 ; $23:B7B2: 85 01
TYA                     ; $23:B7B4: 98
AND #$0F                ; $23:B7B5: 29 0F
CMP #$0E                ; $23:B7B7: C9 0E
BCC CODE_23B7D7         ; $23:B7B9: 90 1C
LDA $2E                 ; $23:B7BB: A5 2E
SEC                     ; $23:B7BD: 38
SBC #$B0                ; $23:B7BE: E9 B0
STA $2E                 ; $23:B7C0: 85 2E
STA $00                 ; $23:B7C2: 85 00
LDA $2F                 ; $23:B7C4: A5 2F
SBC #$01                ; $23:B7C6: E9 01
STA $2F                 ; $23:B7C8: 85 2F
TYA                     ; $23:B7CA: 98
CLC                     ; $23:B7CB: 18
ADC #$10                ; $23:B7CC: 69 10
TAY                     ; $23:B7CE: A8
LDA $2F                 ; $23:B7CF: A5 2F
ADC #$00                ; $23:B7D1: 69 00
STA $2F                 ; $23:B7D3: 85 2F
STA $01                 ; $23:B7D5: 85 01

CODE_23B7D7:
STY $0700               ; $23:B7D7: 8C 00 07
INC $02                 ; $23:B7DA: E6 02
DEC $03                 ; $23:B7DC: C6 03
BMI CODE_23B7E3         ; $23:B7DE: 30 03
JMP CODE_23B73F         ; $23:B7E0: 4C 3F B7

CODE_23B7E3:
RTL                     ; $23:B7E3: 6B

CODE_23B7E4:
REP #$20                ; $23:B7E4: C2 20
LDA $2E                 ; $23:B7E6: A5 2E
STA $00                 ; $23:B7E8: 85 00
SEP #$20                ; $23:B7EA: E2 20
LDA $0706               ; $23:B7EC: AD 06 07
PHA                     ; $23:B7EF: 48
AND #$0F                ; $23:B7F0: 29 0F
STA $02                 ; $23:B7F2: 85 02
PLA                     ; $23:B7F4: 68
SEC                     ; $23:B7F5: 38
SBC #$10                ; $23:B7F6: E9 10
AND #$C0                ; $23:B7F8: 29 C0
CLC                     ; $23:B7FA: 18
ROL A                   ; $23:B7FB: 2A
ROL A                   ; $23:B7FC: 2A
ROL A                   ; $23:B7FD: 2A
TAX                     ; $23:B7FE: AA

CODE_23B7FF:
LDY $0700               ; $23:B7FF: AC 00 07
LDA $02                 ; $23:B802: A5 02
STA $04                 ; $23:B804: 85 04
LDA.w DATA_21A6C2,x     ; $23:B806: BD C2 A6
STA [$2E],y             ; $23:B809: 97 2E
JSL CODE_2A8776         ; $23:B80B: 22 76 87 2A
JSL CODE_23BEBB         ; $23:B80F: 22 BB BE 23
LDA.w DATA_21A6C5,x     ; $23:B813: BD C5 A6
STA [$2E],y             ; $23:B816: 97 2E
BRA CODE_23B828         ; $23:B818: 80 0E

CODE_23B81A:
LDA.w DATA_21A6A7,x     ; $23:B81A: BD A7 A6
STA [$2E],y             ; $23:B81D: 97 2E
JSL CODE_23BEBB         ; $23:B81F: 22 BB BE 23
LDA.w DATA_21A6A7,x     ; $23:B823: BD A7 A6
STA [$2E],y             ; $23:B826: 97 2E

CODE_23B828:
JSL CODE_23BEBB         ; $23:B828: 22 BB BE 23
DEC $04                 ; $23:B82C: C6 04
BPL CODE_23B81A         ; $23:B82E: 10 EA
REP #$20                ; $23:B830: C2 20
LDA $00                 ; $23:B832: A5 00
STA $2E                 ; $23:B834: 85 2E
SEP #$20                ; $23:B836: E2 20
LDA $0700               ; $23:B838: AD 00 07
CLC                     ; $23:B83B: 18
ADC #$10                ; $23:B83C: 69 10
TAY                     ; $23:B83E: A8
LDA $2F                 ; $23:B83F: A5 2F
ADC #$00                ; $23:B841: 69 00
STA $2F                 ; $23:B843: 85 2F
STA $01                 ; $23:B845: 85 01
INY                     ; $23:B847: C8
INY                     ; $23:B848: C8
TYA                     ; $23:B849: 98
AND #$0F                ; $23:B84A: 29 0F
CMP #$02                ; $23:B84C: C9 02
BCS CODE_23B863         ; $23:B84E: B0 13
REP #$21                ; $23:B850: C2 21
LDA $2E                 ; $23:B852: A5 2E
ADC #$01B0              ; $23:B854: 69 B0 01
STA $2E                 ; $23:B857: 85 2E
STA $00                 ; $23:B859: 85 00
SEP #$20                ; $23:B85B: E2 20
DEY                     ; $23:B85D: 88
DEY                     ; $23:B85E: 88
TYA                     ; $23:B85F: 98
AND #$F1                ; $23:B860: 29 F1
TAY                     ; $23:B862: A8

CODE_23B863:
STY $0700               ; $23:B863: 8C 00 07
DEC $02                 ; $23:B866: C6 02
BPL CODE_23B7FF         ; $23:B868: 10 95
RTL                     ; $23:B86A: 6B

CODE_23B86B:
LDA $2E                 ; $23:B86B: A5 2E
STA $00                 ; $23:B86D: 85 00
LDA $2F                 ; $23:B86F: A5 2F
STA $01                 ; $23:B871: 85 01
LDA $0706               ; $23:B873: AD 06 07
PHA                     ; $23:B876: 48
AND #$0F                ; $23:B877: 29 0F
STA $02                 ; $23:B879: 85 02
PLA                     ; $23:B87B: 68
SEC                     ; $23:B87C: 38
SBC #$10                ; $23:B87D: E9 10
AND #$C0                ; $23:B87F: 29 C0
CLC                     ; $23:B881: 18
ROL A                   ; $23:B882: 2A
ROL A                   ; $23:B883: 2A
ROL A                   ; $23:B884: 2A
TAX                     ; $23:B885: AA

CODE_23B886:
LDY $0700               ; $23:B886: AC 00 07
LDA $02                 ; $23:B889: A5 02
STA $04                 ; $23:B88B: 85 04
BEQ CODE_23B8A5         ; $23:B88D: F0 16

CODE_23B88F:
LDA.w DATA_21A6A7,x     ; $23:B88F: BD A7 A6
STA [$2E],y             ; $23:B892: 97 2E
JSL CODE_23BEBB         ; $23:B894: 22 BB BE 23
LDA.w DATA_21A6A7,x     ; $23:B898: BD A7 A6
STA [$2E],y             ; $23:B89B: 97 2E
JSL CODE_23BEBB         ; $23:B89D: 22 BB BE 23
DEC $04                 ; $23:B8A1: C6 04
BNE CODE_23B88F         ; $23:B8A3: D0 EA

CODE_23B8A5:
LDA.w DATA_21A6C8,x     ; $23:B8A5: BD C8 A6
STA [$2E],y             ; $23:B8A8: 97 2E
CPX #$01                ; $23:B8AA: E0 01
BNE CODE_23B8B2         ; $23:B8AC: D0 04
JSL CODE_2A87B2         ; $23:B8AE: 22 B2 87 2A

CODE_23B8B2:
JSL CODE_23BEBB         ; $23:B8B2: 22 BB BE 23
LDA.w DATA_21A6CB,x     ; $23:B8B6: BD CB A6
STA [$2E],y             ; $23:B8B9: 97 2E
CMP #$A5                ; $23:B8BB: C9 A5
BNE CODE_23B8C7         ; $23:B8BD: D0 08
PHX                     ; $23:B8BF: DA
LDX #$01                ; $23:B8C0: A2 01
JSL CODE_2A8844         ; $23:B8C2: 22 44 88 2A
PLX                     ; $23:B8C6: FA

CODE_23B8C7:
LDA $00                 ; $23:B8C7: A5 00
STA $2E                 ; $23:B8C9: 85 2E
LDA $01                 ; $23:B8CB: A5 01
STA $2F                 ; $23:B8CD: 85 2F
LDA $0700               ; $23:B8CF: AD 00 07
CLC                     ; $23:B8D2: 18
ADC #$10                ; $23:B8D3: 69 10
STA $0700               ; $23:B8D5: 8D 00 07
LDA $2F                 ; $23:B8D8: A5 2F
ADC #$00                ; $23:B8DA: 69 00
STA $2F                 ; $23:B8DC: 85 2F
STA $01                 ; $23:B8DE: 85 01
DEC $02                 ; $23:B8E0: C6 02
BPL CODE_23B886         ; $23:B8E2: 10 A2
RTL                     ; $23:B8E4: 6B

CODE_23B8E5:
LDA $0706               ; $23:B8E5: AD 06 07
PHA                     ; $23:B8E8: 48
AND #$0F                ; $23:B8E9: 29 0F
STA $00                 ; $23:B8EB: 85 00
PLA                     ; $23:B8ED: 68
SEC                     ; $23:B8EE: 38
SBC #$D0                ; $23:B8EF: E9 D0
LSR A                   ; $23:B8F1: 4A
LSR A                   ; $23:B8F2: 4A
LSR A                   ; $23:B8F3: 4A
LSR A                   ; $23:B8F4: 4A
TAX                     ; $23:B8F5: AA
LDY $0700               ; $23:B8F6: AC 00 07

CODE_23B8F9:
LDA.w DATA_21A6CE,x     ; $23:B8F9: BD CE A6
STA [$2E],y             ; $23:B8FC: 97 2E
TXA                     ; $23:B8FE: 8A
BNE CODE_23B932         ; $23:B8FF: D0 31
PHY                     ; $23:B901: 5A
REP #$20                ; $23:B902: C2 20
LDA $2E                 ; $23:B904: A5 2E
STA $D8                 ; $23:B906: 85 D8
SEP #$20                ; $23:B908: E2 20
LDA $30                 ; $23:B90A: A5 30
STA $DA                 ; $23:B90C: 85 DA
TYA                     ; $23:B90E: 98
CLC                     ; $23:B90F: 18
ADC #$0F                ; $23:B910: 69 0F
TAY                     ; $23:B912: A8
LDA [$D8],y             ; $23:B913: B7 D8
CMP #$25                ; $23:B915: C9 25
BEQ CODE_23B921         ; $23:B917: F0 08
CMP #$26                ; $23:B919: C9 26
BEQ CODE_23B921         ; $23:B91B: F0 04
CMP #$33                ; $23:B91D: C9 33
BNE CODE_23B931         ; $23:B91F: D0 10

CODE_23B921:
INY                     ; $23:B921: C8
LDA #$09                ; $23:B922: A9 09
STA [$D8],y             ; $23:B924: 97 D8
LDA $D9                 ; $23:B926: A5 D9
CLC                     ; $23:B928: 18
ADC #$20                ; $23:B929: 69 20
STA $D9                 ; $23:B92B: 85 D9
LDA #$01                ; $23:B92D: A9 01
STA [$D8],y             ; $23:B92F: 97 D8

CODE_23B931:
PLY                     ; $23:B931: 7A

CODE_23B932:
JSL CODE_2AB73A         ; $23:B932: 22 3A B7 2A
TYA                     ; $23:B936: 98
CLC                     ; $23:B937: 18
ADC #$10                ; $23:B938: 69 10
TAY                     ; $23:B93A: A8
LDA $2F                 ; $23:B93B: A5 2F
ADC #$00                ; $23:B93D: 69 00
STA $2F                 ; $23:B93F: 85 2F
DEC $00                 ; $23:B941: C6 00
BPL CODE_23B8F9         ; $23:B943: 10 B4
RTL                     ; $23:B945: 6B

CODE_23B946:
LDA $0706               ; $23:B946: AD 06 07
PHA                     ; $23:B949: 48
AND #$0F                ; $23:B94A: 29 0F
STA $00                 ; $23:B94C: 85 00
PLA                     ; $23:B94E: 68
SEC                     ; $23:B94F: 38
SBC #$D0                ; $23:B950: E9 D0
LSR A                   ; $23:B952: 4A
LSR A                   ; $23:B953: 4A
LSR A                   ; $23:B954: 4A
LSR A                   ; $23:B955: 4A
CLC                     ; $23:B956: 18
ADC #$03                ; $23:B957: 69 03
TAX                     ; $23:B959: AA
LDY $0700               ; $23:B95A: AC 00 07
JMP CODE_23B8F9         ; $23:B95D: 4C F9 B8

CODE_23B960:
LDY #$00                ; $23:B960: A0 00
LDA [$2B],y             ; $23:B962: B7 2B
STA $02                 ; $23:B964: 85 02
LDA $2B                 ; $23:B966: A5 2B
CLC                     ; $23:B968: 18
ADC #$01                ; $23:B969: 69 01
STA $2B                 ; $23:B96B: 85 2B
LDA $2C                 ; $23:B96D: A5 2C
ADC #$00                ; $23:B96F: 69 00
STA $2C                 ; $23:B971: 85 2C
LDA $2E                 ; $23:B973: A5 2E
STA $00                 ; $23:B975: 85 00
LDA $2F                 ; $23:B977: A5 2F
STA $01                 ; $23:B979: 85 01
LDA $0706               ; $23:B97B: AD 06 07
PHA                     ; $23:B97E: 48
AND #$0F                ; $23:B97F: 29 0F
STA $04                 ; $23:B981: 85 04
PLA                     ; $23:B983: 68
SEC                     ; $23:B984: 38
SBC #$40                ; $23:B985: E9 40
LSR A                   ; $23:B987: 4A
LSR A                   ; $23:B988: 4A
LSR A                   ; $23:B989: 4A
LSR A                   ; $23:B98A: 4A
TAX                     ; $23:B98B: AA
LDY $0700               ; $23:B98C: AC 00 07
LDA $02                 ; $23:B98F: A5 02
STA $03                 ; $23:B991: 85 03

CODE_23B993:
CPX #$03                ; $23:B993: E0 03
BCS CODE_23B9C4         ; $23:B995: B0 2D
REP #$21                ; $23:B997: C2 21
LDA $2E                 ; $23:B999: A5 2E
ADC #$2000              ; $23:B99B: 69 00 20
STA $D8                 ; $23:B99E: 85 D8
SEP #$20                ; $23:B9A0: E2 20
LDA $30                 ; $23:B9A2: A5 30
STA $DA                 ; $23:B9A4: 85 DA
LDA [$D8],y             ; $23:B9A6: B7 D8
BEQ CODE_23B9C4         ; $23:B9A8: F0 1A
LDA [$2E],y             ; $23:B9AA: B7 2E
CMP #$02                ; $23:B9AC: C9 02
BEQ CODE_23B9D9         ; $23:B9AE: F0 29
CMP #$04                ; $23:B9B0: C9 04
BEQ CODE_23B9D9         ; $23:B9B2: F0 25
CMP #$05                ; $23:B9B4: C9 05
BEQ CODE_23B9D9         ; $23:B9B6: F0 21
CMP #$07                ; $23:B9B8: C9 07
BEQ CODE_23B9D9         ; $23:B9BA: F0 1D
CMP #$09                ; $23:B9BC: C9 09
BEQ CODE_23B9D9         ; $23:B9BE: F0 19
CMP #$0A                ; $23:B9C0: C9 0A
BEQ CODE_23B9D9         ; $23:B9C2: F0 15

CODE_23B9C4:
JSL CODE_2AB73A         ; $23:B9C4: 22 3A B7 2A
LDA.w DATA_21A6D4,x     ; $23:B9C8: BD D4 A6
STA [$2E],y             ; $23:B9CB: 97 2E
CMP #$37                ; $23:B9CD: C9 37
BEQ CODE_23B9D9         ; $23:B9CF: F0 08
CMP #$AB                ; $23:B9D1: C9 AB
BEQ CODE_23B9D9         ; $23:B9D3: F0 04
JSL CODE_2A892C         ; $23:B9D5: 22 2C 89 2A

CODE_23B9D9:
JSL CODE_23BEBB         ; $23:B9D9: 22 BB BE 23
DEC $03                 ; $23:B9DD: C6 03
LDA $03                 ; $23:B9DF: A5 03
CMP #$FF                ; $23:B9E1: C9 FF
BNE CODE_23B993         ; $23:B9E3: D0 AE
BRA CODE_23BA0F         ; $23:B9E5: 80 28

CODE_23B9E7:
REP #$21                ; $23:B9E7: C2 21
LDA $2E                 ; $23:B9E9: A5 2E
ADC #$2000              ; $23:B9EB: 69 00 20
STA $D8                 ; $23:B9EE: 85 D8
SEP #$20                ; $23:B9F0: E2 20
LDA $30                 ; $23:B9F2: A5 30
STA $DA                 ; $23:B9F4: 85 DA
LDA [$D8],y             ; $23:B9F6: B7 D8
BNE CODE_23BA03         ; $23:B9F8: D0 09
LDA.w DATA_21A6DA,x     ; $23:B9FA: BD DA A6
STA [$2E],y             ; $23:B9FD: 97 2E
JSL CODE_2AB73A         ; $23:B9FF: 22 3A B7 2A

CODE_23BA03:
JSL CODE_23BEBB         ; $23:BA03: 22 BB BE 23
DEC $03                 ; $23:BA07: C6 03
LDA $03                 ; $23:BA09: A5 03
CMP #$FF                ; $23:BA0B: C9 FF
BNE CODE_23B9E7         ; $23:BA0D: D0 D8

CODE_23BA0F:
LDA $00                 ; $23:BA0F: A5 00
STA $2E                 ; $23:BA11: 85 2E
LDA $01                 ; $23:BA13: A5 01
STA $2F                 ; $23:BA15: 85 2F
LDA $0700               ; $23:BA17: AD 00 07
CLC                     ; $23:BA1A: 18
ADC #$10                ; $23:BA1B: 69 10
STA $0700               ; $23:BA1D: 8D 00 07
TAY                     ; $23:BA20: A8
LDA $2F                 ; $23:BA21: A5 2F
ADC #$00                ; $23:BA23: 69 00
STA $2F                 ; $23:BA25: 85 2F
STA $01                 ; $23:BA27: 85 01
LDA $02                 ; $23:BA29: A5 02
STA $03                 ; $23:BA2B: 85 03
DEC $04                 ; $23:BA2D: C6 04
BPL CODE_23B9E7         ; $23:BA2F: 10 B6
RTL                     ; $23:BA31: 6B

CODE_23BA32:
LDY #$00                ; $23:BA32: A0 00
LDA [$2B],y             ; $23:BA34: B7 2B
STA $02                 ; $23:BA36: 85 02
LDA $2B                 ; $23:BA38: A5 2B
CLC                     ; $23:BA3A: 18
ADC #$01                ; $23:BA3B: 69 01
STA $2B                 ; $23:BA3D: 85 2B
LDA $2C                 ; $23:BA3F: A5 2C
ADC #$00                ; $23:BA41: 69 00
STA $2C                 ; $23:BA43: 85 2C
LDA $2E                 ; $23:BA45: A5 2E
STA $00                 ; $23:BA47: 85 00
LDA $2F                 ; $23:BA49: A5 2F
STA $01                 ; $23:BA4B: 85 01
LDA $0706               ; $23:BA4D: AD 06 07
SEC                     ; $23:BA50: 38
SBC #$A0                ; $23:BA51: E9 A0
LSR A                   ; $23:BA53: 4A
LSR A                   ; $23:BA54: 4A
LSR A                   ; $23:BA55: 4A
LSR A                   ; $23:BA56: 4A
TAX                     ; $23:BA57: AA
LDA $0706               ; $23:BA58: AD 06 07
AND #$0F                ; $23:BA5B: 29 0F
STA $04                 ; $23:BA5D: 85 04

CODE_23BA5F:
LDA $02                 ; $23:BA5F: A5 02
STA $03                 ; $23:BA61: 85 03
LDY $0700               ; $23:BA63: AC 00 07
LDA $04                 ; $23:BA66: A5 04
BEQ CODE_23BAD0         ; $23:BA68: F0 66

CODE_23BA6A:
REP #$21                ; $23:BA6A: C2 21
LDA $2E                 ; $23:BA6C: A5 2E
ADC #$2000              ; $23:BA6E: 69 00 20
STA $D8                 ; $23:BA71: 85 D8
LDA $2E                 ; $23:BA73: A5 2E
SEC                     ; $23:BA75: 38
SBC #$0010              ; $23:BA76: E9 10 00
STA $DB                 ; $23:BA79: 85 DB
SEP #$20                ; $23:BA7B: E2 20
LDA $30                 ; $23:BA7D: A5 30
STA $DA                 ; $23:BA7F: 85 DA
STA $DD                 ; $23:BA81: 85 DD
LDA [$DB],y             ; $23:BA83: B7 DB
CMP #$26                ; $23:BA85: C9 26
BEQ CODE_23BA97         ; $23:BA87: F0 0E
LDA [$D8],y             ; $23:BA89: B7 D8
BEQ CODE_23BA97         ; $23:BA8B: F0 0A
LDA [$2E],y             ; $23:BA8D: B7 2E
CMP #$02                ; $23:BA8F: C9 02
BEQ CODE_23BAA0         ; $23:BA91: F0 0D
CMP #$04                ; $23:BA93: C9 04
BEQ CODE_23BAA0         ; $23:BA95: F0 09

CODE_23BA97:
LDA.w DATA_21A6E0,x     ; $23:BA97: BD E0 A6
STA [$2E],y             ; $23:BA9A: 97 2E
JSL CODE_2AB73A         ; $23:BA9C: 22 3A B7 2A

CODE_23BAA0:
JSL CODE_23BEBB         ; $23:BAA0: 22 BB BE 23
DEC $03                 ; $23:BAA4: C6 03
LDA $03                 ; $23:BAA6: A5 03
CMP #$FF                ; $23:BAA8: C9 FF
BNE CODE_23BA6A         ; $23:BAAA: D0 BE
LDA $00                 ; $23:BAAC: A5 00
STA $2E                 ; $23:BAAE: 85 2E
LDA $01                 ; $23:BAB0: A5 01
STA $2F                 ; $23:BAB2: 85 2F
LDA $0700               ; $23:BAB4: AD 00 07
CLC                     ; $23:BAB7: 18
ADC #$10                ; $23:BAB8: 69 10
STA $0700               ; $23:BABA: 8D 00 07
LDA $2F                 ; $23:BABD: A5 2F
ADC #$00                ; $23:BABF: 69 00
STA $2F                 ; $23:BAC1: 85 2F
STA $01                 ; $23:BAC3: 85 01
DEC $04                 ; $23:BAC5: C6 04
BNE CODE_23BA5F         ; $23:BAC7: D0 96
LDA $02                 ; $23:BAC9: A5 02
STA $03                 ; $23:BACB: 85 03
LDY $0700               ; $23:BACD: AC 00 07

CODE_23BAD0:
PHY                     ; $23:BAD0: 5A
REP #$20                ; $23:BAD1: C2 20
LDA $2E                 ; $23:BAD3: A5 2E
STA $D8                 ; $23:BAD5: 85 D8
SEP #$20                ; $23:BAD7: E2 20

CODE_23BAD9:
LDA.w DATA_21A6E3,x     ; $23:BAD9: BD E3 A6
STA [$2E],y             ; $23:BADC: 97 2E
JSL CODE_2AB73A         ; $23:BADE: 22 3A B7 2A
JSL CODE_2A886F         ; $23:BAE2: 22 6F 88 2A
JSL CODE_23BEBB         ; $23:BAE6: 22 BB BE 23
DEC $03                 ; $23:BAEA: C6 03
LDA $03                 ; $23:BAEC: A5 03
CMP #$FF                ; $23:BAEE: C9 FF
BNE CODE_23BAD9         ; $23:BAF0: D0 E7
PLY                     ; $23:BAF2: 7A
LDA [$D8],y             ; $23:BAF3: B7 D8
CMP #$F4                ; $23:BAF5: C9 F4
BEQ CODE_23BAFD         ; $23:BAF7: F0 04
CMP #$A6                ; $23:BAF9: C9 A6
BNE CODE_23BB31         ; $23:BAFB: D0 34

CODE_23BAFD:
REP #$21                ; $23:BAFD: C2 21
LDA $D8                 ; $23:BAFF: A5 D8
ADC #$000F              ; $23:BB01: 69 0F 00
STA $D8                 ; $23:BB04: 85 D8
SEP #$20                ; $23:BB06: E2 20
LDA [$D8],y             ; $23:BB08: B7 D8
CMP #$F8                ; $23:BB0A: C9 F8
BEQ CODE_23BB16         ; $23:BB0C: F0 08
CMP #$AA                ; $23:BB0E: C9 AA
BEQ CODE_23BB16         ; $23:BB10: F0 04
CMP #$BF                ; $23:BB12: C9 BF
BNE CODE_23BB31         ; $23:BB14: D0 1B

CODE_23BB16:
REP #$20                ; $23:BB16: C2 20
LDA $D8                 ; $23:BB18: A5 D8
SEC                     ; $23:BB1A: 38
SBC #$0010              ; $23:BB1B: E9 10 00
STA $D8                 ; $23:BB1E: 85 D8
SEP #$20                ; $23:BB20: E2 20
LDA #$06                ; $23:BB22: A9 06
STA [$D8],y             ; $23:BB24: 97 D8
LDA $D9                 ; $23:BB26: A5 D9
CLC                     ; $23:BB28: 18
ADC #$20                ; $23:BB29: 69 20
STA $D9                 ; $23:BB2B: 85 D9
LDA #$01                ; $23:BB2D: A9 01
STA [$D8],y             ; $23:BB2F: 97 D8

CODE_23BB31:
RTL                     ; $23:BB31: 6B

CODE_23BB32:
LDY #$00                ; $23:BB32: A0 00
LDA [$2B],y             ; $23:BB34: B7 2B
STA $02                 ; $23:BB36: 85 02
LDA $2B                 ; $23:BB38: A5 2B
CLC                     ; $23:BB3A: 18
ADC #$01                ; $23:BB3B: 69 01
STA $2B                 ; $23:BB3D: 85 2B
LDA $2C                 ; $23:BB3F: A5 2C
ADC #$00                ; $23:BB41: 69 00
STA $2C                 ; $23:BB43: 85 2C
LDA $2E                 ; $23:BB45: A5 2E
STA $00                 ; $23:BB47: 85 00
LDA $2F                 ; $23:BB49: A5 2F
STA $01                 ; $23:BB4B: 85 01
LDA $0706               ; $23:BB4D: AD 06 07
PHA                     ; $23:BB50: 48
SEC                     ; $23:BB51: 38
SBC #$10                ; $23:BB52: E9 10
LSR A                   ; $23:BB54: 4A
LSR A                   ; $23:BB55: 4A
LSR A                   ; $23:BB56: 4A
LSR A                   ; $23:BB57: 4A
TAX                     ; $23:BB58: AA
PLA                     ; $23:BB59: 68
AND #$0F                ; $23:BB5A: 29 0F
STA $03                 ; $23:BB5C: 85 03
LDY $0700               ; $23:BB5E: AC 00 07
LDA $02                 ; $23:BB61: A5 02
STA $04                 ; $23:BB63: 85 04
LDA $03                 ; $23:BB65: A5 03
BEQ CODE_23BB83         ; $23:BB67: F0 1A

CODE_23BB69:
LDA.w DATA_21A6E6,x     ; $23:BB69: BD E6 A6
STA [$2E],y             ; $23:BB6C: 97 2E
JSL CODE_23BEBB         ; $23:BB6E: 22 BB BE 23
DEC $04                 ; $23:BB72: C6 04
LDA $04                 ; $23:BB74: A5 04
CMP #$FF                ; $23:BB76: C9 FF
BNE CODE_23BB69         ; $23:BB78: D0 EF
BRA CODE_23BB90         ; $23:BB7A: 80 14

CODE_23BB7C:
LDA $02                 ; $23:BB7C: A5 02
STA $04                 ; $23:BB7E: 85 04
LDY $0700               ; $23:BB80: AC 00 07

CODE_23BB83:
LDA.w DATA_21A6E9,x     ; $23:BB83: BD E9 A6
STA [$2E],y             ; $23:BB86: 97 2E
JSL CODE_23BEBB         ; $23:BB88: 22 BB BE 23
DEC $04                 ; $23:BB8C: C6 04
BPL CODE_23BB83         ; $23:BB8E: 10 F3

CODE_23BB90:
LDA $00                 ; $23:BB90: A5 00
STA $2E                 ; $23:BB92: 85 2E
LDA $01                 ; $23:BB94: A5 01
STA $2F                 ; $23:BB96: 85 2F
LDA $0700               ; $23:BB98: AD 00 07
CLC                     ; $23:BB9B: 18
ADC #$10                ; $23:BB9C: 69 10
STA $0700               ; $23:BB9E: 8D 00 07
LDA $2F                 ; $23:BBA1: A5 2F
ADC #$00                ; $23:BBA3: 69 00
STA $2F                 ; $23:BBA5: 85 2F
STA $01                 ; $23:BBA7: 85 01
DEC $03                 ; $23:BBA9: C6 03
BPL CODE_23BB7C         ; $23:BBAB: 10 CF
RTL                     ; $23:BBAD: 6B

CODE_23BBAE:
RTL                     ; $23:BBAE: 6B

CODE_23BBAF:
LDA $0706               ; $23:BBAF: AD 06 07
SEC                     ; $23:BBB2: 38
SBC #$0D                ; $23:BBB3: E9 0D
TAY                     ; $23:BBB5: A8
LDX $0700               ; $23:BBB6: AE 00 07
LDA $0E                 ; $23:BBB9: A5 0E
AND #$10                ; $23:BBBB: 29 10
BNE CODE_23BBC3         ; $23:BBBD: D0 04
CPX #$C0                ; $23:BBBF: E0 C0
BCC CODE_23BBCB         ; $23:BBC1: 90 08

CODE_23BBC3:
TXA                     ; $23:BBC3: 8A
SEC                     ; $23:BBC4: 38
SBC #$C0                ; $23:BBC5: E9 C0
TAX                     ; $23:BBC7: AA
JMP CODE_23BBD6         ; $23:BBC8: 4C D6 BB

CODE_23BBCB:
LDA.w DATA_21A6EC,y     ; $23:BBCB: B9 EC A6
JSL CODE_209844         ; $23:BBCE: 22 44 98 20
CPX #$00                ; $23:BBD2: E0 00
BNE CODE_23BBCB         ; $23:BBD4: D0 F5

CODE_23BBD6:
LDA.w DATA_21A6EC,y     ; $23:BBD6: B9 EC A6
JSL CODE_2098A8         ; $23:BBD9: 22 A8 98 20
INX                     ; $23:BBDD: E8
CPX #$F0                ; $23:BBDE: E0 F0
BNE CODE_23BBD6         ; $23:BBE0: D0 F4
RTL                     ; $23:BBE2: 6B
LDA $2E                 ; $23:BBE3: A5 2E
STA $00                 ; $23:BBE5: 85 00
LDA $2F                 ; $23:BBE7: A5 2F
STA $01                 ; $23:BBE9: 85 01
LDA $0706               ; $23:BBEB: AD 06 07
AND #$0F                ; $23:BBEE: 29 0F
STA $02                 ; $23:BBF0: 85 02
LDA $0F                 ; $23:BBF2: A5 0F
LSR A                   ; $23:BBF4: 4A
LSR A                   ; $23:BBF5: 4A
LSR A                   ; $23:BBF6: 4A
LSR A                   ; $23:BBF7: 4A
STA $03                 ; $23:BBF8: 85 03

CODE_23BBFA:
LDY $0700               ; $23:BBFA: AC 00 07

CODE_23BBFD:
LDA #$47                ; $23:BBFD: A9 47
STA [$2E],y             ; $23:BBFF: 97 2E
TYA                     ; $23:BC01: 98
CLC                     ; $23:BC02: 18
ADC #$10                ; $23:BC03: 69 10
TAY                     ; $23:BC05: A8
BCC CODE_23BC0E         ; $23:BC06: 90 06
LDA $2F                 ; $23:BC08: A5 2F
ADC #$00                ; $23:BC0A: 69 00
STA $2F                 ; $23:BC0C: 85 2F

CODE_23BC0E:
LDA $04                 ; $23:BC0E: A5 04
CMP $2F                 ; $23:BC10: C5 2F
BNE CODE_23BBFD         ; $23:BC12: D0 E9
CPY #$B0                ; $23:BC14: C0 B0
BCC CODE_23BBFD         ; $23:BC16: 90 E5
LDA $00                 ; $23:BC18: A5 00
STA $2E                 ; $23:BC1A: 85 2E
LDA $01                 ; $23:BC1C: A5 01
STA $2F                 ; $23:BC1E: 85 2F
LDY $0700               ; $23:BC20: AC 00 07
INY                     ; $23:BC23: C8
TYA                     ; $23:BC24: 98
AND #$0F                ; $23:BC25: 29 0F
BNE CODE_23BC51         ; $23:BC27: D0 28
LDA $0700               ; $23:BC29: AD 00 07
AND #$F0                ; $23:BC2C: 29 F0
TAY                     ; $23:BC2E: A8
INC $03                 ; $23:BC2F: E6 03
LDA $03                 ; $23:BC31: A5 03
ASL A                   ; $23:BC33: 0A
TAX                     ; $23:BC34: AA
LDA.w DATA_218200,x     ; $23:BC35: BD 00 82
STA $2E                 ; $23:BC38: 85 2E
STA $00                 ; $23:BC3A: 85 00
LDA.w DATA_218200+1,x   ; $23:BC3C: BD 01 82
STA $2F                 ; $23:BC3F: 85 2F
STA $01                 ; $23:BC41: 85 01
STA $04                 ; $23:BC43: 85 04
INC $04                 ; $23:BC45: E6 04
LDA $0E                 ; $23:BC47: A5 0E
AND #$10                ; $23:BC49: 29 10
BEQ CODE_23BC51         ; $23:BC4B: F0 04
INC $2F                 ; $23:BC4D: E6 2F
INC $01                 ; $23:BC4F: E6 01

CODE_23BC51:
STY $0700               ; $23:BC51: 8C 00 07
DEC $02                 ; $23:BC54: C6 02
BPL CODE_23BBFA         ; $23:BC56: 10 A2
RTS                     ; $23:BC58: 60

CODE_23BC59:
LDA $0706               ; $23:BC59: AD 06 07
AND #$0F                ; $23:BC5C: 29 0F
STA $02                 ; $23:BC5E: 85 02
LDA $30                 ; $23:BC60: A5 30
STA $DA                 ; $23:BC62: 85 DA
LDY $0700               ; $23:BC64: AC 00 07
LDA #$81                ; $23:BC67: A9 81
STA [$2E],y             ; $23:BC69: 97 2E
JSL CODE_2AB73A         ; $23:BC6B: 22 3A B7 2A
JSR CODE_23BC93         ; $23:BC6F: 20 93 BC
BRA CODE_23BC7F         ; $23:BC72: 80 0B

CODE_23BC74:
LDA #$82                ; $23:BC74: A9 82
STA [$2E],y             ; $23:BC76: 97 2E
JSL CODE_2AB73A         ; $23:BC78: 22 3A B7 2A
JSR CODE_23BC93         ; $23:BC7C: 20 93 BC

CODE_23BC7F:
JSL CODE_23BEBB         ; $23:BC7F: 22 BB BE 23
DEC $02                 ; $23:BC83: C6 02
BNE CODE_23BC74         ; $23:BC85: D0 ED
LDA #$83                ; $23:BC87: A9 83
STA [$2E],y             ; $23:BC89: 97 2E
JSL CODE_2AB73A         ; $23:BC8B: 22 3A B7 2A
JSR CODE_23BC93         ; $23:BC8F: 20 93 BC
RTL                     ; $23:BC92: 6B

CODE_23BC93:
REP #$20                ; $23:BC93: C2 20
LDA $2E                 ; $23:BC95: A5 2E
CLC                     ; $23:BC97: 18
ADC #$0010              ; $23:BC98: 69 10 00
STA $D8                 ; $23:BC9B: 85 D8
SEP #$20                ; $23:BC9D: E2 20
LDA [$D8],y             ; $23:BC9F: B7 D8
CMP #$9A                ; $23:BCA1: C9 9A
BNE CODE_23BCB4         ; $23:BCA3: D0 0F
LDA #$0D                ; $23:BCA5: A9 0D
STA [$D8],y             ; $23:BCA7: 97 D8
LDA $D9                 ; $23:BCA9: A5 D9
CLC                     ; $23:BCAB: 18
ADC #$20                ; $23:BCAC: 69 20
STA $D9                 ; $23:BCAE: 85 D9
LDA #$01                ; $23:BCB0: A9 01
STA [$D8],y             ; $23:BCB2: 97 D8

CODE_23BCB4:
RTS                     ; $23:BCB4: 60

CODE_23BCB5:
LDA $2E                 ; $23:BCB5: A5 2E
STA $00                 ; $23:BCB7: 85 00
LDA $2F                 ; $23:BCB9: A5 2F
STA $01                 ; $23:BCBB: 85 01
LDA $0706               ; $23:BCBD: AD 06 07
AND #$0F                ; $23:BCC0: 29 0F
STA $02                 ; $23:BCC2: 85 02
LDY $0700               ; $23:BCC4: AC 00 07
LDX #$00                ; $23:BCC7: A2 00

CODE_23BCC9:
LDA $02                 ; $23:BCC9: A5 02
STA $03                 ; $23:BCCB: 85 03
LDA.w DATA_21A6EF,x     ; $23:BCCD: BD EF A6
STA [$2E],y             ; $23:BCD0: 97 2E
BRA CODE_23BCD9         ; $23:BCD2: 80 05

CODE_23BCD4:
LDA.w DATA_21A6F1,x     ; $23:BCD4: BD F1 A6
STA [$2E],y             ; $23:BCD7: 97 2E

CODE_23BCD9:
JSL CODE_23BEBB         ; $23:BCD9: 22 BB BE 23
DEC $03                 ; $23:BCDD: C6 03
BNE CODE_23BCD4         ; $23:BCDF: D0 F3
LDA.w DATA_21A6F3,x     ; $23:BCE1: BD F3 A6
STA [$2E],y             ; $23:BCE4: 97 2E
LDA $00                 ; $23:BCE6: A5 00
STA $2E                 ; $23:BCE8: 85 2E
LDA $01                 ; $23:BCEA: A5 01
STA $2F                 ; $23:BCEC: 85 2F
LDA $0700               ; $23:BCEE: AD 00 07
CLC                     ; $23:BCF1: 18
ADC #$10                ; $23:BCF2: 69 10
STA $0700               ; $23:BCF4: 8D 00 07
TAY                     ; $23:BCF7: A8
LDA $2F                 ; $23:BCF8: A5 2F
ADC #$00                ; $23:BCFA: 69 00
STA $2F                 ; $23:BCFC: 85 2F
STA $01                 ; $23:BCFE: 85 01
INX                     ; $23:BD00: E8
CPX #$02                ; $23:BD01: E0 02
BNE CODE_23BCC9         ; $23:BD03: D0 C4
RTL                     ; $23:BD05: 6B

CODE_23BD06:
LDA $0706               ; $23:BD06: AD 06 07
PHA                     ; $23:BD09: 48
SEC                     ; $23:BD0A: 38
SBC #$10                ; $23:BD0B: E9 10
AND #$F0                ; $23:BD0D: 29 F0
LSR A                   ; $23:BD0F: 4A
LSR A                   ; $23:BD10: 4A
LSR A                   ; $23:BD11: 4A
LSR A                   ; $23:BD12: 4A
TAX                     ; $23:BD13: AA
BNE CODE_23BD2F         ; $23:BD14: D0 19
PLA                     ; $23:BD16: 68
AND #$0F                ; $23:BD17: 29 0F
STA $03                 ; $23:BD19: 85 03
LDY $0700               ; $23:BD1B: AC 00 07

CODE_23BD1E:
LDA.w DATA_21A6F5,x     ; $23:BD1E: BD F5 A6
STA [$2E],y             ; $23:BD21: 97 2E
JSL CODE_2AB73A         ; $23:BD23: 22 3A B7 2A
JSL CODE_23BEBB         ; $23:BD27: 22 BB BE 23
DEC $03                 ; $23:BD2B: C6 03
BPL CODE_23BD1E         ; $23:BD2D: 10 EF

CODE_23BD2F:
RTL                     ; $23:BD2F: 6B

CODE_23BD30:
LDX $0706               ; $23:BD30: AE 06 07
LDY $0700               ; $23:BD33: AC 00 07
LDA.w DATA_21A6F7,x     ; $23:BD36: BD F7 A6
STA [$2E],y             ; $23:BD39: 97 2E
RTL                     ; $23:BD3B: 6B

CODE_23BD3C:
LDA $2E                 ; $23:BD3C: A5 2E
STA $00                 ; $23:BD3E: 85 00
LDA $2F                 ; $23:BD40: A5 2F
STA $01                 ; $23:BD42: 85 01
LDA $0706               ; $23:BD44: AD 06 07
ASL A                   ; $23:BD47: 0A
ASL A                   ; $23:BD48: 0A
ASL A                   ; $23:BD49: 0A
STA $04                 ; $23:BD4A: 85 04

CODE_23BD4C:
LDA $0700               ; $23:BD4C: AD 00 07
STA $05                 ; $23:BD4F: 85 05
STZ $06                 ; $23:BD51: 64 06
LDA $04                 ; $23:BD53: A5 04
ASL A                   ; $23:BD55: 0A
TAX                     ; $23:BD56: AA
LDA.w DATA_21A817,x     ; $23:BD57: BD 17 A8
STA $02                 ; $23:BD5A: 85 02
LDA.w DATA_21A817+1,x   ; $23:BD5C: BD 18 A8
STA $03                 ; $23:BD5F: 85 03

CODE_23BD61:
LDY $05                 ; $23:BD61: A4 05
REP #$21                ; $23:BD63: C2 21
LDA $2E                 ; $23:BD65: A5 2E
ADC #$2000              ; $23:BD67: 69 00 20
STA $D8                 ; $23:BD6A: 85 D8
SEP #$20                ; $23:BD6C: E2 20
LDA $30                 ; $23:BD6E: A5 30
STA $DA                 ; $23:BD70: 85 DA
LDA [$D8],y             ; $23:BD72: B7 D8
BEQ CODE_23BD84         ; $23:BD74: F0 0E
LDA [$2E],y             ; $23:BD76: B7 2E
CMP #$02                ; $23:BD78: C9 02
BEQ CODE_23BDAD         ; $23:BD7A: F0 31
CMP #$04                ; $23:BD7C: C9 04
BEQ CODE_23BDAD         ; $23:BD7E: F0 2D
CMP #$06                ; $23:BD80: C9 06
BEQ CODE_23BDAD         ; $23:BD82: F0 29

CODE_23BD84:
LDY $06                 ; $23:BD84: A4 06
LDA ($02),y             ; $23:BD86: B1 02
LDY $05                 ; $23:BD88: A4 05
REP #$21                ; $23:BD8A: C2 21
LDA $2E                 ; $23:BD8C: A5 2E
ADC #$2000              ; $23:BD8E: 69 00 20
STA $D8                 ; $23:BD91: 85 D8
SEP #$20                ; $23:BD93: E2 20
LDA [$D8],y             ; $23:BD95: B7 D8
BNE CODE_23BDA1         ; $23:BD97: D0 08
LDY $06                 ; $23:BD99: A4 06
LDA ($02),y             ; $23:BD9B: B1 02
LDY $05                 ; $23:BD9D: A4 05
STA [$2E],y             ; $23:BD9F: 97 2E

CODE_23BDA1:
CMP #$E3                ; $23:BDA1: C9 E3
BNE CODE_23BDAD         ; $23:BDA3: D0 08
PHX                     ; $23:BDA5: DA
LDX #$02                ; $23:BDA6: A2 02
JSL CODE_2A89DC         ; $23:BDA8: 22 DC 89 2A
PLX                     ; $23:BDAC: FA

CODE_23BDAD:
CMP #$99                ; $23:BDAD: C9 99
BNE CODE_23BDB9         ; $23:BDAF: D0 08
PHX                     ; $23:BDB1: DA
LDX #$02                ; $23:BDB2: A2 02
JSL CODE_2A8AE2         ; $23:BDB4: 22 E2 8A 2A
PLX                     ; $23:BDB8: FA

CODE_23BDB9:
CMP #$A8                ; $23:BDB9: C9 A8
BEQ CODE_23BDC1         ; $23:BDBB: F0 04
CMP #$F6                ; $23:BDBD: C9 F6
BNE CODE_23BDC9         ; $23:BDBF: D0 08

CODE_23BDC1:
PHX                     ; $23:BDC1: DA
LDX #$00                ; $23:BDC2: A2 00
JSL CODE_2A88E8         ; $23:BDC4: 22 E8 88 2A
PLX                     ; $23:BDC8: FA

CODE_23BDC9:
CMP #$A1                ; $23:BDC9: C9 A1
BNE CODE_23BDD5         ; $23:BDCB: D0 08
PHX                     ; $23:BDCD: DA
LDX #$00                ; $23:BDCE: A2 00
JSL CODE_2A8844         ; $23:BDD0: 22 44 88 2A
PLX                     ; $23:BDD4: FA

CODE_23BDD5:
CMP #$A0                ; $23:BDD5: C9 A0
BNE CODE_23BDDD         ; $23:BDD7: D0 04
JSL CODE_2A881E         ; $23:BDD9: 22 1E 88 2A

CODE_23BDDD:
CMP #$26                ; $23:BDDD: C9 26
BNE CODE_23BDE5         ; $23:BDDF: D0 04
JSL CODE_2A892C         ; $23:BDE1: 22 2C 89 2A

CODE_23BDE5:
CMP #$A7                ; $23:BDE5: C9 A7
BNE CODE_23BE14         ; $23:BDE7: D0 2B
LDA $30                 ; $23:BDE9: A5 30
STA $DA                 ; $23:BDEB: 85 DA
REP #$20                ; $23:BDED: C2 20
LDA $2E                 ; $23:BDEF: A5 2E
CLC                     ; $23:BDF1: 18
ADC #$000F              ; $23:BDF2: 69 0F 00
STA $D8                 ; $23:BDF5: 85 D8
SEP #$20                ; $23:BDF7: E2 20
LDA [$D8],y             ; $23:BDF9: B7 D8
CMP #$A7                ; $23:BDFB: C9 A7
BEQ CODE_23BE03         ; $23:BDFD: F0 04
CMP #$9A                ; $23:BDFF: C9 9A
BNE CODE_23BE14         ; $23:BE01: D0 11

CODE_23BE03:
INC $D8                 ; $23:BE03: E6 D8
LDA #$02                ; $23:BE05: A9 02
STA [$D8],y             ; $23:BE07: 97 D8
LDA $D9                 ; $23:BE09: A5 D9
CLC                     ; $23:BE0B: 18
ADC #$20                ; $23:BE0C: 69 20
STA $D9                 ; $23:BE0E: 85 D9
LDA #$01                ; $23:BE10: A9 01
STA [$D8],y             ; $23:BE12: 97 D8

CODE_23BE14:
TYA                     ; $23:BE14: 98
CLC                     ; $23:BE15: 18
ADC #$10                ; $23:BE16: 69 10
STA $05                 ; $23:BE18: 85 05
LDA $2F                 ; $23:BE1A: A5 2F
ADC #$00                ; $23:BE1C: 69 00
STA $2F                 ; $23:BE1E: 85 2F
INC $06                 ; $23:BE20: E6 06
LDA $06                 ; $23:BE22: A5 06
CMP #$06                ; $23:BE24: C9 06
BEQ CODE_23BE2B         ; $23:BE26: F0 03
JMP CODE_23BD61         ; $23:BE28: 4C 61 BD

CODE_23BE2B:
LDA $00                 ; $23:BE2B: A5 00
STA $2E                 ; $23:BE2D: 85 2E
LDA $01                 ; $23:BE2F: A5 01
STA $2F                 ; $23:BE31: 85 2F
LDY $0700               ; $23:BE33: AC 00 07
JSL CODE_23BEBB         ; $23:BE36: 22 BB BE 23
STY $0700               ; $23:BE3A: 8C 00 07
LDA $2E                 ; $23:BE3D: A5 2E
STA $00                 ; $23:BE3F: 85 00
LDA $2F                 ; $23:BE41: A5 2F
STA $01                 ; $23:BE43: 85 01
INC $04                 ; $23:BE45: E6 04
LDA $04                 ; $23:BE47: A5 04
AND #$07                ; $23:BE49: 29 07
BEQ CODE_23BE50         ; $23:BE4B: F0 03
JMP CODE_23BD4C         ; $23:BE4D: 4C 4C BD

CODE_23BE50:
RTL                     ; $23:BE50: 6B

CODE_23BE51:
LDY $0700               ; $23:BE51: AC 00 07
LDA #$17                ; $23:BE54: A9 17
STA $00                 ; $23:BE56: 85 00
LDA #$A9                ; $23:BE58: A9 A9
STA $01                 ; $23:BE5A: 85 01

CODE_23BE5C:
LDA ($00),y             ; $23:BE5C: B1 00
CMP #$FF                ; $23:BE5E: C9 FF
BEQ CODE_23BE70         ; $23:BE60: F0 0E
STA [$2E],y             ; $23:BE62: 97 2E
INY                     ; $23:BE64: C8
CPY #$00                ; $23:BE65: C0 00
BNE CODE_23BE6D         ; $23:BE67: D0 04
INC $2F                 ; $23:BE69: E6 2F
INC $01                 ; $23:BE6B: E6 01

CODE_23BE6D:
INX                     ; $23:BE6D: E8
BRA CODE_23BE5C         ; $23:BE6E: 80 EC

CODE_23BE70:
RTL                     ; $23:BE70: 6B

CODE_23BE71:
STX $0B                 ; $23:BE71: 86 0B
STY $0C                 ; $23:BE73: 84 0C
LDA $0E                 ; $23:BE75: A5 0E
AND #$10                ; $23:BE77: 29 10
LSR A                   ; $23:BE79: 4A
LSR A                   ; $23:BE7A: 4A
LSR A                   ; $23:BE7B: 4A
LSR A                   ; $23:BE7C: 4A
STA $0D                 ; $23:BE7D: 85 0D
LDY $0F                 ; $23:BE7F: A4 0F
LDA $0706               ; $23:BE81: AD 06 07
AND #$F0                ; $23:BE84: 29 F0
BEQ CODE_23BE94         ; $23:BE86: F0 0C
LDA $0706               ; $23:BE88: AD 06 07
AND #$0F                ; $23:BE8B: 29 0F
SEC                     ; $23:BE8D: 38
SBC $02                 ; $23:BE8E: E5 02
CLC                     ; $23:BE90: 18
ADC $0F                 ; $23:BE91: 65 0F
TAY                     ; $23:BE93: A8

CODE_23BE94:
TYA                     ; $23:BE94: 98
AND #$F8                ; $23:BE95: 29 F8
LSR A                   ; $23:BE97: 4A
LSR A                   ; $23:BE98: 4A
ORA $0D                 ; $23:BE99: 05 0D
STA $0D                 ; $23:BE9B: 85 0D
LDA $0415               ; $23:BE9D: AD 15 04
BEQ CODE_23BEA9         ; $23:BEA0: F0 07
LDA $0D                 ; $23:BEA2: A5 0D
CLC                     ; $23:BEA4: 18
ADC #$40                ; $23:BEA5: 69 40
STA $0D                 ; $23:BEA7: 85 0D

CODE_23BEA9:
LDA $0C                 ; $23:BEA9: A5 0C
AND #$07                ; $23:BEAB: 29 07
TAX                     ; $23:BEAD: AA
LDY $0D                 ; $23:BEAE: A4 0D
LDA $1E04,y             ; $23:BEB0: B9 04 1E
AND.w DATA_21AAA8,x     ; $23:BEB3: 3D A8 AA
LDX $0B                 ; $23:BEB6: A6 0B
LDY $0C                 ; $23:BEB8: A4 0C
RTS                     ; $23:BEBA: 60

CODE_23BEBB:
INY                     ; $23:BEBB: C8
TYA                     ; $23:BEBC: 98
AND #$0F                ; $23:BEBD: 29 0F
BNE CODE_23BED3         ; $23:BEBF: D0 12
REP #$20                ; $23:BEC1: C2 20
LDA $2E                 ; $23:BEC3: A5 2E
CLC                     ; $23:BEC5: 18
ADC #$01B0              ; $23:BEC6: 69 B0 01
STA $2E                 ; $23:BEC9: 85 2E
SEP #$20                ; $23:BECB: E2 20
LDA $0700               ; $23:BECD: AD 00 07
AND #$F0                ; $23:BED0: 29 F0
TAY                     ; $23:BED2: A8

CODE_23BED3:
RTL                     ; $23:BED3: 6B

CODE_23BED4:
LDA $0E                 ; $23:BED4: A5 0E
AND #$0F                ; $23:BED6: 29 0F
TAY                     ; $23:BED8: A8
LDA $0F                 ; $23:BED9: A5 0F
STA $1F56,y             ; $23:BEDB: 99 56 1F
LDA $0706               ; $23:BEDE: AD 06 07
STA $1F66,y             ; $23:BEE1: 99 66 1F
RTL                     ; $23:BEE4: 6B

ORG $23BF00

CODE_23BF00:
LDA $82                 ; $23:BF00: A5 82
CMP #$B8                ; $23:BF02: C9 B8
BCS CODE_23BF7D         ; $23:BF04: B0 77
LDA $1A45               ; $23:BF06: AD 45 1A
BNE CODE_23BF65         ; $23:BF09: D0 5A
STA $00                 ; $23:BF0B: 85 00
LDA $BB                 ; $23:BF0D: A5 BB
BEQ CODE_23BF16         ; $23:BF0F: F0 05
LDA $056F               ; $23:BF11: AD 6F 05
BEQ CODE_23BF1A         ; $23:BF14: F0 04

CODE_23BF16:
LDA #$0A                ; $23:BF16: A9 0A
STA $00                 ; $23:BF18: 85 00

CODE_23BF1A:
LDA #$01                ; $23:BF1A: A9 01
STA $1F90               ; $23:BF1C: 8D 90 1F
LSR A                   ; $23:BF1F: 4A
STA $1F99               ; $23:BF20: 8D 99 1F
LDA $05FC               ; $23:BF23: AD FC 05
BEQ CODE_23BF38         ; $23:BF26: F0 10
LDA $82                 ; $23:BF28: A5 82
CMP #$80                ; $23:BF2A: C9 80
BCC CODE_23BF38         ; $23:BF2C: 90 0A
LDA #$00                ; $23:BF2E: A9 00
XBA                     ; $23:BF30: EB
LDA #$93                ; $23:BF31: A9 93
STA $1F99               ; $23:BF33: 8D 99 1F
BNE CODE_23BF53         ; $23:BF36: D0 1B

CODE_23BF38:
STZ $D9                 ; $23:BF38: 64 D9
LDA $00                 ; $23:BF3A: A5 00
STA $D8                 ; $23:BF3C: 85 D8
BPL CODE_23BF42         ; $23:BF3E: 10 02
DEC $D9                 ; $23:BF40: C6 D9

CODE_23BF42:
LDA $55                 ; $23:BF42: A5 55
XBA                     ; $23:BF44: EB
LDA $70                 ; $23:BF45: A5 70
REP #$20                ; $23:BF47: C2 20
CLC                     ; $23:BF49: 18
ADC $D8                 ; $23:BF4A: 65 D8
AND #$FFF0              ; $23:BF4C: 29 F0 FF
CLC                     ; $23:BF4F: 18
ADC #$0002              ; $23:BF50: 69 02 00

CODE_23BF53:
SEP #$20                ; $23:BF53: E2 20
STA $1F93               ; $23:BF55: 8D 93 1F
XBA                     ; $23:BF58: EB
STA $058E               ; $23:BF59: 8D 8E 05
LDA $5E                 ; $23:BF5C: A5 5E
STA $1F96               ; $23:BF5E: 8D 96 1F
LDA $43                 ; $23:BF61: A5 43
STA $EF                 ; $23:BF63: 85 EF

CODE_23BF65:
LDA $9D                 ; $23:BF65: A5 9D
BMI CODE_23BF7D         ; $23:BF67: 30 14
LDA #$00                ; $23:BF69: A9 00
STA $9D                 ; $23:BF6B: 85 9D
LDY $A6                 ; $23:BF6D: A4 A6
BEQ CODE_23BF73         ; $23:BF6F: F0 02
STA $8B                 ; $23:BF71: 85 8B

CODE_23BF73:
LDY #$02                ; $23:BF73: A0 02

CODE_23BF75:
LDA $1F7C,y             ; $23:BF75: B9 7C 1F
BEQ CODE_23BF7E         ; $23:BF78: F0 04

CODE_23BF7A:
DEY                     ; $23:BF7A: 88
BPL CODE_23BF75         ; $23:BF7B: 10 F8

CODE_23BF7D:
RTL                     ; $23:BF7D: 6B

CODE_23BF7E:
LDA $0783,y             ; $23:BF7E: B9 83 07
ORA #$10                ; $23:BF81: 09 10
STA $1F7C,y             ; $23:BF83: 99 7C 1F
LDA $70                 ; $23:BF86: A5 70
ADC.w DATA_21E9FB,y     ; $23:BF88: 79 FB E9
STA $1F84,y             ; $23:BF8B: 99 84 1F
LDA $55                 ; $23:BF8E: A5 55
ADC #$00                ; $23:BF90: 69 00
STA $1F80,y             ; $23:BF92: 99 80 1F
LDA $5E                 ; $23:BF95: A5 5E
ADC.w DATA_21E9FE,y     ; $23:BF97: 79 FE E9
STA $1F8C,y             ; $23:BF9A: 99 8C 1F
LDA $43                 ; $23:BF9D: A5 43
ADC #$00                ; $23:BF9F: 69 00
STA $1F88,y             ; $23:BFA1: 99 88 1F
JMP CODE_23BF7A         ; $23:BFA4: 4C 7A BF

CODE_23BFA7:
LDY $070A               ; $23:BFA7: AC 0A 07
LDA.w DATA_21E945,y     ; $23:BFAA: B9 45 E9
STA $0560               ; $23:BFAD: 8D 60 05
JSL CODE_23DF67         ; $23:BFB0: 22 67 DF 23
JSR CODE_23C0CD         ; $23:BFB4: 20 CD C0
JSR CODE_23C1E7         ; $23:BFB7: 20 E7 C1
LDA $070A               ; $23:BFBA: AD 0A 07
CMP #$07                ; $23:BFBD: C9 07
BEQ CODE_23BFCD         ; $23:BFBF: F0 0C
LDA $05F3               ; $23:BFC1: AD F3 05
BEQ CODE_23BFD2         ; $23:BFC4: F0 0C
LDA $0350               ; $23:BFC6: AD 50 03
CMP #$0B                ; $23:BFC9: C9 0B
BNE CODE_23BFD2         ; $23:BFCB: D0 05

CODE_23BFCD:
STZ $0428               ; $23:BFCD: 9C 28 04
BRA CODE_23BFF7         ; $23:BFD0: 80 25

CODE_23BFD2:
LDA $0428               ; $23:BFD2: AD 28 04
BEQ CODE_23BFF7         ; $23:BFD5: F0 20
LDA $1B41               ; $23:BFD7: AD 41 1B
CMP #$D5                ; $23:BFDA: C9 D5
BEQ CODE_23BFF7         ; $23:BFDC: F0 19
CMP #$09                ; $23:BFDE: C9 09
BEQ CODE_23BFF7         ; $23:BFE0: F0 15
DEC $0428               ; $23:BFE2: CE 28 04
LDA #$E0                ; $23:BFE5: A9 E0
STA $0553               ; $23:BFE7: 8D 53 05
STZ $02C7               ; $23:BFEA: 9C C7 02
LDA #$03                ; $23:BFED: A9 03
STA $02C6               ; $23:BFEF: 8D C6 02
LDA #$0D                ; $23:BFF2: A9 0D
STA $1202               ; $23:BFF4: 8D 02 12

CODE_23BFF7:
LDA $055C               ; $23:BFF7: AD 5C 05
AND #$F0                ; $23:BFFA: 29 F0
SEC                     ; $23:BFFC: 38
SBC #$90                ; $23:BFFD: E9 90
STA $055C               ; $23:BFFF: 8D 5C 05
JSR CODE_23C261         ; $23:C002: 20 61 C2
LDA $0552               ; $23:C005: AD 52 05
BEQ CODE_23C022         ; $23:C008: F0 18
LDA $7FC586             ; $23:C00A: AF 86 C5 7F
BEQ CODE_23C022         ; $23:C00E: F0 12
LDA $7FC586             ; $23:C010: AF 86 C5 7F
DEC A                   ; $23:C014: 3A
STA $7FC586             ; $23:C015: 8F 86 C5 7F
LDA #$02                ; $23:C019: A9 02
ORA $BF                 ; $23:C01B: 05 BF
STA $0556               ; $23:C01D: 8D 56 05
BRA CODE_23C024         ; $23:C020: 80 02

; Player death animation phase

CODE_23C022:
LDA $BF                 ; $23:C022: A5 BF

CODE_23C024:
ORA $0571               ; $23:C024: 0D 71 05
ORA $0554               ; $23:C027: 0D 54 05
ORA $0555               ; $23:C02A: 0D 55 05

; Player growing/shrinking animation timer
ORA $0551               ; $23:C02D: 0D 51 05
STA $009C               ; $23:C030: 8D 9C 00
BNE CODE_23C038         ; $23:C033: D0 03
INC $0565               ; $23:C035: EE 65 05

CODE_23C038:
LDA $0564               ; $23:C038: AD 64 05
CMP #$01                ; $23:C03B: C9 01
BNE CODE_23C054         ; $23:C03D: D0 15
LDA $069C               ; $23:C03F: AD 9C 06
CLC                     ; $23:C042: 18
ADC #$05                ; $23:C043: 69 05
STA $069C               ; $23:C045: 8D 9C 06
INC $0422               ; $23:C048: EE 22 04
LDA $7E3966             ; $23:C04B: AF 66 39 7E
INC A                   ; $23:C04F: 1A
STA $7E3966             ; $23:C050: 8F 66 39 7E

CODE_23C054:
LDA #$00                ; $23:C054: A9 00
STA $0585               ; $23:C056: 8D 85 05
LDX #$07                ; $23:C059: A2 07

CODE_23C05B:
LDA $0510,x             ; $23:C05B: BD 10 05
BEQ CODE_23C063         ; $23:C05E: F0 03
DEC $0510,x             ; $23:C060: DE 10 05

CODE_23C063:
DEX                     ; $23:C063: CA
BPL CODE_23C05B         ; $23:C064: 10 F5
LDA $0567               ; $23:C066: AD 67 05
BEQ CODE_23C089         ; $23:C069: F0 1E
CMP #$01                ; $23:C06B: C9 01
BNE CODE_23C080         ; $23:C06D: D0 11
LDY #$0D                ; $23:C06F: A0 0D
LDA $0553               ; $23:C071: AD 53 05
CMP #$20                ; $23:C074: C9 20
BCS CODE_23C07B         ; $23:C076: B0 03
LDY $1062               ; $23:C078: AC 62 10

CODE_23C07B:
STY $1202               ; $23:C07B: 8C 02 12
BNE CODE_23C086         ; $23:C07E: D0 06

CODE_23C080:
LDA $15                 ; $23:C080: A5 15
AND #$03                ; $23:C082: 29 03
BNE CODE_23C089         ; $23:C084: D0 03

CODE_23C086:
DEC $0567               ; $23:C086: CE 67 05

CODE_23C089:
RTL                     ; $23:C089: 6B

CODE_23C08A:
JSL CODE_20E237         ; $23:C08A: 22 37 E2 20
RTS                     ; $23:C08E: 60

CODE_23C08F:
STZ $058C               ; $23:C08F: 9C 8C 05
JSL CODE_20E856         ; $23:C092: 22 56 E8 20
LDA $0280               ; $23:C096: AD 80 02
BEQ CODE_23C09F         ; $23:C099: F0 04
STZ $17                 ; $23:C09B: 64 17
STZ $18                 ; $23:C09D: 64 18

CODE_23C09F:
LDA $0414               ; $23:C09F: AD 14 04
CMP #$03                ; $23:C0A2: C9 03
BEQ CODE_23C0C6         ; $23:C0A4: F0 20
LDA $07BE               ; $23:C0A6: AD BE 07
CMP #$03                ; $23:C0A9: C9 03
BCS CODE_23C0C6         ; $23:C0AB: B0 19
LDA $0556               ; $23:C0AD: AD 56 05
ORA $BF                 ; $23:C0B0: 05 BF
ORA $0554               ; $23:C0B2: 0D 54 05
ORA $0555               ; $23:C0B5: 0D 55 05

; Player growing/shrinking animation timer
ORA $0551               ; $23:C0B8: 0D 51 05
ORA $0559               ; $23:C0BB: 0D 59 05
ORA $0571               ; $23:C0BE: 0D 71 05
ORA $055A               ; $23:C0C1: 0D 5A 05
BEQ CODE_23C0CB         ; $23:C0C4: F0 05

CODE_23C0C6:
INC $058C               ; $23:C0C6: EE 8C 05
PLA                     ; $23:C0C9: 68
PLA                     ; $23:C0CA: 68

CODE_23C0CB:
RTS                     ; $23:C0CB: 60
RTS                     ; $23:C0CC: 60

CODE_23C0CD:
LDA $B9                 ; $23:C0CD: A5 B9
BEQ CODE_23C0D2         ; $23:C0CF: F0 01
RTS                     ; $23:C0D1: 60

CODE_23C0D2:
STA $0561               ; $23:C0D2: 8D 61 05
LDA #$50                ; $23:C0D5: A9 50
STA $C4                 ; $23:C0D7: 85 C4
STZ $C5                 ; $23:C0D9: 64 C5
LDX $0726               ; $23:C0DB: AE 26 07
LDA $0747,x             ; $23:C0DE: BD 47 07
STA $BB                 ; $23:C0E1: 85 BB
JSR CODE_23C467         ; $23:C0E3: 20 67 C4
LDA #$40                ; $23:C0E6: A9 40
STA $BD                 ; $23:C0E8: 85 BD
LDY $0426               ; $23:C0EA: AC 26 04

; Set player's starting X position within a level
LDA.w DATA_21EA01,y     ; $23:C0ED: B9 01 EA
STA $5E                 ; $23:C0F0: 85 5E
STA $B9                 ; $23:C0F2: 85 B9
JSR CODE_23C14C         ; $23:C0F4: 20 4C C1
LDA $0429               ; $23:C0F7: AD 29 04
CMP #$08                ; $23:C0FA: C9 08
BNE CODE_23C108         ; $23:C0FC: D0 0A
LDA #$7F                ; $23:C0FE: A9 7F
STA $0413               ; $23:C100: 8D 13 04
LDA #$FF                ; $23:C103: A9 FF
STA $056E               ; $23:C105: 8D 6E 05

CODE_23C108:
JSR CODE_23C1C9         ; $23:C108: 20 C9 C1

CODE_23C10B:
LDA $0425               ; $23:C10B: AD 25 04
BEQ CODE_23C130         ; $23:C10E: F0 20
LDY $55                 ; $23:C110: A4 55
LDA.w DATA_21CEED,y     ; $23:C112: B9 ED CE
STA $0542               ; $23:C115: 8D 42 05
LDA.w DATA_21CEFD,y     ; $23:C118: B9 FD CE
STA $0543               ; $23:C11B: 8D 43 05
LDA $70                 ; $23:C11E: A5 70
LDY $55                 ; $23:C120: A4 55
JSL CODE_209FD4         ; $23:C122: 22 D4 9F 20
STY $55                 ; $23:C126: 84 55
STA $70                 ; $23:C128: 85 70
LDA #$01                ; $23:C12A: A9 01
STA $0562               ; $23:C12C: 8D 62 05
RTS                     ; $23:C12F: 60

CODE_23C130:
LDA $0216               ; $23:C130: AD 16 02
STA $0543               ; $23:C133: 8D 43 05
LDA $13                 ; $23:C136: A5 13
STA $0542               ; $23:C138: 8D 42 05
RTS                     ; $23:C13B: 60

PNTR_23C13C:
dw CODE_23C173
dw CODE_23C167
dw CODE_23C174
dw CODE_23C17B
dw CODE_23C182
dw CODE_23C189
dw CODE_23C190
dw CODE_23C19F

CODE_23C14C:
PHB                     ; $23:C14C: 8B
PHK                     ; $23:C14D: 4B
PLB                     ; $23:C14E: AB
LDA $0545               ; $23:C14F: AD 45 05
ASL A                   ; $23:C152: 0A
TAY                     ; $23:C153: A8
LDA PNTR_23C13C,y       ; $23:C154: B9 3C C1
STA $00                 ; $23:C157: 85 00
LDA PNTR_23C13C+1,y     ; $23:C159: B9 3D C1
STA $01                 ; $23:C15C: 85 01
LDA #$00                ; $23:C15E: A9 00
STA $0545               ; $23:C160: 8D 45 05
PLB                     ; $23:C163: AB
JMP ($0000)             ; $23:C164: 6C 00 00

CODE_23C167:
LDY $BB                 ; $23:C167: A4 BB
LDA.w DATA_21AF64,y     ; $23:C169: B9 64 AF
AND #$02                ; $23:C16C: 29 02
BNE CODE_23C173         ; $23:C16E: D0 03
INC $0545               ; $23:C170: EE 45 05

CODE_23C173:
RTS                     ; $23:C173: 60

CODE_23C174:
LDA #$83                ; $23:C174: A9 83
LDY #$01                ; $23:C176: A0 01
JMP CODE_23C1BF         ; $23:C178: 4C BF C1

CODE_23C17B:
LDA #$82                ; $23:C17B: A9 82
LDY #$02                ; $23:C17D: A0 02
JMP CODE_23C1BF         ; $23:C17F: 4C BF C1

CODE_23C182:
LDA #$80                ; $23:C182: A9 80
LDY #$03                ; $23:C184: A0 03
JMP CODE_23C1BF         ; $23:C186: 4C BF C1

CODE_23C189:
LDA #$81                ; $23:C189: A9 81
LDY #$04                ; $23:C18B: A0 04
JMP CODE_23C1BF         ; $23:C18D: 4C BF C1

CODE_23C190:
LDA #$01                ; $23:C190: A9 01
STA $055A               ; $23:C192: 8D 5A 05
LDA #$06                ; $23:C195: A9 06
STA $0427               ; $23:C197: 8D 27 04
LSR A                   ; $23:C19A: 4A
STA $0216               ; $23:C19B: 8D 16 02
RTS                     ; $23:C19E: 60

CODE_23C19F:
LDA #$04                ; $23:C19F: A9 04
STA $055A               ; $23:C1A1: 8D 5A 05
LDA #$40                ; $23:C1A4: A9 40
STA $BD                 ; $23:C1A6: 85 BD
STA $A6                 ; $23:C1A8: 85 A6
LDA #$90                ; $23:C1AA: A9 90
STA $9D                 ; $23:C1AC: 85 9D
STA $5E                 ; $23:C1AE: 85 5E
LDA $0216               ; $23:C1B0: AD 16 02
CLC                     ; $23:C1B3: 18
ADC #$80                ; $23:C1B4: 69 80
STA $70                 ; $23:C1B6: 85 70
LDA #$00                ; $23:C1B8: A9 00
ADC #$00                ; $23:C1BA: 69 00
STA $55                 ; $23:C1BC: 85 55
RTS                     ; $23:C1BE: 60

CODE_23C1BF:
STA $0571               ; $23:C1BF: 8D 71 05
STY $0377               ; $23:C1C2: 8C 77 03
JSL CODE_23C227         ; $23:C1C5: 22 27 C2 23

CODE_23C1C9:
LDY #$01                ; $23:C1C9: A0 01
LDA $070A               ; $23:C1CB: AD 0A 07
CMP #$03                ; $23:C1CE: C9 03
BEQ CODE_23C1E3         ; $23:C1D0: F0 11
CMP #$0E                ; $23:C1D2: C9 0E
BEQ CODE_23C1E3         ; $23:C1D4: F0 0D
CMP #$05                ; $23:C1D6: C9 05
BNE CODE_23C1E1         ; $23:C1D8: D0 07
LDA $1E9E               ; $23:C1DA: AD 9E 1E
CMP #$02                ; $23:C1DD: C9 02
BEQ CODE_23C1E3         ; $23:C1DF: F0 02

CODE_23C1E1:
LDY #$00                ; $23:C1E1: A0 00

CODE_23C1E3:
STY $0563               ; $23:C1E3: 8C 63 05
RTS                     ; $23:C1E6: 60

CODE_23C1E7:
LDA $055F               ; $23:C1E7: AD 5F 05
BEQ CODE_23C226         ; $23:C1EA: F0 3A
LDA #$00                ; $23:C1EC: A9 00
STA $055F               ; $23:C1EE: 8D 5F 05
STA $0580               ; $23:C1F1: 8D 80 05
STA $05FC               ; $23:C1F4: 8D FC 05
STA $0569               ; $23:C1F7: 8D 69 05
STA $0561               ; $23:C1FA: 8D 61 05
JSR CODE_23C467         ; $23:C1FD: 20 67 C4
JSR CODE_23C10B         ; $23:C200: 20 0B C1
JSR CODE_23C1C9         ; $23:C203: 20 C9 C1
LDA $055A               ; $23:C206: AD 5A 05
BEQ CODE_23C215         ; $23:C209: F0 0A
LDA #$00                ; $23:C20B: A9 00
STA $8B                 ; $23:C20D: 85 8B
STA $0545               ; $23:C20F: 8D 45 05
JSR CODE_23C19F         ; $23:C212: 20 9F C1

CODE_23C215:
LDA $0545               ; $23:C215: AD 45 05
CMP #$06                ; $23:C218: C9 06
BNE CODE_23C21F         ; $23:C21A: D0 03
JSR CODE_23C190         ; $23:C21C: 20 90 C1

CODE_23C21F:
JSL CODE_23C227         ; $23:C21F: 22 27 C2 23
PLA                     ; $23:C223: 68
PLA                     ; $23:C224: 68
RTL                     ; $23:C225: 6B

CODE_23C226:
RTS                     ; $23:C226: 60

CODE_23C227:
LDA $0571               ; $23:C227: AD 71 05
BEQ CODE_23C260         ; $23:C22A: F0 34
LDA #$04                ; $23:C22C: A9 04
STA $1200               ; $23:C22E: 8D 00 12
LDA $5E                 ; $23:C231: A5 5E
STA $52                 ; $23:C233: 85 52
LDA $70                 ; $23:C235: A5 70
AND #$F0                ; $23:C237: 29 F0
STA $53                 ; $23:C239: 85 53
DEC $53                 ; $23:C23B: C6 53
LDA $0425               ; $23:C23D: AD 25 04
BNE CODE_23C24D         ; $23:C240: D0 0B
LDA $0216               ; $23:C242: AD 16 02
STA $0543               ; $23:C245: 8D 43 05
LDA $13                 ; $23:C248: A5 13
STA $0542               ; $23:C24A: 8D 42 05

CODE_23C24D:
LDA $0377               ; $23:C24D: AD 77 03
BNE CODE_23C257         ; $23:C250: D0 05
LDA #$02                ; $23:C252: A9 02
STA $0377               ; $23:C254: 8D 77 03

CODE_23C257:
AND #$0F                ; $23:C257: 29 0F
TAY                     ; $23:C259: A8
LDA.w DATA_21EA05,y     ; $23:C25A: B9 05 EA
STA $0510               ; $23:C25D: 8D 10 05

CODE_23C260:
RTL                     ; $23:C260: 6B

CODE_23C261:
LDA $0578               ; $23:C261: AD 78 05
BEQ CODE_23C2C2         ; $23:C264: F0 5C
CMP #$0F                ; $23:C266: C9 0F
BMI CODE_23C286         ; $23:C268: 30 1C
CMP #$80                ; $23:C26A: C9 80
BNE CODE_23C276         ; $23:C26C: D0 08
INC $0577               ; $23:C26E: EE 77 05
STZ $057A               ; $23:C271: 9C 7A 05
BRA CODE_23C2BA         ; $23:C274: 80 44

CODE_23C276:
CMP #$40                ; $23:C276: C9 40
BEQ CODE_23C281         ; $23:C278: F0 07
LDA #$C0                ; $23:C27A: A9 C0
STA $057A               ; $23:C27C: 8D 7A 05
BNE CODE_23C2BA         ; $23:C27F: D0 39

CODE_23C281:
INC $0575               ; $23:C281: EE 75 05
BNE CODE_23C2BA         ; $23:C284: D0 34

CODE_23C286:
AND #$0F                ; $23:C286: 29 0F
TAY                     ; $23:C288: A8
LDA $BB                 ; $23:C289: A5 BB
CMP #$02                ; $23:C28B: C9 02
BEQ CODE_23C293         ; $23:C28D: F0 04
CMP #$03                ; $23:C28F: C9 03
BNE CODE_23C2A2         ; $23:C291: D0 0F

CODE_23C293:
LDA $05EE               ; $23:C293: AD EE 05
ORA $05EF               ; $23:C296: 0D EF 05
ORA $05F0               ; $23:C299: 0D F0 05
BEQ CODE_23C29E         ; $23:C29C: F0 00

CODE_23C29E:
LDA #$20                ; $23:C29E: A9 20
BRA CODE_23C2A4         ; $23:C2A0: 80 02

CODE_23C2A2:
LDA #$00                ; $23:C2A2: A9 00

CODE_23C2A4:
STA $7FC586             ; $23:C2A4: 8F 86 C5 7F
DEY                     ; $23:C2A8: 88
STY $BB                 ; $23:C2A9: 84 BB
PHY                     ; $23:C2AB: 5A
PHX                     ; $23:C2AC: DA
JSR CODE_23CC62         ; $23:C2AD: 20 62 CC
LDA $BB                 ; $23:C2B0: A5 BB
LDX $0726               ; $23:C2B2: AE 26 07
STA $0747,x             ; $23:C2B5: 9D 47 07
PLX                     ; $23:C2B8: FA
PLY                     ; $23:C2B9: 7A

CODE_23C2BA:
LDA #$00                ; $23:C2BA: A9 00
STA $0578               ; $23:C2BC: 8D 78 05
JSR CODE_23C467         ; $23:C2BF: 20 67 C4

CODE_23C2C2:
LDA $BF                 ; $23:C2C2: A5 BF
ORA $0556               ; $23:C2C4: 0D 56 05
BNE CODE_23C33D         ; $23:C2C7: D0 74
LDA $07BE               ; $23:C2C9: AD BE 07
CMP #$03                ; $23:C2CC: C9 03
BPL CODE_23C33D         ; $23:C2CE: 10 6D
LDA $0544               ; $23:C2D0: AD 44 05
BNE CODE_23C2F0         ; $23:C2D3: D0 1B
LDA $82                 ; $23:C2D5: A5 82
AND #$F0                ; $23:C2D7: 29 F0
CMP #$C0                ; $23:C2D9: C9 C0
BNE CODE_23C2F0         ; $23:C2DB: D0 13
LDA #$00                ; $23:C2DD: A9 00
STA $BB                 ; $23:C2DF: 85 BB
JSL CODE_27A546         ; $23:C2E1: 22 46 A5 27
LDA #$C0                ; $23:C2E5: A9 C0
STA $0510               ; $23:C2E7: 8D 10 05
LDA #$02                ; $23:C2EA: A9 02
STA $BF                 ; $23:C2EC: 85 BF
BNE CODE_23C33D         ; $23:C2EE: D0 4D

CODE_23C2F0:
LDA $0160               ; $23:C2F0: AD 60 01
CMP #$80                ; $23:C2F3: C9 80
BEQ CODE_23C324         ; $23:C2F5: F0 2D
LDA $05F3               ; $23:C2F7: AD F3 05
AND #$7F                ; $23:C2FA: 29 7F
BNE CODE_23C33D         ; $23:C2FC: D0 3F
LDA $05EE               ; $23:C2FE: AD EE 05
ORA $05EF               ; $23:C301: 0D EF 05
ORA $05F0               ; $23:C304: 0D F0 05
BNE CODE_23C324         ; $23:C307: D0 1B
JSL CODE_27A546         ; $23:C309: 22 46 A5 27
LDA #$03                ; $23:C30D: A9 03
STA $BF                 ; $23:C30F: 85 BF
LDA #$FF                ; $23:C311: A9 FF
STA $52                 ; $23:C313: 85 52
STA $53                 ; $23:C315: 85 53

CODE_23C317:
LDA #$01                ; $23:C317: A9 01
STA $0578               ; $23:C319: 8D 78 05
LDA #$50                ; $23:C31C: A9 50
STA $0510               ; $23:C31E: 8D 10 05
JMP CODE_23C33D         ; $23:C321: 4C 3D C3

CODE_23C324:
LDA $79                 ; $23:C324: A5 79
CMP #$F8                ; $23:C326: C9 F8
BCC CODE_23C33D         ; $23:C328: 90 13
LDA $0425               ; $23:C32A: AD 25 04
ORA $0559               ; $23:C32D: 0D 59 05
BNE CODE_23C33D         ; $23:C330: D0 0B
JSL CODE_27A546         ; $23:C332: 22 46 A5 27
LDA #$01                ; $23:C336: A9 01
STA $BF                 ; $23:C338: 85 BF
JMP CODE_23C317         ; $23:C33A: 4C 17 C3

CODE_23C33D:
JSR CODE_23C08F         ; $23:C33D: 20 8F C0
LDA $700007             ; $23:C340: AF 07 00 70
BEQ CODE_23C37D         ; $23:C344: F0 37
LDA $F6                 ; $23:C346: A5 F6
ORA $F7                 ; $23:C348: 05 F7
AND #$20                ; $23:C34A: 29 20
BEQ CODE_23C35B         ; $23:C34C: F0 0D
LDA #$E0                ; $23:C34E: A9 E0
STA $0553               ; $23:C350: 8D 53 05
LDA #$03                ; $23:C353: A9 03
STA $02C6               ; $23:C355: 8D C6 02
STZ $02C7               ; $23:C358: 9C C7 02

CODE_23C35B:
LDA $F8                 ; $23:C35B: A5 F8
ORA $F9                 ; $23:C35D: 05 F9
AND #$80                ; $23:C35F: 29 80
BEQ CODE_23C36B         ; $23:C361: F0 08
LDA $023D               ; $23:C363: AD 3D 02
EOR #$01                ; $23:C366: 49 01
STA $023D               ; $23:C368: 8D 3D 02

CODE_23C36B:
LDA $F8                 ; $23:C36B: A5 F8
ORA $F9                 ; $23:C36D: 05 F9
AND #$40                ; $23:C36F: 29 40
BEQ CODE_23C37D         ; $23:C371: F0 0A
INC $BB                 ; $23:C373: E6 BB
LDA $BB                 ; $23:C375: A5 BB
CMP #$07                ; $23:C377: C9 07
BNE CODE_23C37D         ; $23:C379: D0 02
STZ $BB                 ; $23:C37B: 64 BB

CODE_23C37D:
LDA $1EBF               ; $23:C37D: AD BF 1E
CMP #$16                ; $23:C380: C9 16
BNE CODE_23C390         ; $23:C382: D0 0C
STZ $F2                 ; $23:C384: 64 F2
STZ $F6                 ; $23:C386: 64 F6
STZ $F3                 ; $23:C388: 64 F3
STZ $F7                 ; $23:C38A: 64 F7
STZ $17                 ; $23:C38C: 64 17
STZ $18                 ; $23:C38E: 64 18

CODE_23C390:
JSR CODE_23C4FA         ; $23:C390: 20 FA C4
JSR CODE_23C3DE         ; $23:C393: 20 DE C3
JSL CODE_23CFCA         ; $23:C396: 22 CA CF 23
JSL CODE_27A93C         ; $23:C39A: 22 3C A9 27
JSR CODE_23D364         ; $23:C39E: 20 64 D3
JSR CODE_23D810         ; $23:C3A1: 20 10 D8
JSR CODE_23DAF9         ; $23:C3A4: 20 F9 DA
JSR CODE_23C3BC         ; $23:C3A7: 20 BC C3
LDA $BC                 ; $23:C3AA: A5 BC
CMP #$2E                ; $23:C3AC: C9 2E
BEQ CODE_23C3B3         ; $23:C3AE: F0 03
JSR CODE_23CD71         ; $23:C3B0: 20 71 CD

CODE_23C3B3:
JSR CODE_23C08A         ; $23:C3B3: 20 8A C0
LDA #$00                ; $23:C3B6: A9 00
STA $1020               ; $23:C3B8: 8D 20 10
RTS                     ; $23:C3BB: 60

CODE_23C3BC:
LDA $1CF3               ; $23:C3BC: AD F3 1C
BEQ CODE_23C3DA         ; $23:C3BF: F0 19
DEC $1CF3               ; $23:C3C1: CE F3 1C
AND #$03                ; $23:C3C4: 29 03
LDY $0216               ; $23:C3C6: AC 16 02
BPL CODE_23C3CD         ; $23:C3C9: 10 02
ORA #$04                ; $23:C3CB: 09 04

CODE_23C3CD:
TAY                     ; $23:C3CD: A8
LDA.w DATA_21EA0A,y     ; $23:C3CE: B9 0A EA
PHA                     ; $23:C3D1: 48
CLC                     ; $23:C3D2: 18
ADC $0543               ; $23:C3D3: 6D 43 05
STA $0543               ; $23:C3D6: 8D 43 05
PLA                     ; $23:C3D9: 68

CODE_23C3DA:
STA $1CF2               ; $23:C3DA: 8D F2 1C
RTS                     ; $23:C3DD: 60

CODE_23C3DE:
LDY $056E               ; $23:C3DE: AC 6E 05
BEQ CODE_23C40C         ; $23:C3E1: F0 29
CPY #$FF                ; $23:C3E3: C0 FF
BEQ CODE_23C3F7         ; $23:C3E5: F0 10
LDA $15                 ; $23:C3E7: A5 15
AND #$01                ; $23:C3E9: 29 01
BEQ CODE_23C3F1         ; $23:C3EB: F0 04
DEY                     ; $23:C3ED: 88
STY $056E               ; $23:C3EE: 8C 6E 05

CODE_23C3F1:
TYA                     ; $23:C3F1: 98
BNE CODE_23C3F7         ; $23:C3F2: D0 03
STY $0413               ; $23:C3F4: 8C 13 04

CODE_23C3F7:
LDA $02D8               ; $23:C3F7: AD D8 02
BNE CODE_23C40B         ; $23:C3FA: D0 0F
DEC $02E0               ; $23:C3FC: CE E0 02
BPL CODE_23C40B         ; $23:C3FF: 10 0A
LDA #$06                ; $23:C401: A9 06
STA $02E0               ; $23:C403: 8D E0 02
LDA #$41                ; $23:C406: A9 41
STA $1200               ; $23:C408: 8D 00 12

CODE_23C40B:
RTS                     ; $23:C40B: 60

CODE_23C40C:
LDA $0413               ; $23:C40C: AD 13 04
CMP #$7F                ; $23:C40F: C9 7F
BNE CODE_23C420         ; $23:C411: D0 0D
JSR CODE_23C3F7         ; $23:C413: 20 F7 C3
LDA $057B               ; $23:C416: AD 7B 05
BEQ CODE_23C420         ; $23:C419: F0 05
LDY #$10                ; $23:C41B: A0 10
JMP CODE_23C442         ; $23:C41D: 4C 42 C4

CODE_23C420:
LDA $0515               ; $23:C420: AD 15 05
BNE CODE_23C44B         ; $23:C423: D0 26
SEC                     ; $23:C425: 38
ROL $0413               ; $23:C426: 2E 13 04
LDA $057B               ; $23:C429: AD 7B 05
BNE CODE_23C434         ; $23:C42C: D0 06
ROR $0413               ; $23:C42E: 6E 13 04
LSR $0413               ; $23:C431: 4E 13 04

CODE_23C434:
LDY #$18                ; $23:C434: A0 18
LDA $0413               ; $23:C436: AD 13 04
BEQ CODE_23C448         ; $23:C439: F0 0D
LDA $057B               ; $23:C43B: AD 7B 05
BEQ CODE_23C442         ; $23:C43E: F0 02
LDY #$08                ; $23:C440: A0 08

CODE_23C442:
STY $0515               ; $23:C442: 8C 15 05
JMP CODE_23C44B         ; $23:C445: 4C 4B C4

CODE_23C448:
STA $056E               ; $23:C448: 8D 6E 05

CODE_23C44B:
LDA #$00                ; $23:C44B: A9 00
STA $057B               ; $23:C44D: 8D 7B 05
RTS                     ; $23:C450: 60

PNTR_23C451:
dw DATA_3C88A0
dw DATA_3C88E0
dw DATA_3C8920
dw DATA_3C88A0
dw DATA_3C88E0
dw DATA_3C88C0
dw DATA_3C8900
dw DATA_3C88C0
dw DATA_3C8940

CODE_23C463:
JSR CODE_23C467         ; $23:C463: 20 67 C4
RTL                     ; $23:C466: 6B

CODE_23C467:
LDY #$07                ; $23:C467: A0 07
LDA $0726               ; $23:C469: AD 26 07
BEQ CODE_23C477         ; $23:C46C: F0 09
LDA $BB                 ; $23:C46E: A5 BB
CMP #$02                ; $23:C470: C9 02
BNE CODE_23C477         ; $23:C472: D0 03
INY                     ; $23:C474: C8
BRA CODE_23C48A         ; $23:C475: 80 13

CODE_23C477:
LDA $057A               ; $23:C477: AD 7A 05
BNE CODE_23C48A         ; $23:C47A: D0 0E
LDA $BB                 ; $23:C47C: A5 BB
TAY                     ; $23:C47E: A8
CMP #$03                ; $23:C47F: C9 03
BEQ CODE_23C487         ; $23:C481: F0 04
CMP #$02                ; $23:C483: C9 02
BPL CODE_23C48A         ; $23:C485: 10 03

CODE_23C487:
LDY $0726               ; $23:C487: AC 26 07

CODE_23C48A:
PHX                     ; $23:C48A: DA
REP #$30                ; $23:C48B: C2 30
TYA                     ; $23:C48D: 98
AND #$00FF              ; $23:C48E: 29 FF 00
ASL A                   ; $23:C491: 0A
TAX                     ; $23:C492: AA
LDA.l PNTR_23C451,x     ; $23:C493: BF 51 C4 23
PHB                     ; $23:C497: 8B
TAX                     ; $23:C498: AA
LDY #$14E0              ; $23:C499: A0 E0 14
LDA #$001F              ; $23:C49C: A9 1F 00

; first data pointer in above table
MVN $00,DATA_3C88A0>>16 ; $23:C49F: 54 00 3C
PLB                     ; $23:C4A2: AB
LDX #$001E              ; $23:C4A3: A2 1E 00

CODE_23C4A6:
LDA $14E0,x             ; $23:C4A6: BD E0 14
STA $7FC500,x           ; $23:C4A9: 9F 00 C5 7F
DEX                     ; $23:C4AD: CA
DEX                     ; $23:C4AE: CA
BPL CODE_23C4A6         ; $23:C4AF: 10 F5
SEP #$30                ; $23:C4B1: E2 30
PLX                     ; $23:C4B3: FA
LDA #$01                ; $23:C4B4: A9 01
STA $1500               ; $23:C4B6: 8D 00 15
RTS                     ; $23:C4B9: 60

CODE_23C4BA:
LDY #$01                ; $23:C4BA: A0 01
STY $0E                 ; $23:C4BC: 84 0E
LDA $0584               ; $23:C4BE: AD 84 05
AND.w DATA_21EB1E,x     ; $23:C4C1: 3D 1E EB
BNE CODE_23C4F8         ; $23:C4C4: D0 32
LDA $00,x               ; $23:C4C6: B5 00
ASL A                   ; $23:C4C8: 0A
ROL A                   ; $23:C4C9: 2A
ROL A                   ; $23:C4CA: 2A
AND #$03                ; $23:C4CB: 29 03
TAY                     ; $23:C4CD: A8
LDA $00,x               ; $23:C4CE: B5 00
CMP $1E96,y             ; $23:C4D0: D9 96 1E
BCS CODE_23C4F9         ; $23:C4D3: B0 24
CMP #$D7                ; $23:C4D5: C9 D7
BNE CODE_23C4DD         ; $23:C4D7: D0 04
LDY #$00                ; $23:C4D9: A0 00
BEQ CODE_23C4F6         ; $23:C4DB: F0 19

CODE_23C4DD:
TYA                     ; $23:C4DD: 98
ORA $02                 ; $23:C4DE: 05 02
TAY                     ; $23:C4E0: A8
LDA.w DATA_21AD84,y     ; $23:C4E1: B9 84 AD
LDY #$00                ; $23:C4E4: A0 00
CMP $00,x               ; $23:C4E6: D5 00
BCS CODE_23C4F6         ; $23:C4E8: B0 0C
INY                     ; $23:C4EA: C8
LDA $00,x               ; $23:C4EB: B5 00
CMP #$E0                ; $23:C4ED: C9 E0
BEQ CODE_23C4F5         ; $23:C4EF: F0 04
CMP #$E1                ; $23:C4F1: C9 E1
BNE CODE_23C4F6         ; $23:C4F3: D0 01

CODE_23C4F5:
INY                     ; $23:C4F5: C8

CODE_23C4F6:
STY $0E                 ; $23:C4F6: 84 0E

CODE_23C4F8:
CLC                     ; $23:C4F8: 18

CODE_23C4F9:
RTS                     ; $23:C4F9: 60

CODE_23C4FA:
LDA $700007             ; $23:C4FA: AF 07 00 70
BEQ CODE_23C538         ; $23:C4FE: F0 38
LDA $023D               ; $23:C500: AD 3D 02
BEQ CODE_23C538         ; $23:C503: F0 33
STZ $8B                 ; $23:C505: 64 8B
STZ $9D                 ; $23:C507: 64 9D
LDX #$C0                ; $23:C509: A2 C0
LDA $F2                 ; $23:C50B: A5 F2
ORA $F3                 ; $23:C50D: 05 F3
AND #$03                ; $23:C50F: 29 03
BEQ CODE_23C51B         ; $23:C511: F0 08
AND #$02                ; $23:C513: 29 02
BNE CODE_23C519         ; $23:C515: D0 02
LDX #$30                ; $23:C517: A2 30

CODE_23C519:
STX $8B                 ; $23:C519: 86 8B

CODE_23C51B:
LDX #$C0                ; $23:C51B: A2 C0
LDA $F2                 ; $23:C51D: A5 F2
ORA $F3                 ; $23:C51F: 05 F3
AND #$0C                ; $23:C521: 29 0C
BEQ CODE_23C52D         ; $23:C523: F0 08
AND #$08                ; $23:C525: 29 08
BNE CODE_23C52B         ; $23:C527: D0 02
LDX #$30                ; $23:C529: A2 30

CODE_23C52B:
STX $9D                 ; $23:C52B: 86 9D

CODE_23C52D:
JSL CODE_23DE53         ; $23:C52D: 22 53 DE 23
JSL CODE_23DEA3         ; $23:C531: 22 A3 DE 23
JMP CODE_23C08A         ; $23:C535: 4C 8A C0

CODE_23C538:
LDA $BD                 ; $23:C538: A5 BD
STA $056C               ; $23:C53A: 8D 6C 05
LDA $0559               ; $23:C53D: AD 59 05
BNE CODE_23C54A         ; $23:C540: D0 08
LDA $1CF4               ; $23:C542: AD F4 1C
BEQ CODE_23C552         ; $23:C545: F0 0B
DEC $1CF4               ; $23:C547: CE F4 1C

CODE_23C54A:
LDA #$00                ; $23:C54A: A9 00
STA $8B                 ; $23:C54C: 85 8B
STA $17                 ; $23:C54E: 85 17
STA $18                 ; $23:C550: 85 18

CODE_23C552:
LDA $0545               ; $23:C552: AD 45 05
BEQ CODE_23C55D         ; $23:C555: F0 06
LDA $18                 ; $23:C557: A5 18
AND #$BF                ; $23:C559: 29 BF
STA $18                 ; $23:C55B: 85 18

CODE_23C55D:
LDY $BB                 ; $23:C55D: A4 BB
BEQ CODE_23C579         ; $23:C55F: F0 18
CPY #$04                ; $23:C561: C0 04
BEQ CODE_23C579         ; $23:C563: F0 14
LDA $06A4               ; $23:C565: AD A4 06
ORA $0545               ; $23:C568: 0D 45 05
ORA $0577               ; $23:C56B: 0D 77 05
BNE CODE_23C579         ; $23:C56E: D0 09
LDA $A6                 ; $23:C570: A5 A6
BEQ CODE_23C587         ; $23:C572: F0 13
LDA $0575               ; $23:C574: AD 75 05
BEQ CODE_23C580         ; $23:C577: F0 07

CODE_23C579:
LDA #$00                ; $23:C579: A9 00
STA $056F               ; $23:C57B: 8D 6F 05
BEQ CODE_23C5A1         ; $23:C57E: F0 21

CODE_23C580:
LDA $056F               ; $23:C580: AD 6F 05
BNE CODE_23C59E         ; $23:C583: D0 19
BEQ CODE_23C5A1         ; $23:C585: F0 1A

CODE_23C587:
LDA #$00                ; $23:C587: A9 00
STA $056F               ; $23:C589: 8D 6F 05
LDA $0563               ; $23:C58C: AD 63 05
BEQ CODE_23C596         ; $23:C58F: F0 05
LDA $0569               ; $23:C591: AD 69 05
BNE CODE_23C5A1         ; $23:C594: D0 0B

CODE_23C596:
LDA $17                 ; $23:C596: A5 17
AND #$0F                ; $23:C598: 29 0F
CMP #$04                ; $23:C59A: C9 04
BNE CODE_23C5A1         ; $23:C59C: D0 03

CODE_23C59E:
STY $056F               ; $23:C59E: 8C 6F 05

CODE_23C5A1:
LDY #$14                ; $23:C5A1: A0 14
LDA $BB                 ; $23:C5A3: A5 BB
BEQ CODE_23C5AE         ; $23:C5A5: F0 07
LDA $056F               ; $23:C5A7: AD 6F 05
BNE CODE_23C5AE         ; $23:C5AA: D0 02
LDY #$0A                ; $23:C5AC: A0 0A

CODE_23C5AE:
STY $09                 ; $23:C5AE: 84 09
LDA #$08                ; $23:C5B0: A9 08
STA $0A                 ; $23:C5B2: 85 0A
JSL CODE_23D2B6         ; $23:C5B4: 22 B6 D2 23
STA $0602               ; $23:C5B8: 8D 02 06
STA $00                 ; $23:C5BB: 85 00
LDA $0603               ; $23:C5BD: AD 03 06
STA $01                 ; $23:C5C0: 85 01
LDA $0588               ; $23:C5C2: AD 88 05
STA $0587               ; $23:C5C5: 8D 87 05
BEQ CODE_23C5EA         ; $23:C5C8: F0 20
LDA $15                 ; $23:C5CA: A5 15
LSR A                   ; $23:C5CC: 4A
BCC CODE_23C5D2         ; $23:C5CD: 90 03
DEC $0588               ; $23:C5CF: CE 88 05

CODE_23C5D2:
LDY #$00                ; $23:C5D2: A0 00
LDA $00                 ; $23:C5D4: A5 00
CMP #$41                ; $23:C5D6: C9 41
BEQ CODE_23C5E7         ; $23:C5D8: F0 0D
CMP #$80                ; $23:C5DA: C9 80
BEQ CODE_23C5E7         ; $23:C5DC: F0 09
INY                     ; $23:C5DE: C8
LDA $0588               ; $23:C5DF: AD 88 05
BNE CODE_23C5E7         ; $23:C5E2: D0 03
STY $0588               ; $23:C5E4: 8C 88 05

CODE_23C5E7:
STY $0587               ; $23:C5E7: 8C 87 05

CODE_23C5EA:
LDA $00                 ; $23:C5EA: A5 00
AND #$C0                ; $23:C5EC: 29 C0
ASL A                   ; $23:C5EE: 0A
ROL A                   ; $23:C5EF: 2A
ROL A                   ; $23:C5F0: 2A
TAY                     ; $23:C5F1: A8
LDA $00                 ; $23:C5F2: A5 00
CMP $1E9A,y             ; $23:C5F4: D9 9A 1E
BCC CODE_23C619         ; $23:C5F7: 90 20
LDA $A6                 ; $23:C5F9: A5 A6
ORA $0575               ; $23:C5FB: 0D 75 05
ORA $0571               ; $23:C5FE: 0D 71 05
BNE CODE_23C619         ; $23:C601: D0 16
STA $8B                 ; $23:C603: 85 8B
STA $18                 ; $23:C605: 85 18
AND #$7F                ; $23:C607: 29 7F
STA $18                 ; $23:C609: 85 18
LDA #$01                ; $23:C60B: A9 01
STA $0585               ; $23:C60D: 8D 85 05
CLC                     ; $23:C610: 18
ADC $5E                 ; $23:C611: 65 5E
STA $5E                 ; $23:C613: 85 5E
BCC CODE_23C619         ; $23:C615: 90 02
INC $43                 ; $23:C617: E6 43

CODE_23C619:
LDA $0560               ; $23:C619: AD 60 05
ASL A                   ; $23:C61C: 0A
ASL A                   ; $23:C61D: 0A
STA $02                 ; $23:C61E: 85 02
LDX #$00                ; $23:C620: A2 00
JSR CODE_23C4BA         ; $23:C622: 20 BA C4
BCS CODE_23C62A         ; $23:C625: B0 03
TYA                     ; $23:C627: 98
BNE CODE_23C67E         ; $23:C628: D0 54

CODE_23C62A:
LDA $0575               ; $23:C62A: AD 75 05
BEQ CODE_23C694         ; $23:C62D: F0 65
LDA $A6                 ; $23:C62F: A5 A6
BNE CODE_23C637         ; $23:C631: D0 04
BCS CODE_23C694         ; $23:C633: B0 5F
BCC CODE_23C677         ; $23:C635: 90 40

CODE_23C637:
BCS CODE_23C63D         ; $23:C637: B0 04
LDA $9D                 ; $23:C639: A5 9D
BMI CODE_23C64E         ; $23:C63B: 30 11

CODE_23C63D:
ROR A                   ; $23:C63D: 6A
STA $0F                 ; $23:C63E: 85 0F
LDX #$01                ; $23:C640: A2 01
JSR CODE_23C4BA         ; $23:C642: 20 BA C4
BCS CODE_23C64A         ; $23:C645: B0 03
TYA                     ; $23:C647: 98
BEQ CODE_23C677         ; $23:C648: F0 2D

CODE_23C64A:
LDA $0F                 ; $23:C64A: A5 0F
BMI CODE_23C67E         ; $23:C64C: 30 30

CODE_23C64E:
LDY $9D                 ; $23:C64E: A4 9D
CPY #$F4                ; $23:C650: C0 F4
BPL CODE_23C656         ; $23:C652: 10 02
LDY #$F4                ; $23:C654: A0 F4

CODE_23C656:
LDA $15                 ; $23:C656: A5 15
AND #$07                ; $23:C658: 29 07
BNE CODE_23C65D         ; $23:C65A: D0 01
INY                     ; $23:C65C: C8

CODE_23C65D:
STY $9D                 ; $23:C65D: 84 9D
LDA $18                 ; $23:C65F: A5 18
AND #$7F                ; $23:C661: 29 7F
STA $18                 ; $23:C663: 85 18
LDA $17                 ; $23:C665: A5 17
TAY                     ; $23:C667: A8
AND #$F7                ; $23:C668: 29 F7
STA $17                 ; $23:C66A: 85 17
TYA                     ; $23:C66C: 98
AND #$88                ; $23:C66D: 29 88
CMP #$88                ; $23:C66F: C9 88
BNE CODE_23C694         ; $23:C671: D0 21
LDA #$CC                ; $23:C673: A9 CC
STA $9D                 ; $23:C675: 85 9D

CODE_23C677:
LDY #$00                ; $23:C677: A0 00
STY $0576               ; $23:C679: 8C 76 05
BEQ CODE_23C685         ; $23:C67C: F0 07

CODE_23C67E:
LDY $0E                 ; $23:C67E: A4 0E
CPY $0575               ; $23:C680: CC 75 05
BEQ CODE_23C694         ; $23:C683: F0 0F

CODE_23C685:
TYA                     ; $23:C685: 98
ORA $0575               ; $23:C686: 0D 75 05
STY $0575               ; $23:C689: 8C 75 05
CMP #$02                ; $23:C68C: C9 02
BEQ CODE_23C694         ; $23:C68E: F0 04
JSL CODE_23BF00         ; $23:C690: 22 00 BF 23

CODE_23C694:
LDA $BD                 ; $23:C694: A5 BD
AND #$7F                ; $23:C696: 29 7F
STA $BD                 ; $23:C698: 85 BD
LDX #$00                ; $23:C69A: A2 00
LDY $0560               ; $23:C69C: AC 60 05
LDA #$43                ; $23:C69F: A9 43
SEC                     ; $23:C6A1: 38
SBC $00                 ; $23:C6A2: E5 00
BEQ CODE_23C6AF         ; $23:C6A4: F0 09
CPY #$01                ; $23:C6A6: C0 01
BNE CODE_23C704         ; $23:C6A8: D0 5A
CMP #$01                ; $23:C6AA: C9 01
BNE CODE_23C704         ; $23:C6AC: D0 56
INX                     ; $23:C6AE: E8

CODE_23C6AF:
LDA $18                 ; $23:C6AF: A5 18
AND #$08                ; $23:C6B1: 29 08
BEQ CODE_23C704         ; $23:C6B3: F0 4F
LDA $A6                 ; $23:C6B5: A5 A6
BNE CODE_23C704         ; $23:C6B7: D0 4B
LDY #$01                ; $23:C6B9: A0 01
LDA $0379               ; $23:C6BB: AD 79 03
BEQ CODE_23C6C2         ; $23:C6BE: F0 02
LDY #$03                ; $23:C6C0: A0 03

CODE_23C6C2:
STY $0414               ; $23:C6C2: 8C 14 04
STZ $0713               ; $23:C6C5: 9C 13 07
STZ $8B                 ; $23:C6C8: 64 8B
STZ $034E               ; $23:C6CA: 9C 4E 03
CPX #$01                ; $23:C6CD: E0 01
BEQ CODE_23C704         ; $23:C6CF: F0 33
LDA $43                 ; $23:C6D1: A5 43
STA $D9                 ; $23:C6D3: 85 D9
XBA                     ; $23:C6D5: EB
LDA $5E                 ; $23:C6D6: A5 5E
STA $D8                 ; $23:C6D8: 85 D8
REP #$30                ; $23:C6DA: C2 30
LDY #$0000              ; $23:C6DC: A0 00 00
AND #$0008              ; $23:C6DF: 29 08 00
BEQ CODE_23C6E7         ; $23:C6E2: F0 03
LDY #$0010              ; $23:C6E4: A0 10 00

CODE_23C6E7:
TYA                     ; $23:C6E7: 98
CLC                     ; $23:C6E8: 18
ADC $D8                 ; $23:C6E9: 65 D8
AND #$FFF0              ; $23:C6EB: 29 F0 FF
SEP #$30                ; $23:C6EE: E2 30
STA $5E                 ; $23:C6F0: 85 5E
XBA                     ; $23:C6F2: EB
STA $43                 ; $23:C6F3: 85 43
LDY #$01                ; $23:C6F5: A0 01
STY $034E               ; $23:C6F7: 8C 4E 03
LDY #$0F                ; $23:C6FA: A0 0F
STY $1203               ; $23:C6FC: 8C 03 12
PHX                     ; $23:C6FF: DA
JSR CODE_23DEB6         ; $23:C700: 20 B6 DE
PLX                     ; $23:C703: FA

CODE_23C704:
LDA $0575               ; $23:C704: AD 75 05
ORA $06A4               ; $23:C707: 0D A4 06
ORA $0577               ; $23:C70A: 0D 77 05
BNE CODE_23C728         ; $23:C70D: D0 19
LDA $00                 ; $23:C70F: A5 00
CMP #$85                ; $23:C711: C9 85
BNE CODE_23C728         ; $23:C713: D0 13
LDA $056B               ; $23:C715: AD 6B 05
BNE CODE_23C730         ; $23:C718: D0 16
LDA $17                 ; $23:C71A: A5 17
AND #$0C                ; $23:C71C: 29 0C
BEQ CODE_23C728         ; $23:C71E: F0 08
LDY $A6                 ; $23:C720: A4 A6
BNE CODE_23C730         ; $23:C722: D0 0C
AND #$08                ; $23:C724: 29 08
BNE CODE_23C730         ; $23:C726: D0 08

CODE_23C728:
LDA #$00                ; $23:C728: A9 00
STA $056B               ; $23:C72A: 8D 6B 05
JMP CODE_23C79F         ; $23:C72D: 4C 9F C7

CODE_23C730:
LDA #$01                ; $23:C730: A9 01
STA $056B               ; $23:C732: 8D 6B 05
LDA #$00                ; $23:C735: A9 00
STA $8B                 ; $23:C737: 85 8B
STA $9D                 ; $23:C739: 85 9D
LDY #$10                ; $23:C73B: A0 10
LDA $17                 ; $23:C73D: A5 17
AND #$0C                ; $23:C73F: 29 0C
BEQ CODE_23C76E         ; $23:C741: F0 2B
AND #$08                ; $23:C743: 29 08
BEQ CODE_23C76C         ; $23:C745: F0 25
LDA $15                 ; $23:C747: A5 15
AND #$07                ; $23:C749: 29 07
BNE CODE_23C752         ; $23:C74B: D0 05
LDA #$30                ; $23:C74D: A9 30
STA $1200               ; $23:C74F: 8D 00 12

CODE_23C752:
LDY #$10                ; $23:C752: A0 10
LDA $BB                 ; $23:C754: A5 BB
BEQ CODE_23C75A         ; $23:C756: F0 02
LDY #$00                ; $23:C758: A0 00

CODE_23C75A:
STY $09                 ; $23:C75A: 84 09
LDA #$08                ; $23:C75C: A9 08
STA $0A                 ; $23:C75E: 85 0A
JSL CODE_23D2B6         ; $23:C760: 22 B6 D2 23
CMP #$85                ; $23:C764: C9 85
BNE CODE_23C76E         ; $23:C766: D0 06
LDY #$F0                ; $23:C768: A0 F0
STY $A6                 ; $23:C76A: 84 A6

CODE_23C76C:
STY $9D                 ; $23:C76C: 84 9D

CODE_23C76E:
LDY #$10                ; $23:C76E: A0 10
LDA $17                 ; $23:C770: A5 17
AND #$03                ; $23:C772: 29 03
BEQ CODE_23C77E         ; $23:C774: F0 08
AND #$02                ; $23:C776: 29 02
BEQ CODE_23C77C         ; $23:C778: F0 02
LDY #$F0                ; $23:C77A: A0 F0

CODE_23C77C:
STY $8B                 ; $23:C77C: 84 8B

CODE_23C77E:
LDA $056B               ; $23:C77E: AD 6B 05
BEQ CODE_23C790         ; $23:C781: F0 0D
LDA $A6                 ; $23:C783: A5 A6
BNE CODE_23C790         ; $23:C785: D0 09
LDA $17                 ; $23:C787: A5 17
AND #$0C                ; $23:C789: 29 0C
BNE CODE_23C790         ; $23:C78B: D0 03
STA $056B               ; $23:C78D: 8D 6B 05

CODE_23C790:
JSL CODE_23DE53         ; $23:C790: 22 53 DE 23
JSL CODE_23DEA3         ; $23:C794: 22 A3 DE 23
JSR CODE_23CECA         ; $23:C798: 20 CA CE
JSR CODE_23C08A         ; $23:C79B: 20 8A C0
RTS                     ; $23:C79E: 60

CODE_23C79F:
LDA $0569               ; $23:C79F: AD 69 05
BEQ CODE_23C7AC         ; $23:C7A2: F0 08
LDA $8B                 ; $23:C7A4: A5 8B
CLC                     ; $23:C7A6: 18
ADC $0569               ; $23:C7A7: 6D 69 05
STA $8B                 ; $23:C7AA: 85 8B

CODE_23C7AC:
JSL CODE_23DE53         ; $23:C7AC: 22 53 DE 23
LDA $0569               ; $23:C7B0: AD 69 05
BEQ CODE_23C7BD         ; $23:C7B3: F0 08
LDA $8B                 ; $23:C7B5: A5 8B
SEC                     ; $23:C7B7: 38
SBC $0569               ; $23:C7B8: ED 69 05
STA $8B                 ; $23:C7BB: 85 8B

CODE_23C7BD:
LDA #$00                ; $23:C7BD: A9 00
STA $0569               ; $23:C7BF: 8D 69 05
LDY #$02                ; $23:C7C2: A0 02
LDA $8B                 ; $23:C7C4: A5 8B
BPL CODE_23C7CD         ; $23:C7C6: 10 05

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $23:C7C8: 22 59 A8 27
DEY                     ; $23:C7CC: 88

CODE_23C7CD:
BNE CODE_23C7D0         ; $23:C7CD: D0 01
TAY                     ; $23:C7CF: A8

CODE_23C7D0:
STA $02                 ; $23:C7D0: 85 02
STY $0573               ; $23:C7D2: 8C 73 05
LDA $A6                 ; $23:C7D5: A5 A6
BEQ CODE_23C7E9         ; $23:C7D7: F0 10
LDA $55                 ; $23:C7D9: A5 55
BPL CODE_23C7E5         ; $23:C7DB: 10 08
LDA $70                 ; $23:C7DD: A5 70
BMI CODE_23C7E5         ; $23:C7DF: 30 04
LDA $9D                 ; $23:C7E1: A5 9D
BMI CODE_23C7E9         ; $23:C7E3: 30 04

CODE_23C7E5:
JSL CODE_23DEA3         ; $23:C7E5: 22 A3 DE 23

CODE_23C7E9:
JSR CODE_23CC62         ; $23:C7E9: 20 62 CC
LDA $0577               ; $23:C7EC: AD 77 05
BEQ CODE_23C7F5         ; $23:C7EF: F0 04
LDA #$0E                ; $23:C7F1: A9 0E
BNE CODE_23C7FF         ; $23:C7F3: D0 0A

CODE_23C7F5:
LDA $BB                 ; $23:C7F5: A5 BB
LDY $0575               ; $23:C7F7: AC 75 05
BEQ CODE_23C7FF         ; $23:C7FA: F0 03
CLC                     ; $23:C7FC: 18
ADC #$07                ; $23:C7FD: 69 07

CODE_23C7FF:
PHX                     ; $23:C7FF: DA
ASL A                   ; $23:C800: 0A
TAX                     ; $23:C801: AA
PHB                     ; $23:C802: 8B
PHK                     ; $23:C803: 4B
PLB                     ; $23:C804: AB
LDA.l PNTR_23C816,x     ; $23:C805: BF 16 C8 23
STA $00                 ; $23:C809: 85 00
LDA.l PNTR_23C816+1,x   ; $23:C80B: BF 17 C8 23
STA $01                 ; $23:C80F: 85 01
PLB                     ; $23:C811: AB
PLX                     ; $23:C812: FA
JMP ($0000)             ; $23:C813: 6C 00 00

PNTR_23C816:
dw CODE_23C834
dw CODE_23C85F
dw CODE_23C86A
dw CODE_23C884
dw CODE_23C892
dw CODE_23C972
dw CODE_23C86A
dw CODE_23C855
dw CODE_23C855
dw CODE_23C877
dw CODE_23C855
dw CODE_23C8D2
dw CODE_23C982
dw CODE_23C877
dw CODE_23C98F

CODE_23C834:
JSR CODE_23C9D8         ; $23:C834: 20 D8 C9
JSR CODE_23CAB6         ; $23:C837: 20 B6 CA
LDA $058A               ; $23:C83A: AD 8A 05
LSR A                   ; $23:C83D: 4A
BCS CODE_23C854         ; $23:C83E: B0 14
LDA $101F               ; $23:C840: AD 1F 10
BNE CODE_23C854         ; $23:C843: D0 0F
LDA $A6                 ; $23:C845: A5 A6
BEQ CODE_23C854         ; $23:C847: F0 0B
LDA #$80                ; $23:C849: A9 80
LDY $056E               ; $23:C84B: AC 6E 05
BEQ CODE_23C852         ; $23:C84E: F0 02
LDA #$9C                ; $23:C850: A9 9C

CODE_23C852:
STA $BC                 ; $23:C852: 85 BC

CODE_23C854:
RTS                     ; $23:C854: 60

CODE_23C855:
JSR CODE_23CA96         ; $23:C855: 20 96 CA
JSR CODE_23CBBB         ; $23:C858: 20 BB CB
JSR CODE_23CC08         ; $23:C85B: 20 08 CC
RTS                     ; $23:C85E: 60

CODE_23C85F:
JSR CODE_23C9D8         ; $23:C85F: 20 D8 C9
JSR CODE_23CAB6         ; $23:C862: 20 B6 CA
JSR CODE_23CF4E         ; $23:C865: 20 4E CF
RTS                     ; $23:C868: 60
RTS                     ; $23:C869: 60

CODE_23C86A:
JSR CODE_23C9D8         ; $23:C86A: 20 D8 C9
JSR CODE_23CAB6         ; $23:C86D: 20 B6 CA
JSR CODE_23CF4E         ; $23:C870: 20 4E CF
JSR CODE_23CFB5         ; $23:C873: 20 B5 CF
RTS                     ; $23:C876: 60

CODE_23C877:
JSR CODE_23CA96         ; $23:C877: 20 96 CA
JSR CODE_23CBBB         ; $23:C87A: 20 BB CB
JSR CODE_23CC08         ; $23:C87D: 20 08 CC
JSR CODE_23CFB5         ; $23:C880: 20 B5 CF
RTS                     ; $23:C883: 60

CODE_23C884:
JSR CODE_23C9D8         ; $23:C884: 20 D8 C9
JSR CODE_23CAB6         ; $23:C887: 20 B6 CA
JSR CODE_23CEE6         ; $23:C88A: 20 E6 CE
JSR CODE_23CF74         ; $23:C88D: 20 74 CF
RTS                     ; $23:C890: 60
RTS                     ; $23:C891: 60

CODE_23C892:
JSR CODE_23C9D8         ; $23:C892: 20 D8 C9
JSR CODE_23CAB6         ; $23:C895: 20 B6 CA
LDA $06A4               ; $23:C898: AD A4 06
BNE CODE_23C8D1         ; $23:C89B: D0 34
LDA $A6                 ; $23:C89D: A5 A6
BEQ CODE_23C8B1         ; $23:C89F: F0 10
LDA $058A               ; $23:C8A1: AD 8A 05
LSR A                   ; $23:C8A4: 4A
BCS CODE_23C8B1         ; $23:C8A5: B0 0A
LDA #$00                ; $23:C8A7: A9 00
STA $0513               ; $23:C8A9: 8D 13 05
LDY #$01                ; $23:C8AC: A0 01
JMP CODE_23C8CC         ; $23:C8AE: 4C CC C8

CODE_23C8B1:
LDA $0513               ; $23:C8B1: AD 13 05
BNE CODE_23C8C8         ; $23:C8B4: D0 12
STA $8B                 ; $23:C8B6: 85 8B
LDA $17                 ; $23:C8B8: A5 17
AND #$03                ; $23:C8BA: 29 03
BEQ CODE_23C8C8         ; $23:C8BC: F0 0A
LDA #$40                ; $23:C8BE: A9 40
STA $1200               ; $23:C8C0: 8D 00 12
LDA #$1F                ; $23:C8C3: A9 1F
STA $0513               ; $23:C8C5: 8D 13 05

CODE_23C8C8:
LSR A                   ; $23:C8C8: 4A
LSR A                   ; $23:C8C9: 4A
LSR A                   ; $23:C8CA: 4A
TAY                     ; $23:C8CB: A8

CODE_23C8CC:
LDA.w DATA_21E9AE,y     ; $23:C8CC: B9 AE E9
STA $BC                 ; $23:C8CF: 85 BC

CODE_23C8D1:
RTS                     ; $23:C8D1: 60

CODE_23C8D2:
LDX #$FF                ; $23:C8D2: A2 FF
LDA $17                 ; $23:C8D4: A5 17
AND #$0C                ; $23:C8D6: 29 0C
BEQ CODE_23C900         ; $23:C8D8: F0 26
STA $A6                 ; $23:C8DA: 85 A6
LSR A                   ; $23:C8DC: 4A
LSR A                   ; $23:C8DD: 4A
LSR A                   ; $23:C8DE: 4A
TAX                     ; $23:C8DF: AA
LDA.w DATA_21EB2D,x     ; $23:C8E0: BD 2D EB
BPL CODE_23C8EC         ; $23:C8E3: 10 07
LDY $0544               ; $23:C8E5: AC 44 05
BPL CODE_23C8EC         ; $23:C8E8: 10 02
LDA #$00                ; $23:C8EA: A9 00

CODE_23C8EC:
LDY $17                 ; $23:C8EC: A4 17
BPL CODE_23C8F1         ; $23:C8EE: 10 01
ASL A                   ; $23:C8F0: 0A

CODE_23C8F1:
CMP #$E1                ; $23:C8F1: C9 E1
BCC CODE_23C8FB         ; $23:C8F3: 90 06
LDY $A6                 ; $23:C8F5: A4 A6
BNE CODE_23C8FB         ; $23:C8F7: D0 02
LDA #$E0                ; $23:C8F9: A9 E0

CODE_23C8FB:
STA $9D                 ; $23:C8FB: 85 9D
JMP CODE_23C90D         ; $23:C8FD: 4C 0D C9

CODE_23C900:
LDY $9D                 ; $23:C900: A4 9D
BEQ CODE_23C90D         ; $23:C902: F0 09
INY                     ; $23:C904: C8
LDA $9D                 ; $23:C905: A5 9D
BMI CODE_23C90B         ; $23:C907: 30 02
DEY                     ; $23:C909: 88
DEY                     ; $23:C90A: 88

CODE_23C90B:
STY $9D                 ; $23:C90B: 84 9D

CODE_23C90D:
LDA $17                 ; $23:C90D: A5 17
AND #$03                ; $23:C90F: 29 03
BEQ CODE_23C923         ; $23:C911: F0 10
LSR A                   ; $23:C913: 4A
TAY                     ; $23:C914: A8
LDA.w DATA_21EB2D,y     ; $23:C915: B9 2D EB
LDY $17                 ; $23:C918: A4 17
BPL CODE_23C91D         ; $23:C91A: 10 01
ASL A                   ; $23:C91C: 0A

CODE_23C91D:
STA $8B                 ; $23:C91D: 85 8B
LDX #$02                ; $23:C91F: A2 02
BNE CODE_23C93B         ; $23:C921: D0 18

CODE_23C923:
LDY $8B                 ; $23:C923: A4 8B
BEQ CODE_23C933         ; $23:C925: F0 0C
INY                     ; $23:C927: C8
LDA $8B                 ; $23:C928: A5 8B
BMI CODE_23C92E         ; $23:C92A: 30 02
DEY                     ; $23:C92C: 88
DEY                     ; $23:C92D: 88

CODE_23C92E:
STY $8B                 ; $23:C92E: 84 8B
JMP CODE_23C93B         ; $23:C930: 4C 3B C9

CODE_23C933:
LDA $A6                 ; $23:C933: A5 A6
BNE CODE_23C93B         ; $23:C935: D0 04
LDA #$2A                ; $23:C937: A9 2A
BNE CODE_23C96F         ; $23:C939: D0 34

CODE_23C93B:
TXA                     ; $23:C93B: 8A
BMI CODE_23C964         ; $23:C93C: 30 26
LDA $15                 ; $23:C93E: A5 15
LSR A                   ; $23:C940: 4A
LSR A                   ; $23:C941: 4A
LDY #$00                ; $23:C942: A0 00
BIT $17                 ; $23:C944: 24 17
BMI CODE_23C94A         ; $23:C946: 30 02
LSR A                   ; $23:C948: 4A
INY                     ; $23:C949: C8

CODE_23C94A:
AND #$07                ; $23:C94A: 29 07
TAY                     ; $23:C94C: A8
BNE CODE_23C95B         ; $23:C94D: D0 0C
LDA $15                 ; $23:C94F: A5 15
AND.w DATA_21EB20,y     ; $23:C951: 39 20 EB
BNE CODE_23C95B         ; $23:C954: D0 05
LDA #$0E                ; $23:C956: A9 0E
STA $1200               ; $23:C958: 8D 00 12

CODE_23C95B:
LDA.w DATA_21EB22,x     ; $23:C95B: BD 22 EB
CLC                     ; $23:C95E: 18
ADC.w DATA_21EB25,y     ; $23:C95F: 79 25 EB
BNE CODE_23C96F         ; $23:C962: D0 0B

CODE_23C964:
LDY #$3E                ; $23:C964: A0 3E
LDA $15                 ; $23:C966: A5 15
AND #$08                ; $23:C968: 29 08
BEQ CODE_23C96E         ; $23:C96A: F0 02
INY                     ; $23:C96C: C8
INY                     ; $23:C96D: C8

CODE_23C96E:
TYA                     ; $23:C96E: 98

CODE_23C96F:
STA $BC                 ; $23:C96F: 85 BC
RTS                     ; $23:C971: 60

CODE_23C972:
JSR CODE_23CE61         ; $23:C972: 20 61 CE
JSR CODE_23C9D8         ; $23:C975: 20 D8 C9
JSR CODE_23CAB6         ; $23:C978: 20 B6 CA
JSR CODE_23CEE6         ; $23:C97B: 20 E6 CE
JSR CODE_23CF74         ; $23:C97E: 20 74 CF
RTS                     ; $23:C981: 60

CODE_23C982:
JSR CODE_23CE61         ; $23:C982: 20 61 CE
JSR CODE_23CA96         ; $23:C985: 20 96 CA
JSR CODE_23CBBB         ; $23:C988: 20 BB CB
JSR CODE_23CC08         ; $23:C98B: 20 08 CC
RTS                     ; $23:C98E: 60

CODE_23C98F:
JSR CODE_23C9D8         ; $23:C98F: 20 D8 C9
JSR CODE_23CAB6         ; $23:C992: 20 B6 CA
LDA $A6                 ; $23:C995: A5 A6
BNE CODE_23C99C         ; $23:C997: D0 03
STA $0550               ; $23:C999: 8D 50 05

CODE_23C99C:
LDA $0550               ; $23:C99C: AD 50 05
BNE CODE_23C9B4         ; $23:C99F: D0 13
LDA $A6                 ; $23:C9A1: A5 A6
BNE CODE_23C9C2         ; $23:C9A3: D0 1D
LDA $17                 ; $23:C9A5: A5 17
AND #$03                ; $23:C9A7: 29 03
STA $0550               ; $23:C9A9: 8D 50 05
BEQ CODE_23C9C2         ; $23:C9AC: F0 14
INC $A6                 ; $23:C9AE: E6 A6
LDY #$E0                ; $23:C9B0: A0 E0
STY $9D                 ; $23:C9B2: 84 9D

CODE_23C9B4:
LDA $18                 ; $23:C9B4: A5 18
BPL CODE_23C9C2         ; $23:C9B6: 10 0A
LDA #$00                ; $23:C9B8: A9 00
STA $0550               ; $23:C9BA: 8D 50 05
LDY.w DATA_21EAFD       ; $23:C9BD: AC FD EA
STY $9D                 ; $23:C9C0: 84 9D

CODE_23C9C2:
LDY $BB                 ; $23:C9C2: A4 BB
BEQ CODE_23C9C8         ; $23:C9C4: F0 02
LDY #$01                ; $23:C9C6: A0 01

CODE_23C9C8:
LDA.w DATA_21E9A4,y     ; $23:C9C8: B9 A4 E9
STA $BC                 ; $23:C9CB: 85 BC
LDA $15                 ; $23:C9CD: A5 15
AND #$08                ; $23:C9CF: 29 08
BEQ CODE_23C9D7         ; $23:C9D1: F0 04
INC $BC                 ; $23:C9D3: E6 BC
INC $BC                 ; $23:C9D5: E6 BC

CODE_23C9D7:
RTS                     ; $23:C9D7: 60

CODE_23C9D8:
LDA $0546               ; $23:C9D8: AD 46 05
BEQ CODE_23C9EA         ; $23:C9DB: F0 0D
INC $0574               ; $23:C9DD: EE 74 05
LDY #$0A                ; $23:C9E0: A0 0A
BIT $17                 ; $23:C9E2: 24 17
BVC CODE_23C9EF         ; $23:C9E4: 50 09
LDY #$01                ; $23:C9E6: A0 01
BNE CODE_23C9EF         ; $23:C9E8: D0 05

CODE_23C9EA:
LDY $06B6               ; $23:C9EA: AC B6 06
BEQ CODE_23C9F6         ; $23:C9ED: F0 07

CODE_23C9EF:
LDA.w DATA_21EB2F,y     ; $23:C9EF: B9 2F EB
TAY                     ; $23:C9F2: A8
JMP CODE_23CA17         ; $23:C9F3: 4C 17 CA

CODE_23C9F6:
LDY #$18                ; $23:C9F6: A0 18
BIT $17                 ; $23:C9F8: 24 17
BVC CODE_23CA17         ; $23:C9FA: 50 1B
LDA $A6                 ; $23:C9FC: A5 A6
ORA $0545               ; $23:C9FE: 0D 45 05
BNE CODE_23CA0C         ; $23:CA01: D0 09
LDA $02                 ; $23:CA03: A5 02
CMP #$28                ; $23:CA05: C9 28
BMI CODE_23CA0C         ; $23:CA07: 30 03
INC $057B               ; $23:CA09: EE 7B 05

CODE_23CA0C:
LDY #$28                ; $23:CA0C: A0 28
LDA $0413               ; $23:CA0E: AD 13 04
CMP #$7F                ; $23:CA11: C9 7F
BNE CODE_23CA17         ; $23:CA13: D0 02
LDY #$38                ; $23:CA15: A0 38

CODE_23CA17:
STY $0D                 ; $23:CA17: 84 0D
LDY $0589               ; $23:CA19: AC 89 05
BEQ CODE_23CA2C         ; $23:CA1C: F0 0E
INC $0574               ; $23:CA1E: EE 74 05
DEY                     ; $23:CA21: 88
TYA                     ; $23:CA22: 98
ASL A                   ; $23:CA23: 0A
ASL A                   ; $23:CA24: 0A
ASL A                   ; $23:CA25: 0A
CLC                     ; $23:CA26: 18
ADC #$40                ; $23:CA27: 69 40
TAY                     ; $23:CA29: A8
BNE CODE_23CA32         ; $23:CA2A: D0 06

CODE_23CA2C:
LDA $BB                 ; $23:CA2C: A5 BB
ASL A                   ; $23:CA2E: 0A
ASL A                   ; $23:CA2F: 0A
ASL A                   ; $23:CA30: 0A
TAY                     ; $23:CA31: A8

CODE_23CA32:
BIT $17                 ; $23:CA32: 24 17
BVC CODE_23CA3A         ; $23:CA34: 50 04
INY                     ; $23:CA36: C8
INY                     ; $23:CA37: C8
INY                     ; $23:CA38: C8
INY                     ; $23:CA39: C8

CODE_23CA3A:
LDA $17                 ; $23:CA3A: A5 17
AND #$03                ; $23:CA3C: 29 03
BNE CODE_23CA4C         ; $23:CA3E: D0 0C
LDA $A6                 ; $23:CA40: A5 A6
BNE CODE_23CA95         ; $23:CA42: D0 51
LDA $8B                 ; $23:CA44: A5 8B
BEQ CODE_23CA95         ; $23:CA46: F0 4D
BMI CODE_23CA67         ; $23:CA48: 30 1D
BPL CODE_23CA7F         ; $23:CA4A: 10 33

CODE_23CA4C:
INY                     ; $23:CA4C: C8
INY                     ; $23:CA4D: C8
AND $0573               ; $23:CA4E: 2D 73 05
BNE CODE_23CA61         ; $23:CA51: D0 0E
DEY                     ; $23:CA53: 88
LDA $02                 ; $23:CA54: A5 02
CMP $0D                 ; $23:CA56: C5 0D
BEQ CODE_23CA95         ; $23:CA58: F0 3B
BMI CODE_23CA61         ; $23:CA5A: 30 05
LDA $A6                 ; $23:CA5C: A5 A6
BNE CODE_23CA95         ; $23:CA5E: D0 35
DEY                     ; $23:CA60: 88

CODE_23CA61:
LDA $17                 ; $23:CA61: A5 17
AND #$01                ; $23:CA63: 29 01
BNE CODE_23CA7F         ; $23:CA65: D0 18

CODE_23CA67:
LDA #$00                ; $23:CA67: A9 00
SEC                     ; $23:CA69: 38
SBC.w DATA_21EAA2,y     ; $23:CA6A: F9 A2 EA
STA $00                 ; $23:CA6D: 85 00
LDA.w DATA_21EA52,y     ; $23:CA6F: B9 52 EA
EOR #$FF                ; $23:CA72: 49 FF
STA $01                 ; $23:CA74: 85 01
LDA $00                 ; $23:CA76: A5 00
BNE CODE_23CA89         ; $23:CA78: D0 0F
INC $01                 ; $23:CA7A: E6 01
JMP CODE_23CA89         ; $23:CA7C: 4C 89 CA

CODE_23CA7F:
LDA.w DATA_21EAA2,y     ; $23:CA7F: B9 A2 EA
STA $00                 ; $23:CA82: 85 00
LDA.w DATA_21EA52,y     ; $23:CA84: B9 52 EA
STA $01                 ; $23:CA87: 85 01

CODE_23CA89:
LDA $00                 ; $23:CA89: A5 00
CLC                     ; $23:CA8B: 18
ADC $055C               ; $23:CA8C: 6D 5C 05
LDA $8B                 ; $23:CA8F: A5 8B
ADC $01                 ; $23:CA91: 65 01
STA $8B                 ; $23:CA93: 85 8B

CODE_23CA95:
RTS                     ; $23:CA95: 60

CODE_23CA96:
LDY #$38                ; $23:CA96: A0 38
LDA #$08                ; $23:CA98: A9 08
STA $0D                 ; $23:CA9A: 85 0D
LDA $A6                 ; $23:CA9C: A5 A6
BEQ CODE_23CAA8         ; $23:CA9E: F0 08
LDA #$18                ; $23:CAA0: A9 18
STA $0D                 ; $23:CAA2: 85 0D
INY                     ; $23:CAA4: C8
INY                     ; $23:CAA5: C8
INY                     ; $23:CAA6: C8
INY                     ; $23:CAA7: C8

CODE_23CAA8:
LDA $A6                 ; $23:CAA8: A5 A6
PHA                     ; $23:CAAA: 48
LDA #$00                ; $23:CAAB: A9 00
STA $A6                 ; $23:CAAD: 85 A6
JSR CODE_23CA3A         ; $23:CAAF: 20 3A CA
PLA                     ; $23:CAB2: 68
STA $A6                 ; $23:CAB3: 85 A6
RTS                     ; $23:CAB5: 60

CODE_23CAB6:
LDA $101F               ; $23:CAB6: AD 1F 10
BEQ CODE_23CABE         ; $23:CAB9: F0 03
DEC $101F               ; $23:CABB: CE 1F 10

CODE_23CABE:
LDA $18                 ; $23:CABE: A5 18
AND #$80                ; $23:CAC0: 29 80
STA $00                 ; $23:CAC2: 85 00
BEQ CODE_23CB2A         ; $23:CAC4: F0 64
LDA $101F               ; $23:CAC6: AD 1F 10
BNE CODE_23CACF         ; $23:CAC9: D0 04
LDA $A6                 ; $23:CACB: A5 A6
BNE CODE_23CB2A         ; $23:CACD: D0 5B

CODE_23CACF:
LDA #$01                ; $23:CACF: A9 01
STA $1201               ; $23:CAD1: 8D 01 12
LDA $0553               ; $23:CAD4: AD 53 05
BEQ CODE_23CAF7         ; $23:CAD7: F0 1E
LDA $0413               ; $23:CAD9: AD 13 04
CMP #$7F                ; $23:CADC: C9 7F
BEQ CODE_23CAF7         ; $23:CADE: F0 17
LDA $06A4               ; $23:CAE0: AD A4 06
BNE CODE_23CAF7         ; $23:CAE3: D0 12
LDA $BB                 ; $23:CAE5: A5 BB
BEQ CODE_23CAF7         ; $23:CAE7: F0 0E
CMP #$04                ; $23:CAE9: C9 04
BEQ CODE_23CAF7         ; $23:CAEB: F0 0A
STA $054F               ; $23:CAED: 8D 4F 05
STA $A6                 ; $23:CAF0: 85 A6
LDA #$00                ; $23:CAF2: A9 00
STA $101F               ; $23:CAF4: 8D 1F 10

CODE_23CAF7:
LDA $8B                 ; $23:CAF7: A5 8B
BPL CODE_23CAFF         ; $23:CAF9: 10 04

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $23:CAFB: 22 59 A8 27

CODE_23CAFF:
LSR A                   ; $23:CAFF: 4A
LSR A                   ; $23:CB00: 4A
LSR A                   ; $23:CB01: 4A
LSR A                   ; $23:CB02: 4A
TAX                     ; $23:CB03: AA
LDA.w DATA_21EAFD       ; $23:CB04: AD FD EA
SEC                     ; $23:CB07: 38
SBC.w DATA_21EAFE,x     ; $23:CB08: FD FE EA
STA $9D                 ; $23:CB0B: 85 9D
LDA #$01                ; $23:CB0D: A9 01
STA $A6                 ; $23:CB0F: 85 A6
LDA #$00                ; $23:CB11: A9 00
STA $00BE               ; $23:CB13: 8D BE 00
STA $101F               ; $23:CB16: 8D 1F 10
LDA $0413               ; $23:CB19: AD 13 04
CMP #$7F                ; $23:CB1C: C9 7F
BNE CODE_23CB2A         ; $23:CB1E: D0 0A
LDA $056E               ; $23:CB20: AD 6E 05
BNE CODE_23CB2A         ; $23:CB23: D0 05
LDA #$80                ; $23:CB25: A9 80
STA $056E               ; $23:CB27: 8D 6E 05

CODE_23CB2A:
LDA $A6                 ; $23:CB2A: A5 A6
BNE CODE_23CB3F         ; $23:CB2C: D0 11
LDY $BB                 ; $23:CB2E: A4 BB
LDA.w DATA_21AF64,y     ; $23:CB30: B9 64 AF
AND #$01                ; $23:CB33: 29 01
BNE CODE_23CBA6         ; $23:CB35: D0 6F
LDA #$00                ; $23:CB37: A9 00
STA $056E               ; $23:CB39: 8D 6E 05
JMP CODE_23CBA6         ; $23:CB3C: 4C A6 CB

CODE_23CB3F:
LDY #$05                ; $23:CB3F: A0 05
LDA $9D                 ; $23:CB41: A5 9D
CMP #$E0                ; $23:CB43: C9 E0
BPL CODE_23CB54         ; $23:CB45: 10 0D
LDA $0579               ; $23:CB47: AD 79 05
BNE CODE_23CB59         ; $23:CB4A: D0 0D
LDA $17                 ; $23:CB4C: A5 17
BPL CODE_23CB54         ; $23:CB4E: 10 04
LDY #$01                ; $23:CB50: A0 01
BNE CODE_23CB59         ; $23:CB52: D0 05

CODE_23CB54:
LDA #$00                ; $23:CB54: A9 00
STA $0579               ; $23:CB56: 8D 79 05

CODE_23CB59:
TYA                     ; $23:CB59: 98
CLC                     ; $23:CB5A: 18
ADC $9D                 ; $23:CB5B: 65 9D
STA $9D                 ; $23:CB5D: 85 9D
LDA $BE                 ; $23:CB5F: A5 BE
BEQ CODE_23CB65         ; $23:CB61: F0 02
DEC $BE                 ; $23:CB63: C6 BE

CODE_23CB65:
LDA $0577               ; $23:CB65: AD 77 05
BNE CODE_23CB7B         ; $23:CB68: D0 11
LDX $BB                 ; $23:CB6A: A6 BB
LDA.w DATA_21AF64,x     ; $23:CB6C: BD 64 AF
AND #$01                ; $23:CB6F: 29 01
BEQ CODE_23CB7B         ; $23:CB71: F0 08
LDY $00                 ; $23:CB73: A4 00
BEQ CODE_23CB7B         ; $23:CB75: F0 04
LDA #$10                ; $23:CB77: A9 10
STA $BE                 ; $23:CB79: 85 BE

CODE_23CB7B:
LDA $BE                 ; $23:CB7B: A5 BE
BEQ CODE_23CBA6         ; $23:CB7D: F0 27
LDA $9D                 ; $23:CB7F: A5 9D
CMP #$E8                ; $23:CB81: C9 E8
BMI CODE_23CBA6         ; $23:CB83: 30 21
LDY #$E8                ; $23:CB85: A0 E8
LDA $056E               ; $23:CB87: AD 6E 05
BEQ CODE_23CB9A         ; $23:CB8A: F0 0E
CMP #$0F                ; $23:CB8C: C9 0F
BCS CODE_23CBA4         ; $23:CB8E: B0 14
LDY #$F0                ; $23:CB90: A0 F0
AND #$08                ; $23:CB92: 29 08
BNE CODE_23CBA4         ; $23:CB94: D0 0E
LDY #$00                ; $23:CB96: A0 00
BEQ CODE_23CBA4         ; $23:CB98: F0 0A

CODE_23CB9A:
LDA $9D                 ; $23:CB9A: A5 9D
BMI CODE_23CBA6         ; $23:CB9C: 30 08
CMP #$10                ; $23:CB9E: C9 10
BCC CODE_23CBA6         ; $23:CBA0: 90 04
LDY #$10                ; $23:CBA2: A0 10

CODE_23CBA4:
STY $9D                 ; $23:CBA4: 84 9D

CODE_23CBA6:
LDA $06B6               ; $23:CBA6: AD B6 06
BEQ CODE_23CBBA         ; $23:CBA9: F0 0F
LSR A                   ; $23:CBAB: 4A
TAY                     ; $23:CBAC: A8
LDA $9D                 ; $23:CBAD: A5 9D
BPL CODE_23CBBA         ; $23:CBAF: 10 09
CMP.w DATA_21EB3A,y     ; $23:CBB1: D9 3A EB
BMI CODE_23CBBA         ; $23:CBB4: 30 04
LDA #$20                ; $23:CBB6: A9 20
STA $9D                 ; $23:CBB8: 85 9D

CODE_23CBBA:
RTS                     ; $23:CBBA: 60

CODE_23CBBB:
LDA $18                 ; $23:CBBB: A5 18
BPL CODE_23CBD5         ; $23:CBBD: 10 16
LDA #$0E                ; $23:CBBF: A9 0E
STA $1200               ; $23:CBC1: 8D 00 12
LDY $A6                 ; $23:CBC4: A4 A6
BNE CODE_23CBCE         ; $23:CBC6: D0 06
LDA #$E0                ; $23:CBC8: A9 E0
STA $A6                 ; $23:CBCA: 85 A6
BNE CODE_23CBD3         ; $23:CBCC: D0 05

CODE_23CBCE:
LDA $9D                 ; $23:CBCE: A5 9D
SEC                     ; $23:CBD0: 38
SBC #$20                ; $23:CBD1: E9 20

CODE_23CBD3:
STA $9D                 ; $23:CBD3: 85 9D

CODE_23CBD5:
LDA $A6                 ; $23:CBD5: A5 A6
BEQ CODE_23CC07         ; $23:CBD7: F0 2E
LDA $9D                 ; $23:CBD9: A5 9D
BMI CODE_23CBE3         ; $23:CBDB: 30 06
LDA $15                 ; $23:CBDD: A5 15
AND #$02                ; $23:CBDF: 29 02
BNE CODE_23CBE5         ; $23:CBE1: D0 02

CODE_23CBE3:
INC $9D                 ; $23:CBE3: E6 9D

CODE_23CBE5:
LDY #$20                ; $23:CBE5: A0 20
LDA $9D                 ; $23:CBE7: A5 9D
BPL CODE_23CBFE         ; $23:CBE9: 10 13
LDY $0544               ; $23:CBEB: AC 44 05
BPL CODE_23CBFC         ; $23:CBEE: 10 0C
LDY $0082               ; $23:CBF0: AC 82 00
CPY #$F8                ; $23:CBF3: C0 F8
BCS CODE_23CBFC         ; $23:CBF5: B0 05
CLC                     ; $23:CBF7: 18
ADC #$10                ; $23:CBF8: 69 10
STA $9D                 ; $23:CBFA: 85 9D

CODE_23CBFC:
LDY #$E0                ; $23:CBFC: A0 E0

CODE_23CBFE:
CLC                     ; $23:CBFE: 18
ADC #$20                ; $23:CBFF: 69 20
CMP #$40                ; $23:CC01: C9 40
BCC CODE_23CC07         ; $23:CC03: 90 02
STY $9D                 ; $23:CC05: 84 9D

CODE_23CC07:
RTS                     ; $23:CC07: 60

CODE_23CC08:
LDA $A6                 ; $23:CC08: A5 A6
BEQ CODE_23CC45         ; $23:CC0A: F0 39
LDA $18                 ; $23:CC0C: A5 18
BPL CODE_23CC23         ; $23:CC0E: 10 13
LDA $0576               ; $23:CC10: AD 76 05
BNE CODE_23CC20         ; $23:CC13: D0 0B

CODE_23CC15:
LDA #$00                ; $23:CC15: A9 00
STA $0576               ; $23:CC17: 8D 76 05
STA $057F               ; $23:CC1A: 8D 7F 05
STA $0574               ; $23:CC1D: 8D 74 05

CODE_23CC20:
INC $0576               ; $23:CC20: EE 76 05

CODE_23CC23:
LDA $0576               ; $23:CC23: AD 76 05
BNE CODE_23CC46         ; $23:CC26: D0 1E
LDA $8B                 ; $23:CC28: A5 8B
BNE CODE_23CC36         ; $23:CC2A: D0 0A
LDA $15                 ; $23:CC2C: A5 15
AND #$30                ; $23:CC2E: 29 30
LSR A                   ; $23:CC30: 4A
LSR A                   ; $23:CC31: 4A
LSR A                   ; $23:CC32: 4A
LSR A                   ; $23:CC33: 4A
STA $BA                 ; $23:CC34: 85 BA

CODE_23CC36:
LDY $BA                 ; $23:CC36: A4 BA
LDA $BB                 ; $23:CC38: A5 BB
BNE CODE_23CC40         ; $23:CC3A: D0 04
INY                     ; $23:CC3C: C8
INY                     ; $23:CC3D: C8
INY                     ; $23:CC3E: C8
INY                     ; $23:CC3F: C8

CODE_23CC40:
LDA.w DATA_21E992,y     ; $23:CC40: B9 92 E9
STA $BC                 ; $23:CC43: 85 BC

CODE_23CC45:
RTS                     ; $23:CC45: 60

CODE_23CC46:
LDA $057F               ; $23:CC46: AD 7F 05
CMP #$06                ; $23:CC49: C9 06
BCC CODE_23CC54         ; $23:CC4B: 90 07
DEC $0576               ; $23:CC4D: CE 76 05
BNE CODE_23CC15         ; $23:CC50: D0 C3
LDA #$05                ; $23:CC52: A9 05

CODE_23CC54:
LDY $BB                 ; $23:CC54: A4 BB
BNE CODE_23CC5B         ; $23:CC56: D0 03
CLC                     ; $23:CC58: 18
ADC #$06                ; $23:CC59: 69 06

CODE_23CC5B:
TAY                     ; $23:CC5B: A8
LDA.w DATA_21E986,y     ; $23:CC5C: B9 86 E9
STA $BC                 ; $23:CC5F: 85 BC
RTS                     ; $23:CC61: 60

CODE_23CC62:
LDA $8B                 ; $23:CC62: A5 8B
BPL CODE_23CC6A         ; $23:CC64: 10 04

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $23:CC66: 22 59 A8 27

CODE_23CC6A:
LSR A                   ; $23:CC6A: 4A
LSR A                   ; $23:CC6B: 4A
LSR A                   ; $23:CC6C: 4A
TAY                     ; $23:CC6D: A8
INC $0574               ; $23:CC6E: EE 74 05
LDA $0574               ; $23:CC71: AD 74 05
CMP.w DATA_21EAF4,y     ; $23:CC74: D9 F4 EA
BMI CODE_23CC8D         ; $23:CC77: 30 14
LDA #$00                ; $23:CC79: A9 00
STA $0574               ; $23:CC7B: 8D 74 05
INC $BA                 ; $23:CC7E: E6 BA
INC $057F               ; $23:CC80: EE 7F 05
LDA $BA                 ; $23:CC83: A5 BA
CMP #$04                ; $23:CC85: C9 04
BMI CODE_23CC8D         ; $23:CC87: 30 04
LDA #$00                ; $23:CC89: A9 00
STA $BA                 ; $23:CC8B: 85 BA

CODE_23CC8D:
LDA $17                 ; $23:CC8D: A5 17
AND #$03                ; $23:CC8F: 29 03
BNE CODE_23CC9B         ; $23:CC91: D0 08
LDA $8B                 ; $23:CC93: A5 8B
BNE CODE_23CC9B         ; $23:CC95: D0 04
LDA #$02                ; $23:CC97: A9 02
STA $BA                 ; $23:CC99: 85 BA

CODE_23CC9B:
LDA $0517               ; $23:CC9B: AD 17 05
BNE CODE_23CCB0         ; $23:CC9E: D0 10
LDA $17                 ; $23:CCA0: A5 17
AND #$03                ; $23:CCA2: 29 03
BEQ CODE_23CCB0         ; $23:CCA4: F0 0A
LDY #$00                ; $23:CCA6: A0 00
AND #$02                ; $23:CCA8: 29 02
BNE CODE_23CCAE         ; $23:CCAA: D0 02
LDY #$40                ; $23:CCAC: A0 40

CODE_23CCAE:
STY $BD                 ; $23:CCAE: 84 BD

CODE_23CCB0:
LDA $0160               ; $23:CCB0: AD 60 01
CMP #$80                ; $23:CCB3: C9 80
BNE CODE_23CCE2         ; $23:CCB5: D0 2B
LDA $18                 ; $23:CCB7: A5 18
AND #$20                ; $23:CCB9: 29 20
BEQ CODE_23CCE2         ; $23:CCBB: F0 25
LDA $17                 ; $23:CCBD: A5 17
AND #$C0                ; $23:CCBF: 29 C0
BNE CODE_23CCDA         ; $23:CCC1: D0 17
LDA $BB                 ; $23:CCC3: A5 BB
CLC                     ; $23:CCC5: 18
ADC #$01                ; $23:CCC6: 69 01
STA $0578               ; $23:CCC8: 8D 78 05
CMP #$07                ; $23:CCCB: C9 07
BMI CODE_23CCD1         ; $23:CCCD: 30 02
LDA #$00                ; $23:CCCF: A9 00

CODE_23CCD1:
STA $0578               ; $23:CCD1: 8D 78 05
INC $0578               ; $23:CCD4: EE 78 05
JMP CODE_23CCE2         ; $23:CCD7: 4C E2 CC

CODE_23CCDA:
LDA $0577               ; $23:CCDA: AD 77 05
EOR #$01                ; $23:CCDD: 49 01
STA $0577               ; $23:CCDF: 8D 77 05

CODE_23CCE2:
LDA $BB                 ; $23:CCE2: A5 BB
ASL A                   ; $23:CCE4: 0A
ASL A                   ; $23:CCE5: 0A
ORA $BA                 ; $23:CCE6: 05 BA
TAY                     ; $23:CCE8: A8
LDA.w DATA_21E958,y     ; $23:CCE9: B9 58 E9
STA $BC                 ; $23:CCEC: 85 BC
LDA $0575               ; $23:CCEE: AD 75 05
BNE CODE_23CD40         ; $23:CCF1: D0 4D
LDA $8B                 ; $23:CCF3: A5 8B
CLC                     ; $23:CCF5: 18
ADC #$01                ; $23:CCF6: 69 01
CMP #$03                ; $23:CCF8: C9 03
BCC CODE_23CD40         ; $23:CCFA: 90 44
LDA $0573               ; $23:CCFC: AD 73 05
AND $17                 ; $23:CCFF: 25 17
BEQ CODE_23CD40         ; $23:CD01: F0 3D
LDY $BB                 ; $23:CD03: A4 BB
BEQ CODE_23CD09         ; $23:CD05: F0 02
LDY #$01                ; $23:CD07: A0 01

CODE_23CD09:
LDA $A6                 ; $23:CD09: A5 A6
BNE CODE_23CD40         ; $23:CD0B: D0 33
LDA.w DATA_21E984,y     ; $23:CD0D: B9 84 E9
STA $BC                 ; $23:CD10: 85 BC
LDA $7FC522             ; $23:CD12: AF 22 C5 7F
ORA $7FC523             ; $23:CD16: 0F 23 C5 7F
BNE CODE_23CD40         ; $23:CD1A: D0 24
LDA #$10                ; $23:CD1C: A9 10
STA $7FC522             ; $23:CD1E: 8F 22 C5 7F
LDA $5E                 ; $23:CD22: A5 5E
STA $7FC524             ; $23:CD24: 8F 24 C5 7F
LDA $43                 ; $23:CD28: A5 43
STA $7FC526             ; $23:CD2A: 8F 26 C5 7F
LDA $70                 ; $23:CD2E: A5 70
STA $7FC528             ; $23:CD30: 8F 28 C5 7F
LDA $55                 ; $23:CD34: A5 55
STA $7FC52A             ; $23:CD36: 8F 2A C5 7F
LDA $BD                 ; $23:CD3A: A5 BD
STA $7FC52C             ; $23:CD3C: 8F 2C C5 7F

CODE_23CD40:
LDA $056F               ; $23:CD40: AD 6F 05
BEQ CODE_23CD52         ; $23:CD43: F0 0D
LDY $BB                 ; $23:CD45: A4 BB
LDA.w DATA_21AF64,y     ; $23:CD47: B9 64 AF
AND #$01                ; $23:CD4A: 29 01
TAY                     ; $23:CD4C: A8
LDA.w DATA_21E9A6,y     ; $23:CD4D: B9 A6 E9
STA $BC                 ; $23:CD50: 85 BC

CODE_23CD52:
LDA $0545               ; $23:CD52: AD 45 05
BEQ CODE_23CD70         ; $23:CD55: F0 19
LDA $A6                 ; $23:CD57: A5 A6
BNE CODE_23CD61         ; $23:CD59: D0 06
LDA $17                 ; $23:CD5B: A5 17
AND #$0B                ; $23:CD5D: 29 0B
BEQ CODE_23CD66         ; $23:CD5F: F0 05

CODE_23CD61:
LDA #$00                ; $23:CD61: A9 00
STA $0545               ; $23:CD63: 8D 45 05

CODE_23CD66:
LDA #$62                ; $23:CD66: A9 62
LDY $BB                 ; $23:CD68: A4 BB
BNE CODE_23CD6E         ; $23:CD6A: D0 02
LDA #$66                ; $23:CD6C: A9 66

CODE_23CD6E:
STA $BC                 ; $23:CD6E: 85 BC

CODE_23CD70:
RTS                     ; $23:CD70: 60

CODE_23CD71:
LDA $8B                 ; $23:CD71: A5 8B
BPL CODE_23CD79         ; $23:CD73: 10 04

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $23:CD75: 22 59 A8 27

CODE_23CD79:
CMP #$37                ; $23:CD79: C9 37
BCC CODE_23CD9F         ; $23:CD7B: 90 22
LDA $056E               ; $23:CD7D: AD 6E 05
BNE CODE_23CD9F         ; $23:CD80: D0 1D
LDA $056F               ; $23:CD82: AD 6F 05
ORA $0577               ; $23:CD85: 0D 77 05
ORA $056B               ; $23:CD88: 0D 6B 05
ORA $0545               ; $23:CD8B: 0D 45 05
BNE CODE_23CD9F         ; $23:CD8E: D0 0F
LDY $BA                 ; $23:CD90: A4 BA
LDA $BB                 ; $23:CD92: A5 BB
BNE CODE_23CD9A         ; $23:CD94: D0 04
INY                     ; $23:CD96: C8
INY                     ; $23:CD97: C8
INY                     ; $23:CD98: C8
INY                     ; $23:CD99: C8

CODE_23CD9A:
LDA.w DATA_21E9B2,y     ; $23:CD9A: B9 B2 E9
STA $BC                 ; $23:CD9D: 85 BC

CODE_23CD9F:
LDA $054F               ; $23:CD9F: AD 4F 05
BEQ CODE_23CDBF         ; $23:CDA2: F0 1B
LDA $15                 ; $23:CDA4: A5 15
LSR A                   ; $23:CDA6: 4A
PHA                     ; $23:CDA7: 48
AND #$07                ; $23:CDA8: 29 07
TAY                     ; $23:CDAA: A8
LDA.w DATA_21EB14,y     ; $23:CDAB: B9 14 EB
LDY $8B                 ; $23:CDAE: A4 8B
BPL CODE_23CDB4         ; $23:CDB0: 10 02
EOR #$40                ; $23:CDB2: 49 40

CODE_23CDB4:
STA $BD                 ; $23:CDB4: 85 BD
PLA                     ; $23:CDB6: 68
AND #$03                ; $23:CDB7: 29 03
ASL A                   ; $23:CDB9: 0A
CLC                     ; $23:CDBA: 18
ADC #$34                ; $23:CDBB: 69 34
STA $BC                 ; $23:CDBD: 85 BC

CODE_23CDBF:
LDA $06A4               ; $23:CDBF: AD A4 06
BEQ CODE_23CDDE         ; $23:CDC2: F0 1A
LDY $BA                 ; $23:CDC4: A4 BA
LDA $A6                 ; $23:CDC6: A5 A6
BEQ CODE_23CDD1         ; $23:CDC8: F0 07
LDY #$00                ; $23:CDCA: A0 00
LDA $BB                 ; $23:CDCC: A5 BB
BNE CODE_23CDD1         ; $23:CDCE: D0 01
INY                     ; $23:CDD0: C8

CODE_23CDD1:
LDA $BB                 ; $23:CDD1: A5 BB
BNE CODE_23CDD9         ; $23:CDD3: D0 04
INY                     ; $23:CDD5: C8
INY                     ; $23:CDD6: C8
INY                     ; $23:CDD7: C8
INY                     ; $23:CDD8: C8

CODE_23CDD9:
LDA.w DATA_21E9C6,y     ; $23:CDD9: B9 C6 E9
STA $BC                 ; $23:CDDC: 85 BC

CODE_23CDDE:
LDA $0558               ; $23:CDDE: AD 58 05
BNE CODE_23CDF4         ; $23:CDE1: D0 11
LDA $06A4               ; $23:CDE3: AD A4 06
BEQ CODE_23CE01         ; $23:CDE6: F0 19
LDA $BD                 ; $23:CDE8: A5 BD
CMP $056C               ; $23:CDEA: CD 6C 05
BEQ CODE_23CE01         ; $23:CDED: F0 12
LDA #$07                ; $23:CDEF: A9 07
STA $0558               ; $23:CDF1: 8D 58 05

CODE_23CDF4:
DEC $0558               ; $23:CDF4: CE 58 05
LDA #$0A                ; $23:CDF7: A9 0A
LDY $BB                 ; $23:CDF9: A4 BB
BNE CODE_23CDFF         ; $23:CDFB: D0 02
LDA #$64                ; $23:CDFD: A9 64

CODE_23CDFF:
STA $BC                 ; $23:CDFF: 85 BC

CODE_23CE01:
LDA $0557               ; $23:CE01: AD 57 05
BEQ CODE_23CE18         ; $23:CE04: F0 12
LDA #$00                ; $23:CE06: A9 00
STA $0517               ; $23:CE08: 8D 17 05
LDY #$84                ; $23:CE0B: A0 84
LDA $BB                 ; $23:CE0D: A5 BB
BEQ CODE_23CE13         ; $23:CE0F: F0 02
LDY #$5A                ; $23:CE11: A0 5A

CODE_23CE13:
STY $BC                 ; $23:CE13: 84 BC
DEC $0557               ; $23:CE15: CE 57 05

CODE_23CE18:
LDA $1CF5               ; $23:CE18: AD F5 1C
BEQ CODE_23CE54         ; $23:CE1B: F0 37
DEC $1CF5               ; $23:CE1D: CE F5 1C
LDY #$00                ; $23:CE20: A0 00
LDA $BB                 ; $23:CE22: A5 BB
BEQ CODE_23CE3A         ; $23:CE24: F0 14
CMP #$04                ; $23:CE26: C9 04
BNE CODE_23CE2E         ; $23:CE28: D0 04
LDY #$0C                ; $23:CE2A: A0 0C
BRA CODE_23CE3A         ; $23:CE2C: 80 0C

CODE_23CE2E:
LDY #$04                ; $23:CE2E: A0 04
TAX                     ; $23:CE30: AA
LDA.w DATA_21AF64,x     ; $23:CE31: BD 64 AF
AND #$01                ; $23:CE34: 29 01
BEQ CODE_23CE3A         ; $23:CE36: F0 02
LDY #$08                ; $23:CE38: A0 08

CODE_23CE3A:
STY $00                 ; $23:CE3A: 84 00
LDA $15                 ; $23:CE3C: A5 15
AND #$0C                ; $23:CE3E: 29 0C
LSR A                   ; $23:CE40: 4A
LSR A                   ; $23:CE41: 4A
PHA                     ; $23:CE42: 48
LSR A                   ; $23:CE43: 4A
TAY                     ; $23:CE44: A8
LDA.w DATA_21EB40,y     ; $23:CE45: B9 40 EB
STA $BD                 ; $23:CE48: 85 BD
PLA                     ; $23:CE4A: 68
CLC                     ; $23:CE4B: 18
ADC $00                 ; $23:CE4C: 65 00
TAY                     ; $23:CE4E: A8
LDA.w DATA_21E9CE,y     ; $23:CE4F: B9 CE E9
STA $BC                 ; $23:CE52: 85 BC

CODE_23CE54:
LDA $1CF4               ; $23:CE54: AD F4 1C
BEQ CODE_23CE60         ; $23:CE57: F0 07
LDY $BB                 ; $23:CE59: A4 BB
LDA.w DATA_21E9EC,y     ; $23:CE5B: B9 EC E9
STA $BC                 ; $23:CE5E: 85 BC

CODE_23CE60:
RTS                     ; $23:CE60: 60

CODE_23CE61:
LDA $17                 ; $23:CE61: A5 17
AND #$04                ; $23:CE63: 29 04
TAY                     ; $23:CE65: A8
BEQ CODE_23CE96         ; $23:CE66: F0 2E
BIT $18                 ; $23:CE68: 24 18
BVC CODE_23CE96         ; $23:CE6A: 50 2A
LDA $057A               ; $23:CE6C: AD 7A 05
BNE CODE_23CE96         ; $23:CE6F: D0 25
JSR CODE_23CEC4         ; $23:CE71: 20 C4 CE
LDA #$20                ; $23:CE74: A9 20
STA $0578               ; $23:CE76: 8D 78 05
LDA #$17                ; $23:CE79: A9 17
STA $0554               ; $23:CE7B: 8D 54 05
BNE CODE_23CEC3         ; $23:CE7E: D0 43

CODE_23CE80:
LDA #$3C                ; $23:CE80: A9 3C
STA $BC                 ; $23:CE82: 85 BC
LDA #$00                ; $23:CE84: A9 00
STA $8B                 ; $23:CE86: 85 8B
LDA $A6                 ; $23:CE88: A5 A6
BEQ CODE_23CE93         ; $23:CE8A: F0 07
LDA $9D                 ; $23:CE8C: A5 9D
CLC                     ; $23:CE8E: 18
ADC #$07                ; $23:CE8F: 69 07
STA $9D                 ; $23:CE91: 85 9D

CODE_23CE93:
PLA                     ; $23:CE93: 68
PLA                     ; $23:CE94: 68
RTS                     ; $23:CE95: 60

CODE_23CE96:
LDA $057A               ; $23:CE96: AD 7A 05
BEQ CODE_23CEC3         ; $23:CE99: F0 28
CMP #$01                ; $23:CE9B: C9 01
BEQ CODE_23CEAE         ; $23:CE9D: F0 0F
CMP #$60                ; $23:CE9F: C9 60
BNE CODE_23CEA8         ; $23:CEA1: D0 05
LDA #$60                ; $23:CEA3: A9 60
STA $0552               ; $23:CEA5: 8D 52 05

CODE_23CEA8:
DEC $057A               ; $23:CEA8: CE 7A 05
TYA                     ; $23:CEAB: 98
BNE CODE_23CE80         ; $23:CEAC: D0 D2

CODE_23CEAE:
LDA #$00                ; $23:CEAE: A9 00
STA $057A               ; $23:CEB0: 8D 7A 05
STA $0552               ; $23:CEB3: 8D 52 05
JSR CODE_23C467         ; $23:CEB6: 20 67 C4
JSR CODE_23CEC4         ; $23:CEB9: 20 C4 CE
LDA #$17                ; $23:CEBC: A9 17
STA $0554               ; $23:CEBE: 8D 54 05
BNE CODE_23CE80         ; $23:CEC1: D0 BD

CODE_23CEC3:
RTS                     ; $23:CEC3: 60

CODE_23CEC4:
LDA #$0C                ; $23:CEC4: A9 0C
STA $1200               ; $23:CEC6: 8D 00 12
RTS                     ; $23:CEC9: 60

CODE_23CECA:
LDA $056B               ; $23:CECA: AD 6B 05
BEQ CODE_23CEE5         ; $23:CECD: F0 16
LDY $BB                 ; $23:CECF: A4 BB
LDA.w DATA_21E9DE,y     ; $23:CED1: B9 DE E9
STA $BC                 ; $23:CED4: 85 BC
LDA $17                 ; $23:CED6: A5 17
AND #$0C                ; $23:CED8: 29 0C
BEQ CODE_23CEE5         ; $23:CEDA: F0 09
LDA $15                 ; $23:CEDC: A5 15
AND #$08                ; $23:CEDE: 29 08
ASL A                   ; $23:CEE0: 0A
ASL A                   ; $23:CEE1: 0A
ASL A                   ; $23:CEE2: 0A
STA $BD                 ; $23:CEE3: 85 BD

CODE_23CEE5:
RTS                     ; $23:CEE5: 60

CODE_23CEE6:
LDA $058A               ; $23:CEE6: AD 8A 05
LSR A                   ; $23:CEE9: 4A
BCS CODE_23CF4D         ; $23:CEEA: B0 61
LDA $101F               ; $23:CEEC: AD 1F 10
BNE CODE_23CF4D         ; $23:CEEF: D0 5C
LDA $A6                 ; $23:CEF1: A5 A6
BEQ CODE_23CF4D         ; $23:CEF3: F0 58
LDA $056F               ; $23:CEF5: AD 6F 05
BNE CODE_23CF2F         ; $23:CEF8: D0 35
LDA $18                 ; $23:CEFA: A5 18
BPL CODE_23CF0F         ; $23:CEFC: 10 11
LDA $1201               ; $23:CEFE: AD 01 12
CMP #$01                ; $23:CF01: C9 01
BEQ CODE_23CF0A         ; $23:CF03: F0 05
LDA #$04                ; $23:CF05: A9 04
STA $1203               ; $23:CF07: 8D 03 12

CODE_23CF0A:
LDA #$0A                ; $23:CF0A: A9 0A
STA $0511               ; $23:CF0C: 8D 11 05

CODE_23CF0F:
LDA $0511               ; $23:CF0F: AD 11 05
LSR A                   ; $23:CF12: 4A
LSR A                   ; $23:CF13: 4A
STA $00                 ; $23:CF14: 85 00
LDA #$00                ; $23:CF16: A9 00
LDY $056E               ; $23:CF18: AC 6E 05
BNE CODE_23CF1F         ; $23:CF1B: D0 02
LDA #$06                ; $23:CF1D: A9 06

CODE_23CF1F:
LDY $9D                 ; $23:CF1F: A4 9D
BMI CODE_23CF26         ; $23:CF21: 30 03
CLC                     ; $23:CF23: 18
ADC #$03                ; $23:CF24: 69 03

CODE_23CF26:
CLC                     ; $23:CF26: 18
ADC $00                 ; $23:CF27: 65 00
TAY                     ; $23:CF29: A8
LDA.w DATA_21E9BA,y     ; $23:CF2A: B9 BA E9
STA $BC                 ; $23:CF2D: 85 BC

CODE_23CF2F:
LDA $056E               ; $23:CF2F: AD 6E 05
ORA $00BE               ; $23:CF32: 0D BE 00
BEQ CODE_23CF4D         ; $23:CF35: F0 16
LDY #$FF                ; $23:CF37: A0 FF
LDA $8B                 ; $23:CF39: A5 8B
BPL CODE_23CF43         ; $23:CF3B: 10 06
LDY #$01                ; $23:CF3D: A0 01

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $23:CF3F: 22 59 A8 27

CODE_23CF43:
CMP #$18                ; $23:CF43: C9 18
BMI CODE_23CF4D         ; $23:CF45: 30 06
TYA                     ; $23:CF47: 98
CLC                     ; $23:CF48: 18
ADC $8B                 ; $23:CF49: 65 8B
STA $8B                 ; $23:CF4B: 85 8B

CODE_23CF4D:
RTS                     ; $23:CF4D: 60

CODE_23CF4E:
LDA $058A               ; $23:CF4E: AD 8A 05
LSR A                   ; $23:CF51: 4A
BCS CODE_23CF73         ; $23:CF52: B0 1F
LDA $101F               ; $23:CF54: AD 1F 10
BNE CODE_23CF73         ; $23:CF57: D0 1A
LDA $A6                 ; $23:CF59: A5 A6
BEQ CODE_23CF73         ; $23:CF5B: F0 16
LDA $056F               ; $23:CF5D: AD 6F 05
BNE CODE_23CF73         ; $23:CF60: D0 11
LDA #$70                ; $23:CF62: A9 70
LDY $056E               ; $23:CF64: AC 6E 05
BNE CODE_23CF71         ; $23:CF67: D0 08
LDA #$9E                ; $23:CF69: A9 9E
LDY $9D                 ; $23:CF6B: A4 9D
BMI CODE_23CF71         ; $23:CF6D: 30 02
LDA #$0C                ; $23:CF6F: A9 0C

CODE_23CF71:
STA $BC                 ; $23:CF71: 85 BC

CODE_23CF73:
RTS                     ; $23:CF73: 60

CODE_23CF74:
LDA $17                 ; $23:CF74: A5 17
AND #$04                ; $23:CF76: 29 04
BNE CODE_23CFB4         ; $23:CF78: D0 3A
BIT $18                 ; $23:CF7A: 24 18
BVC CODE_23CF8D         ; $23:CF7C: 50 0F
LDA $0517               ; $23:CF7E: AD 17 05
BNE CODE_23CF8D         ; $23:CF81: D0 0A
LDA #$12                ; $23:CF83: A9 12
STA $0517               ; $23:CF85: 8D 17 05
LDA #$04                ; $23:CF88: A9 04
STA $1203               ; $23:CF8A: 8D 03 12

CODE_23CF8D:
LDA $0517               ; $23:CF8D: AD 17 05
BEQ CODE_23CFB4         ; $23:CF90: F0 22
LSR A                   ; $23:CF92: 4A
LSR A                   ; $23:CF93: 4A
TAY                     ; $23:CF94: A8
LDA $A6                 ; $23:CF95: A5 A6
BEQ CODE_23CF9E         ; $23:CF97: F0 05
INY                     ; $23:CF99: C8
INY                     ; $23:CF9A: C8
INY                     ; $23:CF9B: C8
INY                     ; $23:CF9C: C8
INY                     ; $23:CF9D: C8

CODE_23CF9E:
LDA.w DATA_21E99A,y     ; $23:CF9E: B9 9A E9
STA $BC                 ; $23:CFA1: 85 BC
LDA $0517               ; $23:CFA3: AD 17 05
CMP #$0B                ; $23:CFA6: C9 0B
BEQ CODE_23CFAE         ; $23:CFA8: F0 04
CMP #$03                ; $23:CFAA: C9 03
BNE CODE_23CFB4         ; $23:CFAC: D0 06

CODE_23CFAE:
LDA $BD                 ; $23:CFAE: A5 BD
EOR #$40                ; $23:CFB0: 49 40
STA $BD                 ; $23:CFB2: 85 BD

CODE_23CFB4:
RTS                     ; $23:CFB4: 60

CODE_23CFB5:
LDA $0513               ; $23:CFB5: AD 13 05
BEQ CODE_23CFC9         ; $23:CFB8: F0 0F
LSR A                   ; $23:CFBA: 4A
LSR A                   ; $23:CFBB: 4A
LDY $A6                 ; $23:CFBC: A4 A6
BEQ CODE_23CFC3         ; $23:CFBE: F0 03
CLC                     ; $23:CFC0: 18
ADC #$03                ; $23:CFC1: 69 03

CODE_23CFC3:
TAY                     ; $23:CFC3: A8
LDA.w DATA_21E9A8,y     ; $23:CFC4: B9 A8 E9
STA $BC                 ; $23:CFC7: 85 BC

CODE_23CFC9:
RTS                     ; $23:CFC9: 60

CODE_23CFCA:
LDA $0425               ; $23:CFCA: AD 25 04
BEQ CODE_23CFD2         ; $23:CFCD: F0 03
JMP CODE_23D1FC         ; $23:CFCF: 4C FC D1

CODE_23CFD2:
LDA $1EB8               ; $23:CFD2: AD B8 1E
BEQ CODE_23CFDA         ; $23:CFD5: F0 03
JMP CODE_23D093         ; $23:CFD7: 4C 93 D0

CODE_23CFDA:
LDY $05FC               ; $23:CFDA: AC FC 05
BEQ CODE_23D00A         ; $23:CFDD: F0 2B
BMI CODE_23D00A         ; $23:CFDF: 30 29
LDA $1A0C               ; $23:CFE1: AD 0C 1A
PHA                     ; $23:CFE4: 48
SEC                     ; $23:CFE5: 38
SBC $0210               ; $23:CFE6: ED 10 02
STA $0781               ; $23:CFE9: 8D 81 07
PLA                     ; $23:CFEC: 68
STA $0210               ; $23:CFED: 8D 10 02
STA $0212               ; $23:CFF0: 8D 12 02
LDA $1A0A               ; $23:CFF3: AD 0A 1A
STA $12                 ; $23:CFF6: 85 12
STA $0211               ; $23:CFF8: 8D 11 02
LSR A                   ; $23:CFFB: 4A
STA $0213               ; $23:CFFC: 8D 13 02
ROR $0212               ; $23:CFFF: 6E 12 02
LDA $1A07               ; $23:D002: AD 07 1A
STA $25                 ; $23:D005: 85 25
JMP CODE_23D0FA         ; $23:D007: 4C FA D0

CODE_23D00A:
LDA $5E                 ; $23:D00A: A5 5E
SEC                     ; $23:D00C: 38
SBC $0210               ; $23:D00D: ED 10 02
BPL CODE_23D052         ; $23:D010: 10 40
LDA $12                 ; $23:D012: A5 12
STA $00                 ; $23:D014: 85 00
LDA #$80                ; $23:D016: A9 80
CLC                     ; $23:D018: 18
ADC $0210               ; $23:D019: 6D 10 02
STA $01                 ; $23:D01C: 85 01
BCC CODE_23D022         ; $23:D01E: 90 02
INC $00                 ; $23:D020: E6 00

CODE_23D022:
LDA $43                 ; $23:D022: A5 43
CMP $00                 ; $23:D024: C5 00
BMI CODE_23D093         ; $23:D026: 30 6B
LDA $5E                 ; $23:D028: A5 5E
SEC                     ; $23:D02A: 38
SBC $01                 ; $23:D02B: E5 01
BEQ CODE_23D093         ; $23:D02D: F0 64
BMI CODE_23D093         ; $23:D02F: 30 62
STA $0781               ; $23:D031: 8D 81 07
CLC                     ; $23:D034: 18
ADC $0210               ; $23:D035: 6D 10 02
STA $0210               ; $23:D038: 8D 10 02
BCC CODE_23D042         ; $23:D03B: 90 05
INC $12                 ; $23:D03D: E6 12
INC $0211               ; $23:D03F: EE 11 02

CODE_23D042:
STZ $25                 ; $23:D042: 64 25
LDA $12                 ; $23:D044: A5 12
CMP $22                 ; $23:D046: C5 22
BMI CODE_23D093         ; $23:D048: 30 49
STZ $0210               ; $23:D04A: 9C 10 02
STZ $0781               ; $23:D04D: 9C 81 07
BRA CODE_23D093         ; $23:D050: 80 41

CODE_23D052:
LDA $12                 ; $23:D052: A5 12
STA $00                 ; $23:D054: 85 00
LDA #$70                ; $23:D056: A9 70
CLC                     ; $23:D058: 18
ADC $0210               ; $23:D059: 6D 10 02
STA $01                 ; $23:D05C: 85 01
BCC CODE_23D062         ; $23:D05E: 90 02
INC $00                 ; $23:D060: E6 00

CODE_23D062:
LDA $00                 ; $23:D062: A5 00
CMP $43                 ; $23:D064: C5 43
BMI CODE_23D093         ; $23:D066: 30 2B
LDA $5E                 ; $23:D068: A5 5E
SEC                     ; $23:D06A: 38
SBC $01                 ; $23:D06B: E5 01
BPL CODE_23D093         ; $23:D06D: 10 24
STA $0781               ; $23:D06F: 8D 81 07
CLC                     ; $23:D072: 18
ADC $0210               ; $23:D073: 6D 10 02
STA $0210               ; $23:D076: 8D 10 02
BCS CODE_23D080         ; $23:D079: B0 05
DEC $12                 ; $23:D07B: C6 12
DEC $0211               ; $23:D07D: CE 11 02

CODE_23D080:
LDA #$01                ; $23:D080: A9 01
STA $25                 ; $23:D082: 85 25
LDA $12                 ; $23:D084: A5 12
BPL CODE_23D093         ; $23:D086: 10 0B
STZ $12                 ; $23:D088: 64 12
STZ $0210               ; $23:D08A: 9C 10 02
STZ $0211               ; $23:D08D: 9C 11 02
STZ $0781               ; $23:D090: 9C 81 07

CODE_23D093:
LDA $02BF               ; $23:D093: AD BF 02
CMP #$0B                ; $23:D096: C9 0B
BNE CODE_23D0B0         ; $23:D098: D0 16
LDY #$00                ; $23:D09A: A0 00
LDA $0781               ; $23:D09C: AD 81 07
BPL CODE_23D0A2         ; $23:D09F: 10 01
DEY                     ; $23:D0A1: 88

CODE_23D0A2:
CLC                     ; $23:D0A2: 18
ADC $0353               ; $23:D0A3: 6D 53 03
STA $0353               ; $23:D0A6: 8D 53 03
TYA                     ; $23:D0A9: 98
ADC $0354               ; $23:D0AA: 6D 54 03
STA $0354               ; $23:D0AD: 8D 54 03

CODE_23D0B0:
REP #$20                ; $23:D0B0: C2 20
LDA $0210               ; $23:D0B2: AD 10 02
LSR A                   ; $23:D0B5: 4A
STA $0212               ; $23:D0B6: 8D 12 02
SEP #$20                ; $23:D0B9: E2 20
LDA $0559               ; $23:D0BB: AD 59 05
BNE CODE_23D0FA         ; $23:D0BE: D0 3A
LDA $79                 ; $23:D0C0: A5 79
LDY $8B                 ; $23:D0C2: A4 8B
BMI CODE_23D0CF         ; $23:D0C4: 30 09
CMP #$E8                ; $23:D0C6: C9 E8
BCC CODE_23D0FA         ; $23:D0C8: 90 30
LDA #$E8                ; $23:D0CA: A9 E8
JMP CODE_23D0D5         ; $23:D0CC: 4C D5 D0

CODE_23D0CF:
CMP #$11                ; $23:D0CF: C9 11
BCS CODE_23D0FA         ; $23:D0D1: B0 27
LDA #$10                ; $23:D0D3: A9 10

CODE_23D0D5:
STA $79                 ; $23:D0D5: 85 79
LDY #$00                ; $23:D0D7: A0 00
SEC                     ; $23:D0D9: 38
SBC $5E                 ; $23:D0DA: E5 5E
BPL CODE_23D0E0         ; $23:D0DC: 10 02
LDY #$FF                ; $23:D0DE: A0 FF

CODE_23D0E0:
CLC                     ; $23:D0E0: 18
ADC $5E                 ; $23:D0E1: 65 5E
STA $5E                 ; $23:D0E3: 85 5E
BCC CODE_23D0E8         ; $23:D0E5: 90 01
INY                     ; $23:D0E7: C8

CODE_23D0E8:
TYA                     ; $23:D0E8: 98
CLC                     ; $23:D0E9: 18
ADC $43                 ; $23:D0EA: 65 43
STA $43                 ; $23:D0EC: 85 43
LDA $8B                 ; $23:D0EE: A5 8B
PHP                     ; $23:D0F0: 08
AND #$0F                ; $23:D0F1: 29 0F
PLP                     ; $23:D0F3: 28
BPL CODE_23D0F8         ; $23:D0F4: 10 02
ORA #$F0                ; $23:D0F6: 09 F0

CODE_23D0F8:
STA $8B                 ; $23:D0F8: 85 8B

CODE_23D0FA:
LDA $0424               ; $23:D0FA: AD 24 04
BEQ CODE_23D109         ; $23:D0FD: F0 0A
CMP #$01                ; $23:D0FF: C9 01
BNE CODE_23D106         ; $23:D101: D0 03
JMP CODE_23D18A         ; $23:D103: 4C 8A D1

CODE_23D106:
JMP CODE_23D1EF         ; $23:D106: 4C EF D1

CODE_23D109:
LDA $05FC               ; $23:D109: AD FC 05
BEQ CODE_23D177         ; $23:D10C: F0 69

CODE_23D10E:
LDA $1A0D               ; $23:D10E: AD 0D 1A
PHA                     ; $23:D111: 48
SEC                     ; $23:D112: 38
SBC $0216               ; $23:D113: ED 16 02
STA $0780               ; $23:D116: 8D 80 07
PLA                     ; $23:D119: 68
STA $0216               ; $23:D11A: 8D 16 02
STA $0543               ; $23:D11D: 8D 43 05
LDA $0350               ; $23:D120: AD 50 03
CMP #$01                ; $23:D123: C9 01
BEQ CODE_23D136         ; $23:D125: F0 0F
CMP #$02                ; $23:D127: C9 02
BEQ CODE_23D15A         ; $23:D129: F0 2F
CMP #$23                ; $23:D12B: C9 23
BEQ CODE_23D15A         ; $23:D12D: F0 2B
LDA $0727               ; $23:D12F: AD 27 07
CMP #$05                ; $23:D132: C9 05
BNE CODE_23D15A         ; $23:D134: D0 24

CODE_23D136:
REP #$20                ; $23:D136: C2 20
LDA $0216               ; $23:D138: AD 16 02
LSR A                   ; $23:D13B: 4A
LSR A                   ; $23:D13C: 4A
STA $0218               ; $23:D13D: 8D 18 02
LDA $0216               ; $23:D140: AD 16 02
SEC                     ; $23:D143: 38
SBC $0218               ; $23:D144: ED 18 02
STA $0218               ; $23:D147: 8D 18 02
LDA $034F               ; $23:D14A: AD 4F 03
AND #$00FF              ; $23:D14D: 29 FF 00
BEQ CODE_23D158         ; $23:D150: F0 06
LDA $0216               ; $23:D152: AD 16 02
STA $0218               ; $23:D155: 8D 18 02

CODE_23D158:
SEP #$20                ; $23:D158: E2 20

CODE_23D15A:
LDA $A6                 ; $23:D15A: A5 A6
BEQ CODE_23D176         ; $23:D15C: F0 18
LDA $056B               ; $23:D15E: AD 6B 05
ORA $05FE               ; $23:D161: 0D FE 05
BNE CODE_23D176         ; $23:D164: D0 10
LDA $0780               ; $23:D166: AD 80 07
BPL CODE_23D16D         ; $23:D169: 10 02
DEC $55                 ; $23:D16B: C6 55

CODE_23D16D:
CLC                     ; $23:D16D: 18
ADC $70                 ; $23:D16E: 65 70
STA $70                 ; $23:D170: 85 70
BCC CODE_23D176         ; $23:D172: 90 02
INC $55                 ; $23:D174: E6 55

CODE_23D176:
RTL                     ; $23:D176: 6B

CODE_23D177:
LDA $0216               ; $23:D177: AD 16 02
CMP #$EF                ; $23:D17A: C9 EF
BNE CODE_23D18A         ; $23:D17C: D0 0C
LDA $056E               ; $23:D17E: AD 6E 05
ORA $056B               ; $23:D181: 0D 6B 05
PHP                     ; $23:D184: 08
LDA #$EF                ; $23:D185: A9 EF
PLP                     ; $23:D187: 28
BEQ CODE_23D1F2         ; $23:D188: F0 68

CODE_23D18A:
LDA $70                 ; $23:D18A: A5 70
SEC                     ; $23:D18C: 38
SBC $0543               ; $23:D18D: ED 43 05
STA $00                 ; $23:D190: 85 00
LDA $55                 ; $23:D192: A5 55
SBC $0542               ; $23:D194: ED 42 05
BMI CODE_23D1A4         ; $23:D197: 30 0B
LDA $00                 ; $23:D199: A5 00
SEC                     ; $23:D19B: 38
SBC #$30                ; $23:D19C: E9 30
BCS CODE_23D1B7         ; $23:D19E: B0 17
CMP #$FD                ; $23:D1A0: C9 FD
BCS CODE_23D1A6         ; $23:D1A2: B0 02

CODE_23D1A4:
LDA #$FD                ; $23:D1A4: A9 FD

CODE_23D1A6:
STA $0780               ; $23:D1A6: 8D 80 07
CLC                     ; $23:D1A9: 18
ADC $0216               ; $23:D1AA: 6D 16 02
BCS CODE_23D1B4         ; $23:D1AD: B0 05
LDA #$00                ; $23:D1AF: A9 00
STA $0780               ; $23:D1B1: 8D 80 07

CODE_23D1B4:
JMP CODE_23D1D2         ; $23:D1B4: 4C D2 D1

CODE_23D1B7:
LDA $00                 ; $23:D1B7: A5 00
SEC                     ; $23:D1B9: 38
SBC #$79                ; $23:D1BA: E9 79
BCC CODE_23D1EF         ; $23:D1BC: 90 31
STA $0780               ; $23:D1BE: 8D 80 07
CLC                     ; $23:D1C1: 18
ADC $0216               ; $23:D1C2: 6D 16 02
BCS CODE_23D1CB         ; $23:D1C5: B0 04
CMP #$EF                ; $23:D1C7: C9 EF
BCC CODE_23D1D2         ; $23:D1C9: 90 07

CODE_23D1CB:
LDA #$00                ; $23:D1CB: A9 00
STA $0780               ; $23:D1CD: 8D 80 07
LDA #$EF                ; $23:D1D0: A9 EF

CODE_23D1D2:
STA $0216               ; $23:D1D2: 8D 16 02
LSR A                   ; $23:D1D5: 4A
LSR A                   ; $23:D1D6: 4A
STA $0218               ; $23:D1D7: 8D 18 02
LDA $0216               ; $23:D1DA: AD 16 02
SEC                     ; $23:D1DD: 38
SBC $0218               ; $23:D1DE: ED 18 02
STA $0218               ; $23:D1E1: 8D 18 02
LDA $034F               ; $23:D1E4: AD 4F 03
BEQ CODE_23D1EF         ; $23:D1E7: F0 06
LDA $0216               ; $23:D1E9: AD 16 02
STA $0218               ; $23:D1EC: 8D 18 02

CODE_23D1EF:
LDA $0216               ; $23:D1EF: AD 16 02

CODE_23D1F2:
STA $0543               ; $23:D1F2: 8D 43 05
LDA $0217               ; $23:D1F5: AD 17 02
STA $0542               ; $23:D1F8: 8D 42 05
RTL                     ; $23:D1FB: 6B

CODE_23D1FC:
LDA #$00                ; $23:D1FC: A9 00
STA $43                 ; $23:D1FE: 85 43
LDY $22                 ; $23:D200: A4 22
LDA.w DATA_21CEED,y     ; $23:D202: B9 ED CE
STA $00                 ; $23:D205: 85 00
LDA.w DATA_21CEFD,y     ; $23:D207: B9 FD CE
STA $01                 ; $23:D20A: 85 01
LDA $70                 ; $23:D20C: A5 70
SEC                     ; $23:D20E: 38
SBC $0543               ; $23:D20F: ED 43 05
TAY                     ; $23:D212: A8
LDA $55                 ; $23:D213: A5 55
SBC $0542               ; $23:D215: ED 42 05
BEQ CODE_23D21D         ; $23:D218: F0 03
JMP CODE_23D2B5         ; $23:D21A: 4C B5 D2

CODE_23D21D:
TYA                     ; $23:D21D: 98
SEC                     ; $23:D21E: 38
SBC #$30                ; $23:D21F: E9 30
BCS CODE_23D24D         ; $23:D221: B0 2A
DEC $0542               ; $23:D223: CE 42 05
CMP #$FD                ; $23:D226: C9 FD
BCS CODE_23D22C         ; $23:D228: B0 02
LDA #$FD                ; $23:D22A: A9 FD

CODE_23D22C:
STA $0780               ; $23:D22C: 8D 80 07
CLC                     ; $23:D22F: 18
ADC $0543               ; $23:D230: 6D 43 05
STA $0543               ; $23:D233: 8D 43 05
LDA #$00                ; $23:D236: A9 00
STA $25                 ; $23:D238: 85 25
ADC $0542               ; $23:D23A: 6D 42 05
BPL CODE_23D247         ; $23:D23D: 10 08
LDA #$00                ; $23:D23F: A9 00
STA $0543               ; $23:D241: 8D 43 05
STA $0780               ; $23:D244: 8D 80 07

CODE_23D247:
STA $0542               ; $23:D247: 8D 42 05
JMP CODE_23D28C         ; $23:D24A: 4C 8C D2

CODE_23D24D:
TYA                     ; $23:D24D: 98
SBC #$58                ; $23:D24E: E9 58
BCC CODE_23D2B5         ; $23:D250: 90 63
CMP #$04                ; $23:D252: C9 04
BCC CODE_23D258         ; $23:D254: 90 02
LDA #$04                ; $23:D256: A9 04

CODE_23D258:
STA $0780               ; $23:D258: 8D 80 07
CLC                     ; $23:D25B: 18
ADC $0543               ; $23:D25C: 6D 43 05
STA $0543               ; $23:D25F: 8D 43 05
LDA #$00                ; $23:D262: A9 00
ADC $0542               ; $23:D264: 6D 42 05
STA $0542               ; $23:D267: 8D 42 05
CMP $00                 ; $23:D26A: C5 00
PHP                     ; $23:D26C: 08
LDA #$01                ; $23:D26D: A9 01
STA $25                 ; $23:D26F: 85 25
PLP                     ; $23:D271: 28
BCC CODE_23D28C         ; $23:D272: 90 18
BNE CODE_23D27D         ; $23:D274: D0 07
LDA $0543               ; $23:D276: AD 43 05
CMP $01                 ; $23:D279: C5 01
BCC CODE_23D28C         ; $23:D27B: 90 0F

CODE_23D27D:
LDA $00                 ; $23:D27D: A5 00
STA $0542               ; $23:D27F: 8D 42 05
LDA $01                 ; $23:D282: A5 01
STA $0543               ; $23:D284: 8D 43 05
LDA #$00                ; $23:D287: A9 00
STA $0780               ; $23:D289: 8D 80 07

CODE_23D28C:
REP #$20                ; $23:D28C: C2 20
LDA $0542               ; $23:D28E: AD 42 05
XBA                     ; $23:D291: EB
STA $0216               ; $23:D292: 8D 16 02
LSR A                   ; $23:D295: 4A
LSR A                   ; $23:D296: 4A
STA $0218               ; $23:D297: 8D 18 02
LDA $0216               ; $23:D29A: AD 16 02
SEC                     ; $23:D29D: 38
SBC $0218               ; $23:D29E: ED 18 02
STA $0218               ; $23:D2A1: 8D 18 02
SEP #$20                ; $23:D2A4: E2 20
LDA $0542               ; $23:D2A6: AD 42 05
STA $13                 ; $23:D2A9: 85 13
LDA $0425               ; $23:D2AB: AD 25 04
BEQ CODE_23D2B5         ; $23:D2AE: F0 05
LDA #$0F                ; $23:D2B0: A9 0F
STA $0016               ; $23:D2B2: 8D 16 00

CODE_23D2B5:
RTL                     ; $23:D2B5: 6B

CODE_23D2B6:
STZ $1CEF               ; $23:D2B6: 9C EF 1C
LDA $0425               ; $23:D2B9: AD 25 04
BNE CODE_23D331         ; $23:D2BC: D0 73
LDA $058B               ; $23:D2BE: AD 8B 05
BEQ CODE_23D2E4         ; $23:D2C1: F0 21
LDA $0544               ; $23:D2C3: AD 44 05
BNE CODE_23D2E4         ; $23:D2C6: D0 1C
LDA $70                 ; $23:D2C8: A5 70
CLC                     ; $23:D2CA: 18
ADC $09                 ; $23:D2CB: 65 09
SEC                     ; $23:D2CD: 38
SBC $0543               ; $23:D2CE: ED 43 05
CMP #$A0                ; $23:D2D1: C9 A0
BCC CODE_23D2E4         ; $23:D2D3: 90 0F
SBC #$10                ; $23:D2D5: E9 10
AND #$F0                ; $23:D2D7: 29 F0
STA $0D                 ; $23:D2D9: 85 0D
LDA #$01                ; $23:D2DB: A9 01
STA $0C                 ; $23:D2DD: 85 0C
STA $1CEF               ; $23:D2DF: 8D EF 1C
BNE CODE_23D2F3         ; $23:D2E2: D0 0F

CODE_23D2E4:
LDA $55                 ; $23:D2E4: A5 55
STA $0C                 ; $23:D2E6: 85 0C
LDA $09                 ; $23:D2E8: A5 09
CLC                     ; $23:D2EA: 18
ADC $70                 ; $23:D2EB: 65 70
STA $0D                 ; $23:D2ED: 85 0D
BCC CODE_23D2F3         ; $23:D2EF: 90 02
INC $0C                 ; $23:D2F1: E6 0C

CODE_23D2F3:
LDA $0C                 ; $23:D2F3: A5 0C
BEQ CODE_23D306         ; $23:D2F5: F0 0F
CMP #$01                ; $23:D2F7: C9 01
BNE CODE_23D301         ; $23:D2F9: D0 06
LDA $0D                 ; $23:D2FB: A5 0D
CMP #$B0                ; $23:D2FD: C9 B0
BCC CODE_23D306         ; $23:D2FF: 90 05

CODE_23D301:
LDA #$00                ; $23:D301: A9 00
STA $B4                 ; $23:D303: 85 B4
RTL                     ; $23:D305: 6B

CODE_23D306:
LDA $43                 ; $23:D306: A5 43
STA $0E                 ; $23:D308: 85 0E
LDA $0A                 ; $23:D30A: A5 0A
BPL CODE_23D310         ; $23:D30C: 10 02
DEC $0E                 ; $23:D30E: C6 0E

CODE_23D310:
LDA $5E                 ; $23:D310: A5 5E
CLC                     ; $23:D312: 18
ADC $0A                 ; $23:D313: 65 0A
STA $0F                 ; $23:D315: 85 0F
BCC CODE_23D31B         ; $23:D317: 90 02
INC $0E                 ; $23:D319: E6 0E

CODE_23D31B:
STY $09                 ; $23:D31B: 84 09
STX $0A                 ; $23:D31D: 86 0A
JSL CODE_209FE0         ; $23:D31F: 22 E0 9F 20
LDX $0A                 ; $23:D323: A6 0A
LDY $0571               ; $23:D325: AC 71 05
BNE CODE_23D32E         ; $23:D328: D0 04
JSL CODE_278ED2         ; $23:D32A: 22 D2 8E 27

CODE_23D32E:
LDY $09                 ; $23:D32E: A4 09
RTL                     ; $23:D330: 6B

CODE_23D331:
LDA $55                 ; $23:D331: A5 55
STA $0C                 ; $23:D333: 85 0C
LDA $09                 ; $23:D335: A5 09
CLC                     ; $23:D337: 18
ADC $70                 ; $23:D338: 65 70
STA $0D                 ; $23:D33A: 85 0D
BCC CODE_23D340         ; $23:D33C: 90 02
INC $0C                 ; $23:D33E: E6 0C

CODE_23D340:
LDA $0C                 ; $23:D340: A5 0C
BPL CODE_23D347         ; $23:D342: 10 03
LDA #$00                ; $23:D344: A9 00
RTL                     ; $23:D346: 6B

CODE_23D347:
LDA $5E                 ; $23:D347: A5 5E
CLC                     ; $23:D349: 18
ADC $0A                 ; $23:D34A: 65 0A
STA $0F                 ; $23:D34C: 85 0F
STY $09                 ; $23:D34E: 84 09
JSL CODE_209F69         ; $23:D350: 22 69 9F 20
LDY $0571               ; $23:D354: AC 71 05
BNE CODE_23D35D         ; $23:D357: D0 04
JSL CODE_278ED2         ; $23:D359: 22 D2 8E 27

CODE_23D35D:
LDY #$00                ; $23:D35D: A0 00
STY $0E                 ; $23:D35F: 84 0E
LDY $09                 ; $23:D361: A4 09
RTL                     ; $23:D363: 6B

CODE_23D364:
LDA #$00                ; $23:D364: A9 00
STA $056D               ; $23:D366: 8D 6D 05
LDA $0571               ; $23:D369: AD 71 05
BEQ CODE_23D36F         ; $23:D36C: F0 01
RTS                     ; $23:D36E: 60

CODE_23D36F:
LDA.w DATA_21AD82       ; $23:D36F: AD 82 AD
STA $52                 ; $23:D372: 85 52
LDA.w DATA_21AD82+1     ; $23:D374: AD 83 AD
STA $53                 ; $23:D377: 85 53
LDA $0563               ; $23:D379: AD 63 05
BEQ CODE_23D396         ; $23:D37C: F0 18
LDA $070A               ; $23:D37E: AD 0A 07
CMP #$03                ; $23:D381: C9 03
BEQ CODE_23D393         ; $23:D383: F0 0E
CMP #$0E                ; $23:D385: C9 0E
BEQ CODE_23D393         ; $23:D387: F0 0A
LDA.w DATA_21AD80       ; $23:D389: AD 80 AD
STA $52                 ; $23:D38C: 85 52
LDA.w DATA_21AD80+1     ; $23:D38E: AD 81 AD
STA $53                 ; $23:D391: 85 53

CODE_23D393:
JMP CODE_23D896         ; $23:D393: 4C 96 D8

CODE_23D396:
LDY #$26                ; $23:D396: A0 26
LDA $BB                 ; $23:D398: A5 BB
BEQ CODE_23D3A3         ; $23:D39A: F0 07
LDA $056F               ; $23:D39C: AD 6F 05
BNE CODE_23D3A3         ; $23:D39F: D0 02
LDY #$06                ; $23:D3A1: A0 06

CODE_23D3A3:
LDX #$03                ; $23:D3A3: A2 03
LDA $9D                 ; $23:D3A5: A5 9D
BPL CODE_23D3AE         ; $23:D3A7: 10 05
TYA                     ; $23:D3A9: 98
CLC                     ; $23:D3AA: 18
ADC #$10                ; $23:D3AB: 69 10
TAY                     ; $23:D3AD: A8

CODE_23D3AE:
LDA $5E                 ; $23:D3AE: A5 5E
AND #$0F                ; $23:D3B0: 29 0F
CMP #$08                ; $23:D3B2: C9 08
BMI CODE_23D3BB         ; $23:D3B4: 30 05
TYA                     ; $23:D3B6: 98
CLC                     ; $23:D3B7: 18
ADC #$08                ; $23:D3B8: 69 08
TAY                     ; $23:D3BA: A8

CODE_23D3BB:
TYA                     ; $23:D3BB: 98
PHA                     ; $23:D3BC: 48
LDA.w DATA_21EB42,y     ; $23:D3BD: B9 42 EB
STA $09                 ; $23:D3C0: 85 09
LDA.w DATA_21EB42+1,y   ; $23:D3C2: B9 43 EB
STA $0A                 ; $23:D3C5: 85 0A
JSL CODE_23D2B6         ; $23:D3C7: 22 B6 D2 23
STA $0603,x             ; $23:D3CB: 9D 03 06
PHA                     ; $23:D3CE: 48
AND #$C0                ; $23:D3CF: 29 C0
ASL A                   ; $23:D3D1: 0A
ROL A                   ; $23:D3D2: 2A
ROL A                   ; $23:D3D3: 2A
STA $0608,x             ; $23:D3D4: 9D 08 06
PLA                     ; $23:D3D7: 68
JSR CODE_23D4C9         ; $23:D3D8: 20 C9 D4
PLA                     ; $23:D3DB: 68
TAY                     ; $23:D3DC: A8
DEY                     ; $23:D3DD: 88
DEY                     ; $23:D3DE: 88
DEX                     ; $23:D3DF: CA
BMI CODE_23D3E5         ; $23:D3E0: 30 03
JMP CODE_23D3BB         ; $23:D3E2: 4C BB D3

CODE_23D3E5:
LDY #$02                ; $23:D3E5: A0 02
JSR CODE_23D4B4         ; $23:D3E7: 20 B4 D4
BCC CODE_23D42D         ; $23:D3EA: 90 41
LDA $0585               ; $23:D3EC: AD 85 05
BNE CODE_23D42D         ; $23:D3EF: D0 3C
INC $0574               ; $23:D3F1: EE 74 05
LDY #$01                ; $23:D3F4: A0 01
LDX #$00                ; $23:D3F6: A2 00
LDA $5E                 ; $23:D3F8: A5 5E
AND #$0F                ; $23:D3FA: 29 0F
CMP #$08                ; $23:D3FC: C9 08
BPL CODE_23D403         ; $23:D3FE: 10 03
LDY #$FF                ; $23:D400: A0 FF
INX                     ; $23:D402: E8

CODE_23D403:
LDA $BB                 ; $23:D403: A5 BB
BNE CODE_23D409         ; $23:D405: D0 02
INX                     ; $23:D407: E8
INX                     ; $23:D408: E8

CODE_23D409:
LDA.w DATA_21EBA8,x     ; $23:D409: BD A8 EB
CLC                     ; $23:D40C: 18
ADC $5E                 ; $23:D40D: 65 5E
AND #$0F                ; $23:D40F: 29 0F
BEQ CODE_23D42D         ; $23:D411: F0 1A
TYA                     ; $23:D413: 98
BPL CODE_23D418         ; $23:D414: 10 02
DEC $43                 ; $23:D416: C6 43

CODE_23D418:
CLC                     ; $23:D418: 18
ADC $5E                 ; $23:D419: 65 5E
STA $5E                 ; $23:D41B: 85 5E
BCC CODE_23D421         ; $23:D41D: 90 02
INC $43                 ; $23:D41F: E6 43

CODE_23D421:
INY                     ; $23:D421: C8
LDA $8B                 ; $23:D422: A5 8B
BPL CODE_23D428         ; $23:D424: 10 02
DEY                     ; $23:D426: 88
DEY                     ; $23:D427: 88

CODE_23D428:
TYA                     ; $23:D428: 98
BNE CODE_23D42D         ; $23:D429: D0 02
STA $8B                 ; $23:D42B: 85 8B

CODE_23D42D:
LDA $9D                 ; $23:D42D: A5 9D
BPL CODE_23D453         ; $23:D42F: 10 22
LDA $A6                 ; $23:D431: A5 A6
BEQ CODE_23D453         ; $23:D433: F0 1E
LDY #$00                ; $23:D435: A0 00
JSR CODE_23D4B4         ; $23:D437: 20 B4 D4
BCC CODE_23D452         ; $23:D43A: 90 16
LDA #$01                ; $23:D43C: A9 01
STA $1200               ; $23:D43E: 8D 00 12
INY                     ; $23:D441: C8
STY $056D               ; $23:D442: 8C 6D 05
LDA $1A0F               ; $23:D445: AD 0F 1A

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $23:D448: 22 59 A8 27
BPL CODE_23D450         ; $23:D44C: 10 02
LDA #$01                ; $23:D44E: A9 01

CODE_23D450:
STA $9D                 ; $23:D450: 85 9D

CODE_23D452:
RTS                     ; $23:D452: 60

CODE_23D453:
LDX $0609               ; $23:D453: AE 09 06
LDA $0604               ; $23:D456: AD 04 06
CMP $1E96,x             ; $23:D459: DD 96 1E
BCS CODE_23D476         ; $23:D45C: B0 18
LDX $0608               ; $23:D45E: AE 08 06
LDA $0603               ; $23:D461: AD 03 06
CMP $1E96,x             ; $23:D464: DD 96 1E
BCS CODE_23D476         ; $23:D467: B0 0D
LDA $A6                 ; $23:D469: A5 A6
BNE CODE_23D4B3         ; $23:D46B: D0 46
STA $9D                 ; $23:D46D: 85 9D
LDA #$01                ; $23:D46F: A9 01
STA $A6                 ; $23:D471: 85 A6
JMP CODE_23D4B3         ; $23:D473: 4C B3 D4

CODE_23D476:
LDA $1CEF               ; $23:D476: AD EF 1C
BEQ CODE_23D494         ; $23:D479: F0 19
LDA $70                 ; $23:D47B: A5 70
SEC                     ; $23:D47D: 38
SBC $0543               ; $23:D47E: ED 43 05
AND #$F0                ; $23:D481: 29 F0
CLC                     ; $23:D483: 18
ADC #$01                ; $23:D484: 69 01
CLC                     ; $23:D486: 18
ADC $0543               ; $23:D487: 6D 43 05
STA $70                 ; $23:D48A: 85 70
LDA #$00                ; $23:D48C: A9 00
ADC #$00                ; $23:D48E: 69 00
STA $55                 ; $23:D490: 85 55
BPL CODE_23D4AA         ; $23:D492: 10 16

CODE_23D494:
LDA $70                 ; $23:D494: A5 70
AND #$0F                ; $23:D496: 29 0F
CMP #$06                ; $23:D498: C9 06
BCS CODE_23D4B3         ; $23:D49A: B0 17
LDA $70                 ; $23:D49C: A5 70
AND #$0F                ; $23:D49E: 29 0F
BEQ CODE_23D4AA         ; $23:D4A0: F0 08
CMP #$01                ; $23:D4A2: C9 01
BEQ CODE_23D4A8         ; $23:D4A4: F0 02
DEC $70                 ; $23:D4A6: C6 70

CODE_23D4A8:
DEC $70                 ; $23:D4A8: C6 70

CODE_23D4AA:
LDA #$00                ; $23:D4AA: A9 00
STA $A6                 ; $23:D4AC: 85 A6
STA $9D                 ; $23:D4AE: 85 9D
STA $05F4               ; $23:D4B0: 8D F4 05

CODE_23D4B3:
RTS                     ; $23:D4B3: 60

CODE_23D4B4:
LDX $0609,y             ; $23:D4B4: BE 09 06
LDA $0604,y             ; $23:D4B7: B9 04 06
CMP $1E9A,x             ; $23:D4BA: DD 9A 1E
BCS CODE_23D4C8         ; $23:D4BD: B0 09
LDX $0608,y             ; $23:D4BF: BE 08 06
LDA $0603,y             ; $23:D4C2: B9 03 06
CMP $1E9A,x             ; $23:D4C5: DD 9A 1E

CODE_23D4C8:
RTS                     ; $23:D4C8: 60

CODE_23D4C9:
TYA                     ; $23:D4C9: 98
PHA                     ; $23:D4CA: 48
LDY $0577               ; $23:D4CB: AC 77 05
BNE CODE_23D4FC         ; $23:D4CE: D0 2C
LDA #$32                ; $23:D4D0: A9 32
CMP $0603,x             ; $23:D4D2: DD 03 06
BNE CODE_23D4FC         ; $23:D4D5: D0 25
BIT $18                 ; $23:D4D7: 24 18
BVC CODE_23D4FC         ; $23:D4D9: 50 21
CPX #$03                ; $23:D4DB: E0 03
BEQ CODE_23D4FC         ; $23:D4DD: F0 1D
LDA $0564               ; $23:D4DF: AD 64 05
BNE CODE_23D4FC         ; $23:D4E2: D0 18
TXA                     ; $23:D4E4: 8A
PHA                     ; $23:D4E5: 48
JSR CODE_23D548         ; $23:D4E6: 20 48 D5
TXA                     ; $23:D4E9: 8A
ASL A                   ; $23:D4EA: 0A
PLA                     ; $23:D4EB: 68
TAX                     ; $23:D4EC: AA
BCS CODE_23D4FC         ; $23:D4ED: B0 0D
LDA #$00                ; $23:D4EF: A9 00
STA $0517               ; $23:D4F1: 8D 17 05
LDA #$02                ; $23:D4F4: A9 02
JSR CODE_23DE37         ; $23:D4F6: 20 37 DE
JMP CODE_23D545         ; $23:D4F9: 4C 45 D5

CODE_23D4FC:
LDA $0603,x             ; $23:D4FC: BD 03 06
CMP #$40                ; $23:D4FF: C9 40
BNE CODE_23D519         ; $23:D501: D0 16
LDA #$01                ; $23:D503: A9 01
JSR CODE_23DE37         ; $23:D505: 20 37 DE
JSL CODE_209BB7         ; $23:D508: 22 B7 9B 20
LDA #$01                ; $23:D50C: A9 01
STA $1203               ; $23:D50E: 8D 03 12
LDA #$00                ; $23:D511: A9 00
STA $0604               ; $23:D513: 8D 04 06
JMP CODE_23D545         ; $23:D516: 4C 45 D5

CODE_23D519:
CMP #$F2                ; $23:D519: C9 F2
BNE CODE_23D542         ; $23:D51B: D0 25
CPX #$02                ; $23:D51D: E0 02
BPL CODE_23D542         ; $23:D51F: 10 21
LDA #$09                ; $23:D521: A9 09
CMP $0564               ; $23:D523: CD 64 05
BEQ CODE_23D542         ; $23:D526: F0 1A
JSR CODE_23DE37         ; $23:D528: 20 37 DE
LDA #$10                ; $23:D52B: A9 10
STA $1CF3               ; $23:D52D: 8D F3 1C
LDA #$0B                ; $23:D530: A9 0B
STA $1200               ; $23:D532: 8D 00 12
LDA #$84                ; $23:D535: A9 84
STA $0567               ; $23:D537: 8D 67 05
LDA #$04                ; $23:D53A: A9 04

; P-switch music
STA $1202               ; $23:D53C: 8D 02 12
JMP CODE_23D545         ; $23:D53F: 4C 45 D5

CODE_23D542:
JSR CODE_23D567         ; $23:D542: 20 67 D5

CODE_23D545:
PLA                     ; $23:D545: 68
TAY                     ; $23:D546: A8
RTS                     ; $23:D547: 60

CODE_23D548:
LDX #$04                ; $23:D548: A2 04

CODE_23D54A:
LDA $0661,x             ; $23:D54A: BD 61 06
BEQ CODE_23D553         ; $23:D54D: F0 04
DEX                     ; $23:D54F: CA
BPL CODE_23D54A         ; $23:D550: 10 F8
RTS                     ; $23:D552: 60

CODE_23D553:
JSL CODE_279C96         ; $23:D553: 22 96 9C 27
LDA #$04                ; $23:D557: A9 04
STA $0661,x             ; $23:D559: 9D 61 06
LDA #$5C                ; $23:D55C: A9 5C
STA $0671,x             ; $23:D55E: 9D 71 06
LDA #$80                ; $23:D561: A9 80
STA $06A6,x             ; $23:D563: 9D A6 06
RTS                     ; $23:D566: 60

CODE_23D567:
TYA                     ; $23:D567: 98
PHA                     ; $23:D568: 48
LDY #$03                ; $23:D569: A0 03
CPX #$04                ; $23:D56B: E0 04
BEQ CODE_23D573         ; $23:D56D: F0 04
LDA $9D                 ; $23:D56F: A5 9D
BPL CODE_23D57E         ; $23:D571: 10 0B

CODE_23D573:
INY                     ; $23:D573: C8
INY                     ; $23:D574: C8
INY                     ; $23:D575: C8
LDA $0560               ; $23:D576: AD 60 05
CMP #$08                ; $23:D579: C9 08
BNE CODE_23D57E         ; $23:D57B: D0 01
INY                     ; $23:D57D: C8

CODE_23D57E:
LDA $0603,x             ; $23:D57E: BD 03 06
SEC                     ; $23:D581: 38
SBC.w DATA_21EC13,y     ; $23:D582: F9 13 EC
CMP.w DATA_21EC03,y     ; $23:D585: D9 03 EC
BCC CODE_23D590         ; $23:D588: 90 06

CODE_23D58A:
DEY                     ; $23:D58A: 88
BPL CODE_23D57E         ; $23:D58B: 10 F1
JMP CODE_23D619         ; $23:D58D: 4C 19 D6

CODE_23D590:
CLC                     ; $23:D590: 18
ADC.w DATA_21EC0B,y     ; $23:D591: 79 0B EC
STA $05                 ; $23:D594: 85 05
LDA.w DATA_21EC23,x     ; $23:D596: BD 23 EC
AND.w DATA_21EC1B,y     ; $23:D599: 39 1B EC
BEQ CODE_23D58A         ; $23:D59C: F0 EC
LDA #$10                ; $23:D59E: A9 10
STA $1A45               ; $23:D5A0: 8D 45 1A
LDY $05                 ; $23:D5A3: A4 05
LDA.w DATA_21EBC3,y     ; $23:D5A5: B9 C3 EB
JSR CODE_23D61C         ; $23:D5A8: 20 1C D6
TYA                     ; $23:D5AB: 98
BNE CODE_23D5B1         ; $23:D5AC: D0 03
JMP CODE_23D619         ; $23:D5AE: 4C 19 D6

CODE_23D5B1:
BMI CODE_23D5D6         ; $23:D5B1: 30 23
LDY $05                 ; $23:D5B3: A4 05
ORA.w DATA_21EBE3,y     ; $23:D5B5: 19 E3 EB
STA $057C               ; $23:D5B8: 8D 7C 05
LDA #$01                ; $23:D5BB: A9 01
STA $1200               ; $23:D5BD: 8D 00 12
LDA #$02                ; $23:D5C0: A9 02
STA $0B                 ; $23:D5C2: 85 0B
CPX #$02                ; $23:D5C4: E0 02
BMI CODE_23D5D6         ; $23:D5C6: 30 0E
LDY #$02                ; $23:D5C8: A0 02
LDA $5E                 ; $23:D5CA: A5 5E
AND #$0F                ; $23:D5CC: 29 0F
CMP #$08                ; $23:D5CE: C9 08
BMI CODE_23D5D3         ; $23:D5D0: 30 01
INY                     ; $23:D5D2: C8

CODE_23D5D3:
JMP CODE_23D5E7         ; $23:D5D3: 4C E7 D5

CODE_23D5D6:
LDY #$00                ; $23:D5D6: A0 00
LDA $0563               ; $23:D5D8: AD 63 05
BEQ CODE_23D5E2         ; $23:D5DB: F0 05
TXA                     ; $23:D5DD: 8A
BEQ CODE_23D5E7         ; $23:D5DE: F0 07
BNE CODE_23D5E6         ; $23:D5E0: D0 04

CODE_23D5E2:
LDA $9D                 ; $23:D5E2: A5 9D
BPL CODE_23D5E7         ; $23:D5E4: 10 01

CODE_23D5E6:
INY                     ; $23:D5E6: C8

CODE_23D5E7:
STY $057D               ; $23:D5E7: 8C 7D 05
LDY #$06                ; $23:D5EA: A0 06
LDA $0661,y             ; $23:D5EC: B9 61 06
BEQ CODE_23D5F2         ; $23:D5EF: F0 01
INY                     ; $23:D5F1: C8

CODE_23D5F2:
LDA $0D                 ; $23:D5F2: A5 0D
AND #$F0                ; $23:D5F4: 29 F0
STA $0D                 ; $23:D5F6: 85 0D
STA $0071,y             ; $23:D5F8: 99 71 00
LDA $0C                 ; $23:D5FB: A5 0C
STA $0056,y             ; $23:D5FD: 99 56 00
LDA $0E                 ; $23:D600: A5 0E
STA $0044,y             ; $23:D602: 99 44 00
LDA $0F                 ; $23:D605: A5 0F
STA $005F,y             ; $23:D607: 99 5F 00
JSL CODE_27A8B1         ; $23:D60A: 22 B1 A8 27
LDA $057D               ; $23:D60E: AD 7D 05
BEQ CODE_23D619         ; $23:D611: F0 06
LDA #$F3                ; $23:D613: A9 F3
JSL CODE_27A75D         ; $23:D615: 22 5D A7 27

CODE_23D619:
PLA                     ; $23:D619: 68
TAY                     ; $23:D61A: A8
RTS                     ; $23:D61B: 60

CODE_23D61C:
STA $00                 ; $23:D61C: 85 00
LDA $057C               ; $23:D61E: AD 7C 05
BNE CODE_23D645         ; $23:D621: D0 22
LDY #$06                ; $23:D623: A0 06
LDA $0661,y             ; $23:D625: B9 61 06
ORA $052E               ; $23:D628: 0D 2E 05
BEQ CODE_23D635         ; $23:D62B: F0 08
LDA $0662,y             ; $23:D62D: B9 62 06
ORA $052F               ; $23:D630: 0D 2F 05
BNE CODE_23D645         ; $23:D633: D0 10

CODE_23D635:
LDY #$05                ; $23:D635: A0 05
LDA $0518,y             ; $23:D637: B9 18 05
BEQ CODE_23D648         ; $23:D63A: F0 0C
LDA $0F                 ; $23:D63C: A5 0F
AND #$F0                ; $23:D63E: 29 F0
CMP $005F,y             ; $23:D640: D9 5F 00
BNE CODE_23D648         ; $23:D643: D0 03

CODE_23D645:
LDY #$00                ; $23:D645: A0 00
RTS                     ; $23:D647: 60

CODE_23D648:
LDA $0F                 ; $23:D648: A5 0F
AND #$F0                ; $23:D64A: 29 F0
STA $0F                 ; $23:D64C: 85 0F
LDA $00                 ; $23:D64E: A5 00
ASL A                   ; $23:D650: 0A
TAY                     ; $23:D651: A8
PHB                     ; $23:D652: 8B
PHK                     ; $23:D653: 4B
PLB                     ; $23:D654: AB
LDA PNTR_23D663,y       ; $23:D655: B9 63 D6
STA $00                 ; $23:D658: 85 00
LDA PNTR_23D663+1,y     ; $23:D65A: B9 64 D6
STA $01                 ; $23:D65D: 85 01
PLB                     ; $23:D65F: AB
JMP ($0000)             ; $23:D660: 6C 00 00

PNTR_23D663:
dw CODE_23D67B
dw CODE_23D67E
dw CODE_23D68C
dw CODE_23D69A
dw CODE_23D6A2
dw CODE_23D6C2
dw CODE_23D6D2
dw CODE_23D74D
dw CODE_23D757
dw CODE_23D76B
dw CODE_23D777
dw CODE_23D7C8

CODE_23D67B:
LDY #$01                ; $23:D67B: A0 01
RTS                     ; $23:D67D: 60

CODE_23D67E:
LDA #$00                ; $23:D67E: A9 00
STA $0586               ; $23:D680: 8D 86 05
LDY #$05                ; $23:D683: A0 05
LDA $BB                 ; $23:D685: A5 BB
BEQ CODE_23D68B         ; $23:D687: F0 02
LDY #$02                ; $23:D689: A0 02

CODE_23D68B:
RTS                     ; $23:D68B: 60

CODE_23D68C:
LDA #$00                ; $23:D68C: A9 00
STA $0586               ; $23:D68E: 8D 86 05
LDY #$05                ; $23:D691: A0 05
LDA $BB                 ; $23:D693: A5 BB
BEQ CODE_23D699         ; $23:D695: F0 02
LDY #$03                ; $23:D697: A0 03

CODE_23D699:
RTS                     ; $23:D699: 60

CODE_23D69A:
LDA #$80                ; $23:D69A: A9 80
STA $0586               ; $23:D69C: 8D 86 05
LDY #$04                ; $23:D69F: A0 04
RTS                     ; $23:D6A1: 60

CODE_23D6A2:
JSR CODE_23D7D2         ; $23:D6A2: 20 D2 D7
LDY #$01                ; $23:D6A5: A0 01
LDA $0F                 ; $23:D6A7: A5 0F
ORA $0E                 ; $23:D6A9: 05 0E
CMP $0582               ; $23:D6AB: CD 82 05
BNE CODE_23D6C1         ; $23:D6AE: D0 11
LDA $0516               ; $23:D6B0: AD 16 05
BEQ CODE_23D6C1         ; $23:D6B3: F0 0C
LDA $0581               ; $23:D6B5: AD 81 05
BMI CODE_23D6C1         ; $23:D6B8: 30 07
DEC $0581               ; $23:D6BA: CE 81 05
LDA #$17                ; $23:D6BD: A9 17
STA $05                 ; $23:D6BF: 85 05

CODE_23D6C1:
RTS                     ; $23:D6C1: 60

CODE_23D6C2:
LDA #$80                ; $23:D6C2: A9 80
STA $0586               ; $23:D6C4: 8D 86 05
LDY #$04                ; $23:D6C7: A0 04
LDA $0553               ; $23:D6C9: AD 53 05
BNE CODE_23D6D1         ; $23:D6CC: D0 03
JMP CODE_23D6A2         ; $23:D6CE: 4C A2 D6

CODE_23D6D1:
RTS                     ; $23:D6D1: 60

CODE_23D6D2:
JSR CODE_23D7ED         ; $23:D6D2: 20 ED D7
CPX #$04                ; $23:D6D5: E0 04
BEQ CODE_23D6E0         ; $23:D6D7: F0 07
LDA $BB                 ; $23:D6D9: A5 BB
BNE CODE_23D6E0         ; $23:D6DB: D0 03
LDY #$01                ; $23:D6DD: A0 01
RTS                     ; $23:D6DF: 60

CODE_23D6E0:
LDA #$07                ; $23:D6E0: A9 07
STA $1203               ; $23:D6E2: 8D 03 12
JSL CODE_279544         ; $23:D6E5: 22 44 95 27
LDA #$02                ; $23:D6E9: A9 02
STA $1F9C               ; $23:D6EB: 8D 9C 1F
LDA $0543               ; $23:D6EE: AD 43 05
STA $D8                 ; $23:D6F1: 85 D8
LDA $0542               ; $23:D6F3: AD 42 05
STA $D9                 ; $23:D6F6: 85 D9
LDA $0C                 ; $23:D6F8: A5 0C
XBA                     ; $23:D6FA: EB
LDA $0D                 ; $23:D6FB: A5 0D
REP #$20                ; $23:D6FD: C2 20
AND #$FFF0              ; $23:D6FF: 29 F0 FF
SEC                     ; $23:D702: 38
SBC $D8                 ; $23:D703: E5 D8
STA $DA                 ; $23:D705: 85 DA
CLC                     ; $23:D707: 18
ADC #$0008              ; $23:D708: 69 08 00
STA $DC                 ; $23:D70B: 85 DC
SEP #$20                ; $23:D70D: E2 20
LDA $DA                 ; $23:D70F: A5 DA
STA $1F9F               ; $23:D711: 8D 9F 1F
LDA $DB                 ; $23:D714: A5 DB
STA $1FB1               ; $23:D716: 8D B1 1F
LDA $DC                 ; $23:D719: A5 DC
STA $1FAB               ; $23:D71B: 8D AB 1F
LDA $DD                 ; $23:D71E: A5 DD
STA $DF                 ; $23:D720: 85 DF
LDA $0E                 ; $23:D722: A5 0E
XBA                     ; $23:D724: EB
LDA $0F                 ; $23:D725: A5 0F
REP #$20                ; $23:D727: C2 20
SEC                     ; $23:D729: 38
SBC $0210               ; $23:D72A: ED 10 02
SEP #$20                ; $23:D72D: E2 20
STA $1FA2               ; $23:D72F: 8D A2 1F
XBA                     ; $23:D732: EB
STA $02AE               ; $23:D733: 8D AE 02
STZ $1FA8               ; $23:D736: 9C A8 1F
STZ $1FAE               ; $23:D739: 9C AE 1F
LDA #$FA                ; $23:D73C: A9 FA
STA $1FA5               ; $23:D73E: 8D A5 1F
LDA #$01                ; $23:D741: A9 01
STA $069C               ; $23:D743: 8D 9C 06
LDY #$02                ; $23:D746: A0 02
STY $0B                 ; $23:D748: 84 0B
LDY #$80                ; $23:D74A: A0 80
RTS                     ; $23:D74C: 60

CODE_23D74D:
LDY #$00                ; $23:D74D: A0 00
LDA #$03                ; $23:D74F: A9 03
STA $1203               ; $23:D751: 8D 03 12
LDY #$06                ; $23:D754: A0 06
RTS                     ; $23:D756: 60

CODE_23D757:
LDA $0F                 ; $23:D757: A5 0F
ORA $0E                 ; $23:D759: 05 0E
STA $0582               ; $23:D75B: 8D 82 05
LDA #$09                ; $23:D75E: A9 09
STA $0581               ; $23:D760: 8D 81 05
LDA #$C8                ; $23:D763: A9 C8
STA $0516               ; $23:D765: 8D 16 05
JMP CODE_23D6A2         ; $23:D768: 4C A2 D6

CODE_23D76B:
JSL CODE_209BB7         ; $23:D76B: 22 B7 9B 20
LDA #$00                ; $23:D76F: A9 00
STA $0586               ; $23:D771: 8D 86 05
LDY #$07                ; $23:D774: A0 07
RTS                     ; $23:D776: 60

CODE_23D777:
LDY #$05                ; $23:D777: A0 05

CODE_23D779:
LDA $1FC8,y             ; $23:D779: B9 C8 1F
BEQ CODE_23D784         ; $23:D77C: F0 06
DEY                     ; $23:D77E: 88
BPL CODE_23D779         ; $23:D77F: 10 F8
JMP CODE_23D78E         ; $23:D781: 4C 8E D7

CODE_23D784:
LDA #$16                ; $23:D784: A9 16
STA $1FC8,y             ; $23:D786: 99 C8 1F
LDA #$20                ; $23:D789: A9 20
STA $06C7,y             ; $23:D78B: 99 C7 06

CODE_23D78E:
LDA $0D                 ; $23:D78E: A5 0D
AND #$F0                ; $23:D790: 29 F0
SEC                     ; $23:D792: 38
SBC #$10                ; $23:D793: E9 10
PHP                     ; $23:D795: 08
CPY #$00                ; $23:D796: C0 00
BMI CODE_23D79D         ; $23:D798: 30 03
STA $05BF,y             ; $23:D79A: 99 BF 05

CODE_23D79D:
STA $052B               ; $23:D79D: 8D 2B 05
PLP                     ; $23:D7A0: 28
LDA $0C                 ; $23:D7A1: A5 0C
SBC #$00                ; $23:D7A3: E9 00
CPY #$00                ; $23:D7A5: C0 00
BMI CODE_23D7AC         ; $23:D7A7: 30 03
STA $1FD7,y             ; $23:D7A9: 99 D7 1F

CODE_23D7AC:
STA $052A               ; $23:D7AC: 8D 2A 05
LDA $0F                 ; $23:D7AF: A5 0F
CPY #$00                ; $23:D7B1: C0 00
BMI CODE_23D7B8         ; $23:D7B3: 30 03
STA $05C9,y             ; $23:D7B5: 99 C9 05

CODE_23D7B8:
STA $0529               ; $23:D7B8: 8D 29 05
LDA $0E                 ; $23:D7BB: A5 0E
STA $0528               ; $23:D7BD: 8D 28 05
LDA #$12                ; $23:D7C0: A9 12
STA $0564               ; $23:D7C2: 8D 64 05
LDY #$01                ; $23:D7C5: A0 01
RTS                     ; $23:D7C7: 60

CODE_23D7C8:
JSR CODE_23D6D2         ; $23:D7C8: 20 D2 D6
BEQ CODE_23D7D1         ; $23:D7CB: F0 04
LDA #$0C                ; $23:D7CD: A9 0C
STA $0B                 ; $23:D7CF: 85 0B

CODE_23D7D1:
RTS                     ; $23:D7D1: 60

CODE_23D7D2:
INC $0422               ; $23:D7D2: EE 22 04
LDA $7E3966             ; $23:D7D5: AF 66 39 7E
INC A                   ; $23:D7D9: 1A
STA $7E3966             ; $23:D7DA: 8F 66 39 7E
LDA $0D                 ; $23:D7DE: A5 0D
STA $00                 ; $23:D7E0: 85 00
LDA $0F                 ; $23:D7E2: A5 0F
ORA #$04                ; $23:D7E4: 09 04
STA $01                 ; $23:D7E6: 85 01
JSL CODE_278AE8         ; $23:D7E8: 22 E8 8A 27
RTS                     ; $23:D7EC: 60

CODE_23D7ED:
LDA $0D                 ; $23:D7ED: A5 0D
PHA                     ; $23:D7EF: 48
SEC                     ; $23:D7F0: 38
SBC #$10                ; $23:D7F1: E9 10
STA $0D                 ; $23:D7F3: 85 0D
STX $04                 ; $23:D7F5: 86 04
JSL CODE_209FE0         ; $23:D7F7: 22 E0 9F 20
LDX $04                 ; $23:D7FB: A6 04
CMP #$40                ; $23:D7FD: C9 40
BNE CODE_23D80C         ; $23:D7FF: D0 0B
LDA #$02                ; $23:D801: A9 02
JSR CODE_23DE37         ; $23:D803: 20 37 DE
PLA                     ; $23:D806: 68
STA $0D                 ; $23:D807: 85 0D
JMP CODE_23D7D2         ; $23:D809: 4C D2 D7

CODE_23D80C:
PLA                     ; $23:D80C: 68
STA $0D                 ; $23:D80D: 85 0D
RTS                     ; $23:D80F: 60

CODE_23D810:
LDA $0517               ; $23:D810: AD 17 05
CMP #$09                ; $23:D813: C9 09
BNE CODE_23D83A         ; $23:D815: D0 23
LDY #$00                ; $23:D817: A0 00
LDA $BD                 ; $23:D819: A5 BD
BNE CODE_23D81F         ; $23:D81B: D0 02
LDY #$02                ; $23:D81D: A0 02

CODE_23D81F:
LDA.w DATA_21EC28,y     ; $23:D81F: B9 28 EC
STA $09                 ; $23:D822: 85 09
LDA.w DATA_21EC28+1,y   ; $23:D824: B9 29 EC
STA $0A                 ; $23:D827: 85 0A
JSL CODE_23D2B6         ; $23:D829: 22 B6 D2 23
LDX #$04                ; $23:D82D: A2 04
STA $0603,x             ; $23:D82F: 9D 03 06
JSR CODE_23D567         ; $23:D832: 20 67 D5
LDA #$01                ; $23:D835: A9 01
STA $057D               ; $23:D837: 8D 7D 05

CODE_23D83A:
RTS                     ; $23:D83A: 60

CODE_23D83B:
LDX #$04                ; $23:D83B: A2 04
STA $0603,x             ; $23:D83D: 9D 03 06
LDA $057C               ; $23:D840: AD 7C 05
BNE CODE_23D895         ; $23:D843: D0 50
JSR CODE_23D567         ; $23:D845: 20 67 D5
LDA $057C               ; $23:D848: AD 7C 05
BEQ CODE_23D855         ; $23:D84B: F0 08
LDA #$01                ; $23:D84D: A9 01
STA $057D               ; $23:D84F: 8D 7D 05
STA $057E               ; $23:D852: 8D 7E 05

CODE_23D855:
LDA $0560               ; $23:D855: AD 60 05
CMP #$0A                ; $23:D858: C9 0A
BNE CODE_23D895         ; $23:D85A: D0 39
LDX #$04                ; $23:D85C: A2 04
LDA $0518,x             ; $23:D85E: BD 18 05
BNE CODE_23D895         ; $23:D861: D0 32
LDA $0C                 ; $23:D863: A5 0C
STA $56,x               ; $23:D865: 95 56
LDA $0D                 ; $23:D867: A5 0D
SEC                     ; $23:D869: 38
SBC #$10                ; $23:D86A: E9 10
BCS CODE_23D870         ; $23:D86C: B0 02
DEC $56,x               ; $23:D86E: D6 56

CODE_23D870:
AND #$E0                ; $23:D870: 29 E0
ORA #$10                ; $23:D872: 09 10
STA $71,x               ; $23:D874: 95 71
LDA $0E                 ; $23:D876: A5 0E
STA $44,x               ; $23:D878: 95 44
LDA $0F                 ; $23:D87A: A5 0F
AND #$E0                ; $23:D87C: 29 E0
STA $5F,x               ; $23:D87E: 95 5F
SEC                     ; $23:D880: 38
SBC $0210               ; $23:D881: ED 10 02
TAY                     ; $23:D884: A8
LDA $44,x               ; $23:D885: B5 44
SBC $12                 ; $23:D887: E5 12
BNE CODE_23D895         ; $23:D889: D0 0A
CPY #$E0                ; $23:D88B: C0 E0
BCS CODE_23D895         ; $23:D88D: B0 06
LDA $0607               ; $23:D88F: AD 07 06
STA $0691,x             ; $23:D892: 9D 91 06

CODE_23D895:
RTL                     ; $23:D895: 6B

CODE_23D896:
LDY #$16                ; $23:D896: A0 16
LDA $056F               ; $23:D898: AD 6F 05
BNE CODE_23D8A3         ; $23:D89B: D0 06
LDA $BB                 ; $23:D89D: A5 BB
BEQ CODE_23D8A3         ; $23:D89F: F0 02
LDY #$06                ; $23:D8A1: A0 06

CODE_23D8A3:
LDA $5E                 ; $23:D8A3: A5 5E
AND #$0F                ; $23:D8A5: 29 0F
CMP #$08                ; $23:D8A7: C9 08
BPL CODE_23D8B0         ; $23:D8A9: 10 05
TYA                     ; $23:D8AB: 98
CLC                     ; $23:D8AC: 18
ADC #$08                ; $23:D8AD: 69 08
TAY                     ; $23:D8AF: A8

CODE_23D8B0:
LDX #$03                ; $23:D8B0: A2 03

CODE_23D8B2:
JSR CODE_23DADA         ; $23:D8B2: 20 DA DA
JSR CODE_23D4C9         ; $23:D8B5: 20 C9 D4
DEY                     ; $23:D8B8: 88
DEY                     ; $23:D8B9: 88
DEX                     ; $23:D8BA: CA
BPL CODE_23D8B2         ; $23:D8BB: 10 F5
LDX #$00                ; $23:D8BD: A2 00
LDY #$00                ; $23:D8BF: A0 00
LDA $060D,x             ; $23:D8C1: BD 0D 06
CMP #$04                ; $23:D8C4: C9 04
BEQ CODE_23D915         ; $23:D8C6: F0 4D
CMP #$08                ; $23:D8C8: C9 08
BEQ CODE_23D915         ; $23:D8CA: F0 49
LDY $A6                 ; $23:D8CC: A4 A6
BNE CODE_23D8D9         ; $23:D8CE: D0 09
LDY $027F               ; $23:D8D0: AC 7F 02
BNE CODE_23D8D9         ; $23:D8D3: D0 04
CMP #$00                ; $23:D8D5: C9 00
BEQ CODE_23D90C         ; $23:D8D7: F0 33

CODE_23D8D9:
STZ $027F               ; $23:D8D9: 9C 7F 02
INX                     ; $23:D8DC: E8
LDA $060D,x             ; $23:D8DD: BD 0D 06
CMP #$07                ; $23:D8E0: C9 07
BEQ CODE_23D8E8         ; $23:D8E2: F0 04
CMP #$04                ; $23:D8E4: C9 04
BNE CODE_23D934         ; $23:D8E6: D0 4C

CODE_23D8E8:
LDX $BB                 ; $23:D8E8: A6 BB
BEQ CODE_23D8F4         ; $23:D8EA: F0 08
LDX #$01                ; $23:D8EC: A2 01
LDA $056F               ; $23:D8EE: AD 6F 05
BEQ CODE_23D8F4         ; $23:D8F1: F0 01
DEX                     ; $23:D8F3: CA

CODE_23D8F4:
LDA $70                 ; $23:D8F4: A5 70
CLC                     ; $23:D8F6: 18
ADC.w DATA_21EBA6,x     ; $23:D8F7: 7D A6 EB

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $23:D8FA: 22 59 A8 27
AND #$0F                ; $23:D8FE: 29 0F
CLC                     ; $23:D900: 18
ADC $70                 ; $23:D901: 65 70
BCC CODE_23D907         ; $23:D903: 90 02
INC $55                 ; $23:D905: E6 55

CODE_23D907:
STA $70                 ; $23:D907: 85 70
JMP CODE_23D926         ; $23:D909: 4C 26 D9

CODE_23D90C:
LDA $70                 ; $23:D90C: A5 70
AND #$0F                ; $23:D90E: 29 0F
CMP #$0A                ; $23:D910: C9 0A
BMI CODE_23D934         ; $23:D912: 30 20
INY                     ; $23:D914: C8

CODE_23D915:
LDA $70                 ; $23:D915: A5 70
AND #$F0                ; $23:D917: 29 F0
CLC                     ; $23:D919: 18
ADC.w DATA_21EC2E,y     ; $23:D91A: 79 2E EC
STA $70                 ; $23:D91D: 85 70
LDA $55                 ; $23:D91F: A5 55
ADC.w DATA_21EC2C,y     ; $23:D921: 79 2C EC
STA $55                 ; $23:D924: 85 55

CODE_23D926:
LDA.w DATA_21EC30,x     ; $23:D926: BD 30 EC
LDY $BB                 ; $23:D929: A4 BB
BEQ CODE_23D930         ; $23:D92B: F0 03
CLC                     ; $23:D92D: 18
ADC #$10                ; $23:D92E: 69 10

CODE_23D930:
TAY                     ; $23:D930: A8
JSR CODE_23DADA         ; $23:D931: 20 DA DA

CODE_23D934:
LDY #$02                ; $23:D934: A0 02
JSR CODE_23D4B4         ; $23:D936: 20 B4 D4
BCC CODE_23D979         ; $23:D939: 90 3E
LDA $0585               ; $23:D93B: AD 85 05
BNE CODE_23D979         ; $23:D93E: D0 39
LDX #$00                ; $23:D940: A2 00
LDY #$01                ; $23:D942: A0 01
LDA $5E                 ; $23:D944: A5 5E
AND #$0F                ; $23:D946: 29 0F
CMP #$08                ; $23:D948: C9 08
BPL CODE_23D94F         ; $23:D94A: 10 03
INX                     ; $23:D94C: E8
LDY #$FF                ; $23:D94D: A0 FF

CODE_23D94F:
LDA.w DATA_21EBAC,x     ; $23:D94F: BD AC EB
CLC                     ; $23:D952: 18
ADC $5E                 ; $23:D953: 65 5E
AND #$0F                ; $23:D955: 29 0F
BEQ CODE_23D979         ; $23:D957: F0 20
TYA                     ; $23:D959: 98
BPL CODE_23D95E         ; $23:D95A: 10 02
DEC $43                 ; $23:D95C: C6 43

CODE_23D95E:
CLC                     ; $23:D95E: 18
ADC $5E                 ; $23:D95F: 65 5E
STA $5E                 ; $23:D961: 85 5E
BCC CODE_23D967         ; $23:D963: 90 02
INC $43                 ; $23:D965: E6 43

CODE_23D967:
INY                     ; $23:D967: C8
LDA $8B                 ; $23:D968: A5 8B
BPL CODE_23D96E         ; $23:D96A: 10 02
DEY                     ; $23:D96C: 88
DEY                     ; $23:D96D: 88

CODE_23D96E:
TYA                     ; $23:D96E: 98
BNE CODE_23D979         ; $23:D96F: D0 08
STA $8B                 ; $23:D971: 85 8B
STA $0545               ; $23:D973: 8D 45 05
INC $0574               ; $23:D976: EE 74 05

CODE_23D979:
LDX #$00                ; $23:D979: A2 00
LDY $060D               ; $23:D97B: AC 0D 06
LDA.w DATA_21EBAE,y     ; $23:D97E: B9 AE EB
BEQ CODE_23D984         ; $23:D981: F0 01
INX                     ; $23:D983: E8

CODE_23D984:
LDA $5E                 ; $23:D984: A5 5E
CLC                     ; $23:D986: 18
ADC.w DATA_21EB83       ; $23:D987: 6D 83 EB
AND #$0F                ; $23:D98A: 29 0F
STA $00                 ; $23:D98C: 85 00
LDA $060D,x             ; $23:D98E: BD 0D 06
TAY                     ; $23:D991: A8
LSR A                   ; $23:D992: 4A
LSR A                   ; $23:D993: 4A
LSR A                   ; $23:D994: 4A
LSR A                   ; $23:D995: 4A
CLC                     ; $23:D996: 18
ADC $53                 ; $23:D997: 65 53
STA $53                 ; $23:D999: 85 53
TYA                     ; $23:D99B: 98
ASL A                   ; $23:D99C: 0A
ASL A                   ; $23:D99D: 0A
ASL A                   ; $23:D99E: 0A
ASL A                   ; $23:D99F: 0A
ORA $00                 ; $23:D9A0: 05 00
STA $00                 ; $23:D9A2: 85 00
LDA.w DATA_21AD5B,y     ; $23:D9A4: B9 5B AD
STA $0F                 ; $23:D9A7: 85 0F
LDY $00                 ; $23:D9A9: A4 00
TXA                     ; $23:D9AB: 8A
BNE CODE_23D9B1         ; $23:D9AC: D0 03
JMP CODE_23DA2C         ; $23:D9AE: 4C 2C DA

CODE_23D9B1:
LDA $060E               ; $23:D9B1: AD 0E 06
CMP #$00                ; $23:D9B4: C9 00
BNE CODE_23D9D8         ; $23:D9B6: D0 20
LDA $A6                 ; $23:D9B8: A5 A6
BNE CODE_23D9D7         ; $23:D9BA: D0 1B
LDX #$04                ; $23:D9BC: A2 04
LDY #$20                ; $23:D9BE: A0 20
LDA $5E                 ; $23:D9C0: A5 5E
AND #$0F                ; $23:D9C2: 29 0F
CMP #$08                ; $23:D9C4: C9 08
BPL CODE_23D9CA         ; $23:D9C6: 10 02
INY                     ; $23:D9C8: C8
INY                     ; $23:D9C9: C8

CODE_23D9CA:
JSR CODE_23DADA         ; $23:D9CA: 20 DA DA
CMP #$03                ; $23:D9CD: C9 03
BEQ CODE_23D9D7         ; $23:D9CF: F0 06
LDA #$00                ; $23:D9D1: A9 00
STA $9D                 ; $23:D9D3: 85 9D
INC $A6                 ; $23:D9D5: E6 A6

CODE_23D9D7:
RTS                     ; $23:D9D7: 60

CODE_23D9D8:
LDX $BB                 ; $23:D9D8: A6 BB
BEQ CODE_23D9E4         ; $23:D9DA: F0 08
LDX #$01                ; $23:D9DC: A2 01
LDA $056F               ; $23:D9DE: AD 6F 05
BEQ CODE_23D9E4         ; $23:D9E1: F0 01
DEX                     ; $23:D9E3: CA

CODE_23D9E4:
LDA $70                 ; $23:D9E4: A5 70
CLC                     ; $23:D9E6: 18
ADC.w DATA_21EBA6,x     ; $23:D9E7: 7D A6 EB
AND #$0F                ; $23:D9EA: 29 0F
STA $00                 ; $23:D9EC: 85 00
LDA ($52),y             ; $23:D9EE: B1 52
LSR A                   ; $23:D9F0: 4A
LSR A                   ; $23:D9F1: 4A
LSR A                   ; $23:D9F2: 4A
LSR A                   ; $23:D9F3: 4A
STA $01                 ; $23:D9F4: 85 01
SEC                     ; $23:D9F6: 38
SBC $00                 ; $23:D9F7: E5 00
BMI CODE_23DA2B         ; $23:D9F9: 30 30
INC $056D               ; $23:D9FB: EE 6D 05
PHA                     ; $23:D9FE: 48
LDA $9D                 ; $23:D9FF: A5 9D
BPL CODE_23DA15         ; $23:DA01: 10 12
LDA $1A0F               ; $23:DA03: AD 0F 1A

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $23:DA06: 22 59 A8 27
BPL CODE_23DA0E         ; $23:DA0A: 10 02
LDA #$00                ; $23:DA0C: A9 00

CODE_23DA0E:
STA $9D                 ; $23:DA0E: 85 9D
LDA #$01                ; $23:DA10: A9 01
STA $1200               ; $23:DA12: 8D 00 12

CODE_23DA15:
PLA                     ; $23:DA15: 68
LDY $060E               ; $23:DA16: AC 0E 06
CPY #$03                ; $23:DA19: C0 03
BNE CODE_23DA22         ; $23:DA1B: D0 05
LDY $0585               ; $23:DA1D: AC 85 05
BNE CODE_23DA2B         ; $23:DA20: D0 09

CODE_23DA22:
CLC                     ; $23:DA22: 18
ADC $70                 ; $23:DA23: 65 70
STA $70                 ; $23:DA25: 85 70
BCC CODE_23DA2B         ; $23:DA27: 90 02
INC $55                 ; $23:DA29: E6 55

CODE_23DA2B:
RTS                     ; $23:DA2B: 60

CODE_23DA2C:
LDX $0F                 ; $23:DA2C: A6 0F
LDA $A6                 ; $23:DA2E: A5 A6
BEQ CODE_23DA41         ; $23:DA30: F0 0F
LDA $9D                 ; $23:DA32: A5 9D
CMP #$E4                ; $23:DA34: C9 E4
BMI CODE_23D9D7         ; $23:DA36: 30 9F
LDA $70                 ; $23:DA38: A5 70
AND #$0F                ; $23:DA3A: 29 0F
SEC                     ; $23:DA3C: 38
SBC ($52),y             ; $23:DA3D: F1 52
BMI CODE_23D9D7         ; $23:DA3F: 30 96

CODE_23DA41:
LDA #$00                ; $23:DA41: A9 00
STA $A6                 ; $23:DA43: 85 A6
STA $9D                 ; $23:DA45: 85 9D
STA $05F4               ; $23:DA47: 8D F4 05
LDA ($52),y             ; $23:DA4A: B1 52
AND #$0F                ; $23:DA4C: 29 0F
STA $00                 ; $23:DA4E: 85 00
LDA $70                 ; $23:DA50: A5 70
AND #$F0                ; $23:DA52: 29 F0
CLC                     ; $23:DA54: 18
ADC $00                 ; $23:DA55: 65 00
STA $70                 ; $23:DA57: 85 70
BCC CODE_23DA5D         ; $23:DA59: 90 02
INC $55                 ; $23:DA5B: E6 55

CODE_23DA5D:
TXA                     ; $23:DA5D: 8A
BEQ CODE_23DA64         ; $23:DA5E: F0 04
EOR $8B                 ; $23:DA60: 45 8B
AND #$80                ; $23:DA62: 29 80

CODE_23DA64:
STA $0546               ; $23:DA64: 8D 46 05
LDA $0575               ; $23:DA67: AD 75 05
BEQ CODE_23DA73         ; $23:DA6A: F0 07
LDA #$00                ; $23:DA6C: A9 00
STA $0545               ; $23:DA6E: 8D 45 05
BEQ CODE_23DAD2         ; $23:DA71: F0 5F

CODE_23DA73:
TXA                     ; $23:DA73: 8A
LDY $0545               ; $23:DA74: AC 45 05
BEQ CODE_23DA83         ; $23:DA77: F0 0A
BPL CODE_23DA7F         ; $23:DA79: 10 04

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $23:DA7B: 22 59 A8 27

CODE_23DA7F:
CMP #$00                ; $23:DA7F: C9 00
BMI CODE_23DAC2         ; $23:DA81: 30 3F

CODE_23DA83:
LDA $0545               ; $23:DA83: AD 45 05
BNE CODE_23DAA4         ; $23:DA86: D0 1C
TXA                     ; $23:DA88: 8A
BEQ CODE_23DAD2         ; $23:DA89: F0 47
LDY $BB                 ; $23:DA8B: A4 BB
LDA.w DATA_21AF64,y     ; $23:DA8D: B9 64 AF
AND #$02                ; $23:DA90: 29 02
BNE CODE_23DAD2         ; $23:DA92: D0 3E
LDA $0577               ; $23:DA94: AD 77 05
BNE CODE_23DAD2         ; $23:DA97: D0 39
LDA $17                 ; $23:DA99: A5 17
AND #$07                ; $23:DA9B: 29 07
CMP #$04                ; $23:DA9D: C9 04
BNE CODE_23DAD2         ; $23:DA9F: D0 31
JSR CODE_23CD66         ; $23:DAA1: 20 66 CD

CODE_23DAA4:
TXA                     ; $23:DAA4: 8A
CLC                     ; $23:DAA5: 18
ADC $0545               ; $23:DAA6: 6D 45 05
STA $0545               ; $23:DAA9: 8D 45 05
BPL CODE_23DAB2         ; $23:DAAC: 10 04

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $23:DAAE: 22 59 A8 27

CODE_23DAB2:
CMP #$40                ; $23:DAB2: C9 40
BMI CODE_23DAC2         ; $23:DAB4: 30 0C
LDY #$40                ; $23:DAB6: A0 40
LDA $0545               ; $23:DAB8: AD 45 05
BPL CODE_23DABF         ; $23:DABB: 10 02
LDY #$C0                ; $23:DABD: A0 C0

CODE_23DABF:
STY $0545               ; $23:DABF: 8C 45 05

CODE_23DAC2:
DEC $0545               ; $23:DAC2: CE 45 05
BPL CODE_23DACD         ; $23:DAC5: 10 06
INC $0545               ; $23:DAC7: EE 45 05
INC $0545               ; $23:DACA: EE 45 05

CODE_23DACD:
LDA $0545               ; $23:DACD: AD 45 05
STA $8B                 ; $23:DAD0: 85 8B

CODE_23DAD2:
LDA $8B                 ; $23:DAD2: A5 8B
BEQ CODE_23DAD9         ; $23:DAD4: F0 03
STX $0569               ; $23:DAD6: 8E 69 05

CODE_23DAD9:
RTS                     ; $23:DAD9: 60

CODE_23DADA:
LDA.w DATA_21EB82,y     ; $23:DADA: B9 82 EB
STA $09                 ; $23:DADD: 85 09
LDA.w DATA_21EB83,y     ; $23:DADF: B9 83 EB
STA $0A                 ; $23:DAE2: 85 0A
JSL CODE_23D2B6         ; $23:DAE4: 22 B6 D2 23
STA $0603,x             ; $23:DAE8: 9D 03 06
AND #$C0                ; $23:DAEB: 29 C0
ASL A                   ; $23:DAED: 0A
ROL A                   ; $23:DAEE: 2A
ROL A                   ; $23:DAEF: 2A
STA $0608,x             ; $23:DAF0: 9D 08 06
LDA $B4                 ; $23:DAF3: A5 B4
STA $060D,x             ; $23:DAF5: 9D 0D 06
RTS                     ; $23:DAF8: 60

CODE_23DAF9:
LDA $057A               ; $23:DAF9: AD 7A 05
ORA $0517               ; $23:DAFC: 0D 17 05
ORA $054F               ; $23:DAFF: 0D 4F 05
BNE CODE_23DB4E         ; $23:DB02: D0 4A
LDY $0560               ; $23:DB04: AC 60 05
LDA.w DATA_21EC32,y     ; $23:DB07: B9 32 EC
STA $0F                 ; $23:DB0A: 85 0F
LDA $A6                 ; $23:DB0C: A5 A6
BNE CODE_23DB51         ; $23:DB0E: D0 41
LDA $0605               ; $23:DB10: AD 05 06
LDY $0425               ; $23:DB13: AC 25 04
BEQ CODE_23DB20         ; $23:DB16: F0 08
LDY #$02                ; $23:DB18: A0 02
CMP #$9E                ; $23:DB1A: C9 9E
BEQ CODE_23DB2E         ; $23:DB1C: F0 10
LDY #$00                ; $23:DB1E: A0 00

CODE_23DB20:
CMP #$B5                ; $23:DB20: C9 B5
BEQ CODE_23DB2E         ; $23:DB22: F0 0A
BIT $0F                 ; $23:DB24: 24 0F
BVC CODE_23DB51         ; $23:DB26: 50 29
LDY #$03                ; $23:DB28: A0 03
CMP #$BF                ; $23:DB2A: C9 BF
BNE CODE_23DB51         ; $23:DB2C: D0 23

CODE_23DB2E:
LDX #$00                ; $23:DB2E: A2 00
LDA $5E                 ; $23:DB30: A5 5E
AND #$0F                ; $23:DB32: 29 0F
CMP #$08                ; $23:DB34: C9 08
BMI CODE_23DB39         ; $23:DB36: 30 01
INX                     ; $23:DB38: E8

CODE_23DB39:
LDA $17                 ; $23:DB39: A5 17
AND.w DATA_21EC43,x     ; $23:DB3B: 3D 43 EC
BEQ CODE_23DB51         ; $23:DB3E: F0 11
TYA                     ; $23:DB40: 98
BNE CODE_23DB4B         ; $23:DB41: D0 08
LDY #$01                ; $23:DB43: A0 01
LDA $1EB8               ; $23:DB45: AD B8 1E
BEQ CODE_23DB4B         ; $23:DB48: F0 01
DEY                     ; $23:DB4A: 88

CODE_23DB4B:
JSR CODE_23DDCD         ; $23:DB4B: 20 CD DD

CODE_23DB4E:
JMP CODE_23DBF3         ; $23:DB4E: 4C F3 DB

CODE_23DB51:
LDX #$02                ; $23:DB51: A2 02
LDA $0603               ; $23:DB53: AD 03 06
LDY $A6                 ; $23:DB56: A4 A6
BEQ CODE_23DB6B         ; $23:DB58: F0 11
LDY $056D               ; $23:DB5A: AC 6D 05
BEQ CODE_23DB4E         ; $23:DB5D: F0 EF
LDY $056F               ; $23:DB5F: AC 6F 05
BEQ CODE_23DB67         ; $23:DB62: F0 03
JMP CODE_23DBF3         ; $23:DB64: 4C F3 DB

CODE_23DB67:
INX                     ; $23:DB67: E8
LDA $0604               ; $23:DB68: AD 04 06

CODE_23DB6B:
STA $00                 ; $23:DB6B: 85 00
STX $02                 ; $23:DB6D: 86 02
LDA #$B0                ; $23:DB6F: A9 B0
SEC                     ; $23:DB71: 38
SBC $00                 ; $23:DB72: E5 00
CMP #$04                ; $23:DB74: C9 04
LDY $1EB8               ; $23:DB76: AC B8 1E
BEQ CODE_23DB7D         ; $23:DB79: F0 02
AND #$01                ; $23:DB7B: 29 01

CODE_23DB7D:
TAY                     ; $23:DB7D: A8
BCC CODE_23DBA1         ; $23:DB7E: 90 21
LDY $0F                 ; $23:DB80: A4 0F
BPL CODE_23DB8F         ; $23:DB82: 10 0B
LDA #$BE                ; $23:DB84: A9 BE
SEC                     ; $23:DB86: 38
SBC $00                 ; $23:DB87: E5 00
CMP #$02                ; $23:DB89: C9 02
LDY #$06                ; $23:DB8B: A0 06
BCC CODE_23DBA1         ; $23:DB8D: 90 12

CODE_23DB8F:
LDA #$B4                ; $23:DB8F: A9 B4
LDY $0425               ; $23:DB91: AC 25 04
BEQ CODE_23DB98         ; $23:DB94: F0 02
LDA #$92                ; $23:DB96: A9 92

CODE_23DB98:
SEC                     ; $23:DB98: 38
SBC $00                 ; $23:DB99: E5 00
CMP #$02                ; $23:DB9B: C9 02
BCS CODE_23DBF3         ; $23:DB9D: B0 54
LDY #$04                ; $23:DB9F: A0 04

CODE_23DBA1:
STY $00                 ; $23:DBA1: 84 00
AND #$01                ; $23:DBA3: 29 01
ASL A                   ; $23:DBA5: 0A
ASL A                   ; $23:DBA6: 0A
ASL A                   ; $23:DBA7: 0A
ASL A                   ; $23:DBA8: 0A
STA $01                 ; $23:DBA9: 85 01
LDA $17                 ; $23:DBAB: A5 17
AND.w DATA_21EC43,x     ; $23:DBAD: 3D 43 EC
BEQ CODE_23DBF3         ; $23:DBB0: F0 41
LDA $0571               ; $23:DBB2: AD 71 05
BNE CODE_23DBF3         ; $23:DBB5: D0 3C
LDY #$00                ; $23:DBB7: A0 00
LDA $A6                 ; $23:DBB9: A5 A6
ORA $0563               ; $23:DBBB: 0D 63 05
BNE CODE_23DBC6         ; $23:DBBE: D0 06
INY                     ; $23:DBC0: C8
LDA $BB                 ; $23:DBC1: A5 BB
BNE CODE_23DBC6         ; $23:DBC3: D0 01
INY                     ; $23:DBC5: C8

CODE_23DBC6:
LDA $5E                 ; $23:DBC6: A5 5E
AND #$0F                ; $23:DBC8: 29 0F
PHA                     ; $23:DBCA: 48
CLC                     ; $23:DBCB: 18
ADC.w DATA_21EC40,y     ; $23:DBCC: 79 40 EC
AND #$10                ; $23:DBCF: 29 10
BNE CODE_23DBD7         ; $23:DBD1: D0 04
PLA                     ; $23:DBD3: 68
ORA #$F0                ; $23:DBD4: 09 F0
PHA                     ; $23:DBD6: 48

CODE_23DBD7:
PLA                     ; $23:DBD7: 68
CLC                     ; $23:DBD8: 18
ADC $01                 ; $23:DBD9: 65 01
SEC                     ; $23:DBDB: 38
SBC #$03                ; $23:DBDC: E9 03
CMP #$0A                ; $23:DBDE: C9 0A
BCS CODE_23DBF3         ; $23:DBE0: B0 11
LDA $00                 ; $23:DBE2: A5 00
LSR A                   ; $23:DBE4: 4A
TAY                     ; $23:DBE5: A8
JSR CODE_23DDCD         ; $23:DBE6: 20 CD DD
JSL CODE_23DDBB         ; $23:DBE9: 22 BB DD 23
JSR CODE_23C08A         ; $23:DBED: 20 8A C0
PLA                     ; $23:DBF0: 68
PLA                     ; $23:DBF1: 68
RTS                     ; $23:DBF2: 60

CODE_23DBF3:
LDY $0560               ; $23:DBF3: AC 60 05
LDA $A6                 ; $23:DBF6: A5 A6
BNE CODE_23DC1B         ; $23:DBF8: D0 21
LDA $0567               ; $23:DBFA: AD 67 05
BNE CODE_23DC1B         ; $23:DBFD: D0 1C
LDX #$01                ; $23:DBFF: A2 01

CODE_23DC01:
LDA.w DATA_21AF48,y     ; $23:DC01: B9 48 AF
BEQ CODE_23DC1B         ; $23:DC04: F0 15
SEC                     ; $23:DC06: 38
SBC $0603,x             ; $23:DC07: FD 03 06
CMP #$02                ; $23:DC0A: C9 02
BCS CODE_23DC18         ; $23:DC0C: B0 0A
TAX                     ; $23:DC0E: AA
LDA.w DATA_21EC47,x     ; $23:DC0F: BD 47 EC
STA $0569               ; $23:DC12: 8D 69 05
JMP CODE_23DC1B         ; $23:DC15: 4C 1B DC

CODE_23DC18:
DEX                     ; $23:DC18: CA
BPL CODE_23DC01         ; $23:DC19: 10 E6

CODE_23DC1B:
LDX #$02                ; $23:DC1B: A2 02

CODE_23DC1D:
LDA.w DATA_21AF3A,y     ; $23:DC1D: B9 3A AF
CMP #$FF                ; $23:DC20: C9 FF
BEQ CODE_23DC40         ; $23:DC22: F0 1C
SEC                     ; $23:DC24: 38
SBC $0602,x             ; $23:DC25: FD 02 06
CMP #$02                ; $23:DC28: C9 02
BCC CODE_23DC31         ; $23:DC2A: 90 05
DEX                     ; $23:DC2C: CA
BPL CODE_23DC1D         ; $23:DC2D: 10 EE
BMI CODE_23DC40         ; $23:DC2F: 30 0F

CODE_23DC31:
LDA $0577               ; $23:DC31: AD 77 05
BEQ CODE_23DC3B         ; $23:DC34: F0 05
LDA $056D               ; $23:DC36: AD 6D 05
BEQ CODE_23DC40         ; $23:DC39: F0 05

CODE_23DC3B:
JSL CODE_27A4C6         ; $23:DC3B: 22 C6 A4 27
RTS                     ; $23:DC3F: 60

CODE_23DC40:
LDX #$03                ; $23:DC40: A2 03

CODE_23DC42:
LDA $0603,x             ; $23:DC42: BD 03 06
CMP.w DATA_21AF56,y     ; $23:DC45: D9 56 AF
BEQ CODE_23DC4E         ; $23:DC48: F0 04
CMP #$66                ; $23:DC4A: C9 66
BNE CODE_23DC5D         ; $23:DC4C: D0 0F

CODE_23DC4E:
LDA $0577               ; $23:DC4E: AD 77 05
BEQ CODE_23DC58         ; $23:DC51: F0 05
LDA $056D               ; $23:DC53: AD 6D 05
BEQ CODE_23DC60         ; $23:DC56: F0 08

CODE_23DC58:
JSL CODE_27A4C6         ; $23:DC58: 22 C6 A4 27
RTS                     ; $23:DC5C: 60

CODE_23DC5D:
DEX                     ; $23:DC5D: CA
BPL CODE_23DC42         ; $23:DC5E: 10 E2

CODE_23DC60:
LDA $070A               ; $23:DC60: AD 0A 07
CMP #$05                ; $23:DC63: C9 05
BNE CODE_23DC98         ; $23:DC65: D0 31
LDY #$00                ; $23:DC67: A0 00
LDA $0245               ; $23:DC69: AD 45 02
CMP #$01                ; $23:DC6C: C9 01
BEQ CODE_23DC75         ; $23:DC6E: F0 05
INY                     ; $23:DC70: C8
CMP #$00                ; $23:DC71: C9 00
BNE CODE_23DC98         ; $23:DC73: D0 23

CODE_23DC75:
LDX #$02                ; $23:DC75: A2 02

CODE_23DC77:
LDA $0602,x             ; $23:DC77: BD 02 06
PHA                     ; $23:DC7A: 48
SEC                     ; $23:DC7B: 38
SBC.w DATA_21EC4B,y     ; $23:DC7C: F9 4B EC
CMP #$01                ; $23:DC7F: C9 01
PLA                     ; $23:DC81: 68
BCC CODE_23DC8F         ; $23:DC82: 90 0B
CMP.w DATA_21EC4D,y     ; $23:DC84: D9 4D EC
BEQ CODE_23DC8F         ; $23:DC87: F0 06
DEX                     ; $23:DC89: CA
BPL CODE_23DC77         ; $23:DC8A: 10 EB
JMP CODE_23DC98         ; $23:DC8C: 4C 98 DC

CODE_23DC8F:
LDA $0577               ; $23:DC8F: AD 77 05
BNE CODE_23DC98         ; $23:DC92: D0 04
JSL CODE_27A4C6         ; $23:DC94: 22 C6 A4 27

CODE_23DC98:
LDA #$00                ; $23:DC98: A9 00
STA $0589               ; $23:DC9A: 8D 89 05
LDA $0560               ; $23:DC9D: AD 60 05
CMP #$0B                ; $23:DCA0: C9 0B
BNE CODE_23DCDE         ; $23:DCA2: D0 3A
LDA $A6                 ; $23:DCA4: A5 A6
BNE CODE_23DCDE         ; $23:DCA6: D0 36
LDX #$01                ; $23:DCA8: A2 01

CODE_23DCAA:
LDA $0603,x             ; $23:DCAA: BD 03 06
TAY                     ; $23:DCAD: A8
SEC                     ; $23:DCAE: 38
SBC #$22                ; $23:DCAF: E9 22
CMP #$03                ; $23:DCB1: C9 03
BCC CODE_23DCBD         ; $23:DCB3: 90 08
TYA                     ; $23:DCB5: 98
SEC                     ; $23:DCB6: 38
SBC #$4A                ; $23:DCB7: E9 4A
CMP #$03                ; $23:DCB9: C9 03
BCS CODE_23DCC3         ; $23:DCBB: B0 06

CODE_23DCBD:
INC $0589               ; $23:DCBD: EE 89 05
JMP CODE_23DCDE         ; $23:DCC0: 4C DE DC

CODE_23DCC3:
TYA                     ; $23:DCC3: 98
SEC                     ; $23:DCC4: 38
SBC #$36                ; $23:DCC5: E9 36
CMP #$05                ; $23:DCC7: C9 05
BCC CODE_23DCD3         ; $23:DCC9: 90 08
CPY #$55                ; $23:DCCB: C0 55
BEQ CODE_23DCD3         ; $23:DCCD: F0 04
CPY #$56                ; $23:DCCF: C0 56
BNE CODE_23DCDB         ; $23:DCD1: D0 08

CODE_23DCD3:
LDA #$02                ; $23:DCD3: A9 02
STA $0589               ; $23:DCD5: 8D 89 05
JMP CODE_23DCDE         ; $23:DCD8: 4C DE DC

CODE_23DCDB:
DEX                     ; $23:DCDB: CA
BPL CODE_23DCAA         ; $23:DCDC: 10 CC

CODE_23DCDE:
LDA $0560               ; $23:DCDE: AD 60 05
CMP #$00                ; $23:DCE1: C9 00
BNE CODE_23DD23         ; $23:DCE3: D0 3E
LDY #$01                ; $23:DCE5: A0 01

CODE_23DCE7:
LDA $0603,y             ; $23:DCE7: B9 03 06
SEC                     ; $23:DCEA: 38
SBC #$25                ; $23:DCEB: E9 25
CMP #$03                ; $23:DCED: C9 03
BCC CODE_23DCFB         ; $23:DCEF: 90 0A
DEY                     ; $23:DCF1: 88
BPL CODE_23DCE7         ; $23:DCF2: 10 F3

CODE_23DCF4:
LDA #$00                ; $23:DCF4: A9 00
STA $0570               ; $23:DCF6: 8D 70 05
BEQ CODE_23DD23         ; $23:DCF9: F0 28

CODE_23DCFB:
LDA $17                 ; $23:DCFB: A5 17
AND #$04                ; $23:DCFD: 29 04
BEQ CODE_23DCF4         ; $23:DCFF: F0 F3
INC $0570               ; $23:DD01: EE 70 05
LDA $0570               ; $23:DD04: AD 70 05
CMP #$F0                ; $23:DD07: C9 F0
BNE CODE_23DD23         ; $23:DD09: D0 18
LDA #$F0                ; $23:DD0B: A9 F0
STA $0588               ; $23:DD0D: 8D 88 05
LDA #$00                ; $23:DD10: A9 00
STA $9D                 ; $23:DD12: 85 9D
LDA $70                 ; $23:DD14: A5 70
CLC                     ; $23:DD16: 18
ADC #$06                ; $23:DD17: 69 06
STA $70                 ; $23:DD19: 85 70
INC $A6                 ; $23:DD1B: E6 A6
LDA $18                 ; $23:DD1D: A5 18
AND #$7F                ; $23:DD1F: 29 7F
STA $18                 ; $23:DD21: 85 18

CODE_23DD23:
LDA $0560               ; $23:DD23: AD 60 05
CMP #$02                ; $23:DD26: C9 02
BEQ CODE_23DD2E         ; $23:DD28: F0 04
CMP #$0D                ; $23:DD2A: C9 0D
BNE CODE_23DD8F         ; $23:DD2C: D0 61

CODE_23DD2E:
LDA $9D                 ; $23:DD2E: A5 9D
BMI CODE_23DD8F         ; $23:DD30: 30 5D
LDX #$03                ; $23:DD32: A2 03

CODE_23DD34:
LDA $0603,x             ; $23:DD34: BD 03 06
CMP #$49                ; $23:DD37: C9 49
BEQ CODE_23DD4A         ; $23:DD39: F0 0F
CMP #$4A                ; $23:DD3B: C9 4A
BEQ CODE_23DD4A         ; $23:DD3D: F0 0B
DEX                     ; $23:DD3F: CA
BPL CODE_23DD34         ; $23:DD40: 10 F2
LDA #$00                ; $23:DD42: A9 00
STA $058A               ; $23:DD44: 8D 8A 05
JMP CODE_23DD8F         ; $23:DD47: 4C 8F DD

CODE_23DD4A:
LDA #$00                ; $23:DD4A: A9 00
STA $056F               ; $23:DD4C: 8D 6F 05
STA $0545               ; $23:DD4F: 8D 45 05
LDA $058A               ; $23:DD52: AD 8A 05
BNE CODE_23DD59         ; $23:DD55: D0 02
LDA $70                 ; $23:DD57: A5 70

CODE_23DD59:
AND #$F0                ; $23:DD59: 29 F0
STA $058A               ; $23:DD5B: 8D 8A 05
LDA $70                 ; $23:DD5E: A5 70
SEC                     ; $23:DD60: 38
SBC $058A               ; $23:DD61: ED 8A 05
LDY #$E0                ; $23:DD64: A0 E0
TAX                     ; $23:DD66: AA
AND #$F0                ; $23:DD67: 29 F0
BNE CODE_23DD74         ; $23:DD69: D0 09
TXA                     ; $23:DD6B: 8A
AND #$0F                ; $23:DD6C: 29 0F
CMP #$03                ; $23:DD6E: C9 03
BCS CODE_23DD74         ; $23:DD70: B0 02
LDY #$D0                ; $23:DD72: A0 D0

CODE_23DD74:
LDA $18                 ; $23:DD74: A5 18
BMI CODE_23DD7F         ; $23:DD76: 30 07
INC $058A               ; $23:DD78: EE 8A 05
LDY #$06                ; $23:DD7B: A0 06
BNE CODE_23DD84         ; $23:DD7D: D0 05

CODE_23DD7F:
LDA #$01                ; $23:DD7F: A9 01
STA $1201               ; $23:DD81: 8D 01 12

CODE_23DD84:
STY $9D                 ; $23:DD84: 84 9D
LDA $8B                 ; $23:DD86: A5 8B
ASL A                   ; $23:DD88: 0A
ROR $8B                 ; $23:DD89: 66 8B
BPL CODE_23DD8F         ; $23:DD8B: 10 02
INC $8B                 ; $23:DD8D: E6 8B

CODE_23DD8F:
LDY $0560               ; $23:DD8F: AC 60 05
CPY #$06                ; $23:DD92: C0 06
BNE CODE_23DDBA         ; $23:DD94: D0 24
LDA $18                 ; $23:DD96: A5 18
BIT #$40                ; $23:DD98: 89 40
BNE CODE_23DDAB         ; $23:DD9A: D0 0F
LDA $00F8               ; $23:DD9C: AD F8 00
LDY $0726               ; $23:DD9F: AC 26 07
BEQ CODE_23DDA7         ; $23:DDA2: F0 03
LDA $00F9               ; $23:DDA4: AD F9 00

CODE_23DDA7:
AND #$40                ; $23:DDA7: 29 40
BEQ CODE_23DDBA         ; $23:DDA9: F0 0F

CODE_23DDAB:
JSL CODE_20E803         ; $23:DDAB: 22 03 E8 20
TXA                     ; $23:DDAF: 8A
BEQ CODE_23DDBA         ; $23:DDB0: F0 08
DEX                     ; $23:DDB2: CA
LDA $0529               ; $23:DDB3: AD 29 05
JSL CODE_27A8D8         ; $23:DDB6: 22 D8 A8 27

CODE_23DDBA:
RTS                     ; $23:DDBA: 60

CODE_23DDBB:
LDY $BB                 ; $23:DDBB: A4 BB
BEQ CODE_23DDC1         ; $23:DDBD: F0 02
LDY #$02                ; $23:DDBF: A0 02

CODE_23DDC1:
LDA $0577               ; $23:DDC1: AD 77 05
BEQ CODE_23DDC7         ; $23:DDC4: F0 01
INY                     ; $23:DDC6: C8

CODE_23DDC7:
LDA.w DATA_21E980,y     ; $23:DDC7: B9 80 E9
STA $BC                 ; $23:DDCA: 85 BC
RTL                     ; $23:DDCC: 6B

CODE_23DDCD:
STX $0571               ; $23:DDCD: 8E 71 05
LDA #$04                ; $23:DDD0: A9 04
STA $1200               ; $23:DDD2: 8D 00 12
LDA $1503               ; $23:DDD5: AD 03 15
BNE CODE_23DDDF         ; $23:DDD8: D0 05
LDA #$80                ; $23:DDDA: A9 80
STA $1202               ; $23:DDDC: 8D 02 12

CODE_23DDDF:
LDA #$04                ; $23:DDDF: A9 04
CPY #$03                ; $23:DDE1: C0 03
BEQ CODE_23DDFF         ; $23:DDE3: F0 1A
LDA #$05                ; $23:DDE5: A9 05
CPY #$02                ; $23:DDE7: C0 02
BEQ CODE_23DDFF         ; $23:DDE9: F0 14
LDA #$02                ; $23:DDEB: A9 02
CPY #$00                ; $23:DDED: C0 00
BEQ CODE_23DDFF         ; $23:DDEF: F0 0E
LDA #$01                ; $23:DDF1: A9 01
LDY $0379               ; $23:DDF3: AC 79 03
BNE CODE_23DDFD         ; $23:DDF6: D0 05
LDY $1EB8               ; $23:DDF8: AC B8 1E
BEQ CODE_23DDFF         ; $23:DDFB: F0 02

CODE_23DDFD:
LDA #$03                ; $23:DDFD: A9 03

CODE_23DDFF:
ASL A                   ; $23:DDFF: 0A
ASL A                   ; $23:DE00: 0A
ORA $0571               ; $23:DE01: 0D 71 05
STA $0571               ; $23:DE04: 8D 71 05
LDA #$3C                ; $23:DE07: A9 3C
STA $0510               ; $23:DE09: 8D 10 05
TXA                     ; $23:DE0C: 8A
ASL A                   ; $23:DE0D: 0A
TAX                     ; $23:DE0E: AA
LDA $5E                 ; $23:DE0F: A5 5E
CLC                     ; $23:DE11: 18
ADC.w DATA_21EC4F,x     ; $23:DE12: 7D 4F EC
CPX #$04                ; $23:DE15: E0 04
BPL CODE_23DE1B         ; $23:DE17: 10 02
AND #$F0                ; $23:DE19: 29 F0

CODE_23DE1B:
STA $52                 ; $23:DE1B: 85 52
LDA $70                 ; $23:DE1D: A5 70
CPX #$06                ; $23:DE1F: E0 06
BNE CODE_23DE27         ; $23:DE21: D0 04
LDY $BB                 ; $23:DE23: A4 BB
BEQ CODE_23DE2B         ; $23:DE25: F0 04

CODE_23DE27:
CLC                     ; $23:DE27: 18
ADC.w DATA_21EC4F+1,x   ; $23:DE28: 7D 50 EC

CODE_23DE2B:
AND #$F0                ; $23:DE2B: 29 F0
CPX #$04                ; $23:DE2D: E0 04
BMI CODE_23DE34         ; $23:DE2F: 30 03
SEC                     ; $23:DE31: 38
SBC #$01                ; $23:DE32: E9 01

CODE_23DE34:
STA $53                 ; $23:DE34: 85 53
RTS                     ; $23:DE36: 60

CODE_23DE37:
STA $0564               ; $23:DE37: 8D 64 05
LDA $0C                 ; $23:DE3A: A5 0C
STA $052A               ; $23:DE3C: 8D 2A 05
LDA $0D                 ; $23:DE3F: A5 0D
AND #$F0                ; $23:DE41: 29 F0
STA $052B               ; $23:DE43: 8D 2B 05
LDA $0E                 ; $23:DE46: A5 0E
STA $0528               ; $23:DE48: 8D 28 05
LDA $0F                 ; $23:DE4B: A5 0F
AND #$F0                ; $23:DE4D: 29 F0
STA $0529               ; $23:DE4F: 8D 29 05
RTS                     ; $23:DE52: 60

CODE_23DE53:
LDX #$00                ; $23:DE53: A2 00
LDY #$40                ; $23:DE55: A0 40
LDA $8B                 ; $23:DE57: A5 8B
BPL CODE_23DE62         ; $23:DE59: 10 07
LDY #$C0                ; $23:DE5B: A0 C0
EOR #$FF                ; $23:DE5D: 49 FF
CLC                     ; $23:DE5F: 18
ADC #$01                ; $23:DE60: 69 01

CODE_23DE62:
STA $0F                 ; $23:DE62: 85 0F
CMP #$40                ; $23:DE64: C9 40
BMI CODE_23DE6A         ; $23:DE66: 30 02
STY $8B                 ; $23:DE68: 84 8B

CODE_23DE6A:
LDA $8B,x               ; $23:DE6A: B5 8B
CPX #$00                ; $23:DE6C: E0 00
BNE CODE_23DE74         ; $23:DE6E: D0 04
CLC                     ; $23:DE70: 18
ADC $1020               ; $23:DE71: 6D 20 10

CODE_23DE74:
PHA                     ; $23:DE74: 48
ASL A                   ; $23:DE75: 0A
ASL A                   ; $23:DE76: 0A
ASL A                   ; $23:DE77: 0A
ASL A                   ; $23:DE78: 0A
STA $0B                 ; $23:DE79: 85 0B
LDY #$00                ; $23:DE7B: A0 00
PLA                     ; $23:DE7D: 68
LSR A                   ; $23:DE7E: 4A
LSR A                   ; $23:DE7F: 4A
LSR A                   ; $23:DE80: 4A
LSR A                   ; $23:DE81: 4A
CMP #$08                ; $23:DE82: C9 08
BCC CODE_23DE89         ; $23:DE84: 90 03
DEY                     ; $23:DE86: 88
ORA #$F0                ; $23:DE87: 09 F0

CODE_23DE89:
STA $0A                 ; $23:DE89: 85 0A
STY $0C                 ; $23:DE8B: 84 0C
LDA $074E,x             ; $23:DE8D: BD 4E 07
CLC                     ; $23:DE90: 18
ADC $0B                 ; $23:DE91: 65 0B
STA $074E,x             ; $23:DE93: 9D 4E 07
LDA $5E,x               ; $23:DE96: B5 5E
ADC $0A                 ; $23:DE98: 65 0A
STA $5E,x               ; $23:DE9A: 95 5E
LDA $43,x               ; $23:DE9C: B5 43
ADC $0C                 ; $23:DE9E: 65 0C
STA $43,x               ; $23:DEA0: 95 43
RTL                     ; $23:DEA2: 6B

CODE_23DEA3:
LDA $9D                 ; $23:DEA3: A5 9D
BMI CODE_23DEAF         ; $23:DEA5: 30 08
CMP #$40                ; $23:DEA7: C9 40
BMI CODE_23DEAF         ; $23:DEA9: 30 04
LDA #$40                ; $23:DEAB: A9 40
STA $9D                 ; $23:DEAD: 85 9D

CODE_23DEAF:
LDX #$12                ; $23:DEAF: A2 12
JSL CODE_23DE6A         ; $23:DEB1: 22 6A DE 23
RTL                     ; $23:DEB5: 6B

CODE_23DEB6:
REP #$20                ; $23:DEB6: C2 20
STZ $0A                 ; $23:DEB8: 64 0A
AND #$0001              ; $23:DEBA: 29 01 00
BEQ CODE_23DEC4         ; $23:DEBD: F0 05
LDA #$0400              ; $23:DEBF: A9 00 04
TSB $0A                 ; $23:DEC2: 04 0A

CODE_23DEC4:
LDA $55                 ; $23:DEC4: A5 55
AND #$0001              ; $23:DEC6: 29 01 00
BEQ CODE_23DED0         ; $23:DEC9: F0 05
LDA #$0800              ; $23:DECB: A9 00 08
TSB $0A                 ; $23:DECE: 04 0A

CODE_23DED0:
LDA $5E                 ; $23:DED0: A5 5E
AND #$00F8              ; $23:DED2: 29 F8 00
LSR A                   ; $23:DED5: 4A
LSR A                   ; $23:DED6: 4A
LSR A                   ; $23:DED7: 4A
TSB $0A                 ; $23:DED8: 04 0A
LDA $70                 ; $23:DEDA: A5 70
AND #$0007              ; $23:DEDC: 29 07 00
BEQ CODE_23DEEC         ; $23:DEDF: F0 0B
LDA $70                 ; $23:DEE1: A5 70
AND #$00F8              ; $23:DEE3: 29 F8 00
CLC                     ; $23:DEE6: 18
ADC #$0008              ; $23:DEE7: 69 08 00
BRA CODE_23DEF1         ; $23:DEEA: 80 05

CODE_23DEEC:
LDA $70                 ; $23:DEEC: A5 70
AND #$00F8              ; $23:DEEE: 29 F8 00

CODE_23DEF1:
ASL A                   ; $23:DEF1: 0A
ASL A                   ; $23:DEF2: 0A
CLC                     ; $23:DEF3: 18
ADC $0A                 ; $23:DEF4: 65 0A
STA $0A                 ; $23:DEF6: 85 0A
PHB                     ; $23:DEF8: 8B
PHK                     ; $23:DEF9: 4B
PLB                     ; $23:DEFA: AB
LDX $1600               ; $23:DEFB: AE 00 16
LDA $0A                 ; $23:DEFE: A5 0A
XBA                     ; $23:DF00: EB
STA $1602,x             ; $23:DF01: 9D 02 16
INX                     ; $23:DF04: E8
INX                     ; $23:DF05: E8

CODE_23DF06:
LDA.w DATA_23DF47-2,x   ; $23:DF06: BD 45 DF
STA $1602,x             ; $23:DF09: 9D 02 16
INX                     ; $23:DF0C: E8
INX                     ; $23:DF0D: E8
CMP #$FFFF              ; $23:DF0E: C9 FF FF
BNE CODE_23DF06         ; $23:DF11: D0 F3
LDA $0A                 ; $23:DF13: A5 0A
INC A                   ; $23:DF15: 1A
XBA                     ; $23:DF16: EB
STA $15E8,x             ; $23:DF17: 9D E8 15
LDA $0A                 ; $23:DF1A: A5 0A
PHA                     ; $23:DF1C: 48
AND #$03FF              ; $23:DF1D: 29 FF 03
CMP #$03C0              ; $23:DF20: C9 C0 03
BCC CODE_23DF2C         ; $23:DF23: 90 07
PLA                     ; $23:DF25: 68
CLC                     ; $23:DF26: 18
ADC #$0400              ; $23:DF27: 69 00 04
BRA CODE_23DF2D         ; $23:DF2A: 80 01

CODE_23DF2C:
PLA                     ; $23:DF2C: 68

CODE_23DF2D:
CLC                     ; $23:DF2D: 18
ADC #$0040              ; $23:DF2E: 69 40 00
AND #$0FFF              ; $23:DF31: 29 FF 0F
XBA                     ; $23:DF34: EB
STA $15F0,x             ; $23:DF35: 9D F0 15
XBA                     ; $23:DF38: EB
INC A                   ; $23:DF39: 1A
XBA                     ; $23:DF3A: EB
STA $15F8,x             ; $23:DF3B: 9D F8 15
DEX                     ; $23:DF3E: CA
DEX                     ; $23:DF3F: CA
STX $1600               ; $23:DF40: 8E 00 16
SEP #$20                ; $23:DF43: E2 20
PLB                     ; $23:DF45: AB
RTS                     ; $23:DF46: 60

DATA_23DF47:
db $80,$03,$5A,$16,$5B,$16,$00,$00
db $80,$03,$5A,$56,$5B,$56,$00,$00
db $80,$03,$5B,$16,$5A,$96,$00,$00
db $80,$03,$5B,$56,$5A,$D6,$FF,$FF

CODE_23DF67:
PHB                     ; $23:DF67: 8B
PHK                     ; $23:DF68: 4B
PLB                     ; $23:DF69: AB
LDA $700006             ; $23:DF6A: AF 06 00 70
BNE CODE_23DF8A         ; $23:DF6E: D0 1A
LDA $F4                 ; $23:DF70: A5 F4
AND #$C0                ; $23:DF72: 29 C0
TSB $F2                 ; $23:DF74: 04 F2
LDA $F8                 ; $23:DF76: A5 F8
AND #$C0                ; $23:DF78: 29 C0
TSB $F6                 ; $23:DF7A: 04 F6
LDA $F5                 ; $23:DF7C: A5 F5
AND #$C0                ; $23:DF7E: 29 C0
TSB $F3                 ; $23:DF80: 04 F3
LDA $F9                 ; $23:DF82: A5 F9
AND #$C0                ; $23:DF84: 29 C0
TSB $F7                 ; $23:DF86: 04 F7
BRA CODE_23DFDE         ; $23:DF88: 80 54

CODE_23DF8A:
LDA $F2                 ; $23:DF8A: A5 F2
AND #$80                ; $23:DF8C: 29 80
LSR A                   ; $23:DF8E: 4A
TSB $F2                 ; $23:DF8F: 04 F2
LDA $F4                 ; $23:DF91: A5 F4
AND #$C0                ; $23:DF93: 29 C0
STA $00                 ; $23:DF95: 85 00
LDA $F2                 ; $23:DF97: A5 F2
AND #$7F                ; $23:DF99: 29 7F
ORA $00                 ; $23:DF9B: 05 00
STA $F2                 ; $23:DF9D: 85 F2
LDA $F6                 ; $23:DF9F: A5 F6
AND #$80                ; $23:DFA1: 29 80
LSR A                   ; $23:DFA3: 4A
TSB $F6                 ; $23:DFA4: 04 F6
LDA $F8                 ; $23:DFA6: A5 F8
AND #$C0                ; $23:DFA8: 29 C0
STA $00                 ; $23:DFAA: 85 00
LDA $F6                 ; $23:DFAC: A5 F6
AND #$7F                ; $23:DFAE: 29 7F
ORA $00                 ; $23:DFB0: 05 00
STA $F6                 ; $23:DFB2: 85 F6
LDA $F3                 ; $23:DFB4: A5 F3
AND #$80                ; $23:DFB6: 29 80
LSR A                   ; $23:DFB8: 4A
TSB $F3                 ; $23:DFB9: 04 F3
LDA $F5                 ; $23:DFBB: A5 F5
AND #$C0                ; $23:DFBD: 29 C0
STA $00                 ; $23:DFBF: 85 00
LDA $F3                 ; $23:DFC1: A5 F3
AND #$7F                ; $23:DFC3: 29 7F
ORA $00                 ; $23:DFC5: 05 00
STA $F3                 ; $23:DFC7: 85 F3
LDA $F7                 ; $23:DFC9: A5 F7
AND #$80                ; $23:DFCB: 29 80
LSR A                   ; $23:DFCD: 4A
TSB $F7                 ; $23:DFCE: 04 F7
LDA $F9                 ; $23:DFD0: A5 F9
AND #$C0                ; $23:DFD2: 29 C0
STA $00                 ; $23:DFD4: 85 00
LDA $F7                 ; $23:DFD6: A5 F7
AND #$7F                ; $23:DFD8: 29 7F
ORA $00                 ; $23:DFDA: 05 00
STA $F7                 ; $23:DFDC: 85 F7

CODE_23DFDE:
PHX                     ; $23:DFDE: DA
LDX $0726               ; $23:DFDF: AE 26 07
LDA $F2,x               ; $23:DFE2: B5 F2
STA $17                 ; $23:DFE4: 85 17
LDA $F6,x               ; $23:DFE6: B5 F6
STA $18                 ; $23:DFE8: 85 18
PLX                     ; $23:DFEA: FA
PLB                     ; $23:DFEB: AB
RTL                     ; $23:DFEC: 6B

ORG $23E000

CODE_23E000:
JSR CODE_23E071         ; $23:E000: 20 71 E0
LDX #$00                ; $23:E003: A2 00
LDY #$00                ; $23:E005: A0 00
JSR CODE_23E00E         ; $23:E007: 20 0E E0
LDX #$23                ; $23:E00A: A2 23
LDY #$01                ; $23:E00C: A0 01

CODE_23E00E:
STY $00                 ; $23:E00E: 84 00
STX $01                 ; $23:E010: 86 01
LDA $1D9C,x             ; $23:E012: BD 9C 1D
BEQ CODE_23E021         ; $23:E015: F0 0A
LDA $1D9D,x             ; $23:E017: BD 9D 1D
BEQ CODE_23E021         ; $23:E01A: F0 05
LDA $1D9E,x             ; $23:E01C: BD 9E 1D
BNE CODE_23E022         ; $23:E01F: D0 01

CODE_23E021:
RTS                     ; $23:E021: 60

CODE_23E022:
LDY $1D9C,x             ; $23:E022: BC 9C 1D
LDA.w DATA_21EC71,y     ; $23:E025: B9 71 EC
LDY $1D9D,x             ; $23:E028: BC 9D 1D
ORA.w DATA_21EC71,y     ; $23:E02B: 19 71 EC
LDY $1D9E,x             ; $23:E02E: BC 9E 1D
ORA.w DATA_21EC71,y     ; $23:E031: 19 71 EC
TAY                     ; $23:E034: A8
LDX $00                 ; $23:E035: A6 00
ORA.w DATA_21EC61,y     ; $23:E037: 19 61 EC
STA $1203               ; $23:E03A: 8D 03 12
LDA.w DATA_21EC69,y     ; $23:E03D: B9 69 EC
STA $19A1,x             ; $23:E040: 9D A1 19
LDA $1822,x             ; $23:E043: BD 22 18
STA $19A5,x             ; $23:E046: 9D A5 19
LDA $1811,x             ; $23:E049: BD 11 18
SEC                     ; $23:E04C: 38
SBC #$08                ; $23:E04D: E9 08
STA $19A3,x             ; $23:E04F: 9D A3 19
LDA.w DATA_21EC59,y     ; $23:E052: B9 59 EC
PHA                     ; $23:E055: 48
STA $19A7,x             ; $23:E056: 9D A7 19
CLC                     ; $23:E059: 18
ADC $0736,x             ; $23:E05A: 7D 36 07
STA $0736,x             ; $23:E05D: 9D 36 07
PLA                     ; $23:E060: 68
BEQ CODE_23E070         ; $23:E061: F0 0D
LDX $01                 ; $23:E063: A6 01
LDA #$00                ; $23:E065: A9 00
STA $1D9C,x             ; $23:E067: 9D 9C 1D
STA $1D9D,x             ; $23:E06A: 9D 9D 1D
STA $1D9E,x             ; $23:E06D: 9D 9E 1D

CODE_23E070:
RTS                     ; $23:E070: 60

CODE_23E071:
LDX #$01                ; $23:E071: A2 01

CODE_23E073:
STX $00                 ; $23:E073: 86 00
JSR CODE_23E07C         ; $23:E075: 20 7C E0
DEX                     ; $23:E078: CA
BPL CODE_23E073         ; $23:E079: 10 F8
RTS                     ; $23:E07B: 60

CODE_23E07C:
LDA $19A1,x             ; $23:E07C: BD A1 19
BEQ CODE_23E08A         ; $23:E07F: F0 09
CMP #$20                ; $23:E081: C9 20
BCC CODE_23E08B         ; $23:E083: 90 06
LDA #$00                ; $23:E085: A9 00
STA $19A1,x             ; $23:E087: 9D A1 19

CODE_23E08A:
RTS                     ; $23:E08A: 60

CODE_23E08B:
LDA $0076               ; $23:E08B: AD 76 00
BNE CODE_23E098         ; $23:E08E: D0 08
LDA $15                 ; $23:E090: A5 15
LSR A                   ; $23:E092: 4A
BCC CODE_23E098         ; $23:E093: 90 03
INC $19A1,x             ; $23:E095: FE A1 19

CODE_23E098:
LDY.w DATA_21EC7A,x     ; $23:E098: BC 7A EC
LDA $19A3,x             ; $23:E09B: BD A3 19
SEC                     ; $23:E09E: 38
SBC $19A1,x             ; $23:E09F: FD A1 19
STA $0801,y             ; $23:E0A2: 99 01 08
LDA $19A5,x             ; $23:E0A5: BD A5 19
STA $0800,y             ; $23:E0A8: 99 00 08
LDA #$22                ; $23:E0AB: A9 22
STA $0803,y             ; $23:E0AD: 99 03 08
LDA $19A7,x             ; $23:E0B0: BD A7 19
TAX                     ; $23:E0B3: AA
LDA.w DATA_21EC74,x     ; $23:E0B4: BD 74 EC
STA $0802,y             ; $23:E0B7: 99 02 08
LDA $19A5,x             ; $23:E0BA: BD A5 19
SEC                     ; $23:E0BD: 38
SBC #$08                ; $23:E0BE: E9 08
CMP #$F1                ; $23:E0C0: C9 F1
BCC CODE_23E0E7         ; $23:E0C2: 90 23
LDA $0800,y             ; $23:E0C4: B9 00 08
STA $0804,y             ; $23:E0C7: 99 04 08
LDA $0801,y             ; $23:E0CA: B9 01 08
STA $0805,y             ; $23:E0CD: 99 05 08
LDA $0802,y             ; $23:E0D0: B9 02 08
STA $0806,y             ; $23:E0D3: 99 06 08
LDA $0803,y             ; $23:E0D6: B9 03 08
STA $0807,y             ; $23:E0D9: 99 07 08
TYA                     ; $23:E0DC: 98
LSR A                   ; $23:E0DD: 4A
LSR A                   ; $23:E0DE: 4A
TAY                     ; $23:E0DF: A8
LDA #$03                ; $23:E0E0: A9 03
STA $0A21,y             ; $23:E0E2: 99 21 0A
BRA CODE_23E0EB         ; $23:E0E5: 80 04

CODE_23E0E7:
TYA                     ; $23:E0E7: 98
LSR A                   ; $23:E0E8: 4A
LSR A                   ; $23:E0E9: 4A
TAY                     ; $23:E0EA: A8

CODE_23E0EB:
LDA #$02                ; $23:E0EB: A9 02
STA $0A20,y             ; $23:E0ED: 99 20 0A
LDX $00                 ; $23:E0F0: A6 00
RTS                     ; $23:E0F2: 60

CODE_23E0F3:
STZ $00                 ; $23:E0F3: 64 00
LDA #$02                ; $23:E0F5: A9 02

CODE_23E0F7:
STA $01                 ; $23:E0F7: 85 01
LDX #$02                ; $23:E0F9: A2 02

CODE_23E0FB:
LDY $01                 ; $23:E0FB: A4 01
STX $03                 ; $23:E0FD: 86 03
LDA $1D9C,y             ; $23:E0FF: B9 9C 1D
BEQ CODE_23E148         ; $23:E102: F0 44
TAY                     ; $23:E104: A8
LDA.w DATA_21EC90,y     ; $23:E105: B9 90 EC
LDY $00                 ; $23:E108: A4 00
STA $09E2,y             ; $23:E10A: 99 E2 09
LDA #$D0                ; $23:E10D: A9 D0
STA $09E1,y             ; $23:E10F: 99 E1 09
LDX #$00                ; $23:E112: A2 00
CPY #$04                ; $23:E114: C0 04
BEQ CODE_23E11D         ; $23:E116: F0 05
INX                     ; $23:E118: E8
CPY #$0C                ; $23:E119: C0 0C
BNE CODE_23E129         ; $23:E11B: D0 0C

CODE_23E11D:
LDA $1989,x             ; $23:E11D: BD 89 19
BEQ CODE_23E129         ; $23:E120: F0 07
LSR A                   ; $23:E122: 4A
LSR A                   ; $23:E123: 4A
LSR A                   ; $23:E124: 4A
AND #$0E                ; $23:E125: 29 0E
BRA CODE_23E12B         ; $23:E127: 80 02

CODE_23E129:
LDA #$24                ; $23:E129: A9 24

CODE_23E12B:
STA $09E3,y             ; $23:E12B: 99 E3 09
LDX $03                 ; $23:E12E: A6 03
LDA #$10                ; $23:E130: A9 10
CPY #$0C                ; $23:E132: C0 0C
BCC CODE_23E138         ; $23:E134: 90 02
LDA #$C0                ; $23:E136: A9 C0

CODE_23E138:
CLC                     ; $23:E138: 18
ADC.w DATA_21EC8E,x     ; $23:E139: 7D 8E EC
STA $09E0,y             ; $23:E13C: 99 E0 09
TYA                     ; $23:E13F: 98
LSR A                   ; $23:E140: 4A
LSR A                   ; $23:E141: 4A
TAY                     ; $23:E142: A8
LDA #$02                ; $23:E143: A9 02
STA $0A98,y             ; $23:E145: 99 98 0A

CODE_23E148:
LDA $00                 ; $23:E148: A5 00
CLC                     ; $23:E14A: 18
ADC #$04                ; $23:E14B: 69 04
STA $00                 ; $23:E14D: 85 00
DEC $01                 ; $23:E14F: C6 01
DEX                     ; $23:E151: CA
BMI CODE_23E156         ; $23:E152: 30 02
BRA CODE_23E0FB         ; $23:E154: 80 A5

CODE_23E156:
LDA #$0C                ; $23:E156: A9 0C
STA $00                 ; $23:E158: 85 00
LDA #$25                ; $23:E15A: A9 25
LDY $01                 ; $23:E15C: A4 01
BMI CODE_23E0F7         ; $23:E15E: 30 97
RTS                     ; $23:E160: 60

CODE_23E161:
TXA                     ; $23:E161: 8A
PHA                     ; $23:E162: 48
REP #$30                ; $23:E163: C2 30
LDY #$0000              ; $23:E165: A0 00 00
LDX $1600               ; $23:E168: AE 00 16

CODE_23E16B:
LDA.w DATA_21EC7C,y     ; $23:E16B: B9 7C EC
STA $1602,x             ; $23:E16E: 9D 02 16
INX                     ; $23:E171: E8
INX                     ; $23:E172: E8
INY                     ; $23:E173: C8
INY                     ; $23:E174: C8
CPY #$0008              ; $23:E175: C0 08 00
BNE CODE_23E16B         ; $23:E178: D0 F1
SEP #$30                ; $23:E17A: E2 30
LDY $0F                 ; $23:E17C: A4 0F
LDA.w DATA_21EC8C,y     ; $23:E17E: B9 8C EC
CLC                     ; $23:E181: 18
ADC $192E,y             ; $23:E182: 79 2E 19
STA $15FB,x             ; $23:E185: 9D FB 15
DEX                     ; $23:E188: CA
DEX                     ; $23:E189: CA
STX $1600               ; $23:E18A: 8E 00 16
PLA                     ; $23:E18D: 68
TAX                     ; $23:E18E: AA
RTS                     ; $23:E18F: 60

CODE_23E190:
LDA $1930               ; $23:E190: AD 30 19
BNE CODE_23E1D3         ; $23:E193: D0 3E
LDA $F6                 ; $23:E195: A5 F6
ORA $F7                 ; $23:E197: 05 F7
AND #$10                ; $23:E199: 29 10
BEQ CODE_23E1D3         ; $23:E19B: F0 36
LDA $0076               ; $23:E19D: AD 76 00
EOR #$01                ; $23:E1A0: 49 01
STA $0076               ; $23:E1A2: 8D 76 00
BNE CODE_23E1BE         ; $23:E1A5: D0 17
LDA #$F2                ; $23:E1A7: A9 F2
STA $1202               ; $23:E1A9: 8D 02 12
LDA #$43                ; $23:E1AC: A9 43
STA $1200               ; $23:E1AE: 8D 00 12
LDX #$0E                ; $23:E1B1: A2 0E

CODE_23E1B3:
LDA $198B,x             ; $23:E1B3: BD 8B 19
STA $18CB,x             ; $23:E1B6: 9D CB 18
DEX                     ; $23:E1B9: CA
BPL CODE_23E1B3         ; $23:E1BA: 10 F7
BMI CODE_23E1D3         ; $23:E1BC: 30 15

CODE_23E1BE:
LDA #$F1                ; $23:E1BE: A9 F1
STA $1202               ; $23:E1C0: 8D 02 12
LDA #$43                ; $23:E1C3: A9 43
STA $1200               ; $23:E1C5: 8D 00 12
LDX #$0E                ; $23:E1C8: A2 0E

CODE_23E1CA:
LDA $18CB,x             ; $23:E1CA: BD CB 18
STA $198B,x             ; $23:E1CD: 9D 8B 19
DEX                     ; $23:E1D0: CA
BPL CODE_23E1CA         ; $23:E1D1: 10 F7

CODE_23E1D3:
LDA $0076               ; $23:E1D3: AD 76 00
BEQ CODE_23E1E2         ; $23:E1D6: F0 0A
LDX #$0E                ; $23:E1D8: A2 0E
LDA #$FF                ; $23:E1DA: A9 FF

CODE_23E1DC:
STA $18CB,x             ; $23:E1DC: 9D CB 18
DEX                     ; $23:E1DF: CA
BPL CODE_23E1DC         ; $23:E1E0: 10 FA

CODE_23E1E2:
JSR CODE_23E1E6         ; $23:E1E2: 20 E6 E1
RTL                     ; $23:E1E5: 6B

CODE_23E1E6:
LDA $0075               ; $23:E1E6: AD 75 00

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:E1E9: 22 1F FB 20
dw CODE_23E1FD
dw CODE_23E2AB

DATA_23E1F1:
db $00,$01,$02,$00,$03,$04,$05,$00
db $00,$01,$05,$00

CODE_23E1FD:
REP #$30                ; $23:E1FD: C2 30
LDA #$0058              ; $23:E1FF: A9 58 00
STA $8D                 ; $23:E202: 85 8D
STA $8E                 ; $23:E204: 85 8E
LDY #$0200              ; $23:E206: A0 00 02
LDA #$0000              ; $23:E209: A9 00 00

CODE_23E20C:
STA $1800,y             ; $23:E20C: 99 00 18
DEY                     ; $23:E20F: 88
DEY                     ; $23:E210: 88
BPL CODE_23E20C         ; $23:E211: 10 F9
SEP #$30                ; $23:E213: E2 30
LDA $15                 ; $23:E215: A5 15
ORA #$91                ; $23:E217: 09 91
STA $192B               ; $23:E219: 8D 2B 19
INC $0075               ; $23:E21C: EE 75 00
LDX $1F26               ; $23:E21F: AE 26 1F
LDA.l DATA_23E1F1,x     ; $23:E222: BF F1 E1 23
STA $199A               ; $23:E226: 8D 9A 19
TXA                     ; $23:E229: 8A

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:E22A: 22 1F FB 20
dw CODE_23E24B
dw CODE_23E24B
dw CODE_23E24B
dw CODE_23E28E
dw CODE_23E24B
dw CODE_23E24B
dw CODE_23E24B
dw CODE_23E246
dw CODE_23E24B
dw CODE_23E24B
dw CODE_23E24B
dw CODE_23E24C

CODE_23E246:
LDA #$01                ; $23:E246: A9 01
STA $1A6D               ; $23:E248: 8D 6D 1A

CODE_23E24B:
RTS                     ; $23:E24B: 60

CODE_23E24C:
LDX #$0D                ; $23:E24C: A2 0D

CODE_23E24E:
TXA                     ; $23:E24E: 8A
STA $00,x               ; $23:E24F: 95 00
DEX                     ; $23:E251: CA
BPL CODE_23E24E         ; $23:E252: 10 FA
LDA #$FF                ; $23:E254: A9 FF
STA $0E                 ; $23:E256: 85 0E
STA $0F                 ; $23:E258: 85 0F
LDX #$04                ; $23:E25A: A2 04

CODE_23E25C:
JSR CODE_23E27A         ; $23:E25C: 20 7A E2
TAY                     ; $23:E25F: A8
LDA.w DATA_21EC94,y     ; $23:E260: B9 94 EC
STA $1824,x             ; $23:E263: 9D 24 18
LDA.w DATA_21ECA2,y     ; $23:E266: B9 A2 EC
STA $1813,x             ; $23:E269: 9D 13 18
LDA #$01                ; $23:E26C: A9 01
STA $1802,x             ; $23:E26E: 9D 02 18
LDA #$0B                ; $23:E271: A9 0B
STA $18BB,x             ; $23:E273: 9D BB 18
DEX                     ; $23:E276: CA
BPL CODE_23E25C         ; $23:E277: 10 E3
RTS                     ; $23:E279: 60

CODE_23E27A:
JSL CODE_25F805         ; $23:E27A: 22 05 F8 25
AND #$0F                ; $23:E27E: 29 0F
TAY                     ; $23:E280: A8
LDA $0000,y             ; $23:E281: B9 00 00
BMI CODE_23E27A         ; $23:E284: 30 F4
PHA                     ; $23:E286: 48
LDA #$FF                ; $23:E287: A9 FF
STA $0000,y             ; $23:E289: 99 00 00
PLA                     ; $23:E28C: 68
RTS                     ; $23:E28D: 60

CODE_23E28E:
LDX #$04                ; $23:E28E: A2 04

CODE_23E290:
INC $1802,x             ; $23:E290: FE 02 18
LDA #$0B                ; $23:E293: A9 0B
STA $18BB,x             ; $23:E295: 9D BB 18
LDA.w DATA_21ECB5,x     ; $23:E298: BD B5 EC
STA $1813,x             ; $23:E29B: 9D 13 18
LDA.w DATA_21ECB0,x     ; $23:E29E: BD B0 EC
STA $1824,x             ; $23:E2A1: 9D 24 18
JSR CODE_23ED8D         ; $23:E2A4: 20 8D ED
DEX                     ; $23:E2A7: CA
BPL CODE_23E290         ; $23:E2A8: 10 E6
RTS                     ; $23:E2AA: 60

CODE_23E2AB:
JSR CODE_23E0F3         ; $23:E2AB: 20 F3 E0
JSR CODE_23E000         ; $23:E2AE: 20 00 E0
LDA $1F26               ; $23:E2B1: AD 26 1F

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:E2B4: 22 1F FB 20
dw CODE_23E2D0
dw CODE_23E2D0
dw CODE_23E2D0
dw CODE_23E2FA
dw CODE_23E2D0
dw CODE_23E2D0
dw CODE_23E2D0
dw CODE_23E2ED
dw CODE_23E2D0
dw CODE_23E2D0
dw CODE_23E2D0
dw CODE_23E2E3

CODE_23E2D0:
JSR CODE_23E3FA         ; $23:E2D0: 20 FA E3
JSR CODE_23ED04         ; $23:E2D3: 20 04 ED
JSR CODE_23EE51         ; $23:E2D6: 20 51 EE
JSR CODE_23F85D         ; $23:E2D9: 20 5D F8
JSR CODE_23F6D9         ; $23:E2DC: 20 D9 F6
JSR CODE_23F9C3         ; $23:E2DF: 20 C3 F9
RTS                     ; $23:E2E2: 60

CODE_23E2E3:
JSR CODE_23E3FA         ; $23:E2E3: 20 FA E3
JSR CODE_23EE51         ; $23:E2E6: 20 51 EE
JSR CODE_23F9C3         ; $23:E2E9: 20 C3 F9
RTS                     ; $23:E2EC: 60

CODE_23E2ED:
JSR CODE_23E3FA         ; $23:E2ED: 20 FA E3
JSR CODE_23E31B         ; $23:E2F0: 20 1B E3
JSR CODE_23EE51         ; $23:E2F3: 20 51 EE
JSR CODE_23F9C3         ; $23:E2F6: 20 C3 F9
RTS                     ; $23:E2F9: 60

CODE_23E2FA:
JSR CODE_23E3FA         ; $23:E2FA: 20 FA E3
JSR CODE_23EE51         ; $23:E2FD: 20 51 EE
JSR CODE_23F85D         ; $23:E300: 20 5D F8
JSR CODE_23F9C3         ; $23:E303: 20 C3 F9
RTS                     ; $23:E306: 60
LDA $15                 ; $23:E307: A5 15
AND #$07                ; $23:E309: 29 07
BNE CODE_23E31A         ; $23:E30B: D0 0D
INC $1941               ; $23:E30D: EE 41 19
BNE CODE_23E31A         ; $23:E310: D0 08
LDA #$01                ; $23:E312: A9 01
STA $078C               ; $23:E314: 8D 8C 07
JMP CODE_23E492         ; $23:E317: 4C 92 E4

CODE_23E31A:
RTS                     ; $23:E31A: 60

CODE_23E31B:
LDA $18CB               ; $23:E31B: AD CB 18
ORA $18CC               ; $23:E31E: 0D CC 18
ORA $1930               ; $23:E321: 0D 30 19
ORA $0076               ; $23:E324: 0D 76 00
BNE CODE_23E348         ; $23:E327: D0 1F
DEC $1A6D               ; $23:E329: CE 6D 1A
BNE CODE_23E338         ; $23:E32C: D0 0A
LDA #$20                ; $23:E32E: A9 20
STA $1A6D               ; $23:E330: 8D 6D 1A
LDA #$1C                ; $23:E333: A9 1C
STA $1200               ; $23:E335: 8D 00 12

CODE_23E338:
LDA $15                 ; $23:E338: A5 15
AND #$07                ; $23:E33A: 29 07
BNE CODE_23E348         ; $23:E33C: D0 0A
LDX #$09                ; $23:E33E: A2 09

CODE_23E340:
LDA $1802,x             ; $23:E340: BD 02 18
BEQ CODE_23E349         ; $23:E343: F0 04
DEX                     ; $23:E345: CA
BPL CODE_23E340         ; $23:E346: 10 F8

CODE_23E348:
RTS                     ; $23:E348: 60

CODE_23E349:
INC $1802,x             ; $23:E349: FE 02 18
LDY #$0B                ; $23:E34C: A0 0B
LDA $192D               ; $23:E34E: AD 2D 19
AND #$1C                ; $23:E351: 29 1C
BNE CODE_23E357         ; $23:E353: D0 02
LDY #$06                ; $23:E355: A0 06

CODE_23E357:
TYA                     ; $23:E357: 98
STA $18BB,x             ; $23:E358: 9D BB 18
LDA #$B0                ; $23:E35B: A9 B0
STA $1813,x             ; $23:E35D: 9D 13 18
LDA #$7C                ; $23:E360: A9 7C
STA $1824,x             ; $23:E362: 9D 24 18
JSL CODE_25F805         ; $23:E365: 22 05 F8 25
AND #$0F                ; $23:E369: 29 0F
ADC #$A8                ; $23:E36B: 69 A8
STA $1835,x             ; $23:E36D: 9D 35 18
JSL CODE_25F805         ; $23:E370: 22 05 F8 25
AND #$1F                ; $23:E374: 29 1F
SBC #$10                ; $23:E376: E9 10
STA $1846,x             ; $23:E378: 9D 46 18
JSR CODE_23ED8D         ; $23:E37B: 20 8D ED
INC $18A6,x             ; $23:E37E: FE A6 18
LDA #$30                ; $23:E381: A9 30
STA $191E,x             ; $23:E383: 9D 1E 19
RTS                     ; $23:E386: 60

CODE_23E387:
LDX #$02                ; $23:E387: A2 02
LDY #$02                ; $23:E389: A0 02
LDA $190E               ; $23:E38B: AD 0E 19
BEQ CODE_23E392         ; $23:E38E: F0 02
LDY #$25                ; $23:E390: A0 25

CODE_23E392:
STY $00                 ; $23:E392: 84 00
LDA $1D9C,y             ; $23:E394: B9 9C 1D
BNE CODE_23E3A1         ; $23:E397: D0 08
DEY                     ; $23:E399: 88
DEX                     ; $23:E39A: CA
BPL CODE_23E392         ; $23:E39B: 10 F5
LDX $190E               ; $23:E39D: AE 0E 19
RTS                     ; $23:E3A0: 60

CODE_23E3A1:
LDX #$0B                ; $23:E3A1: A2 0B

CODE_23E3A3:
LDA $1802,x             ; $23:E3A3: BD 02 18
BEQ CODE_23E3B1         ; $23:E3A6: F0 09
DEX                     ; $23:E3A8: CA
CPX #$0A                ; $23:E3A9: E0 0A
BNE CODE_23E3A3         ; $23:E3AB: D0 F6
LDX $190E               ; $23:E3AD: AE 0E 19
RTS                     ; $23:E3B0: 60

CODE_23E3B1:
LDA #$0F                ; $23:E3B1: A9 0F
STA $1200               ; $23:E3B3: 8D 00 12
LDA $1D9C,y             ; $23:E3B6: B9 9C 1D
TAY                     ; $23:E3B9: A8
CLC                     ; $23:E3BA: 18
ADC #$0B                ; $23:E3BB: 69 0B
STA $18BB,x             ; $23:E3BD: 9D BB 18
LDA.w DATA_21ECB9,y     ; $23:E3C0: B9 B9 EC
STA $1835,x             ; $23:E3C3: 9D 35 18
INC $1802,x             ; $23:E3C6: FE 02 18
LDY $00                 ; $23:E3C9: A4 00
LDA #$00                ; $23:E3CB: A9 00
STA $1D9C,y             ; $23:E3CD: 99 9C 1D
JSR CODE_23ED8D         ; $23:E3D0: 20 8D ED
LDY $190E               ; $23:E3D3: AC 0E 19
LDA $1822,y             ; $23:E3D6: B9 22 18
STA $1824,x             ; $23:E3D9: 9D 24 18
ASL A                   ; $23:E3DC: 0A
LDA #$06                ; $23:E3DD: A9 06
BCC CODE_23E3E3         ; $23:E3DF: 90 02
LDA #$FA                ; $23:E3E1: A9 FA

CODE_23E3E3:
STA $1846,x             ; $23:E3E3: 9D 46 18
LDA $1811,y             ; $23:E3E6: B9 11 18
STA $1813,x             ; $23:E3E9: 9D 13 18
LDA #$00                ; $23:E3EC: A9 00
STA $1944,x             ; $23:E3EE: 9D 44 19
LDA #$20                ; $23:E3F1: A9 20
STA $18E9,x             ; $23:E3F3: 9D E9 18
LDX $190E               ; $23:E3F6: AE 0E 19
RTS                     ; $23:E3F9: 60

CODE_23E3FA:
JSL CODE_23DF67         ; $23:E3FA: 22 67 DF 23
LDA $1930               ; $23:E3FE: AD 30 19
BEQ CODE_23E40A         ; $23:E401: F0 07
STZ $0076               ; $23:E403: 9C 76 00
STZ $F2                 ; $23:E406: 64 F2
STZ $F3                 ; $23:E408: 64 F3

CODE_23E40A:
LDX #$01                ; $23:E40A: A2 01

CODE_23E40C:
STX $190E               ; $23:E40C: 8E 0E 19
LDA $F2,x               ; $23:E40F: B5 F2
AND #$03                ; $23:E411: 29 03
CMP #$03                ; $23:E413: C9 03
BNE CODE_23E419         ; $23:E415: D0 02
DEC $F2,x               ; $23:E417: D6 F2

CODE_23E419:
LDA $F2,x               ; $23:E419: B5 F2
AND #$0C                ; $23:E41B: 29 0C
CMP #$0C                ; $23:E41D: C9 0C
BNE CODE_23E427         ; $23:E41F: D0 06
LDA $F2,x               ; $23:E421: B5 F2
AND #$F7                ; $23:E423: 29 F7
STA $F2,x               ; $23:E425: 95 F2

CODE_23E427:
LDA $0076               ; $23:E427: AD 76 00
BNE CODE_23E43C         ; $23:E42A: D0 10
LDA $18E7,x             ; $23:E42C: BD E7 18
BEQ CODE_23E434         ; $23:E42F: F0 03
DEC $18E7,x             ; $23:E431: DE E7 18

CODE_23E434:
LDA $1989,x             ; $23:E434: BD 89 19
BEQ CODE_23E43C         ; $23:E437: F0 03
DEC $1989,x             ; $23:E439: DE 89 19

CODE_23E43C:
JSR CODE_23E452         ; $23:E43C: 20 52 E4
STZ $193F,x             ; $23:E43F: 9E 3F 19
DEX                     ; $23:E442: CA
BPL CODE_23E40C         ; $23:E443: 10 C7
LDA $0076               ; $23:E445: AD 76 00
BNE CODE_23E44D         ; $23:E448: D0 03
JSR CODE_23EBDD         ; $23:E44A: 20 DD EB

CODE_23E44D:
JSL CODE_25F8CE         ; $23:E44D: 22 CE F8 25
RTS                     ; $23:E451: 60

CODE_23E452:
LDA $1930               ; $23:E452: AD 30 19
BEQ CODE_23E45A         ; $23:E455: F0 03
JMP CODE_23E46C         ; $23:E457: 4C 6C E4

CODE_23E45A:
LDA $18CB,x             ; $23:E45A: BD CB 18
BEQ CODE_23E467         ; $23:E45D: F0 08
DEC $18CB,x             ; $23:E45F: DE CB 18
BEQ CODE_23E467         ; $23:E462: F0 03
JMP CODE_23E49B         ; $23:E464: 4C 9B E4

CODE_23E467:
LDY $1930               ; $23:E467: AC 30 19
BEQ CODE_23E4D6         ; $23:E46A: F0 6A

CODE_23E46C:
TXA                     ; $23:E46C: 8A
BEQ CODE_23E478         ; $23:E46D: F0 09
LDA $1801               ; $23:E46F: AD 01 18
CMP #$02                ; $23:E472: C9 02
BEQ CODE_23E4D6         ; $23:E474: F0 60
BRA CODE_23E49B         ; $23:E476: 80 23

CODE_23E478:
LDA $0076               ; $23:E478: AD 76 00
BNE CODE_23E480         ; $23:E47B: D0 03
DEC $1930               ; $23:E47D: CE 30 19

CODE_23E480:
LDA $1800               ; $23:E480: AD 00 18
CMP #$02                ; $23:E483: C9 02
BEQ CODE_23E4D6         ; $23:E485: F0 4F
LDA $1930               ; $23:E487: AD 30 19
BNE CODE_23E49B         ; $23:E48A: D0 0F
INC $1930               ; $23:E48C: EE 30 19
JSR CODE_23E6CC         ; $23:E48F: 20 CC E6

CODE_23E492:
LDA #$01                ; $23:E492: A9 01
STA $0014               ; $23:E494: 8D 14 00
STZ $0075               ; $23:E497: 9C 75 00

CODE_23E49A:
RTS                     ; $23:E49A: 60

CODE_23E49B:
LDA $1800,x             ; $23:E49B: BD 00 18
BEQ CODE_23E49A         ; $23:E49E: F0 FA
LDA $0076               ; $23:E4A0: AD 76 00
ORA $1930               ; $23:E4A3: 0D 30 19
BEQ CODE_23E4B9         ; $23:E4A6: F0 11
LDA $193F,x             ; $23:E4A8: BD 3F 19
BEQ CODE_23E4B9         ; $23:E4AB: F0 0C
LDA $1811,x             ; $23:E4AD: BD 11 18
AND #$F8                ; $23:E4B0: 29 F8
CLC                     ; $23:E4B2: 18
ADC $193F,x             ; $23:E4B3: 7D 3F 19
STA $1811,x             ; $23:E4B6: 9D 11 18

CODE_23E4B9:
LDA $1800,x             ; $23:E4B9: BD 00 18
CMP #$03                ; $23:E4BC: C9 03
BNE CODE_23E4D2         ; $23:E4BE: D0 12
LDA $1930               ; $23:E4C0: AD 30 19
BEQ CODE_23E4CF         ; $23:E4C3: F0 0A
LDA $1895,x             ; $23:E4C5: BD 95 18
ORA #$04                ; $23:E4C8: 09 04
STA $1895,x             ; $23:E4CA: 9D 95 18
BRA CODE_23E4D2         ; $23:E4CD: 80 03

CODE_23E4CF:
JMP CODE_23E816         ; $23:E4CF: 4C 16 E8

CODE_23E4D2:
JSR CODE_23E6CC         ; $23:E4D2: 20 CC E6
RTS                     ; $23:E4D5: 60

CODE_23E4D6:
LDA $1800,x             ; $23:E4D6: BD 00 18

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:E4D9: 22 1F FB 20
dw CODE_23E4E5
dw CODE_23E51E
dw CODE_23E82C
dw CODE_23E78E

CODE_23E4E5:
LDY $18E7,x             ; $23:E4E5: BC E7 18
BEQ CODE_23E4F4         ; $23:E4E8: F0 0A
DEY                     ; $23:E4EA: 88
BNE CODE_23E51D         ; $23:E4EB: D0 30
INX                     ; $23:E4ED: E8
STX $078C               ; $23:E4EE: 8E 8C 07
JMP CODE_23E492         ; $23:E4F1: 4C 92 E4

CODE_23E4F4:
LDA #$00                ; $23:E4F4: A9 00
STA $1844,x             ; $23:E4F6: 9D 44 18
STA $1833,x             ; $23:E4F9: 9D 33 18
LDA #$01                ; $23:E4FC: A9 01
STA $1800,x             ; $23:E4FE: 9D 00 18
TXA                     ; $23:E501: 8A
TAY                     ; $23:E502: A8
LDA.w DATA_21ECC1,y     ; $23:E503: B9 C1 EC
STA $1864,x             ; $23:E506: 9D 64 18
LDA #$90                ; $23:E509: A9 90
STA $1811,x             ; $23:E50B: 9D 11 18
LDA $1F26               ; $23:E50E: AD 26 1F
CMP #$07                ; $23:E511: C9 07
BNE CODE_23E517         ; $23:E513: D0 02
INY                     ; $23:E515: C8
INY                     ; $23:E516: C8

CODE_23E517:
LDA.w DATA_21ECBD,y     ; $23:E517: B9 BD EC
STA $1822,x             ; $23:E51A: 9D 22 18

CODE_23E51D:
RTS                     ; $23:E51D: 60

CODE_23E51E:
JSR CODE_23E525         ; $23:E51E: 20 25 E5
JSR CODE_23E6CC         ; $23:E521: 20 CC E6
RTS                     ; $23:E524: 60

CODE_23E525:
LDA $18B9               ; $23:E525: AD B9 18
BNE CODE_23E54C         ; $23:E528: D0 22
LDA $F2,x               ; $23:E52A: B5 F2
AND #$0C                ; $23:E52C: 29 0C
BEQ CODE_23E54C         ; $23:E52E: F0 1C
AND $1895,x             ; $23:E530: 3D 95 18
BNE CODE_23E54C         ; $23:E533: D0 17
LDA $190F,x             ; $23:E535: BD 0F 19
CMP #$C0                ; $23:E538: C9 C0
BNE CODE_23E54C         ; $23:E53A: D0 10
LDA #$00                ; $23:E53C: A9 00
STA $1844,x             ; $23:E53E: 9D 44 18
STA $1833,x             ; $23:E541: 9D 33 18
LDA #$03                ; $23:E544: A9 03
STA $1800,x             ; $23:E546: 9D 00 18
JMP CODE_23EAA1         ; $23:E549: 4C A1 EA

CODE_23E54C:
LDA $F2,x               ; $23:E54C: B5 F2
BEQ CODE_23E555         ; $23:E54E: F0 05
LDA #$00                ; $23:E550: A9 00
STA $190A,x             ; $23:E552: 9D 0A 19

CODE_23E555:
LDA $18B5,x             ; $23:E555: BD B5 18
BEQ CODE_23E567         ; $23:E558: F0 0D
CMP #$08                ; $23:E55A: C9 08
BNE CODE_23E561         ; $23:E55C: D0 03
JSR CODE_23E387         ; $23:E55E: 20 87 E3

CODE_23E561:
LDA #$00                ; $23:E561: A9 00
STA $F2,x               ; $23:E563: 95 F2
STA $F6,x               ; $23:E565: 95 F6

CODE_23E567:
LDA $F2,x               ; $23:E567: B5 F2
AND #$03                ; $23:E569: 29 03
BEQ CODE_23E5C3         ; $23:E56B: F0 56
STA $1864,x             ; $23:E56D: 9D 64 18
LSR A                   ; $23:E570: 4A
BCC CODE_23E59B         ; $23:E571: 90 28
LDA $F2,x               ; $23:E573: B5 F2
AND #$40                ; $23:E575: 29 40
BEQ CODE_23E586         ; $23:E577: F0 0D
LDA $1844,x             ; $23:E579: BD 44 18
CMP #$18                ; $23:E57C: C9 18
BPL CODE_23E583         ; $23:E57E: 10 03
CLC                     ; $23:E580: 18
ADC #$01                ; $23:E581: 69 01

CODE_23E583:
JMP CODE_23E5C0         ; $23:E583: 4C C0 E5

CODE_23E586:
LDA $1844,x             ; $23:E586: BD 44 18
CMP #$0C                ; $23:E589: C9 0C
BEQ CODE_23E598         ; $23:E58B: F0 0B
BPL CODE_23E595         ; $23:E58D: 10 06
CLC                     ; $23:E58F: 18
ADC #$01                ; $23:E590: 69 01
JMP CODE_23E5C0         ; $23:E592: 4C C0 E5

CODE_23E595:
SEC                     ; $23:E595: 38
SBC #$01                ; $23:E596: E9 01

CODE_23E598:
JMP CODE_23E5C0         ; $23:E598: 4C C0 E5

CODE_23E59B:
LDA $F2,x               ; $23:E59B: B5 F2
AND #$40                ; $23:E59D: 29 40
BEQ CODE_23E5AE         ; $23:E59F: F0 0D
LDA $1844,x             ; $23:E5A1: BD 44 18
CMP #$E9                ; $23:E5A4: C9 E9
BMI CODE_23E5AB         ; $23:E5A6: 30 03
SEC                     ; $23:E5A8: 38
SBC #$01                ; $23:E5A9: E9 01

CODE_23E5AB:
JMP CODE_23E5C0         ; $23:E5AB: 4C C0 E5

CODE_23E5AE:
LDA $1844,x             ; $23:E5AE: BD 44 18
CMP #$F4                ; $23:E5B1: C9 F4
BEQ CODE_23E5C0         ; $23:E5B3: F0 0B
BMI CODE_23E5BD         ; $23:E5B5: 30 06
SEC                     ; $23:E5B7: 38
SBC #$01                ; $23:E5B8: E9 01
JMP CODE_23E5C0         ; $23:E5BA: 4C C0 E5

CODE_23E5BD:
CLC                     ; $23:E5BD: 18
ADC #$01                ; $23:E5BE: 69 01

CODE_23E5C0:
STA $1844,x             ; $23:E5C0: 9D 44 18

CODE_23E5C3:
LDA $1895,x             ; $23:E5C3: BD 95 18
AND #$04                ; $23:E5C6: 29 04
BEQ CODE_23E5CF         ; $23:E5C8: F0 05
LDA $1833,x             ; $23:E5CA: BD 33 18
BPL CODE_23E5D2         ; $23:E5CD: 10 03

CODE_23E5CF:
JMP CODE_23E656         ; $23:E5CF: 4C 56 E6

CODE_23E5D2:
LDA $1811,x             ; $23:E5D2: BD 11 18
AND #$F8                ; $23:E5D5: 29 F8
CLC                     ; $23:E5D7: 18
ADC $193F,x             ; $23:E5D8: 7D 3F 19
STA $1811,x             ; $23:E5DB: 9D 11 18
LDA #$00                ; $23:E5DE: A9 00
STA $1833,x             ; $23:E5E0: 9D 33 18
STA $18F6,x             ; $23:E5E3: 9D F6 18
LDY $18F8,x             ; $23:E5E6: BC F8 18
CPY #$C2                ; $23:E5E9: C0 C2
BNE CODE_23E605         ; $23:E5EB: D0 18
LDA $1895,x             ; $23:E5ED: BD 95 18
AND #$C0                ; $23:E5F0: 29 C0
LDY #$08                ; $23:E5F2: A0 08
CMP #$C0                ; $23:E5F4: C9 C0
BEQ CODE_23E602         ; $23:E5F6: F0 0A
CMP #$80                ; $23:E5F8: C9 80
BEQ CODE_23E5FE         ; $23:E5FA: F0 02
LDY #$F8                ; $23:E5FC: A0 F8

CODE_23E5FE:
TYA                     ; $23:E5FE: 98
STA $1844,x             ; $23:E5FF: 9D 44 18

CODE_23E602:
JMP CODE_23E60A         ; $23:E602: 4C 0A E6

CODE_23E605:
LDY $18BA               ; $23:E605: AC BA 18
BEQ CODE_23E619         ; $23:E608: F0 0F

CODE_23E60A:
LDA #$12                ; $23:E60A: A9 12
STA $18B5,x             ; $23:E60C: 9D B5 18
LDA #$02                ; $23:E60F: A9 02
STA $1200               ; $23:E611: 8D 00 12
LDA #$C8                ; $23:E614: A9 C8
JMP CODE_23E637         ; $23:E616: 4C 37 E6

CODE_23E619:
LDA $F6,x               ; $23:E619: B5 F6
BPL CODE_23E63A         ; $23:E61B: 10 1D
LDA #$01                ; $23:E61D: A9 01
STA $1201               ; $23:E61F: 8D 01 12
LDA #$01                ; $23:E622: A9 01
STA $18F6,x             ; $23:E624: 9D F6 18
LDA $1844,x             ; $23:E627: BD 44 18
BPL CODE_23E631         ; $23:E62A: 10 05
EOR #$FF                ; $23:E62C: 49 FF
CLC                     ; $23:E62E: 18
ADC #$01                ; $23:E62F: 69 01

CODE_23E631:
LSR A                   ; $23:E631: 4A
LSR A                   ; $23:E632: 4A
TAY                     ; $23:E633: A8
LDA.w DATA_21ECD9,y     ; $23:E634: B9 D9 EC

CODE_23E637:
STA $1833,x             ; $23:E637: 9D 33 18

CODE_23E63A:
LDA $F2,x               ; $23:E63A: B5 F2
AND #$03                ; $23:E63C: 29 03
BNE CODE_23E656         ; $23:E63E: D0 16
LDA $1844,x             ; $23:E640: BD 44 18
BEQ CODE_23E656         ; $23:E643: F0 11
BPL CODE_23E650         ; $23:E645: 10 09
CLC                     ; $23:E647: 18
ADC #$01                ; $23:E648: 69 01
STA $1844,x             ; $23:E64A: 9D 44 18
JMP CODE_23E656         ; $23:E64D: 4C 56 E6

CODE_23E650:
SEC                     ; $23:E650: 38
SBC #$01                ; $23:E651: E9 01
STA $1844,x             ; $23:E653: 9D 44 18

CODE_23E656:
LDY $1F26               ; $23:E656: AC 26 1F
LDA.w DATA_21ECCD,y     ; $23:E659: B9 CD EC
BEQ CODE_23E679         ; $23:E65C: F0 1B
LDA #$01                ; $23:E65E: A9 01
LDY $1844,x             ; $23:E660: BC 44 18
BPL CODE_23E666         ; $23:E663: 10 01
ASL A                   ; $23:E665: 0A

CODE_23E666:
AND $1895,x             ; $23:E666: 3D 95 18
BEQ CODE_23E679         ; $23:E669: F0 0E
AND $F2,x               ; $23:E66B: 35 F2
BEQ CODE_23E673         ; $23:E66D: F0 04
TAY                     ; $23:E66F: A8
LDA.w DATA_21ECCA,y     ; $23:E670: B9 CA EC

CODE_23E673:
STA $1844,x             ; $23:E673: 9D 44 18
JMP CODE_23E67C         ; $23:E676: 4C 7C E6

CODE_23E679:
JSR CODE_23F983         ; $23:E679: 20 83 F9

CODE_23E67C:
LDA $18B7,x             ; $23:E67C: BD B7 18
BEQ CODE_23E686         ; $23:E67F: F0 05
DEC $18B7,x             ; $23:E681: DE B7 18
BNE CODE_23E6CB         ; $23:E684: D0 45

CODE_23E686:
LDY $1833,x             ; $23:E686: BC 33 18
BPL CODE_23E6AD         ; $23:E689: 10 22
LDA $1895,x             ; $23:E68B: BD 95 18
AND #$08                ; $23:E68E: 29 08
BEQ CODE_23E6AD         ; $23:E690: F0 1B
TYA                     ; $23:E692: 98
EOR #$FF                ; $23:E693: 49 FF
LSR A                   ; $23:E695: 4A
LSR A                   ; $23:E696: 4A
LSR A                   ; $23:E697: 4A
ADC #$04                ; $23:E698: 69 04
STA $18B7,x             ; $23:E69A: 9D B7 18
LDA #$00                ; $23:E69D: A9 00
STA $1833,x             ; $23:E69F: 9D 33 18
LDA $1811,x             ; $23:E6A2: BD 11 18
AND #$F0                ; $23:E6A5: 29 F0
CLC                     ; $23:E6A7: 18
ADC #$0E                ; $23:E6A8: 69 0E
STA $1811,x             ; $23:E6AA: 9D 11 18

CODE_23E6AD:
JSR CODE_23F98F         ; $23:E6AD: 20 8F F9
LDA $1833,x             ; $23:E6B0: BD 33 18
BMI CODE_23E6B9         ; $23:E6B3: 30 04
CMP #$40                ; $23:E6B5: C9 40
BCS CODE_23E6CB         ; $23:E6B7: B0 12

CODE_23E6B9:
LDA $1833,x             ; $23:E6B9: BD 33 18
BPL CODE_23E6C2         ; $23:E6BC: 10 04
LDY $F2,x               ; $23:E6BE: B4 F2
BMI CODE_23E6C5         ; $23:E6C0: 30 03

CODE_23E6C2:
CLC                     ; $23:E6C2: 18
ADC #$03                ; $23:E6C3: 69 03

CODE_23E6C5:
CLC                     ; $23:E6C5: 18
ADC #$02                ; $23:E6C6: 69 02
STA $1833,x             ; $23:E6C8: 9D 33 18

CODE_23E6CB:
RTS                     ; $23:E6CB: 60

CODE_23E6CC:
LDA $1930               ; $23:E6CC: AD 30 19
BEQ CODE_23E6F5         ; $23:E6CF: F0 24
TXA                     ; $23:E6D1: 8A
EOR $078C               ; $23:E6D2: 4D 8C 07
AND #$01                ; $23:E6D5: 29 01
BNE CODE_23E6F5         ; $23:E6D7: D0 1C
LDA $1895,x             ; $23:E6D9: BD 95 18
BIT #$04                ; $23:E6DC: 89 04
BEQ CODE_23E6F2         ; $23:E6DE: F0 12
LDA $8D,x               ; $23:E6E0: B5 8D
CMP #$98                ; $23:E6E2: C9 98
BEQ CODE_23E6EA         ; $23:E6E4: F0 04
CMP #$58                ; $23:E6E6: C9 58
BNE CODE_23E6F2         ; $23:E6E8: D0 08

CODE_23E6EA:
LDA #$98                ; $23:E6EA: A9 98
STA $8D,x               ; $23:E6EC: 95 8D
JSR CODE_23EAA1         ; $23:E6EE: 20 A1 EA
RTS                     ; $23:E6F1: 60

CODE_23E6F2:
JSR CODE_23E525         ; $23:E6F2: 20 25 E5

CODE_23E6F5:
LDY #$58                ; $23:E6F5: A0 58
LDA $1844,x             ; $23:E6F7: BD 44 18
BNE CODE_23E701         ; $23:E6FA: D0 05
STA $1855,x             ; $23:E6FC: 9D 55 18
BEQ CODE_23E748         ; $23:E6FF: F0 47

CODE_23E701:
LDY #$01                ; $23:E701: A0 01
ASL A                   ; $23:E703: 0A
BCC CODE_23E707         ; $23:E704: 90 01
INY                     ; $23:E706: C8

CODE_23E707:
TYA                     ; $23:E707: 98
LDY #$68                ; $23:E708: A0 68
CMP $1864,x             ; $23:E70A: DD 64 18
BNE CODE_23E748         ; $23:E70D: D0 39
LDA $18CB               ; $23:E70F: AD CB 18
ORA $18CC               ; $23:E712: 0D CC 18
ORA $1930               ; $23:E715: 0D 30 19
BNE CODE_23E734         ; $23:E718: D0 1A
LDA $1844,x             ; $23:E71A: BD 44 18
BPL CODE_23E722         ; $23:E71D: 10 03
EOR #$FF                ; $23:E71F: 49 FF
INC A                   ; $23:E721: 1A

CODE_23E722:
LSR A                   ; $23:E722: 4A
LSR A                   ; $23:E723: 4A
TAY                     ; $23:E724: A8
LDA $199C,x             ; $23:E725: BD 9C 19
CLC                     ; $23:E728: 18
ADC.w DATA_21ECC3,y     ; $23:E729: 79 C3 EC
STA $199C,x             ; $23:E72C: 9D 9C 19
BCC CODE_23E734         ; $23:E72F: 90 03
INC $199E,x             ; $23:E731: FE 9E 19

CODE_23E734:
LDA $199E,x             ; $23:E734: BD 9E 19
TAY                     ; $23:E737: A8
TYA                     ; $23:E738: 98
BEQ CODE_23E742         ; $23:E739: F0 07
BIT #$01                ; $23:E73B: 89 01
BNE CODE_23E746         ; $23:E73D: D0 07
STZ $199E,x             ; $23:E73F: 9E 9E 19

CODE_23E742:
LDY #$58                ; $23:E742: A0 58
BRA CODE_23E748         ; $23:E744: 80 02

CODE_23E746:
LDY #$60                ; $23:E746: A0 60

CODE_23E748:
LDA $1895,x             ; $23:E748: BD 95 18
AND #$04                ; $23:E74B: 29 04
BNE CODE_23E75E         ; $23:E74D: D0 0F
LDA $18F6,x             ; $23:E74F: BD F6 18
BNE CODE_23E759         ; $23:E752: D0 05
LDY #$60                ; $23:E754: A0 60
JMP CODE_23E776         ; $23:E756: 4C 76 E7

CODE_23E759:
LDY #$70                ; $23:E759: A0 70
JMP CODE_23E776         ; $23:E75B: 4C 76 E7

CODE_23E75E:
LDA $18B5,x             ; $23:E75E: BD B5 18
BEQ CODE_23E76A         ; $23:E761: F0 07
DEC $18B5,x             ; $23:E763: DE B5 18
LDY #$78                ; $23:E766: A0 78
BRA CODE_23E776         ; $23:E768: 80 0C

CODE_23E76A:
LDA $18B3,x             ; $23:E76A: BD B3 18
BEQ CODE_23E776         ; $23:E76D: F0 07
DEC $18B3,x             ; $23:E76F: DE B3 18
LDY #$80                ; $23:E772: A0 80
BRA CODE_23E776         ; $23:E774: 80 00

CODE_23E776:
TYA                     ; $23:E776: 98
STA $8D,x               ; $23:E777: 95 8D
CMP #$68                ; $23:E779: C9 68
BNE CODE_23E787         ; $23:E77B: D0 0A
LDA $1201               ; $23:E77D: AD 01 12
BNE CODE_23E787         ; $23:E780: D0 05
LDA #$04                ; $23:E782: A9 04
STA $1201               ; $23:E784: 8D 01 12

CODE_23E787:
JSR CODE_23EAA1         ; $23:E787: 20 A1 EA
JSR CODE_23E864         ; $23:E78A: 20 64 E8
RTS                     ; $23:E78D: 60

CODE_23E78E:
LDA $F2,x               ; $23:E78E: B5 F2
AND #$0C                ; $23:E790: 29 0C
BEQ CODE_23E7B0         ; $23:E792: F0 1C
AND $1895,x             ; $23:E794: 3D 95 18
BNE CODE_23E7B0         ; $23:E797: D0 17
LDA $1822,x             ; $23:E799: BD 22 18
AND #$0F                ; $23:E79C: 29 0F
BEQ CODE_23E7B0         ; $23:E79E: F0 10
CMP #$08                ; $23:E7A0: C9 08
LDY #$01                ; $23:E7A2: A0 01
BCS CODE_23E7A8         ; $23:E7A4: B0 02
LDY #$FF                ; $23:E7A6: A0 FF

CODE_23E7A8:
TYA                     ; $23:E7A8: 98
CLC                     ; $23:E7A9: 18
ADC $1822,x             ; $23:E7AA: 7D 22 18
STA $1822,x             ; $23:E7AD: 9D 22 18

CODE_23E7B0:
LDA $F2,x               ; $23:E7B0: B5 F2
AND #$0C                ; $23:E7B2: 29 0C
BEQ CODE_23E7E6         ; $23:E7B4: F0 30
STA $00                 ; $23:E7B6: 85 00
AND $1895,x             ; $23:E7B8: 3D 95 18
BNE CODE_23E806         ; $23:E7BB: D0 49
LDA $00                 ; $23:E7BD: A5 00
CMP #$08                ; $23:E7BF: C9 08
BNE CODE_23E7E0         ; $23:E7C1: D0 1D
LDA #$C0                ; $23:E7C3: A9 C0
CMP $190F,x             ; $23:E7C5: DD 0F 19
BNE CODE_23E806         ; $23:E7C8: D0 3C
DEC $1811,x             ; $23:E7CA: DE 11 18
JSR CODE_23E864         ; $23:E7CD: 20 64 E8
LDA $190F,x             ; $23:E7D0: BD 0F 19
CMP #$C0                ; $23:E7D3: C9 C0
BEQ CODE_23E7DA         ; $23:E7D5: F0 03
INC $1811,x             ; $23:E7D7: FE 11 18

CODE_23E7DA:
INC $1855,x             ; $23:E7DA: FE 55 18
JMP CODE_23E816         ; $23:E7DD: 4C 16 E8

CODE_23E7E0:
INC $1811,x             ; $23:E7E0: FE 11 18
INC $1855,x             ; $23:E7E3: FE 55 18

CODE_23E7E6:
LDA $F2,x               ; $23:E7E6: B5 F2
AND #$03                ; $23:E7E8: 29 03
STA $00                 ; $23:E7EA: 85 00
AND $1895,x             ; $23:E7EC: 3D 95 18
BNE CODE_23E7FF         ; $23:E7EF: D0 0E
LSR $00                 ; $23:E7F1: 46 00
BCC CODE_23E7F8         ; $23:E7F3: 90 03
INC $1822,x             ; $23:E7F5: FE 22 18

CODE_23E7F8:
LSR $00                 ; $23:E7F8: 46 00
BCC CODE_23E7FF         ; $23:E7FA: 90 03
DEC $1822,x             ; $23:E7FC: DE 22 18

CODE_23E7FF:
LDA $190F,x             ; $23:E7FF: BD 0F 19
CMP #$C0                ; $23:E802: C9 C0
BEQ CODE_23E816         ; $23:E804: F0 10

CODE_23E806:
LDA #$01                ; $23:E806: A9 01
STA $1800,x             ; $23:E808: 9D 00 18
LDA #$00                ; $23:E80B: A9 00
STA $1844,x             ; $23:E80D: 9D 44 18
STA $1833,x             ; $23:E810: 9D 33 18
STA $18F6,x             ; $23:E813: 9D F6 18

CODE_23E816:
LDA #$88                ; $23:E816: A9 88
STA $8D,x               ; $23:E818: 95 8D
JSR CODE_23E864         ; $23:E81A: 20 64 E8
LDA $1855,x             ; $23:E81D: BD 55 18
AND #$04                ; $23:E820: 29 04
LSR A                   ; $23:E822: 4A
LSR A                   ; $23:E823: 4A
ADC #$01                ; $23:E824: 69 01
STA $1864,x             ; $23:E826: 9D 64 18
JMP CODE_23EAA1         ; $23:E829: 4C A1 EA

CODE_23E82C:
LDA #$90                ; $23:E82C: A9 90
STA $8D,x               ; $23:E82E: 95 8D
JSR CODE_23EAA1         ; $23:E830: 20 A1 EA
LDA $18E7,x             ; $23:E833: BD E7 18
BNE CODE_23E863         ; $23:E836: D0 2B
JSR CODE_23F98F         ; $23:E838: 20 8F F9
LDA $1833,x             ; $23:E83B: BD 33 18
BMI CODE_23E844         ; $23:E83E: 30 04
CMP #$40                ; $23:E840: C9 40
BCS CODE_23E84A         ; $23:E842: B0 06

CODE_23E844:
INC $1833,x             ; $23:E844: FE 33 18
INC $1833,x             ; $23:E847: FE 33 18

CODE_23E84A:
LDA $1811,x             ; $23:E84A: BD 11 18
CMP #$EF                ; $23:E84D: C9 EF
BCC CODE_23E863         ; $23:E84F: 90 12
LDA $1942,x             ; $23:E851: BD 42 19
BNE CODE_23E863         ; $23:E854: D0 0D
LDA #$40                ; $23:E856: A9 40
STA $18E7,x             ; $23:E858: 9D E7 18
STA $190A,x             ; $23:E85B: 9D 0A 19
LDA #$00                ; $23:E85E: A9 00
STA $1800,x             ; $23:E860: 9D 00 18

CODE_23E863:
RTS                     ; $23:E863: 60

CODE_23E864:
LDA #$00                ; $23:E864: A9 00
STA $1895,x             ; $23:E866: 9D 95 18
STA $18F8,x             ; $23:E869: 9D F8 18
STA $190F,x             ; $23:E86C: 9D 0F 19
LDY #$05                ; $23:E86F: A0 05

CODE_23E871:
STY $0F                 ; $23:E871: 84 0F
LDA $1811,x             ; $23:E873: BD 11 18
CLC                     ; $23:E876: 18
ADC.w DATA_21ECF3,y     ; $23:E877: 79 F3 EC
AND #$F0                ; $23:E87A: 29 F0
STA $00                 ; $23:E87C: 85 00
CPX #$02                ; $23:E87E: E0 02
BCC CODE_23E88E         ; $23:E880: 90 0C
LDA $18B9,x             ; $23:E882: BD B9 18
CMP #$0B                ; $23:E885: C9 0B
BNE CODE_23E88E         ; $23:E887: D0 05
TYA                     ; $23:E889: 98
CLC                     ; $23:E88A: 18
ADC #$06                ; $23:E88B: 69 06
TAY                     ; $23:E88D: A8

CODE_23E88E:
LDA $1822,x             ; $23:E88E: BD 22 18
CLC                     ; $23:E891: 18
ADC.w DATA_21ECE7,y     ; $23:E892: 79 E7 EC
STA $01                 ; $23:E895: 85 01
JSR CODE_23EA61         ; $23:E897: 20 61 EA
LDY $0F                 ; $23:E89A: A4 0F
BCS CODE_23E8A1         ; $23:E89C: B0 03
JMP CODE_23E9E8         ; $23:E89E: 4C E8 E9

CODE_23E8A1:
CPY #$02                ; $23:E8A1: C0 02
BCS CODE_23E900         ; $23:E8A3: B0 5B
LDA $1811,x             ; $23:E8A5: BD 11 18
CMP #$D0                ; $23:E8A8: C9 D0
BCS CODE_23E8FD         ; $23:E8AA: B0 51
AND #$0F                ; $23:E8AC: 29 0F
CMP #$09                ; $23:E8AE: C9 09
BCS CODE_23E8B5         ; $23:E8B0: B0 03
JMP CODE_23E9E8         ; $23:E8B2: 4C E8 E9

CODE_23E8B5:
CPX #$02                ; $23:E8B5: E0 02
BCS CODE_23E8FD         ; $23:E8B7: B0 44
LDA $1833,x             ; $23:E8B9: BD 33 18
BPL CODE_23E8FD         ; $23:E8BC: 10 3F
LDA $180F,x             ; $23:E8BE: BD 0F 18
BNE CODE_23E8FD         ; $23:E8C1: D0 3A
LDA $1F26               ; $23:E8C3: AD 26 1F
CMP #$0B                ; $23:E8C6: C9 0B
BEQ CODE_23E8FD         ; $23:E8C8: F0 33
LDA #$00                ; $23:E8CA: A9 00
STA $2E                 ; $23:E8CC: 85 2E
LDA #$20                ; $23:E8CE: A9 20
STA $2F                 ; $23:E8D0: 85 2F
LDA #$7E                ; $23:E8D2: A9 7E
STA $30                 ; $23:E8D4: 85 30
LDY $02                 ; $23:E8D6: A4 02
LDA #$C2                ; $23:E8D8: A9 C2
STA [$2E],y             ; $23:E8DA: 97 2E
TYA                     ; $23:E8DC: 98
STA $1908,x             ; $23:E8DD: 9D 08 19
LDA $1811,x             ; $23:E8E0: BD 11 18
AND #$F0                ; $23:E8E3: 29 F0
STA $1820,x             ; $23:E8E5: 9D 20 18
LDA $1822,x             ; $23:E8E8: BD 22 18
CLC                     ; $23:E8EB: 18
ADC #$08                ; $23:E8EC: 69 08
AND #$F0                ; $23:E8EE: 29 F0
STA $1831,x             ; $23:E8F0: 9D 31 18
LDA #$0E                ; $23:E8F3: A9 0E
STA $180F,x             ; $23:E8F5: 9D 0F 18
LDA #$E0                ; $23:E8F8: A9 E0
STA $1842,x             ; $23:E8FA: 9D 42 18

CODE_23E8FD:
JMP CODE_23E9B3         ; $23:E8FD: 4C B3 E9

CODE_23E900:
CPY #$04                ; $23:E900: C0 04
BCS CODE_23E981         ; $23:E902: B0 7D
CPX #$02                ; $23:E904: E0 02
BCS CODE_23E97E         ; $23:E906: B0 76
CMP #$50                ; $23:E908: C9 50
BEQ CODE_23E97E         ; $23:E90A: F0 72
LDA $1F26               ; $23:E90C: AD 26 1F
CMP #$0B                ; $23:E90F: C9 0B
BNE CODE_23E97E         ; $23:E911: D0 6B
LDA $F6,x               ; $23:E913: B5 F6
AND #$40                ; $23:E915: 29 40
BEQ CODE_23E97E         ; $23:E917: F0 65
LDA #$0C                ; $23:E919: A9 0C
STA $18B3,x             ; $23:E91B: 9D B3 18
LDA #$03                ; $23:E91E: A9 03
STA $1200               ; $23:E920: 8D 00 12
LDA #$00                ; $23:E923: A9 00
STA $2E                 ; $23:E925: 85 2E
LDA #$20                ; $23:E927: A9 20
STA $2F                 ; $23:E929: 85 2F
LDA #$7E                ; $23:E92B: A9 7E
STA $30                 ; $23:E92D: 85 30
LDY $02                 ; $23:E92F: A4 02
LDA #$00                ; $23:E931: A9 00
STA [$2E],y             ; $23:E933: 97 2E
JSR CODE_23EA0F         ; $23:E935: 20 0F EA
LDX #$06                ; $23:E938: A2 06

CODE_23E93A:
LDA $1802,x             ; $23:E93A: BD 02 18
BEQ CODE_23E944         ; $23:E93D: F0 05
DEX                     ; $23:E93F: CA
BPL CODE_23E93A         ; $23:E940: 10 F8
LDX #$06                ; $23:E942: A2 06

CODE_23E944:
STX $00                 ; $23:E944: 86 00
JSR CODE_23ED8D         ; $23:E946: 20 8D ED
INC $1802,x             ; $23:E949: FE 02 18
LDA #$0F                ; $23:E94C: A9 0F
STA $18BB,x             ; $23:E94E: 9D BB 18
LDA $02                 ; $23:E951: A5 02
AND #$F0                ; $23:E953: 29 F0
STA $1813,x             ; $23:E955: 9D 13 18
LDA $02                 ; $23:E958: A5 02
ASL A                   ; $23:E95A: 0A
ASL A                   ; $23:E95B: 0A
ASL A                   ; $23:E95C: 0A
ASL A                   ; $23:E95D: 0A
STA $1824,x             ; $23:E95E: 9D 24 18
LDA #$C0                ; $23:E961: A9 C0
STA $1835,x             ; $23:E963: 9D 35 18
LDY #$10                ; $23:E966: A0 10
LDA $1824,x             ; $23:E968: BD 24 18
LDX $190E               ; $23:E96B: AE 0E 19
CMP $1822,x             ; $23:E96E: DD 22 18
BCS CODE_23E975         ; $23:E971: B0 02
LDY #$F0                ; $23:E973: A0 F0

CODE_23E975:
LDX $00                 ; $23:E975: A6 00
TYA                     ; $23:E977: 98
STA $1846,x             ; $23:E978: 9D 46 18
LDX $190E               ; $23:E97B: AE 0E 19

CODE_23E97E:
JMP CODE_23E9B3         ; $23:E97E: 4C B3 E9

CODE_23E981:
LDA $1811,x             ; $23:E981: BD 11 18
AND #$0F                ; $23:E984: 29 0F
CMP #$06                ; $23:E986: C9 06
BCS CODE_23E9E8         ; $23:E988: B0 5E
LDA $1833,x             ; $23:E98A: BD 33 18
BMI CODE_23E9E8         ; $23:E98D: 30 59
LDY $02                 ; $23:E98F: A4 02
LDA $18F8,x             ; $23:E991: BD F8 18
CMP #$C2                ; $23:E994: C9 C2
BEQ CODE_23E9B3         ; $23:E996: F0 1B
LDA #$00                ; $23:E998: A9 00
STA $2E                 ; $23:E99A: 85 2E
LDA #$20                ; $23:E99C: A9 20
STA $2F                 ; $23:E99E: 85 2F
LDA #$7E                ; $23:E9A0: A9 7E
STA $30                 ; $23:E9A2: 85 30
LDA [$2E],y             ; $23:E9A4: B7 2E
CMP #$FE                ; $23:E9A6: C9 FE
BCC CODE_23E9B0         ; $23:E9A8: 90 06
AND #$01                ; $23:E9AA: 29 01
TAY                     ; $23:E9AC: A8
LDA.w DATA_21EC57,y     ; $23:E9AD: B9 57 EC

CODE_23E9B0:
STA $18F8,x             ; $23:E9B0: 9D F8 18

CODE_23E9B3:
LDY $0F                 ; $23:E9B3: A4 0F
LDA $1895,x             ; $23:E9B5: BD 95 18
ORA.w DATA_21ECFF,y     ; $23:E9B8: 19 FF EC
STA $1895,x             ; $23:E9BB: 9D 95 18
CPX #$02                ; $23:E9BE: E0 02
BCC CODE_23E9C9         ; $23:E9C0: 90 07
LDA $18B9,x             ; $23:E9C2: BD B9 18
CMP #$01                ; $23:E9C5: C9 01
BEQ CODE_23E9DF         ; $23:E9C7: F0 16

CODE_23E9C9:
LDY $02                 ; $23:E9C9: A4 02
LDA #$00                ; $23:E9CB: A9 00
STA $2E                 ; $23:E9CD: 85 2E
LDA #$20                ; $23:E9CF: A9 20
STA $2F                 ; $23:E9D1: 85 2F
LDA #$7E                ; $23:E9D3: A9 7E
STA $30                 ; $23:E9D5: 85 30
LDA [$2E],y             ; $23:E9D7: B7 2E
LDY $0F                 ; $23:E9D9: A4 0F
CMP #$C2                ; $23:E9DB: C9 C2
BNE CODE_23E9E8         ; $23:E9DD: D0 09

CODE_23E9DF:
LDA $1895,x             ; $23:E9DF: BD 95 18
ORA.w DATA_21ED05,y     ; $23:E9E2: 19 05 ED
STA $1895,x             ; $23:E9E5: 9D 95 18

CODE_23E9E8:
CPY #$02                ; $23:E9E8: C0 02
BCS CODE_23EA06         ; $23:E9EA: B0 1A
LDY $02                 ; $23:E9EC: A4 02
LDA $190F,x             ; $23:E9EE: BD 0F 19
CMP #$C0                ; $23:E9F1: C9 C0
BEQ CODE_23EA06         ; $23:E9F3: F0 11
LDA #$00                ; $23:E9F5: A9 00
STA $2E                 ; $23:E9F7: 85 2E
LDA #$20                ; $23:E9F9: A9 20
STA $2F                 ; $23:E9FB: 85 2F
LDA #$7E                ; $23:E9FD: A9 7E
STA $30                 ; $23:E9FF: 85 30
LDA [$2E],y             ; $23:EA01: B7 2E
STA $190F,x             ; $23:EA03: 9D 0F 19

CODE_23EA06:
LDY $0F                 ; $23:EA06: A4 0F
DEY                     ; $23:EA08: 88
BMI CODE_23EA0E         ; $23:EA09: 30 03
JMP CODE_23E871         ; $23:EA0B: 4C 71 E8

CODE_23EA0E:
RTS                     ; $23:EA0E: 60

CODE_23EA0F:
LDY $1600               ; $23:EA0F: AC 00 16
LDA #$08                ; $23:EA12: A9 08
STA $03                 ; $23:EA14: 85 03
LDA $02                 ; $23:EA16: A5 02
AND #$F0                ; $23:EA18: 29 F0
ASL A                   ; $23:EA1A: 0A
ROL $03                 ; $23:EA1B: 26 03
ASL A                   ; $23:EA1D: 0A
ROL $03                 ; $23:EA1E: 26 03
STA $04                 ; $23:EA20: 85 04
LDA $02                 ; $23:EA22: A5 02
ASL A                   ; $23:EA24: 0A
AND #$1F                ; $23:EA25: 29 1F
CLC                     ; $23:EA27: 18
ADC $04                 ; $23:EA28: 65 04
STA $1603,y             ; $23:EA2A: 99 03 16
CLC                     ; $23:EA2D: 18
ADC #$20                ; $23:EA2E: 69 20
STA $1609,y             ; $23:EA30: 99 09 16
LDA $03                 ; $23:EA33: A5 03
AND #$DF                ; $23:EA35: 29 DF
STA $1602,y             ; $23:EA37: 99 02 16
STA $1608,y             ; $23:EA3A: 99 08 16
REP #$20                ; $23:EA3D: C2 20
LDA #$0240              ; $23:EA3F: A9 40 02
STA $1604,y             ; $23:EA42: 99 04 16
STA $160A,y             ; $23:EA45: 99 0A 16
LDA #$1CFF              ; $23:EA48: A9 FF 1C
STA $1606,y             ; $23:EA4B: 99 06 16
STA $160C,y             ; $23:EA4E: 99 0C 16
LDA #$FFFF              ; $23:EA51: A9 FF FF
STA $160E,y             ; $23:EA54: 99 0E 16
SEP #$20                ; $23:EA57: E2 20
TYA                     ; $23:EA59: 98
CLC                     ; $23:EA5A: 18
ADC #$0C                ; $23:EA5B: 69 0C
STA $1600               ; $23:EA5D: 8D 00 16
RTS                     ; $23:EA60: 60

CODE_23EA61:
LDA $01                 ; $23:EA61: A5 01
LSR A                   ; $23:EA63: 4A
LSR A                   ; $23:EA64: 4A
LSR A                   ; $23:EA65: 4A
LSR A                   ; $23:EA66: 4A
ORA $00                 ; $23:EA67: 05 00
TAY                     ; $23:EA69: A8
STY $02                 ; $23:EA6A: 84 02
LDA #$00                ; $23:EA6C: A9 00
STA $2E                 ; $23:EA6E: 85 2E
LDA #$20                ; $23:EA70: A9 20
STA $2F                 ; $23:EA72: 85 2F
LDA #$7E                ; $23:EA74: A9 7E
STA $30                 ; $23:EA76: 85 30
LDA [$2E],y             ; $23:EA78: B7 2E
CMP #$FE                ; $23:EA7A: C9 FE
BCC CODE_23EA84         ; $23:EA7C: 90 06
AND #$01                ; $23:EA7E: 29 01
TAY                     ; $23:EA80: A8
LDA.w DATA_21EC57,y     ; $23:EA81: B9 57 EC

CODE_23EA84:
PHA                     ; $23:EA84: 48
ASL A                   ; $23:EA85: 0A
ROL $0E                 ; $23:EA86: 26 0E
ASL A                   ; $23:EA88: 0A
ROL $0E                 ; $23:EA89: 26 0E
LDA $0E                 ; $23:EA8B: A5 0E
AND #$03                ; $23:EA8D: 29 03
TAY                     ; $23:EA8F: A8
PLA                     ; $23:EA90: 68
CMP $1E9A,y             ; $23:EA91: D9 9A 1E
RTS                     ; $23:EA94: 60

CODE_23EA95:
TXA                     ; $23:EA95: 8A
CLC                     ; $23:EA96: 18
ADC #$02                ; $23:EA97: 69 02
TAX                     ; $23:EA99: AA
JSR CODE_23E864         ; $23:EA9A: 20 64 E8
LDX $190E               ; $23:EA9D: AE 0E 19
RTS                     ; $23:EAA0: 60

CODE_23EAA1:
LDA $1942,x             ; $23:EAA1: BD 42 19
BPL CODE_23EAAE         ; $23:EAA4: 10 08
LDA $1811,x             ; $23:EAA6: BD 11 18
CMP #$F0                ; $23:EAA9: C9 F0
BCS CODE_23EAB1         ; $23:EAAB: B0 04
RTS                     ; $23:EAAD: 60

CODE_23EAAE:
BEQ CODE_23EAB1         ; $23:EAAE: F0 01
RTS                     ; $23:EAB0: 60

CODE_23EAB1:
LDA $190A,x             ; $23:EAB1: BD 0A 19
BEQ CODE_23EABD         ; $23:EAB4: F0 07
LDA $15                 ; $23:EAB6: A5 15
AND #$02                ; $23:EAB8: 29 02
BEQ CODE_23EABD         ; $23:EABA: F0 01
RTS                     ; $23:EABC: 60

CODE_23EABD:
TXA                     ; $23:EABD: 8A
ASL A                   ; $23:EABE: 0A
ASL A                   ; $23:EABF: 0A
ASL A                   ; $23:EAC0: 0A
ASL A                   ; $23:EAC1: 0A
ASL A                   ; $23:EAC2: 0A
TAY                     ; $23:EAC3: A8
LDA $1822,x             ; $23:EAC4: BD 22 18
STA $0880,y             ; $23:EAC7: 99 80 08
LDA $1811,x             ; $23:EACA: BD 11 18
STA $0881,y             ; $23:EACD: 99 81 08
LDA #$0E                ; $23:EAD0: A9 0E
STA $0A                 ; $23:EAD2: 85 0A
LDA $190E               ; $23:EAD4: AD 0E 19
BEQ CODE_23EADD         ; $23:EAD7: F0 04
LDA #$0A                ; $23:EAD9: A9 0A
STA $0A                 ; $23:EADB: 85 0A

CODE_23EADD:
LDA $1864,x             ; $23:EADD: BD 64 18
TAX                     ; $23:EAE0: AA
LDA.w DATA_21ED15+1,x   ; $23:EAE1: BD 16 ED
ORA $0A                 ; $23:EAE4: 05 0A
STA $0883,y             ; $23:EAE6: 99 83 08
LDX $190E               ; $23:EAE9: AE 0E 19
LDA $1800,x             ; $23:EAEC: BD 00 18
CMP #$02                ; $23:EAEF: C9 02
BEQ CODE_23EAFA         ; $23:EAF1: F0 07
LDA $1864,x             ; $23:EAF3: BD 64 18
BIT #$01                ; $23:EAF6: 89 01
BNE CODE_23EB02         ; $23:EAF8: D0 08

CODE_23EAFA:
LDA $0883,y             ; $23:EAFA: B9 83 08
AND #$BF                ; $23:EAFD: 29 BF
STA $0883,y             ; $23:EAFF: 99 83 08

CODE_23EB02:
LDA $1800,x             ; $23:EB02: BD 00 18
CMP #$02                ; $23:EB05: C9 02
BEQ CODE_23EB3A         ; $23:EB07: F0 31
LDA $1864,x             ; $23:EB09: BD 64 18
BIT #$01                ; $23:EB0C: 89 01
BEQ CODE_23EB3A         ; $23:EB0E: F0 2A
LDA $1930               ; $23:EB10: AD 30 19
BEQ CODE_23EB2D         ; $23:EB13: F0 18
TXA                     ; $23:EB15: 8A
EOR $078C               ; $23:EB16: 4D 8C 07
AND #$01                ; $23:EB19: 29 01
BNE CODE_23EB2D         ; $23:EB1B: D0 10
LDA $8D,x               ; $23:EB1D: B5 8D
CMP #$98                ; $23:EB1F: C9 98
BNE CODE_23EB2D         ; $23:EB21: D0 0A
LDA $0883,y             ; $23:EB23: B9 83 08
AND #$BF                ; $23:EB26: 29 BF
STA $0883,y             ; $23:EB28: 99 83 08
BRA CODE_23EB3A         ; $23:EB2B: 80 0D

CODE_23EB2D:
LDA $0880,y             ; $23:EB2D: B9 80 08
CLC                     ; $23:EB30: 18
ADC #$08                ; $23:EB31: 69 08
STA $0880,y             ; $23:EB33: 99 80 08
LDA #$F8                ; $23:EB36: A9 F8
BRA CODE_23EB3C         ; $23:EB38: 80 02

CODE_23EB3A:
LDA #$08                ; $23:EB3A: A9 08

CODE_23EB3C:
STA $0000               ; $23:EB3C: 8D 00 00
LDA #$04                ; $23:EB3F: A9 04
STA $0882,y             ; $23:EB41: 99 82 08
CPX #$00                ; $23:EB44: E0 00
BEQ CODE_23EB4D         ; $23:EB46: F0 05
LDA #$14                ; $23:EB48: A9 14
STA $0882,y             ; $23:EB4A: 99 82 08

CODE_23EB4D:
LDA $0880,y             ; $23:EB4D: B9 80 08
STA $0888,y             ; $23:EB50: 99 88 08
CLC                     ; $23:EB53: 18
ADC $0000               ; $23:EB54: 6D 00 00
STA $0884,y             ; $23:EB57: 99 84 08
STA $088C,y             ; $23:EB5A: 99 8C 08
LDA $0881,y             ; $23:EB5D: B9 81 08
STA $0885,y             ; $23:EB60: 99 85 08
CLC                     ; $23:EB63: 18
ADC #$08                ; $23:EB64: 69 08
STA $0889,y             ; $23:EB66: 99 89 08
STA $088D,y             ; $23:EB69: 99 8D 08
LDA $0882,y             ; $23:EB6C: B9 82 08
INC A                   ; $23:EB6F: 1A
STA $0886,y             ; $23:EB70: 99 86 08
INC A                   ; $23:EB73: 1A
STA $088A,y             ; $23:EB74: 99 8A 08
INC A                   ; $23:EB77: 1A
STA $088E,y             ; $23:EB78: 99 8E 08
LDA $0883,y             ; $23:EB7B: B9 83 08
STA $0887,y             ; $23:EB7E: 99 87 08
STA $088B,y             ; $23:EB81: 99 8B 08
STA $088F,y             ; $23:EB84: 99 8F 08
STA $00                 ; $23:EB87: 85 00
LDA $1822,x             ; $23:EB89: BD 22 18
CMP #$F1                ; $23:EB8C: C9 F1
BCC CODE_23EBCA         ; $23:EB8E: 90 3A
PHY                     ; $23:EB90: 5A
LDA #$08                ; $23:EB91: A9 08
STA $00                 ; $23:EB93: 85 00

CODE_23EB95:
LDA $0880,y             ; $23:EB95: B9 80 08
STA $08C0,y             ; $23:EB98: 99 C0 08
LDA $0881,y             ; $23:EB9B: B9 81 08
STA $08C1,y             ; $23:EB9E: 99 C1 08
LDA $0882,y             ; $23:EBA1: B9 82 08
STA $08C2,y             ; $23:EBA4: 99 C2 08
LDA $0883,y             ; $23:EBA7: B9 83 08
STA $08C3,y             ; $23:EBAA: 99 C3 08
TYA                     ; $23:EBAD: 98
CLC                     ; $23:EBAE: 18
ADC #$04                ; $23:EBAF: 69 04
TAY                     ; $23:EBB1: A8
DEC $00                 ; $23:EBB2: C6 00
BNE CODE_23EB95         ; $23:EBB4: D0 DF
PLA                     ; $23:EBB6: 68
LSR A                   ; $23:EBB7: 4A
LSR A                   ; $23:EBB8: 4A
TAY                     ; $23:EBB9: A8
LDA #$01                ; $23:EBBA: A9 01
STA $0A50,y             ; $23:EBBC: 99 50 0A
STA $0A52,y             ; $23:EBBF: 99 52 0A
STA $0A51,y             ; $23:EBC2: 99 51 0A
STA $0A53,y             ; $23:EBC5: 99 53 0A
BRA CODE_23EBCE         ; $23:EBC8: 80 04

CODE_23EBCA:
TYA                     ; $23:EBCA: 98
LSR A                   ; $23:EBCB: 4A
LSR A                   ; $23:EBCC: 4A
TAY                     ; $23:EBCD: A8

CODE_23EBCE:
LDA #$00                ; $23:EBCE: A9 00
STA $0A40,y             ; $23:EBD0: 99 40 0A
STA $0A41,y             ; $23:EBD3: 99 41 0A
STA $0A42,y             ; $23:EBD6: 99 42 0A
STA $0A43,y             ; $23:EBD9: 99 43 0A
RTS                     ; $23:EBDC: 60

CODE_23EBDD:
LDA $1800               ; $23:EBDD: AD 00 18
CMP #$02                ; $23:EBE0: C9 02
BEQ CODE_23EC16         ; $23:EBE2: F0 32
LDA $1801               ; $23:EBE4: AD 01 18
CMP #$02                ; $23:EBE7: C9 02
BEQ CODE_23EC16         ; $23:EBE9: F0 2B
LDA $18B9               ; $23:EBEB: AD B9 18
BNE CODE_23EC13         ; $23:EBEE: D0 23
LDX #$01                ; $23:EBF0: A2 01
LDY #$04                ; $23:EBF2: A0 04

CODE_23EBF4:
JSR CODE_23ECAC         ; $23:EBF4: 20 AC EC
DEY                     ; $23:EBF7: 88
DEY                     ; $23:EBF8: 88
DEY                     ; $23:EBF9: 88
DEY                     ; $23:EBFA: 88
DEX                     ; $23:EBFB: CA
BPL CODE_23EBF4         ; $23:EBFC: 10 F6
JSR CODE_23ECC9         ; $23:EBFE: 20 C9 EC
BCC CODE_23EC16         ; $23:EC01: 90 13
LDA #$01                ; $23:EC03: A9 01
STA $1800               ; $23:EC05: 8D 00 18
STA $1801               ; $23:EC08: 8D 01 18
LDA #$08                ; $23:EC0B: A9 08
STA $18B9               ; $23:EC0D: 8D B9 18
JMP CODE_23EC17         ; $23:EC10: 4C 17 EC

CODE_23EC13:
DEC $18B9               ; $23:EC13: CE B9 18

CODE_23EC16:
RTS                     ; $23:EC16: 60

CODE_23EC17:
LDA $1811               ; $23:EC17: AD 11 18
SEC                     ; $23:EC1A: 38
SBC $1812               ; $23:EC1B: ED 12 18
PHP                     ; $23:EC1E: 08
BPL CODE_23EC26         ; $23:EC1F: 10 05
EOR #$FF                ; $23:EC21: 49 FF
CLC                     ; $23:EC23: 18
ADC #$01                ; $23:EC24: 69 01

CODE_23EC26:
CMP #$08                ; $23:EC26: C9 08
BCC CODE_23EC73         ; $23:EC28: 90 49
LDY #$00                ; $23:EC2A: A0 00
PLP                     ; $23:EC2C: 28
BCC CODE_23EC30         ; $23:EC2D: 90 01
INY                     ; $23:EC2F: C8

CODE_23EC30:
LDA.w DATA_21ED1D,y     ; $23:EC30: B9 1D ED
AND $1833               ; $23:EC33: 2D 33 18
BMI CODE_23EC51         ; $23:EC36: 30 19
LDA.w DATA_21ED1D,y     ; $23:EC38: B9 1D ED
STA $1833               ; $23:EC3B: 8D 33 18
LDA $1895               ; $23:EC3E: AD 95 18
AND #$04                ; $23:EC41: 29 04
BEQ CODE_23EC51         ; $23:EC43: F0 0C
LDA.w DATA_21ED20,y     ; $23:EC45: B9 20 ED
STA $18B5               ; $23:EC48: 8D B5 18
LDA.w DATA_21ED23,y     ; $23:EC4B: B9 23 ED
STA $1200               ; $23:EC4E: 8D 00 12

CODE_23EC51:
LDA.w DATA_21ED1E,y     ; $23:EC51: B9 1E ED
AND $1834               ; $23:EC54: 2D 34 18
BMI CODE_23EC72         ; $23:EC57: 30 19
LDA.w DATA_21ED1E,y     ; $23:EC59: B9 1E ED
STA $1834               ; $23:EC5C: 8D 34 18
LDA $1896               ; $23:EC5F: AD 96 18
AND #$04                ; $23:EC62: 29 04
BEQ CODE_23EC72         ; $23:EC64: F0 0C
LDA.w DATA_21ED21,y     ; $23:EC66: B9 21 ED
STA $18B6               ; $23:EC69: 8D B6 18
LDA.w DATA_21ED24,y     ; $23:EC6C: B9 24 ED
STA $1200               ; $23:EC6F: 8D 00 12

CODE_23EC72:
RTS                     ; $23:EC72: 60

CODE_23EC73:
PLP                     ; $23:EC73: 28
LDY #$00                ; $23:EC74: A0 00
LDA $1822               ; $23:EC76: AD 22 18
CMP $1823               ; $23:EC79: CD 23 18
BCS CODE_23EC7F         ; $23:EC7C: B0 01
INY                     ; $23:EC7E: C8

CODE_23EC7F:
EOR $1823               ; $23:EC7F: 4D 23 18
BPL CODE_23EC91         ; $23:EC82: 10 0D
LDA #$EF                ; $23:EC84: A9 EF
CMP $1822               ; $23:EC86: CD 22 18
BCC CODE_23EC90         ; $23:EC89: 90 05
CMP $1823               ; $23:EC8B: CD 23 18
BCS CODE_23EC91         ; $23:EC8E: B0 01

CODE_23EC90:
INY                     ; $23:EC90: C8

CODE_23EC91:
LDA.w DATA_21ED19,y     ; $23:EC91: B9 19 ED
STA $1844               ; $23:EC94: 8D 44 18
LDA.w DATA_21ED19+1,y   ; $23:EC97: B9 1A ED
STA $1845               ; $23:EC9A: 8D 45 18
TYA                     ; $23:EC9D: 98
AND #$01                ; $23:EC9E: 29 01
CLC                     ; $23:ECA0: 18
ADC #$01                ; $23:ECA1: 69 01
STA $1865               ; $23:ECA3: 8D 65 18
EOR #$03                ; $23:ECA6: 49 03
STA $1864               ; $23:ECA8: 8D 64 18
RTS                     ; $23:ECAB: 60

CODE_23ECAC:
LDA $1811,x             ; $23:ECAC: BD 11 18
CLC                     ; $23:ECAF: 18
ADC #$02                ; $23:ECB0: 69 02
STA $0000,y             ; $23:ECB2: 99 00 00
LDA #$0E                ; $23:ECB5: A9 0E
STA $0002,y             ; $23:ECB7: 99 02 00
LDA $1822,x             ; $23:ECBA: BD 22 18
CLC                     ; $23:ECBD: 18
ADC #$04                ; $23:ECBE: 69 04
STA $0001,y             ; $23:ECC0: 99 01 00
LDA #$08                ; $23:ECC3: A9 08
STA $0003,y             ; $23:ECC5: 99 03 00
RTS                     ; $23:ECC8: 60

CODE_23ECC9:
TXA                     ; $23:ECC9: 8A
PHA                     ; $23:ECCA: 48
LDX #$01                ; $23:ECCB: A2 01

CODE_23ECCD:
LDA $04,x               ; $23:ECCD: B5 04
SEC                     ; $23:ECCF: 38
SBC $00,x               ; $23:ECD0: F5 00
CLC                     ; $23:ECD2: 18
ADC $06,x               ; $23:ECD3: 75 06
STA $08                 ; $23:ECD5: 85 08
LDA $02,x               ; $23:ECD7: B5 02
CLC                     ; $23:ECD9: 18
ADC $06,x               ; $23:ECDA: 75 06
CMP $08                 ; $23:ECDC: C5 08
BCC CODE_23ECE3         ; $23:ECDE: 90 03
DEX                     ; $23:ECE0: CA
BPL CODE_23ECCD         ; $23:ECE1: 10 EA

CODE_23ECE3:
PLA                     ; $23:ECE3: 68
TAX                     ; $23:ECE4: AA
RTS                     ; $23:ECE5: 60

DATA_23ECE6:
db $00,$00,$00,$00,$00,$01,$01,$01
db $01,$01,$00,$01,$00,$01,$00,$00
db $02,$00,$02,$00,$01,$02,$01,$02
db $01,$02,$02,$02,$02,$02

CODE_23ED04:
LDA $18CB               ; $23:ED04: AD CB 18
ORA $18CC               ; $23:ED07: 0D CC 18
ORA $1930               ; $23:ED0A: 0D 30 19
BNE CODE_23ED2C         ; $23:ED0D: D0 1D
INC $A9                 ; $23:ED0F: E6 A9
LDA $A9                 ; $23:ED11: A5 A9
AND #$1F                ; $23:ED13: 29 1F
BNE CODE_23ED2D         ; $23:ED15: D0 16
INC $190D               ; $23:ED17: EE 0D 19
BNE CODE_23ED2D         ; $23:ED1A: D0 11
JSR CODE_23ED3D         ; $23:ED1C: 20 3D ED
TXA                     ; $23:ED1F: 8A
BMI CODE_23ED2D         ; $23:ED20: 30 0B
LDA #$10                ; $23:ED22: A9 10
STA $1835,x             ; $23:ED24: 9D 35 18
LDA #$05                ; $23:ED27: A9 05
STA $18BB,x             ; $23:ED29: 9D BB 18

CODE_23ED2C:
RTS                     ; $23:ED2C: 60

CODE_23ED2D:
LDA $A9                 ; $23:ED2D: A5 A9
CMP #$80                ; $23:ED2F: C9 80
BNE CODE_23EDB1         ; $23:ED31: D0 7E
INC $190C               ; $23:ED33: EE 0C 19
LDA $190C               ; $23:ED36: AD 0C 19
AND #$07                ; $23:ED39: 29 07
BNE CODE_23EDB1         ; $23:ED3B: D0 74

CODE_23ED3D:
LDX #$06                ; $23:ED3D: A2 06
JSR CODE_23EE04         ; $23:ED3F: 20 04 EE
TXA                     ; $23:ED42: 8A
BMI CODE_23EDB0         ; $23:ED43: 30 6B
DEC $18CA               ; $23:ED45: CE CA 18
CPX #$05                ; $23:ED48: E0 05
BCS CODE_23ED4F         ; $23:ED4A: B0 03
JMP CODE_23F6B3         ; $23:ED4C: 4C B3 F6

CODE_23ED4F:
LDA $190C               ; $23:ED4F: AD 0C 19
LSR A                   ; $23:ED52: 4A
AND #$01                ; $23:ED53: 29 01
TAY                     ; $23:ED55: A8
LDA.w DATA_21ED3C,y     ; $23:ED56: B9 3C ED
STA $1846,x             ; $23:ED59: 9D 46 18
LDA.w DATA_21ED3A,y     ; $23:ED5C: B9 3A ED
STA $1824,x             ; $23:ED5F: 9D 24 18
JSL CODE_25F805         ; $23:ED62: 22 05 F8 25
LDA $192D               ; $23:ED66: AD 2D 19
AND #$01                ; $23:ED69: 29 01
TAY                     ; $23:ED6B: A8
LDA $1811,y             ; $23:ED6C: B9 11 18
STA $1813,x             ; $23:ED6F: 9D 13 18
LDA #$04                ; $23:ED72: A9 04
STA $18BB,x             ; $23:ED74: 9D BB 18
LDA #$00                ; $23:ED77: A9 00
STA $1835,x             ; $23:ED79: 9D 35 18
STA $18A6,x             ; $23:ED7C: 9D A6 18
JSR CODE_23ED8D         ; $23:ED7F: 20 8D ED
LDA #$20                ; $23:ED82: A9 20
STA $18E9,x             ; $23:ED84: 9D E9 18
LDA #$17                ; $23:ED87: A9 17
STA $1203               ; $23:ED89: 8D 03 12
RTS                     ; $23:ED8C: 60

CODE_23ED8D:
LDA #$00                ; $23:ED8D: A9 00
STA $1944,x             ; $23:ED8F: 9D 44 19
STA $18A6,x             ; $23:ED92: 9D A6 18
STA $18FA,x             ; $23:ED95: 9D FA 18
STA $1931,x             ; $23:ED98: 9D 31 19
STA $1953,x             ; $23:ED9B: 9D 53 19
STA $191E,x             ; $23:ED9E: 9D 1E 19
STA $18CD,x             ; $23:EDA1: 9D CD 18
STA $18DA,x             ; $23:EDA4: 9D DA 18
STA $197C,x             ; $23:EDA7: 9D 7C 19
STA $18E9,x             ; $23:EDAA: 9D E9 18
STA $196F,x             ; $23:EDAD: 9D 6F 19

CODE_23EDB0:
RTS                     ; $23:EDB0: 60

CODE_23EDB1:
LDA $18CA               ; $23:EDB1: AD CA 18
CMP #$05                ; $23:EDB4: C9 05
BEQ CODE_23EDB0         ; $23:EDB6: F0 F8
LDA $A9                 ; $23:EDB8: A5 A9
AND #$FF                ; $23:EDBA: 29 FF
BNE CODE_23EDB0         ; $23:EDBC: D0 F2
PHX                     ; $23:EDBE: DA
LDA $199A               ; $23:EDBF: AD 9A 19
ASL A                   ; $23:EDC2: 0A
ASL A                   ; $23:EDC3: 0A
ADC $199A               ; $23:EDC4: 6D 9A 19
ADC $18CA               ; $23:EDC7: 6D CA 18
TAX                     ; $23:EDCA: AA
LDA.l DATA_23ECE6,x     ; $23:EDCB: BF E6 EC 23
PLX                     ; $23:EDCF: FA

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:EDD0: 22 1F FB 20
dw CODE_23EE02
dw CODE_23EDF6
dw CODE_23EDDA

CODE_23EDDA:
JSR CODE_23EE02         ; $23:EDDA: 20 02 EE
TXA                     ; $23:EDDD: 8A
BMI CODE_23EDF5         ; $23:EDDE: 30 15
LDA #$02                ; $23:EDE0: A9 02
STA $18BB,x             ; $23:EDE2: 9D BB 18
LDA $1960               ; $23:EDE5: AD 60 19
BEQ CODE_23EDF5         ; $23:EDE8: F0 0B
DEC $1960               ; $23:EDEA: CE 60 19
LDA #$01                ; $23:EDED: A9 01
STA $1953,x             ; $23:EDEF: 9D 53 19
JSR CODE_23EE2C         ; $23:EDF2: 20 2C EE

CODE_23EDF5:
RTS                     ; $23:EDF5: 60

CODE_23EDF6:
JSR CODE_23EE02         ; $23:EDF6: 20 02 EE
TXA                     ; $23:EDF9: 8A
BMI CODE_23EE01         ; $23:EDFA: 30 05
LDA #$03                ; $23:EDFC: A9 03
STA $18BB,x             ; $23:EDFE: 9D BB 18

CODE_23EE01:
RTS                     ; $23:EE01: 60

CODE_23EE02:
LDX #$04                ; $23:EE02: A2 04

CODE_23EE04:
LDA $1802,x             ; $23:EE04: BD 02 18
BEQ CODE_23EE0D         ; $23:EE07: F0 04
DEX                     ; $23:EE09: CA
BPL CODE_23EE04         ; $23:EE0A: 10 F8
RTS                     ; $23:EE0C: 60

CODE_23EE0D:
INC $18CA               ; $23:EE0D: EE CA 18
LDA #$01                ; $23:EE10: A9 01
STA $1802,x             ; $23:EE12: 9D 02 18
LDA #$20                ; $23:EE15: A9 20
STA $1813,x             ; $23:EE17: 9D 13 18
LDA #$00                ; $23:EE1A: A9 00
STA $1835,x             ; $23:EE1C: 9D 35 18
LDA #$00                ; $23:EE1F: A9 00
STA $18BB,x             ; $23:EE21: 9D BB 18
JSR CODE_23ED8D         ; $23:EE24: 20 8D ED
LDA #$30                ; $23:EE27: A9 30
STA $191E,x             ; $23:EE29: 9D 1E 19

CODE_23EE2C:
LDA $18CA               ; $23:EE2C: AD CA 18
AND #$01                ; $23:EE2F: 29 01
TAY                     ; $23:EE31: A8
LDA.w DATA_21ED32,y     ; $23:EE32: B9 32 ED
STA $1824,x             ; $23:EE35: 9D 24 18

CODE_23EE38:
LDA $18CA               ; $23:EE38: AD CA 18
CMP #$05                ; $23:EE3B: C9 05
BNE CODE_23EE4A         ; $23:EE3D: D0 0B
LDA $19A0               ; $23:EE3F: AD A0 19
BEQ CODE_23EE4A         ; $23:EE42: F0 06
STA $1931,x             ; $23:EE44: 9D 31 19
INY                     ; $23:EE47: C8
INY                     ; $23:EE48: C8
INY                     ; $23:EE49: C8

CODE_23EE4A:
LDA.w DATA_21ED34,y     ; $23:EE4A: B9 34 ED
STA $1846,x             ; $23:EE4D: 9D 46 18
RTS                     ; $23:EE50: 60

CODE_23EE51:
DEC $18C9               ; $23:EE51: CE C9 18
BPL CODE_23EE5B         ; $23:EE54: 10 05
LDA #$0D                ; $23:EE56: A9 0D
STA $18C9               ; $23:EE58: 8D C9 18

CODE_23EE5B:
LDX #$0B                ; $23:EE5B: A2 0B

CODE_23EE5D:
STX $190E               ; $23:EE5D: 8E 0E 19
TXA                     ; $23:EE60: 8A
CLC                     ; $23:EE61: 18
ADC $18C9               ; $23:EE62: 6D C9 18
TAY                     ; $23:EE65: A8
LDA.w DATA_21ED3E,y     ; $23:EE66: B9 3E ED
STA $18C8               ; $23:EE69: 8D C8 18
JSL CODE_25F805         ; $23:EE6C: 22 05 F8 25
JSR CODE_23EE77         ; $23:EE70: 20 77 EE
DEX                     ; $23:EE73: CA
BPL CODE_23EE5D         ; $23:EE74: 10 E7

CODE_23EE76:
RTS                     ; $23:EE76: 60

CODE_23EE77:
LDA $18CD,x             ; $23:EE77: BD CD 18
BEQ CODE_23EE7F         ; $23:EE7A: F0 03
DEC $18CD,x             ; $23:EE7C: DE CD 18

CODE_23EE7F:
LDA $197C,x             ; $23:EE7F: BD 7C 19
BEQ CODE_23EE87         ; $23:EE82: F0 03
DEC $197C,x             ; $23:EE84: DE 7C 19

CODE_23EE87:
LDA $1802,x             ; $23:EE87: BD 02 18
BEQ CODE_23EE76         ; $23:EE8A: F0 EA

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:EE8C: 22 1F FB 20
dw CODE_23EE76
dw CODE_23EE98
dw CODE_23F605
dw CODE_23F69D

CODE_23EE98:
LDA $18CD,x             ; $23:EE98: BD CD 18
ORA $197C,x             ; $23:EE9B: 1D 7C 19
ORA $1930               ; $23:EE9E: 0D 30 19
BEQ CODE_23EEB3         ; $23:EEA1: F0 10
JSR CODE_23EA95         ; $23:EEA3: 20 95 EA
JSR CODE_23F1A5         ; $23:EEA6: 20 A5 F1
LDA $18BB,x             ; $23:EEA9: BD BB 18
CMP #$0B                ; $23:EEAC: C9 0B
BEQ CODE_23EEC3         ; $23:EEAE: F0 13
JMP CODE_23F22E         ; $23:EEB0: 4C 2E F2

CODE_23EEB3:
LDA $18DA,x             ; $23:EEB3: BD DA 18
BEQ CODE_23EEBB         ; $23:EEB6: F0 03
DEC $18DA,x             ; $23:EEB8: DE DA 18

CODE_23EEBB:
LDA $191E,x             ; $23:EEBB: BD 1E 19
BEQ CODE_23EEC3         ; $23:EEBE: F0 03
DEC $191E,x             ; $23:EEC0: DE 1E 19

CODE_23EEC3:
LDA $18E9,x             ; $23:EEC3: BD E9 18
BEQ CODE_23EECB         ; $23:EEC6: F0 03
DEC $18E9,x             ; $23:EEC8: DE E9 18

CODE_23EECB:
LDA #$01                ; $23:EECB: A9 01
LDY $1846,x             ; $23:EECD: BC 46 18
BPL CODE_23EED4         ; $23:EED0: 10 02
LDA #$02                ; $23:EED2: A9 02

CODE_23EED4:
STA $1866,x             ; $23:EED4: 9D 66 18
LDA #$04                ; $23:EED7: A9 04
LDY $1835,x             ; $23:EED9: BC 35 18
BPL CODE_23EEE0         ; $23:EEDC: 10 02
LDA #$08                ; $23:EEDE: A9 08

CODE_23EEE0:
STA $1962,x             ; $23:EEE0: 9D 62 19
LDA $18BB,x             ; $23:EEE3: BD BB 18

; ExecutePtrShort
JSL CODE_20FB1F         ; $23:EEE6: 22 1F FB 20
dw CODE_23F129
dw CODE_23F074
dw CODE_23F129
dw CODE_23F08E
dw CODE_23F79C
dw CODE_23F79C
dw CODE_23F79C
dw CODE_23F79C
dw CODE_23F79C
dw CODE_23F79C
dw CODE_23EF34
dw CODE_23EF9B
dw CODE_23EF3A
dw CODE_23EF35
dw CODE_23EF3A
dw CODE_23EF0A

CODE_23EF0A:
JSR CODE_23F971         ; $23:EF0A: 20 71 F9
JSR CODE_23F977         ; $23:EF0D: 20 77 F9
LDA $1835,x             ; $23:EF10: BD 35 18
BMI CODE_23EF19         ; $23:EF13: 30 04
CMP #$7D                ; $23:EF15: C9 7D
BCS CODE_23EF22         ; $23:EF17: B0 09

CODE_23EF19:
INC $1835,x             ; $23:EF19: FE 35 18
INC $1835,x             ; $23:EF1C: FE 35 18
INC $1835,x             ; $23:EF1F: FE 35 18

CODE_23EF22:
LDA $1813,x             ; $23:EF22: BD 13 18
CMP #$E0                ; $23:EF25: C9 E0
BCC CODE_23EF31         ; $23:EF27: 90 08
LDA $1944,x             ; $23:EF29: BD 44 19
BNE CODE_23EF31         ; $23:EF2C: D0 03
JMP CODE_23F6B3         ; $23:EF2E: 4C B3 F6

CODE_23EF31:
JSR CODE_23F22E         ; $23:EF31: 20 2E F2

CODE_23EF34:
RTS                     ; $23:EF34: 60

CODE_23EF35:
LDA #$00                ; $23:EF35: A9 00
STA $1846,x             ; $23:EF37: 9D 46 18

CODE_23EF3A:
JSR CODE_23F971         ; $23:EF3A: 20 71 F9
JSR CODE_23F977         ; $23:EF3D: 20 77 F9
JSR CODE_23EA95         ; $23:EF40: 20 95 EA
INC $1835,x             ; $23:EF43: FE 35 18
LDA $18BB,x             ; $23:EF46: BD BB 18
CMP #$0E                ; $23:EF49: C9 0E
BEQ CODE_23EF5D         ; $23:EF4B: F0 10
INC $1835,x             ; $23:EF4D: FE 35 18
LDA $1897,x             ; $23:EF50: BD 97 18
AND #$03                ; $23:EF53: 29 03
AND $1866,x             ; $23:EF55: 3D 66 18
BEQ CODE_23EF5D         ; $23:EF58: F0 03
JSR CODE_23F41A         ; $23:EF5A: 20 1A F4

CODE_23EF5D:
LDA $1944,x             ; $23:EF5D: BD 44 19
BEQ CODE_23EF69         ; $23:EF60: F0 07
LDA $1813,x             ; $23:EF62: BD 13 18
CMP #$F0                ; $23:EF65: C9 F0
BCC CODE_23EF9A         ; $23:EF67: 90 31

CODE_23EF69:
LDA $1897,x             ; $23:EF69: BD 97 18
AND #$04                ; $23:EF6C: 29 04
BEQ CODE_23EF87         ; $23:EF6E: F0 17
JSR CODE_23F197         ; $23:EF70: 20 97 F1
LDA $18BB,x             ; $23:EF73: BD BB 18
CMP #$0E                ; $23:EF76: C9 0E
BNE CODE_23EF84         ; $23:EF78: D0 0A
LDA $1835,x             ; $23:EF7A: BD 35 18
BMI CODE_23EF84         ; $23:EF7D: 30 05
LDA #$DC                ; $23:EF7F: A9 DC
STA $1835,x             ; $23:EF81: 9D 35 18

CODE_23EF84:
JSR CODE_23F1A5         ; $23:EF84: 20 A5 F1

CODE_23EF87:
LDY $18BB,x             ; $23:EF87: BC BB 18
LDX.w DATA_21ED81,y     ; $23:EF8A: BE 81 ED
LDA $15                 ; $23:EF8D: A5 15
LSR A                   ; $23:EF8F: 4A
LSR A                   ; $23:EF90: 4A
LSR A                   ; $23:EF91: 4A
AND #$06                ; $23:EF92: 29 06
JSR CODE_23F256         ; $23:EF94: 20 56 F2
JSR CODE_23F458         ; $23:EF97: 20 58 F4

CODE_23EF9A:
RTS                     ; $23:EF9A: 60

CODE_23EF9B:
LDY $18E9,x             ; $23:EF9B: BC E9 18
BEQ CODE_23EFA6         ; $23:EF9E: F0 06
DEY                     ; $23:EFA0: 88
BNE CODE_23EFD8         ; $23:EFA1: D0 35
JMP CODE_23F6B3         ; $23:EFA3: 4C B3 F6

CODE_23EFA6:
LDA $1930               ; $23:EFA6: AD 30 19
ORA $0076               ; $23:EFA9: 0D 76 00
ORA $18CD,x             ; $23:EFAC: 1D CD 18
BNE CODE_23EFD8         ; $23:EFAF: D0 27
JSR CODE_23EA95         ; $23:EFB1: 20 95 EA
LDA $18A6,x             ; $23:EFB4: BD A6 18
BEQ CODE_23EFD2         ; $23:EFB7: F0 19
JSR CODE_23F971         ; $23:EFB9: 20 71 F9
JSR CODE_23F977         ; $23:EFBC: 20 77 F9
INC $1835,x             ; $23:EFBF: FE 35 18
INC $1835,x             ; $23:EFC2: FE 35 18
LDA $1813,x             ; $23:EFC5: BD 13 18
CMP #$E0                ; $23:EFC8: C9 E0
BCC CODE_23EFD2         ; $23:EFCA: 90 06
LDA #$00                ; $23:EFCC: A9 00
STA $1802,x             ; $23:EFCE: 9D 02 18
RTS                     ; $23:EFD1: 60

CODE_23EFD2:
JSR CODE_23F458         ; $23:EFD2: 20 58 F4
INC $1857,x             ; $23:EFD5: FE 57 18

CODE_23EFD8:
REP #$30                ; $23:EFD8: C2 30
LDA $18C8               ; $23:EFDA: AD C8 18
AND #$00FF              ; $23:EFDD: 29 FF 00
CLC                     ; $23:EFE0: 18
ADC #$0100              ; $23:EFE1: 69 00 01
TAY                     ; $23:EFE4: A8
SEP #$20                ; $23:EFE5: E2 20
LDA $18E9,x             ; $23:EFE7: BD E9 18
BEQ CODE_23F002         ; $23:EFEA: F0 16
LDA $0801               ; $23:EFEC: AD 01 08
CMP #$F0                ; $23:EFEF: C9 F0
BEQ CODE_23EFFF         ; $23:EFF1: F0 0C
LDA $0811               ; $23:EFF3: AD 11 08
CMP #$F0                ; $23:EFF6: C9 F0
BNE CODE_23F002         ; $23:EFF8: D0 08
LDY #$0010              ; $23:EFFA: A0 10 00
BNE CODE_23F002         ; $23:EFFD: D0 03

CODE_23EFFF:
LDY #$0000              ; $23:EFFF: A0 00 00

CODE_23F002:
LDA $1F26               ; $23:F002: AD 26 1F
CMP #$0B                ; $23:F005: C9 0B
BNE CODE_23F013         ; $23:F007: D0 0A
LDA $1897,x             ; $23:F009: BD 97 18
AND #$03                ; $23:F00C: 29 03
BEQ CODE_23F013         ; $23:F00E: F0 03
SEP #$10                ; $23:F010: E2 10
RTS                     ; $23:F012: 60

CODE_23F013:
LDA #$00                ; $23:F013: A9 00
CMP $191E,x             ; $23:F015: DD 1E 19
LDA #$22                ; $23:F018: A9 22
BCS CODE_23F01E         ; $23:F01A: B0 02
LDA #$12                ; $23:F01C: A9 12

CODE_23F01E:
STA $0803,y             ; $23:F01E: 99 03 08
LDA $1813,x             ; $23:F021: BD 13 18
STA $0801,y             ; $23:F024: 99 01 08
LDA $1824,x             ; $23:F027: BD 24 18
SEC                     ; $23:F02A: 38
SBC #$04                ; $23:F02B: E9 04
STA $0800,y             ; $23:F02D: 99 00 08
LDA $18E9,x             ; $23:F030: BD E9 18
BEQ CODE_23F04D         ; $23:F033: F0 18
SEP #$10                ; $23:F035: E2 10
LSR A                   ; $23:F037: 4A
AND #$07                ; $23:F038: 29 07
TAX                     ; $23:F03A: AA
LDA.w DATA_21ED5D,x     ; $23:F03B: BD 5D ED
STA $0802,y             ; $23:F03E: 99 02 08
LDX $190E               ; $23:F041: AE 0E 19
LDA #$02                ; $23:F044: A9 02
STA $0803,y             ; $23:F046: 99 03 08
REP #$10                ; $23:F049: C2 10
BRA CODE_23F065         ; $23:F04B: 80 18

CODE_23F04D:
PHY                     ; $23:F04D: 5A
SEP #$10                ; $23:F04E: E2 10
LDA $1857,x             ; $23:F050: BD 57 18
LSR A                   ; $23:F053: 4A
LSR A                   ; $23:F054: 4A
CLC                     ; $23:F055: 18
ADC $190E               ; $23:F056: 6D 0E 19
AND #$03                ; $23:F059: 29 03
TAY                     ; $23:F05B: A8
LDA.w DATA_21ED59,y     ; $23:F05C: B9 59 ED
REP #$10                ; $23:F05F: C2 10
PLY                     ; $23:F061: 7A
STA $0802,y             ; $23:F062: 99 02 08

CODE_23F065:
REP #$20                ; $23:F065: C2 20
TYA                     ; $23:F067: 98
LSR A                   ; $23:F068: 4A
LSR A                   ; $23:F069: 4A
TAY                     ; $23:F06A: A8
LDA #$0002              ; $23:F06B: A9 02 00
STA $0A20,y             ; $23:F06E: 99 20 0A
SEP #$30                ; $23:F071: E2 30
RTS                     ; $23:F073: 60

CODE_23F074:
LDA $1846,x             ; $23:F074: BD 46 18
PHA                     ; $23:F077: 48
LDA $191E,x             ; $23:F078: BD 1E 19
BEQ CODE_23F086         ; $23:F07B: F0 09
LDY $1866,x             ; $23:F07D: BC 66 18
LDA.w DATA_21ED6A,y     ; $23:F080: B9 6A ED
STA $1846,x             ; $23:F083: 9D 46 18

CODE_23F086:
JSR CODE_23F971         ; $23:F086: 20 71 F9
PLA                     ; $23:F089: 68
STA $1846,x             ; $23:F08A: 9D 46 18
RTS                     ; $23:F08D: 60

CODE_23F08E:
JSR CODE_23F0EF         ; $23:F08E: 20 EF F0
LDY $18E9,x             ; $23:F091: BC E9 18
BEQ CODE_23F09E         ; $23:F094: F0 08
DEY                     ; $23:F096: 88
BNE CODE_23F0B0         ; $23:F097: D0 17
LDA #$E4                ; $23:F099: A9 E4
STA $1835,x             ; $23:F09B: 9D 35 18

CODE_23F09E:
JSR CODE_23F074         ; $23:F09E: 20 74 F0
JSR CODE_23F977         ; $23:F0A1: 20 77 F9
LDA $1835,x             ; $23:F0A4: BD 35 18
BMI CODE_23F0AD         ; $23:F0A7: 30 04
CMP #$40                ; $23:F0A9: C9 40
BCS CODE_23F0B0         ; $23:F0AB: B0 03

CODE_23F0AD:
INC $1835,x             ; $23:F0AD: FE 35 18

CODE_23F0B0:
JSR CODE_23EA95         ; $23:F0B0: 20 95 EA
LDA $1897,x             ; $23:F0B3: BD 97 18
AND #$04                ; $23:F0B6: 29 04
BNE CODE_23F0C6         ; $23:F0B8: D0 0C
LDA $1857,x             ; $23:F0BA: BD 57 18
CLC                     ; $23:F0BD: 18
ADC #$04                ; $23:F0BE: 69 04
STA $1857,x             ; $23:F0C0: 9D 57 18
JMP CODE_23F0EC         ; $23:F0C3: 4C EC F0

CODE_23F0C6:
ASL A                   ; $23:F0C6: 0A
STA $1857,x             ; $23:F0C7: 9D 57 18
LDA $18E9,x             ; $23:F0CA: BD E9 18
BNE CODE_23F0D4         ; $23:F0CD: D0 05
LDA #$10                ; $23:F0CF: A9 10
STA $18E9,x             ; $23:F0D1: 9D E9 18

CODE_23F0D4:
JSR CODE_23F197         ; $23:F0D4: 20 97 F1
JSR CODE_23F1A5         ; $23:F0D7: 20 A5 F1
LDA $191E,x             ; $23:F0DA: BD 1E 19
BEQ CODE_23F0EC         ; $23:F0DD: F0 0D
LDA #$00                ; $23:F0DF: A9 00
STA $18E9,x             ; $23:F0E1: 9D E9 18
STA $1835,x             ; $23:F0E4: 9D 35 18
LDA $15                 ; $23:F0E7: A5 15
STA $1857,x             ; $23:F0E9: 9D 57 18

CODE_23F0EC:
JMP CODE_23F18D         ; $23:F0EC: 4C 8D F1

CODE_23F0EF:
LDA $1813,x             ; $23:F0EF: BD 13 18
CMP #$A0                ; $23:F0F2: C9 A0
BCC CODE_23F128         ; $23:F0F4: 90 32
LDY $1866,x             ; $23:F0F6: BC 66 18
LDA $1824,x             ; $23:F0F9: BD 24 18
CMP.w DATA_21ED64,y     ; $23:F0FC: D9 64 ED
BNE CODE_23F108         ; $23:F0FF: D0 07
LDA #$60                ; $23:F101: A9 60
STA $191E,x             ; $23:F103: 9D 1E 19
BNE CODE_23F128         ; $23:F106: D0 20

CODE_23F108:
CMP.w DATA_21ED66,y     ; $23:F108: D9 66 ED
BNE CODE_23F128         ; $23:F10B: D0 1B
LDA #$20                ; $23:F10D: A9 20
STA $1813,x             ; $23:F10F: 9D 13 18
LDA $0783               ; $23:F112: AD 83 07
AND #$01                ; $23:F115: 29 01
TAY                     ; $23:F117: A8
LDA.w DATA_21ED32,y     ; $23:F118: B9 32 ED
STA $1824,x             ; $23:F11B: 9D 24 18
EOR $1846,x             ; $23:F11E: 5D 46 18
BPL CODE_23F126         ; $23:F121: 10 03
JSR CODE_23F41A         ; $23:F123: 20 1A F4

CODE_23F126:
PLA                     ; $23:F126: 68
PLA                     ; $23:F127: 68

CODE_23F128:
RTS                     ; $23:F128: 60

CODE_23F129:
JSR CODE_23F0EF         ; $23:F129: 20 EF F0
JSR CODE_23F074         ; $23:F12C: 20 74 F0
JSR CODE_23F977         ; $23:F12F: 20 77 F9
LDA $1835,x             ; $23:F132: BD 35 18
BMI CODE_23F13B         ; $23:F135: 30 04
CMP #$40                ; $23:F137: C9 40
BCS CODE_23F141         ; $23:F139: B0 06

CODE_23F13B:
INC $1835,x             ; $23:F13B: FE 35 18
INC $1835,x             ; $23:F13E: FE 35 18

CODE_23F141:
JSR CODE_23EA95         ; $23:F141: 20 95 EA
LDA $1897,x             ; $23:F144: BD 97 18
AND #$04                ; $23:F147: 29 04
BNE CODE_23F151         ; $23:F149: D0 06
STA $1857,x             ; $23:F14B: 9D 57 18
JMP CODE_23F18D         ; $23:F14E: 4C 8D F1

CODE_23F151:
LDA $1835,x             ; $23:F151: BD 35 18
PHA                     ; $23:F154: 48
JSR CODE_23F197         ; $23:F155: 20 97 F1
JSR CODE_23F1A5         ; $23:F158: 20 A5 F1
LDA $18BB,x             ; $23:F15B: BD BB 18
CMP #$02                ; $23:F15E: C9 02
BNE CODE_23F165         ; $23:F160: D0 03
INC $1857,x             ; $23:F162: FE 57 18

CODE_23F165:
LDA $1931,x             ; $23:F165: BD 31 19
ORA $1953,x             ; $23:F168: 1D 53 19
BEQ CODE_23F170         ; $23:F16B: F0 03
INC $1857,x             ; $23:F16D: FE 57 18

CODE_23F170:
INC $1857,x             ; $23:F170: FE 57 18
LDA $191E,x             ; $23:F173: BD 1E 19
BEQ CODE_23F17B         ; $23:F176: F0 03
INC $1857,x             ; $23:F178: FE 57 18

CODE_23F17B:
PLA                     ; $23:F17B: 68
CMP #$10                ; $23:F17C: C9 10
BCC CODE_23F18D         ; $23:F17E: 90 0D
LDA $196F,x             ; $23:F180: BD 6F 19
BEQ CODE_23F18D         ; $23:F183: F0 08
STA $1846,x             ; $23:F185: 9D 46 18
LDA #$00                ; $23:F188: A9 00
STA $196F,x             ; $23:F18A: 9D 6F 19

CODE_23F18D:
JSR CODE_23F22E         ; $23:F18D: 20 2E F2
JSR CODE_23F358         ; $23:F190: 20 58 F3
JSR CODE_23F458         ; $23:F193: 20 58 F4
RTS                     ; $23:F196: 60

CODE_23F197:
LDA $1813,x             ; $23:F197: BD 13 18
AND #$F0                ; $23:F19A: 29 F0
STA $1813,x             ; $23:F19C: 9D 13 18
LDA #$00                ; $23:F19F: A9 00
STA $1835,x             ; $23:F1A1: 9D 35 18

CODE_23F1A4:
RTS                     ; $23:F1A4: 60

CODE_23F1A5:
LDA $1835,x             ; $23:F1A5: BD 35 18
BMI CODE_23F1A4         ; $23:F1A8: 30 FA
LDA $191E,x             ; $23:F1AA: BD 1E 19
BNE CODE_23F1A4         ; $23:F1AD: D0 F5
LDA $18FA,x             ; $23:F1AF: BD FA 18
CMP #$C2                ; $23:F1B2: C9 C2
BEQ CODE_23F1BB         ; $23:F1B4: F0 05
LDA $18BA               ; $23:F1B6: AD BA 18
BEQ CODE_23F22D         ; $23:F1B9: F0 72

CODE_23F1BB:
LDA #$02                ; $23:F1BB: A9 02
STA $1200               ; $23:F1BD: 8D 00 12
LDA #$00                ; $23:F1C0: A9 00
STA $18CD,x             ; $23:F1C2: 9D CD 18
STA $197C,x             ; $23:F1C5: 9D 7C 19
LDA $18BB,x             ; $23:F1C8: BD BB 18
CMP #$0C                ; $23:F1CB: C9 0C
BCS CODE_23F209         ; $23:F1CD: B0 3A
CMP #$02                ; $23:F1CF: C9 02
BNE CODE_23F1ED         ; $23:F1D1: D0 1A
LDA $1802,x             ; $23:F1D3: BD 02 18
CMP #$02                ; $23:F1D6: C9 02
BEQ CODE_23F1ED         ; $23:F1D8: F0 13
LDA $1953,x             ; $23:F1DA: BD 53 19
BNE CODE_23F1ED         ; $23:F1DD: D0 0E
LDA #$01                ; $23:F1DF: A9 01
STA $1953,x             ; $23:F1E1: 9D 53 19
LDA $1846,x             ; $23:F1E4: BD 46 18
JSR CODE_23F626         ; $23:F1E7: 20 26 F6
JMP CODE_23F204         ; $23:F1EA: 4C 04 F2

CODE_23F1ED:
LDA $1802,x             ; $23:F1ED: BD 02 18
EOR #$03                ; $23:F1F0: 49 03
STA $1802,x             ; $23:F1F2: 9D 02 18
CMP #$01                ; $23:F1F5: C9 01
BNE CODE_23F204         ; $23:F1F7: D0 0B
LDY $1866,x             ; $23:F1F9: BC 66 18
DEY                     ; $23:F1FC: 88
JSR CODE_23EE38         ; $23:F1FD: 20 38 EE
LDA #$00                ; $23:F200: A9 00
BEQ CODE_23F206         ; $23:F202: F0 02

CODE_23F204:
LDA #$FF                ; $23:F204: A9 FF

CODE_23F206:
STA $18E9,x             ; $23:F206: 9D E9 18

CODE_23F209:
LDA $18FA,x             ; $23:F209: BD FA 18
CMP #$C2                ; $23:F20C: C9 C2
BNE CODE_23F228         ; $23:F20E: D0 18
LDA $1897,x             ; $23:F210: BD 97 18
AND #$C0                ; $23:F213: 29 C0
CMP #$C0                ; $23:F215: C9 C0
BEQ CODE_23F228         ; $23:F217: F0 0F
LDY #$01                ; $23:F219: A0 01
ASL A                   ; $23:F21B: 0A
BCC CODE_23F21F         ; $23:F21C: 90 01
DEY                     ; $23:F21E: 88

CODE_23F21F:
LDA $1846,x             ; $23:F21F: BD 46 18
STA $196F,x             ; $23:F222: 9D 6F 19
JSR CODE_23EE38         ; $23:F225: 20 38 EE

CODE_23F228:
LDA #$E0                ; $23:F228: A9 E0
STA $1835,x             ; $23:F22A: 9D 35 18

CODE_23F22D:
RTS                     ; $23:F22D: 60

CODE_23F22E:
LDY $18BB,x             ; $23:F22E: BC BB 18
CPY #$04                ; $23:F231: C0 04
BEQ CODE_23F239         ; $23:F233: F0 04
CPY #$05                ; $23:F235: C0 05
BNE CODE_23F250         ; $23:F237: D0 17

CODE_23F239:
LDA $18E9,x             ; $23:F239: BD E9 18
BEQ CODE_23F250         ; $23:F23C: F0 12
LSR A                   ; $23:F23E: 4A
LSR A                   ; $23:F23F: 4A
AND #$0F                ; $23:F240: 29 0F
TAY                     ; $23:F242: A8
LDA.w DATA_21EDBD,y     ; $23:F243: B9 BD ED
STA $1857,x             ; $23:F246: 9D 57 18
LDX #$18                ; $23:F249: A2 18
LDA #$06                ; $23:F24B: A9 06
JMP CODE_23F256         ; $23:F24D: 4C 56 F2

CODE_23F250:
LDX.w DATA_21ED81,y     ; $23:F250: BE 81 ED
LDA.w DATA_21ED6D,y     ; $23:F253: B9 6D ED

CODE_23F256:
STA $00                 ; $23:F256: 85 00
STX $01                 ; $23:F258: 86 01
LDX $190E               ; $23:F25A: AE 0E 19
LDA $1944,x             ; $23:F25D: BD 44 19
BEQ CODE_23F26A         ; $23:F260: F0 08
LDA $1813,x             ; $23:F262: BD 13 18
CMP #$F0                ; $23:F265: C9 F0
BCS CODE_23F26A         ; $23:F267: B0 01
RTS                     ; $23:F269: 60

CODE_23F26A:
LDY $18BB,x             ; $23:F26A: BC BB 18
LDA $1931,x             ; $23:F26D: BD 31 19
BEQ CODE_23F276         ; $23:F270: F0 04
LDA #$0C                ; $23:F272: A9 0C
STA $00                 ; $23:F274: 85 00

CODE_23F276:
LDA $1813,x             ; $23:F276: BD 13 18
STA $03                 ; $23:F279: 85 03
LDY #$20                ; $23:F27B: A0 20
LDA $1802,x             ; $23:F27D: BD 02 18
CMP #$02                ; $23:F280: C9 02
BCC CODE_23F299         ; $23:F282: 90 15
LDA $18BB,x             ; $23:F284: BD BB 18
CMP #$03                ; $23:F287: C9 03
BEQ CODE_23F299         ; $23:F289: F0 0E
CMP #$02                ; $23:F28B: C9 02
BCS CODE_23F297         ; $23:F28D: B0 08
INC $03                 ; $23:F28F: E6 03
INC $03                 ; $23:F291: E6 03
LDA #$1A                ; $23:F293: A9 1A
STA $01                 ; $23:F295: 85 01

CODE_23F297:
LDY #$A0                ; $23:F297: A0 A0

CODE_23F299:
LDA $191E,x             ; $23:F299: BD 1E 19
BEQ CODE_23F2A6         ; $23:F29C: F0 08
DEC $03                 ; $23:F29E: C6 03
DEC $03                 ; $23:F2A0: C6 03
DEC $03                 ; $23:F2A2: C6 03
LDY #$10                ; $23:F2A4: A0 10

CODE_23F2A6:
LDA $1802,x             ; $23:F2A6: BD 02 18
CMP #$01                ; $23:F2A9: C9 01
BEQ CODE_23F2B8         ; $23:F2AB: F0 0B
LDA $18BB,x             ; $23:F2AD: BD BB 18
CMP #$00                ; $23:F2B0: C9 00
BEQ CODE_23F2B8         ; $23:F2B2: F0 04
TYA                     ; $23:F2B4: 98
ORA #$80                ; $23:F2B5: 09 80
TAY                     ; $23:F2B7: A8

CODE_23F2B8:
STY $02                 ; $23:F2B8: 84 02
LDY $18C8               ; $23:F2BA: AC C8 18
LDA $1824,x             ; $23:F2BD: BD 24 18
CLC                     ; $23:F2C0: 18
ADC $199B               ; $23:F2C1: 6D 9B 19
STA $0900,y             ; $23:F2C4: 99 00 09
LDA #$00                ; $23:F2C7: A9 00
STA $199B               ; $23:F2C9: 8D 9B 19
LDA $03                 ; $23:F2CC: A5 03
STA $0901,y             ; $23:F2CE: 99 01 09
LDA $18BB,x             ; $23:F2D1: BD BB 18
CMP #$02                ; $23:F2D4: C9 02
BNE CODE_23F2EA         ; $23:F2D6: D0 12
LDA $1857,x             ; $23:F2D8: BD 57 18
LDY #$00                ; $23:F2DB: A0 00
AND #$08                ; $23:F2DD: 29 08
BEQ CODE_23F2E3         ; $23:F2DF: F0 02
LDY #$40                ; $23:F2E1: A0 40

CODE_23F2E3:
TYA                     ; $23:F2E3: 98
LDY $18C8               ; $23:F2E4: AC C8 18
JMP CODE_23F2F4         ; $23:F2E7: 4C F4 F2

CODE_23F2EA:
LDA $1866,x             ; $23:F2EA: BD 66 18
LSR A                   ; $23:F2ED: 4A
LDA #$00                ; $23:F2EE: A9 00
BCC CODE_23F2F4         ; $23:F2F0: 90 02
LDA #$40                ; $23:F2F2: A9 40

CODE_23F2F4:
ORA $00                 ; $23:F2F4: 05 00
ORA $02                 ; $23:F2F6: 05 02
STA $0903,y             ; $23:F2F8: 99 03 09
LDA $18BB,x             ; $23:F2FB: BD BB 18
CMP #$02                ; $23:F2FE: C9 02
BNE CODE_23F311         ; $23:F300: D0 0F
LDA $1953,x             ; $23:F302: BD 53 19
LDX $01                 ; $23:F305: A6 01
AND #$01                ; $23:F307: 29 01
BNE CODE_23F31A         ; $23:F309: D0 0F
BEQ CODE_23F31B         ; $23:F30B: F0 0E
LDA #$00                ; $23:F30D: A9 00
BRA CODE_23F314         ; $23:F30F: 80 03

CODE_23F311:
LDA $1857,x             ; $23:F311: BD 57 18

CODE_23F314:
LDX $01                 ; $23:F314: A6 01
AND #$08                ; $23:F316: 29 08
BEQ CODE_23F31B         ; $23:F318: F0 01

CODE_23F31A:
INX                     ; $23:F31A: E8

CODE_23F31B:
LDA.w DATA_21ED95,x     ; $23:F31B: BD 95 ED
STA $0902,y             ; $23:F31E: 99 02 09
LDA $0900,y             ; $23:F321: B9 00 09
CMP #$F1                ; $23:F324: C9 F1
BCC CODE_23F34B         ; $23:F326: 90 23
LDA $0900,y             ; $23:F328: B9 00 09
STA $0904,y             ; $23:F32B: 99 04 09
LDA $0901,y             ; $23:F32E: B9 01 09
STA $0905,y             ; $23:F331: 99 05 09
LDA $0902,y             ; $23:F334: B9 02 09
STA $0906,y             ; $23:F337: 99 06 09
LDA $0903,y             ; $23:F33A: B9 03 09
STA $0907,y             ; $23:F33D: 99 07 09
TYA                     ; $23:F340: 98
LSR A                   ; $23:F341: 4A
LSR A                   ; $23:F342: 4A
TAY                     ; $23:F343: A8
LDA #$03                ; $23:F344: A9 03
STA $0A61,y             ; $23:F346: 99 61 0A
BRA CODE_23F34F         ; $23:F349: 80 04

CODE_23F34B:
TYA                     ; $23:F34B: 98
LSR A                   ; $23:F34C: 4A
LSR A                   ; $23:F34D: 4A
TAY                     ; $23:F34E: A8

CODE_23F34F:
LDA #$02                ; $23:F34F: A9 02
STA $0A60,y             ; $23:F351: 99 60 0A

CODE_23F354:
LDX $190E               ; $23:F354: AE 0E 19
RTS                     ; $23:F357: 60

CODE_23F358:
CPX #$00                ; $23:F358: E0 00
BEQ CODE_23F36F         ; $23:F35A: F0 13
TXA                     ; $23:F35C: 8A
CLC                     ; $23:F35D: 18
ADC $15                 ; $23:F35E: 65 15
LSR A                   ; $23:F360: 4A
BCC CODE_23F36F         ; $23:F361: 90 0C
TXA                     ; $23:F363: 8A
TAY                     ; $23:F364: A8
DEY                     ; $23:F365: 88
STY $0F                 ; $23:F366: 84 0F

CODE_23F368:
JSR CODE_23F370         ; $23:F368: 20 70 F3
DEC $0F                 ; $23:F36B: C6 0F
BPL CODE_23F368         ; $23:F36D: 10 F9

CODE_23F36F:
RTS                     ; $23:F36F: 60

CODE_23F370:
LDY $0F                 ; $23:F370: A4 0F
LDA $18BB,y             ; $23:F372: B9 BB 18
CMP #$04                ; $23:F375: C9 04
BEQ CODE_23F354         ; $23:F377: F0 DB
CMP #$05                ; $23:F379: C9 05
BEQ CODE_23F354         ; $23:F37B: F0 D7
LDA $1802,y             ; $23:F37D: B9 02 18
BEQ CODE_23F354         ; $23:F380: F0 D2
CMP #$03                ; $23:F382: C9 03
BCS CODE_23F38E         ; $23:F384: B0 08
LDA $191E,x             ; $23:F386: BD 1E 19
ORA $191E,y             ; $23:F389: 19 1E 19
BEQ CODE_23F391         ; $23:F38C: F0 03

CODE_23F38E:
JMP CODE_23F416         ; $23:F38E: 4C 16 F4

CODE_23F391:
LDA $18DA,x             ; $23:F391: BD DA 18
BEQ CODE_23F39B         ; $23:F394: F0 05
LDA $18DA,y             ; $23:F396: B9 DA 18
BNE CODE_23F416         ; $23:F399: D0 7B

CODE_23F39B:
LDX $0F                 ; $23:F39B: A6 0F
LDY #$04                ; $23:F39D: A0 04
JSR CODE_23F432         ; $23:F39F: 20 32 F4
LDX $190E               ; $23:F3A2: AE 0E 19
LDY #$00                ; $23:F3A5: A0 00
JSR CODE_23F432         ; $23:F3A7: 20 32 F4
JSR CODE_23ECC9         ; $23:F3AA: 20 C9 EC
BCC CODE_23F416         ; $23:F3AD: 90 67
LDY $0F                 ; $23:F3AF: A4 0F
LDA $1897,x             ; $23:F3B1: BD 97 18
AND $1897,y             ; $23:F3B4: 39 97 18
AND #$04                ; $23:F3B7: 29 04
BEQ CODE_23F416         ; $23:F3B9: F0 5B
LDA $18CD,x             ; $23:F3BB: BD CD 18
BNE CODE_23F3E5         ; $23:F3BE: D0 25
LDA #$28                ; $23:F3C0: A9 28
STA $18DA,x             ; $23:F3C2: 9D DA 18
LDA $1802,x             ; $23:F3C5: BD 02 18
CMP #$01                ; $23:F3C8: C9 01
BNE CODE_23F3D6         ; $23:F3CA: D0 0A
LDA #$10                ; $23:F3CC: A9 10
STA $18CD,x             ; $23:F3CE: 9D CD 18
LDA #$08                ; $23:F3D1: A9 08
STA $1857,x             ; $23:F3D3: 9D 57 18

CODE_23F3D6:
LDA $1824,x             ; $23:F3D6: BD 24 18
CMP $1824,y             ; $23:F3D9: D9 24 18
ROR A                   ; $23:F3DC: 6A
EOR $1846,x             ; $23:F3DD: 5D 46 18
BMI CODE_23F3E5         ; $23:F3E0: 30 03
JSR CODE_23F41A         ; $23:F3E2: 20 1A F4

CODE_23F3E5:
LDA $18CD,y             ; $23:F3E5: B9 CD 18
BNE CODE_23F416         ; $23:F3E8: D0 2C
LDA #$28                ; $23:F3EA: A9 28
STA $18DA,y             ; $23:F3EC: 99 DA 18
LDA $1802,y             ; $23:F3EF: B9 02 18
CMP #$01                ; $23:F3F2: C9 01
BNE CODE_23F400         ; $23:F3F4: D0 0A
LDA #$10                ; $23:F3F6: A9 10
STA $18CD,y             ; $23:F3F8: 99 CD 18
LDA #$08                ; $23:F3FB: A9 08
STA $1857,y             ; $23:F3FD: 99 57 18

CODE_23F400:
LDA $1824,y             ; $23:F400: B9 24 18
CMP $1824,x             ; $23:F403: DD 24 18
ROR A                   ; $23:F406: 6A
EOR $1846,y             ; $23:F407: 59 46 18
BMI CODE_23F411         ; $23:F40A: 30 05
LDX $0F                 ; $23:F40C: A6 0F
JSR CODE_23F41A         ; $23:F40E: 20 1A F4

CODE_23F411:
LDY $0F                 ; $23:F411: A4 0F
LDX $190E               ; $23:F413: AE 0E 19

CODE_23F416:
LDX $190E               ; $23:F416: AE 0E 19
RTS                     ; $23:F419: 60

CODE_23F41A:
LDA $1846,x             ; $23:F41A: BD 46 18
EOR #$FF                ; $23:F41D: 49 FF
CLC                     ; $23:F41F: 18
ADC #$01                ; $23:F420: 69 01
STA $1846,x             ; $23:F422: 9D 46 18
RTS                     ; $23:F425: 60

CODE_23F426:
LDA $1822,y             ; $23:F426: B9 22 18
LDY #$00                ; $23:F429: A0 00
SBC $1824,x             ; $23:F42B: FD 24 18
BPL CODE_23F431         ; $23:F42E: 10 01
INY                     ; $23:F430: C8

CODE_23F431:
RTS                     ; $23:F431: 60

CODE_23F432:
LDA $1813,x             ; $23:F432: BD 13 18
CLC                     ; $23:F435: 18
ADC #$06                ; $23:F436: 69 06
STA $0000,y             ; $23:F438: 99 00 00
LDA #$04                ; $23:F43B: A9 04
STA $0002,y             ; $23:F43D: 99 02 00
LDA $1824,x             ; $23:F440: BD 24 18
CLC                     ; $23:F443: 18
ADC #$02                ; $23:F444: 69 02
STA $0001,y             ; $23:F446: 99 01 00
LDA $18BB,x             ; $23:F449: BD BB 18
CMP #$0B                ; $23:F44C: C9 0B
LDA #$0C                ; $23:F44E: A9 0C
BCC CODE_23F454         ; $23:F450: 90 02
LDA #$05                ; $23:F452: A9 05

CODE_23F454:
STA $0003,y             ; $23:F454: 99 03 00

CODE_23F457:
RTS                     ; $23:F457: 60

CODE_23F458:
LDA $1800               ; $23:F458: AD 00 18
CMP #$03                ; $23:F45B: C9 03
BEQ CODE_23F463         ; $23:F45D: F0 04
CMP #$01                ; $23:F45F: C9 01
BNE CODE_23F457         ; $23:F461: D0 F4

CODE_23F463:
LDA $1801               ; $23:F463: AD 01 18
CMP #$03                ; $23:F466: C9 03
BEQ CODE_23F46E         ; $23:F468: F0 04
CMP #$01                ; $23:F46A: C9 01
BNE CODE_23F457         ; $23:F46C: D0 E9

CODE_23F46E:
TXA                     ; $23:F46E: 8A
CLC                     ; $23:F46F: 18
ADC $15                 ; $23:F470: 65 15
LSR A                   ; $23:F472: 4A
BCS CODE_23F457         ; $23:F473: B0 E2
LDA $18BB,x             ; $23:F475: BD BB 18
CMP #$06                ; $23:F478: C9 06
BEQ CODE_23F481         ; $23:F47A: F0 05
LDA $191E,x             ; $23:F47C: BD 1E 19
BNE CODE_23F457         ; $23:F47F: D0 D6

CODE_23F481:
LDA #$01                ; $23:F481: A9 01
STA $0F                 ; $23:F483: 85 0F

CODE_23F485:
LDX $0F                 ; $23:F485: A6 0F
LDA $1800,x             ; $23:F487: BD 00 18
CMP #$01                ; $23:F48A: C9 01
BNE CODE_23F493         ; $23:F48C: D0 05
LDA $190A,x             ; $23:F48E: BD 0A 19
BEQ CODE_23F496         ; $23:F491: F0 03

CODE_23F493:
JMP CODE_23F559         ; $23:F493: 4C 59 F5

CODE_23F496:
LDY #$04                ; $23:F496: A0 04
JSR CODE_23ECAC         ; $23:F498: 20 AC EC
LDY #$00                ; $23:F49B: A0 00
LDX $190E               ; $23:F49D: AE 0E 19
JSR CODE_23F432         ; $23:F4A0: 20 32 F4
JSR CODE_23ECC9         ; $23:F4A3: 20 C9 EC
LDY $0F                 ; $23:F4A6: A4 0F
BCC CODE_23F493         ; $23:F4A8: 90 E9
LDA $18BB,x             ; $23:F4AA: BD BB 18
CMP #$0C                ; $23:F4AD: C9 0C
BCC CODE_23F4B4         ; $23:F4AF: 90 03
JMP CODE_23F5D3         ; $23:F4B1: 4C D3 F5

CODE_23F4B4:
CMP #$0B                ; $23:F4B4: C9 0B
BNE CODE_23F4FC         ; $23:F4B6: D0 44
LDA #$01                ; $23:F4B8: A9 01
STA $1203               ; $23:F4BA: 8D 03 12
LDA #$0F                ; $23:F4BD: A9 0F
STA $18E9,x             ; $23:F4BF: 9D E9 18
LDA $192E,y             ; $23:F4C2: B9 2E 19
CLC                     ; $23:F4C5: 18
ADC #$01                ; $23:F4C6: 69 01
STA $192E,y             ; $23:F4C8: 99 2E 19
LDA $192E               ; $23:F4CB: AD 2E 19
CLC                     ; $23:F4CE: 18
ADC $192F               ; $23:F4CF: 6D 2F 19
CMP #$05                ; $23:F4D2: C9 05
BNE CODE_23F4F8         ; $23:F4D4: D0 22

CODE_23F4D6:
LDY #$0B                ; $23:F4D6: A0 0B
LDA #$FF                ; $23:F4D8: A9 FF

CODE_23F4DA:
STA $18CD,y             ; $23:F4DA: 99 CD 18
DEY                     ; $23:F4DD: 88
BPL CODE_23F4DA         ; $23:F4DE: 10 FA
LDY #$01                ; $23:F4E0: A0 01
LDA $192E               ; $23:F4E2: AD 2E 19
CMP $192F               ; $23:F4E5: CD 2F 19
BCC CODE_23F4EB         ; $23:F4E8: 90 01
INY                     ; $23:F4EA: C8

CODE_23F4EB:
STY $078C               ; $23:F4EB: 8C 8C 07
LDA #$C0                ; $23:F4EE: A9 C0
STA $1930               ; $23:F4F0: 8D 30 19
LDA #$07                ; $23:F4F3: A9 07
STA $1202               ; $23:F4F5: 8D 02 12

CODE_23F4F8:
JSR CODE_23E161         ; $23:F4F8: 20 61 E1
RTS                     ; $23:F4FB: 60

CODE_23F4FC:
LDA $1802,x             ; $23:F4FC: BD 02 18
CMP #$01                ; $23:F4FF: C9 01
BNE CODE_23F564         ; $23:F501: D0 61
LDY #$0B                ; $23:F503: A0 0B
LDA #$FF                ; $23:F505: A9 FF

CODE_23F507:
STA $18CD,y             ; $23:F507: 99 CD 18
DEY                     ; $23:F50A: 88
BPL CODE_23F507         ; $23:F50B: 10 FA
LDA $0F                 ; $23:F50D: A5 0F
EOR #$01                ; $23:F50F: 49 01
TAY                     ; $23:F511: A8
LDA #$FE                ; $23:F512: A9 FE
STA $1930               ; $23:F514: 8D 30 19
LDY $0F                 ; $23:F517: A4 0F
LDA #$02                ; $23:F519: A9 02
STA $078C               ; $23:F51B: 8D 8C 07
CPY #$01                ; $23:F51E: C0 01
BEQ CODE_23F527         ; $23:F520: F0 05
LDA #$01                ; $23:F522: A9 01
STA $078C               ; $23:F524: 8D 8C 07

CODE_23F527:
LDA #$20                ; $23:F527: A9 20
STA $1857,x             ; $23:F529: 9D 57 18
STA $18E7,y             ; $23:F52C: 99 E7 18
LDA #$09                ; $23:F52F: A9 09
STA $1202               ; $23:F531: 8D 02 12
LDA #$02                ; $23:F534: A9 02
STA $1800,y             ; $23:F536: 99 00 18
LDA #$D0                ; $23:F539: A9 D0
STA $1833,y             ; $23:F53B: 99 33 18
LDA $18BB,x             ; $23:F53E: BD BB 18
CMP #$04                ; $23:F541: C9 04
BEQ CODE_23F551         ; $23:F543: F0 0C
CMP #$05                ; $23:F545: C9 05
BEQ CODE_23F551         ; $23:F547: F0 08
JSR CODE_23F426         ; $23:F549: 20 26 F4
INY                     ; $23:F54C: C8
TYA                     ; $23:F54D: 98
STA $1866,x             ; $23:F54E: 9D 66 18

CODE_23F551:
LDX $190E               ; $23:F551: AE 0E 19
RTS                     ; $23:F554: 60
DEY                     ; $23:F555: 88
JSR CODE_23EE38         ; $23:F556: 20 38 EE

CODE_23F559:
DEC $0F                 ; $23:F559: C6 0F
BMI CODE_23F560         ; $23:F55B: 30 03
JMP CODE_23F485         ; $23:F55D: 4C 85 F4

CODE_23F560:
LDX $190E               ; $23:F560: AE 0E 19
RTS                     ; $23:F563: 60

CODE_23F564:
LDA #$03                ; $23:F564: A9 03
STA $1200               ; $23:F566: 8D 00 12
LDA $1844,y             ; $23:F569: B9 44 18
LDY #$00                ; $23:F56C: A0 00
CMP #$00                ; $23:F56E: C9 00
BMI CODE_23F573         ; $23:F570: 30 01
INY                     ; $23:F572: C8

CODE_23F573:
LDA.w DATA_21EDCD,y     ; $23:F573: B9 CD ED
STA $1846,x             ; $23:F576: 9D 46 18
LDY $0F                 ; $23:F579: A4 0F
LDA #$03                ; $23:F57B: A9 03
STA $1802,x             ; $23:F57D: 9D 02 18
LDA #$E0                ; $23:F580: A9 E0
STA $1835,x             ; $23:F582: 9D 35 18
LDA #$0C                ; $23:F585: A9 0C
STA $18B3,y             ; $23:F587: 99 B3 18
LDA $192E,y             ; $23:F58A: B9 2E 19
CLC                     ; $23:F58D: 18
ADC #$01                ; $23:F58E: 69 01
STA $192E,y             ; $23:F590: 99 2E 19
LDA $192E               ; $23:F593: AD 2E 19
CLC                     ; $23:F596: 18
ADC $192F               ; $23:F597: 6D 2F 19
CMP #$05                ; $23:F59A: C9 05
BEQ CODE_23F5C2         ; $23:F59C: F0 24
CMP #$04                ; $23:F59E: C9 04
BNE CODE_23F5C5         ; $23:F5A0: D0 23
INC $19A0               ; $23:F5A2: EE A0 19
LDX #$04                ; $23:F5A5: A2 04

CODE_23F5A7:
LDA $1802,x             ; $23:F5A7: BD 02 18
BEQ CODE_23F5B0         ; $23:F5AA: F0 04
CMP #$03                ; $23:F5AC: C9 03
BCC CODE_23F5B5         ; $23:F5AE: 90 05

CODE_23F5B0:
DEX                     ; $23:F5B0: CA
BPL CODE_23F5A7         ; $23:F5B1: 10 F4
BMI CODE_23F5C5         ; $23:F5B3: 30 10

CODE_23F5B5:
LDA $1846,x             ; $23:F5B5: BD 46 18
JSR CODE_23F626         ; $23:F5B8: 20 26 F6
LDA #$01                ; $23:F5BB: A9 01
STA $1931,x             ; $23:F5BD: 9D 31 19
BNE CODE_23F5C5         ; $23:F5C0: D0 03

CODE_23F5C2:
JSR CODE_23F4D6         ; $23:F5C2: 20 D6 F4

CODE_23F5C5:
LDX $190E               ; $23:F5C5: AE 0E 19
LDY $0F                 ; $23:F5C8: A4 0F
LDA #$05                ; $23:F5CA: A9 05
STA $00BC,y             ; $23:F5CC: 99 BC 00
JSR CODE_23E161         ; $23:F5CF: 20 61 E1
RTS                     ; $23:F5D2: 60

CODE_23F5D3:
LDA $18E9,x             ; $23:F5D3: BD E9 18
BNE CODE_23F604         ; $23:F5D6: D0 2C
JSR CODE_23F6B3         ; $23:F5D8: 20 B3 F6
LDA #$05                ; $23:F5DB: A9 05
STA $1200               ; $23:F5DD: 8D 00 12
LDY $0F                 ; $23:F5E0: A4 0F
LDA #$40                ; $23:F5E2: A9 40
STA $1989,y             ; $23:F5E4: 99 89 19
LDY #$00                ; $23:F5E7: A0 00
LDA $0F                 ; $23:F5E9: A5 0F
BEQ CODE_23F5EF         ; $23:F5EB: F0 02
LDY #$23                ; $23:F5ED: A0 23

CODE_23F5EF:
LDA $1D9D,y             ; $23:F5EF: B9 9D 1D
STA $1D9E,y             ; $23:F5F2: 99 9E 1D
LDA $1D9C,y             ; $23:F5F5: B9 9C 1D
STA $1D9D,y             ; $23:F5F8: 99 9D 1D
LDA $18BB,x             ; $23:F5FB: BD BB 18
SEC                     ; $23:F5FE: 38
SBC #$0B                ; $23:F5FF: E9 0B
STA $1D9C,y             ; $23:F601: 99 9C 1D

CODE_23F604:
RTS                     ; $23:F604: 60

CODE_23F605:
LDA $18CD,x             ; $23:F605: BD CD 18
BNE CODE_23F684         ; $23:F608: D0 7A
LDA #$00                ; $23:F60A: A9 00
STA $1857,x             ; $23:F60C: 9D 57 18
LDA $18E9,x             ; $23:F60F: BD E9 18
BNE CODE_23F647         ; $23:F612: D0 33
JSR CODE_23F22E         ; $23:F614: 20 2E F2
LDA #$01                ; $23:F617: A9 01
STA $1802,x             ; $23:F619: 9D 02 18
LDA $196F,x             ; $23:F61C: BD 6F 19
PHA                     ; $23:F61F: 48
LDA #$00                ; $23:F620: A9 00
STA $196F,x             ; $23:F622: 9D 6F 19
PLA                     ; $23:F625: 68

CODE_23F626:
PHP                     ; $23:F626: 08
BPL CODE_23F62E         ; $23:F627: 10 05
EOR #$FF                ; $23:F629: 49 FF
CLC                     ; $23:F62B: 18
ADC #$01                ; $23:F62C: 69 01

CODE_23F62E:
LDY #$00                ; $23:F62E: A0 00
CMP #$0A                ; $23:F630: C9 0A
BCC CODE_23F636         ; $23:F632: 90 02
INY                     ; $23:F634: C8
INY                     ; $23:F635: C8

CODE_23F636:
CMP #$0C                ; $23:F636: C9 0C
BCC CODE_23F63C         ; $23:F638: 90 02
INY                     ; $23:F63A: C8
INY                     ; $23:F63B: C8

CODE_23F63C:
PLP                     ; $23:F63C: 28
BPL CODE_23F640         ; $23:F63D: 10 01
INY                     ; $23:F63F: C8

CODE_23F640:
LDA.w DATA_21EDD5,y     ; $23:F640: B9 D5 ED
STA $1846,x             ; $23:F643: 9D 46 18
RTS                     ; $23:F646: 60

CODE_23F647:
LDA $15                 ; $23:F647: A5 15
AND #$01                ; $23:F649: 29 01
BNE CODE_23F650         ; $23:F64B: D0 03
DEC $18E9,x             ; $23:F64D: DE E9 18

CODE_23F650:
LDA $18E9,x             ; $23:F650: BD E9 18
CMP #$60                ; $23:F653: C9 60
BCS CODE_23F66C         ; $23:F655: B0 15
LSR A                   ; $23:F657: 4A
LSR A                   ; $23:F658: 4A
LSR A                   ; $23:F659: 4A
LSR A                   ; $23:F65A: 4A
LSR A                   ; $23:F65B: 4A
TAY                     ; $23:F65C: A8
LDA $15                 ; $23:F65D: A5 15
AND.w DATA_21EDCF,y     ; $23:F65F: 39 CF ED
BEQ CODE_23F66C         ; $23:F662: F0 08
INC $199B               ; $23:F664: EE 9B 19
LDA #$08                ; $23:F667: A9 08
STA $1857,x             ; $23:F669: 9D 57 18

CODE_23F66C:
JSR CODE_23EA95         ; $23:F66C: 20 95 EA
LDA $1897,x             ; $23:F66F: BD 97 18
AND #$04                ; $23:F672: 29 04
BEQ CODE_23F681         ; $23:F674: F0 0B
JSR CODE_23F197         ; $23:F676: 20 97 F1
LDA #$00                ; $23:F679: A9 00
STA $1846,x             ; $23:F67B: 9D 46 18
JSR CODE_23F1A5         ; $23:F67E: 20 A5 F1

CODE_23F681:
JSR CODE_23F687         ; $23:F681: 20 87 F6

CODE_23F684:
JMP CODE_23F18D         ; $23:F684: 4C 8D F1

CODE_23F687:
JSR CODE_23F971         ; $23:F687: 20 71 F9
JSR CODE_23F977         ; $23:F68A: 20 77 F9
LDA $1835,x             ; $23:F68D: BD 35 18
BMI CODE_23F696         ; $23:F690: 30 04
CMP #$40                ; $23:F692: C9 40
BCS CODE_23F69C         ; $23:F694: B0 06

CODE_23F696:
INC $1835,x             ; $23:F696: FE 35 18
INC $1835,x             ; $23:F699: FE 35 18

CODE_23F69C:
RTS                     ; $23:F69C: 60

CODE_23F69D:
LDA $1931,x             ; $23:F69D: BD 31 19
BNE CODE_23F6A7         ; $23:F6A0: D0 05
LDA $18CD,x             ; $23:F6A2: BD CD 18
BNE CODE_23F6D5         ; $23:F6A5: D0 2E

CODE_23F6A7:
LDA $1813,x             ; $23:F6A7: BD 13 18
CMP #$E0                ; $23:F6AA: C9 E0
BCC CODE_23F6B9         ; $23:F6AC: 90 0B
LDA $1944,x             ; $23:F6AE: BD 44 19
BNE CODE_23F6B9         ; $23:F6B1: D0 06

CODE_23F6B3:
LDA #$00                ; $23:F6B3: A9 00
STA $1802,x             ; $23:F6B5: 9D 02 18
RTS                     ; $23:F6B8: 60

CODE_23F6B9:
JSR CODE_23F687         ; $23:F6B9: 20 87 F6
INC $1835,x             ; $23:F6BC: FE 35 18
LDA $15                 ; $23:F6BF: A5 15
AND #$01                ; $23:F6C1: 29 01
BNE CODE_23F6D5         ; $23:F6C3: D0 10
LDA $1846,x             ; $23:F6C5: BD 46 18
BEQ CODE_23F6D5         ; $23:F6C8: F0 0B
BMI CODE_23F6D2         ; $23:F6CA: 30 06
DEC $1846,x             ; $23:F6CC: DE 46 18
DEC $1846,x             ; $23:F6CF: DE 46 18

CODE_23F6D2:
INC $1846,x             ; $23:F6D2: FE 46 18

CODE_23F6D5:
JMP CODE_23F22E         ; $23:F6D5: 4C 2E F2

CODE_23F6D8:
RTS                     ; $23:F6D8: 60

CODE_23F6D9:
LDA $18BA               ; $23:F6D9: AD BA 18
STA $00                 ; $23:F6DC: 85 00
BEQ CODE_23F6ED         ; $23:F6DE: F0 0D
DEC $18BA               ; $23:F6E0: CE BA 18
LSR A                   ; $23:F6E3: 4A
AND #$03                ; $23:F6E4: 29 03
TAY                     ; $23:F6E6: A8
LDA.w DATA_21EDDD,y     ; $23:F6E7: B9 DD ED
STA $0216               ; $23:F6EA: 8D 16 02

CODE_23F6ED:
LDA $193E               ; $23:F6ED: AD 3E 19
CMP #$03                ; $23:F6F0: C9 03
BEQ CODE_23F6D8         ; $23:F6F2: F0 E4
LDA #$98                ; $23:F6F4: A9 98
SEC                     ; $23:F6F6: 38
SBC $0216               ; $23:F6F7: ED 16 02
STA $0821               ; $23:F6FA: 8D 21 08
LDA #$78                ; $23:F6FD: A9 78
STA $0820               ; $23:F6FF: 8D 20 08
LDA $193E               ; $23:F702: AD 3E 19
TAY                     ; $23:F705: A8
LDA.w DATA_21EDE1,y     ; $23:F706: B9 E1 ED
STA $0822               ; $23:F709: 8D 22 08
LDA #$04                ; $23:F70C: A9 04
STA $0823               ; $23:F70E: 8D 23 08
LDA #$02                ; $23:F711: A9 02
STA $0A28               ; $23:F713: 8D 28 0A
LDX #$01                ; $23:F716: A2 01

CODE_23F718:
LDA $193E               ; $23:F718: AD 3E 19
CMP #$03                ; $23:F71B: C9 03
BEQ CODE_23F795         ; $23:F71D: F0 76
LDA $1800,x             ; $23:F71F: BD 00 18
CMP #$01                ; $23:F722: C9 01
BNE CODE_23F795         ; $23:F724: D0 6F
LDY #$00                ; $23:F726: A0 00
JSR CODE_23ECAC         ; $23:F728: 20 AC EC
LDA #$98                ; $23:F72B: A9 98
STA $04                 ; $23:F72D: 85 04
LDA #$78                ; $23:F72F: A9 78
STA $05                 ; $23:F731: 85 05
LDA #$10                ; $23:F733: A9 10
STA $07                 ; $23:F735: 85 07
LDY $193E               ; $23:F737: AC 3E 19
SEC                     ; $23:F73A: 38
SBC.w DATA_21EDE4,y     ; $23:F73B: F9 E4 ED
STA $06                 ; $23:F73E: 85 06
JSR CODE_23ECC9         ; $23:F740: 20 C9 EC
BCC CODE_23F795         ; $23:F743: 90 50
LDY $193E               ; $23:F745: AC 3E 19
LDA.w DATA_21EDE4,y     ; $23:F748: B9 E4 ED
STA $193F,x             ; $23:F74B: 9D 3F 19
LDA $1811,x             ; $23:F74E: BD 11 18
SEC                     ; $23:F751: 38
SBC $193F,x             ; $23:F752: FD 3F 19
CMP #$8D                ; $23:F755: C9 8D
BCS CODE_23F765         ; $23:F757: B0 0C
LDA $1833,x             ; $23:F759: BD 33 18
BMI CODE_23F795         ; $23:F75C: 30 37
LDA #$04                ; $23:F75E: A9 04
STA $1895,x             ; $23:F760: 9D 95 18
BEQ CODE_23F795         ; $23:F763: F0 30

CODE_23F765:
LDA $1811,x             ; $23:F765: BD 11 18
CLC                     ; $23:F768: 18
ADC $193F,x             ; $23:F769: 7D 3F 19
CMP #$A1                ; $23:F76C: C9 A1
BCC CODE_23F795         ; $23:F76E: 90 25
LDA $1833,x             ; $23:F770: BD 33 18
BPL CODE_23F795         ; $23:F773: 10 20
LDA #$09                ; $23:F775: A9 09
STA $1203               ; $23:F777: 8D 03 12
INC $193E               ; $23:F77A: EE 3E 19
LDA #$00                ; $23:F77D: A9 00
STA $1833,x             ; $23:F77F: 9D 33 18
LDA #$A9                ; $23:F782: A9 A9
SEC                     ; $23:F784: 38
SBC $193F,x             ; $23:F785: FD 3F 19
STA $1811,x             ; $23:F788: 9D 11 18
LDA #$08                ; $23:F78B: A9 08
STA $18B7,x             ; $23:F78D: 9D B7 18
LDA #$10                ; $23:F790: A9 10
STA $18BA               ; $23:F792: 8D BA 18

CODE_23F795:
DEX                     ; $23:F795: CA
BMI CODE_23F79B         ; $23:F796: 30 03
JMP CODE_23F718         ; $23:F798: 4C 18 F7

CODE_23F79B:
RTS                     ; $23:F79B: 60

CODE_23F79C:
LDA $18E9,x             ; $23:F79C: BD E9 18
BEQ CODE_23F7AB         ; $23:F79F: F0 0A
CMP #$20                ; $23:F7A1: C9 20
BNE CODE_23F7A8         ; $23:F7A3: D0 03
JMP CODE_23F6B3         ; $23:F7A5: 4C B3 F6

CODE_23F7A8:
JMP CODE_23F22E         ; $23:F7A8: 4C 2E F2

CODE_23F7AB:
JSR CODE_23F22E         ; $23:F7AB: 20 2E F2
LDY $18C8               ; $23:F7AE: AC C8 18
LDA $1857,x             ; $23:F7B1: BD 57 18
AND #$10                ; $23:F7B4: 29 10
BEQ CODE_23F7C0         ; $23:F7B6: F0 08
LDA $0903,y             ; $23:F7B8: B9 03 09
EOR #$C0                ; $23:F7BB: 49 C0
STA $0903,y             ; $23:F7BD: 99 03 09

CODE_23F7C0:
INC $1857,x             ; $23:F7C0: FE 57 18
INC $1857,x             ; $23:F7C3: FE 57 18
LDY $1866,x             ; $23:F7C6: BC 66 18
LDA $1824,x             ; $23:F7C9: BD 24 18
CMP.w DATA_21EDEA,y     ; $23:F7CC: D9 EA ED
BNE CODE_23F7DD         ; $23:F7CF: D0 0C
LDA $18BB,x             ; $23:F7D1: BD BB 18
CMP #$04                ; $23:F7D4: C9 04
BNE CODE_23F7DD         ; $23:F7D6: D0 05
LDA #$40                ; $23:F7D8: A9 40
STA $18E9,x             ; $23:F7DA: 9D E9 18

CODE_23F7DD:
JSR CODE_23F458         ; $23:F7DD: 20 58 F4
JSR CODE_23EA95         ; $23:F7E0: 20 95 EA
LDA $18BA               ; $23:F7E3: AD BA 18
BNE CODE_23F7EF         ; $23:F7E6: D0 07
LDA $18FA,x             ; $23:F7E8: BD FA 18
CMP #$C2                ; $23:F7EB: C9 C2
BNE CODE_23F7F4         ; $23:F7ED: D0 05

CODE_23F7EF:
LDA #$40                ; $23:F7EF: A9 40
STA $18E9,x             ; $23:F7F1: 9D E9 18

CODE_23F7F4:
LDA $18BB,x             ; $23:F7F4: BD BB 18
CMP #$04                ; $23:F7F7: C9 04
BNE CODE_23F81A         ; $23:F7F9: D0 1F
JSR CODE_23F971         ; $23:F7FB: 20 71 F9
JSR CODE_23F977         ; $23:F7FE: 20 77 F9
LDA $18A6,x             ; $23:F801: BD A6 18
AND #$01                ; $23:F804: 29 01
TAY                     ; $23:F806: A8
LDA $1835,x             ; $23:F807: BD 35 18
CLC                     ; $23:F80A: 18
ADC.w DATA_21EDE7,y     ; $23:F80B: 79 E7 ED
STA $1835,x             ; $23:F80E: 9D 35 18
CMP.w DATA_21EDE9,y     ; $23:F811: D9 E9 ED
BNE CODE_23F819         ; $23:F814: D0 03
INC $18A6,x             ; $23:F816: FE A6 18

CODE_23F819:
RTS                     ; $23:F819: 60

CODE_23F81A:
CMP #$06                ; $23:F81A: C9 06
BEQ CODE_23F847         ; $23:F81C: F0 29
LDA $1897,x             ; $23:F81E: BD 97 18
AND #$03                ; $23:F821: 29 03
AND $1866,x             ; $23:F823: 3D 66 18
BEQ CODE_23F82B         ; $23:F826: F0 03
JSR CODE_23F41A         ; $23:F828: 20 1A F4

CODE_23F82B:
LDA $1897,x             ; $23:F82B: BD 97 18
AND #$0C                ; $23:F82E: 29 0C
AND $1962,x             ; $23:F830: 3D 62 19
BEQ CODE_23F840         ; $23:F833: F0 0B
LDA $1835,x             ; $23:F835: BD 35 18
EOR #$FF                ; $23:F838: 49 FF
CLC                     ; $23:F83A: 18
ADC #$01                ; $23:F83B: 69 01
STA $1835,x             ; $23:F83D: 9D 35 18

CODE_23F840:
JSR CODE_23F971         ; $23:F840: 20 71 F9
JSR CODE_23F977         ; $23:F843: 20 77 F9
RTS                     ; $23:F846: 60

CODE_23F847:
JSR CODE_23F840         ; $23:F847: 20 40 F8
INC $1835,x             ; $23:F84A: FE 35 18
INC $1835,x             ; $23:F84D: FE 35 18
LDA $1813,x             ; $23:F850: BD 13 18
CMP #$E0                ; $23:F853: C9 E0
BCC CODE_23F85C         ; $23:F855: 90 05
LDA #$00                ; $23:F857: A9 00
STA $1802,x             ; $23:F859: 9D 02 18

CODE_23F85C:
RTS                     ; $23:F85C: 60

CODE_23F85D:
LDX #$01                ; $23:F85D: A2 01

CODE_23F85F:
STX $190E               ; $23:F85F: 8E 0E 19
TXA                     ; $23:F862: 8A
CLC                     ; $23:F863: 18
ADC $18C9               ; $23:F864: 6D C9 18
TAY                     ; $23:F867: A8
LDA.w DATA_21ED4A,y     ; $23:F868: B9 4A ED
STA $18C8               ; $23:F86B: 8D C8 18
LDA $180F,x             ; $23:F86E: BD 0F 18
BEQ CODE_23F899         ; $23:F871: F0 26
PHA                     ; $23:F873: 48
CMP #$0E                ; $23:F874: C9 0E
BNE CODE_23F87B         ; $23:F876: D0 03
JSR CODE_23F8F0         ; $23:F878: 20 F0 F8

CODE_23F87B:
PLA                     ; $23:F87B: 68
CMP #$01                ; $23:F87C: C9 01
BNE CODE_23F896         ; $23:F87E: D0 16
JSR CODE_23F8DD         ; $23:F880: 20 DD F8
LDA #$00                ; $23:F883: A9 00
STA $2E                 ; $23:F885: 85 2E
LDA #$20                ; $23:F887: A9 20
STA $2F                 ; $23:F889: 85 2F
LDA #$7E                ; $23:F88B: A9 7E
STA $30                 ; $23:F88D: 85 30
LDY $1908,x             ; $23:F88F: BC 08 19
LDA #$C1                ; $23:F892: A9 C1
STA [$2E],y             ; $23:F894: 97 2E

CODE_23F896:
JSR CODE_23F89D         ; $23:F896: 20 9D F8

CODE_23F899:
DEX                     ; $23:F899: CA
BPL CODE_23F85F         ; $23:F89A: 10 C3
RTS                     ; $23:F89C: 60

CODE_23F89D:
LDA $0076               ; $23:F89D: AD 76 00
ORA $18CB               ; $23:F8A0: 0D CB 18
ORA $18CC               ; $23:F8A3: 0D CC 18
ORA $1930               ; $23:F8A6: 0D 30 19
BNE CODE_23F8BA         ; $23:F8A9: D0 0F
DEC $180F,x             ; $23:F8AB: DE 0F 18
JSR CODE_23F96B         ; $23:F8AE: 20 6B F9
LDA $1842,x             ; $23:F8B1: BD 42 18
CLC                     ; $23:F8B4: 18
ADC #$05                ; $23:F8B5: 69 05
STA $1842,x             ; $23:F8B7: 9D 42 18

CODE_23F8BA:
LDY $18C8               ; $23:F8BA: AC C8 18
LDA $1831,x             ; $23:F8BD: BD 31 18
STA $0900,y             ; $23:F8C0: 99 00 09
LDA $1820,x             ; $23:F8C3: BD 20 18
STA $0901,y             ; $23:F8C6: 99 01 09
LDA #$2C                ; $23:F8C9: A9 2C
STA $0903,y             ; $23:F8CB: 99 03 09
LDA #$80                ; $23:F8CE: A9 80
STA $0902,y             ; $23:F8D0: 99 02 09
TYA                     ; $23:F8D3: 98
LSR A                   ; $23:F8D4: 4A
LSR A                   ; $23:F8D5: 4A
TAY                     ; $23:F8D6: A8
LDA #$02                ; $23:F8D7: A9 02
STA $0A60,y             ; $23:F8D9: 99 60 0A
RTS                     ; $23:F8DC: 60

CODE_23F8DD:
LDA #$02                ; $23:F8DD: A9 02
STA $0C                 ; $23:F8DF: 85 0C
LDA #$03                ; $23:F8E1: A9 03
STA $0D                 ; $23:F8E3: 85 0D
LDA #$12                ; $23:F8E5: A9 12
STA $0E                 ; $23:F8E7: 85 0E
LDA #$13                ; $23:F8E9: A9 13
STA $0F                 ; $23:F8EB: 85 0F
JMP CODE_23F8FA         ; $23:F8ED: 4C FA F8

CODE_23F8F0:
LDA #$FF                ; $23:F8F0: A9 FF
STA $0C                 ; $23:F8F2: 85 0C
STA $0D                 ; $23:F8F4: 85 0D
STA $0E                 ; $23:F8F6: 85 0E
STA $0F                 ; $23:F8F8: 85 0F

CODE_23F8FA:
LDY $1600               ; $23:F8FA: AC 00 16
LDA #$08                ; $23:F8FD: A9 08
STA $03                 ; $23:F8FF: 85 03
LDA $1908,x             ; $23:F901: BD 08 19
PHA                     ; $23:F904: 48
AND #$F0                ; $23:F905: 29 F0
ASL A                   ; $23:F907: 0A
ROL $03                 ; $23:F908: 26 03
ASL A                   ; $23:F90A: 0A
ROL $03                 ; $23:F90B: 26 03
STA $04                 ; $23:F90D: 85 04
PLA                     ; $23:F90F: 68
ASL A                   ; $23:F910: 0A
AND #$1F                ; $23:F911: 29 1F
CLC                     ; $23:F913: 18
ADC $04                 ; $23:F914: 65 04
STA $1603,y             ; $23:F916: 99 03 16
CLC                     ; $23:F919: 18
ADC #$20                ; $23:F91A: 69 20
STA $160B,y             ; $23:F91C: 99 0B 16
LDA $03                 ; $23:F91F: A5 03
AND #$DF                ; $23:F921: 29 DF
STA $1602,y             ; $23:F923: 99 02 16
STA $160A,y             ; $23:F926: 99 0A 16
LDA #$00                ; $23:F929: A9 00
STA $1604,y             ; $23:F92B: 99 04 16
STA $160C,y             ; $23:F92E: 99 0C 16
LDA #$03                ; $23:F931: A9 03
STA $1605,y             ; $23:F933: 99 05 16
STA $160D,y             ; $23:F936: 99 0D 16
LDA $0C                 ; $23:F939: A5 0C
STA $1606,y             ; $23:F93B: 99 06 16
LDA $0D                 ; $23:F93E: A5 0D
STA $1608,y             ; $23:F940: 99 08 16
LDA $0E                 ; $23:F943: A5 0E
STA $160E,y             ; $23:F945: 99 0E 16
LDA $0F                 ; $23:F948: A5 0F
STA $1610,y             ; $23:F94A: 99 10 16
LDA #$18                ; $23:F94D: A9 18
STA $1607,y             ; $23:F94F: 99 07 16
STA $1609,y             ; $23:F952: 99 09 16
STA $160F,y             ; $23:F955: 99 0F 16
STA $1611,y             ; $23:F958: 99 11 16
LDA #$FF                ; $23:F95B: A9 FF
STA $1612,y             ; $23:F95D: 99 12 16
STA $1613,y             ; $23:F960: 99 13 16
TYA                     ; $23:F963: 98
CLC                     ; $23:F964: 18
ADC #$10                ; $23:F965: 69 10
STA $1600               ; $23:F967: 8D 00 16
RTS                     ; $23:F96A: 60

CODE_23F96B:
TXA                     ; $23:F96B: 8A
CLC                     ; $23:F96C: 18
ADC #$0F                ; $23:F96D: 69 0F
BPL CODE_23F97B         ; $23:F96F: 10 0A

CODE_23F971:
TXA                     ; $23:F971: 8A
CLC                     ; $23:F972: 18
ADC #$13                ; $23:F973: 69 13
BPL CODE_23F97B         ; $23:F975: 10 04

CODE_23F977:
TXA                     ; $23:F977: 8A
CLC                     ; $23:F978: 18
ADC #$02                ; $23:F979: 69 02

CODE_23F97B:
TAX                     ; $23:F97B: AA
JSR CODE_23F98F         ; $23:F97C: 20 8F F9
LDX $190E               ; $23:F97F: AE 0E 19
RTS                     ; $23:F982: 60

CODE_23F983:
TXA                     ; $23:F983: 8A
CLC                     ; $23:F984: 18
ADC #$11                ; $23:F985: 69 11
TAX                     ; $23:F987: AA
JSR CODE_23F98F         ; $23:F988: 20 8F F9
LDX $190E               ; $23:F98B: AE 0E 19
RTS                     ; $23:F98E: 60

CODE_23F98F:
LDA $1833,x             ; $23:F98F: BD 33 18
ASL A                   ; $23:F992: 0A
ASL A                   ; $23:F993: 0A
ASL A                   ; $23:F994: 0A
ASL A                   ; $23:F995: 0A
CLC                     ; $23:F996: 18
ADC $1873,x             ; $23:F997: 7D 73 18
STA $1873,x             ; $23:F99A: 9D 73 18
PHP                     ; $23:F99D: 08
LDY #$00                ; $23:F99E: A0 00
LDA $1833,x             ; $23:F9A0: BD 33 18
LSR A                   ; $23:F9A3: 4A
LSR A                   ; $23:F9A4: 4A
LSR A                   ; $23:F9A5: 4A
LSR A                   ; $23:F9A6: 4A
CMP #$08                ; $23:F9A7: C9 08
BCC CODE_23F9AE         ; $23:F9A9: 90 03
ORA #$F0                ; $23:F9AB: 09 F0
DEY                     ; $23:F9AD: 88

CODE_23F9AE:
PLP                     ; $23:F9AE: 28
ADC $1811,x             ; $23:F9AF: 7D 11 18
STA $1811,x             ; $23:F9B2: 9D 11 18
ROL A                   ; $23:F9B5: 2A
CPX #$11                ; $23:F9B6: E0 11
BCS CODE_23F9C2         ; $23:F9B8: B0 08
ROR A                   ; $23:F9BA: 6A
TYA                     ; $23:F9BB: 98
ADC $1942,x             ; $23:F9BC: 7D 42 19
STA $1942,x             ; $23:F9BF: 9D 42 19

CODE_23F9C2:
RTS                     ; $23:F9C2: 60

CODE_23F9C3:
LDA $0076               ; $23:F9C3: AD 76 00
BEQ CODE_23F9E7         ; $23:F9C6: F0 1F
PHB                     ; $23:F9C8: 8B
PHK                     ; $23:F9C9: 4B
PLB                     ; $23:F9CA: AB
LDY #$00                ; $23:F9CB: A0 00
REP #$30                ; $23:F9CD: C2 30
LDA #$FA17              ; $23:F9CF: A9 17 FA
STA $0000               ; $23:F9D2: 8D 00 00
LDA #$FA2B              ; $23:F9D5: A9 2B FA
STA $0002               ; $23:F9D8: 8D 02 00
LDA #$0028              ; $23:F9DB: A9 28 00
STA $0004               ; $23:F9DE: 8D 04 00
JSR CODE_23F9E8         ; $23:F9E1: 20 E8 F9
SEP #$30                ; $23:F9E4: E2 30
PLB                     ; $23:F9E6: AB

CODE_23F9E7:
RTS                     ; $23:F9E7: 60

CODE_23F9E8:
LDA ($00)               ; $23:F9E8: B2 00
STA $0830,y             ; $23:F9EA: 99 30 08
LDA ($02)               ; $23:F9ED: B2 02
STA $0832,y             ; $23:F9EF: 99 32 08
INC $0000               ; $23:F9F2: EE 00 00
INC $0000               ; $23:F9F5: EE 00 00
INC $0002               ; $23:F9F8: EE 02 00
INC $0002               ; $23:F9FB: EE 02 00
PHY                     ; $23:F9FE: 5A
TYA                     ; $23:F9FF: 98
LSR A                   ; $23:FA00: 4A
LSR A                   ; $23:FA01: 4A
TAY                     ; $23:FA02: A8
SEP #$30                ; $23:FA03: E2 30
LDA #$00                ; $23:FA05: A9 00
STA $0A2C,y             ; $23:FA07: 99 2C 0A
REP #$30                ; $23:FA0A: C2 30
PLY                     ; $23:FA0C: 7A
INY                     ; $23:FA0D: C8
INY                     ; $23:FA0E: C8
INY                     ; $23:FA0F: C8
INY                     ; $23:FA10: C8
CPY $0004               ; $23:FA11: CC 04 00
BNE CODE_23F9E8         ; $23:FA14: D0 D2
RTS                     ; $23:FA16: 60
db $6C,$80,$74,$80,$7C,$80,$84,$80
db $8C,$80,$6C,$88,$74,$88,$7C,$88
db $84,$88,$8C,$88,$2D,$23,$C6,$22
db $C2,$22,$2E,$23,$2F,$23,$3D,$23
db $D6,$22,$D2,$22,$3E,$23,$3F,$23

