ORG 100h
MOV AL, 25 ; AL=25
MOV BL, 25 ; BL=10
CMP AL, BL ; AL ile BL�yi kar��la�t�r
JE esit ; e�er AL = BL (ZF = 1) ise esit�e git
MOV CL,'H' ; Buraya gelirse AL <> BL demektir
JMP dur ; Bu y�zden CL�ye �H� y�kle ve dur�a git
esit: ; buraya gelirse
MOV CL,'E' ; AL = BL demektir bu y�zden CL�ye �E� yaz
dur:
RET
END