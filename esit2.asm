ORG 100h
MOV AL, 25 ; AL=25
MOV BL, 10 ; BL=10
CMP AL, BL ; AL ile BL’yi karþýlaþtýr
JNE esit degil; AL <> BL (ZF = 0)ise dallan
JMP esit
esitdegil:
MOV CL,'H' ; buraya geldiyse AL <> BLdemektir.
JMP dur; bu yüzden CL=‘H’ ve dur’a git
esit: ; buraya geldiyse
MOV CL,'E' ; AL = BLdemektir bu yüzden CL=‘E’
dur:
RET
END