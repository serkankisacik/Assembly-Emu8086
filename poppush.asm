ORG 100H
MOV BX, 0
MOV CX, 5
k1:PUSH CX
MOV CX, 5
k2:PUSH CX
MOV CX, 5
k3:
ADD BX, 1
LOOP k3
POP CX
LOOP k2
POP CX
LOOP k1
RET