ORG 100h
MOV AL, 25 ; AL=25
MOV BL, 10 ; BL=10
CMP AL, BL ; AL ile BL�yi kar��la�t�r
JNE esit degil; AL <> BL (ZF = 0)ise dallan
JMP esit
esitdegil:
MOV CL,'H' ; buraya geldiyse AL <> BLdemektir.
JMP dur; bu y�zden CL=�H� ve dur�a git
esit: ; buraya geldiyse
MOV CL,'E' ; AL = BLdemektir bu y�zden CL=�E�
dur:
RET
END