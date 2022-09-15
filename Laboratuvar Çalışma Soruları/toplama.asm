 mov [0205h], 0006h
 mov [0204h], 0005h
 mov [0203h], 0004h
 mov [0202h], 0003h
 mov [0201h], 0002h
 mov [0200h], 0001h
 MOV CX,05
 MOV BX,0200H
 MOV AL,00
 ADD_LP: ADD AL,[BX]
 INC BX
 DEC CX
 JNZ ADD_LP