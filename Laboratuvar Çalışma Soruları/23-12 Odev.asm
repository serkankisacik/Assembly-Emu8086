.MODEL SMALL
.STACK 100H
.DATA
 STR1 DB "ABCDEFGH$"
 LEN DB 0
.CODE
 MOV AX , @DATA  ; Veri ilistirme
 MOV DS , AX
 
 MOV SI , OFFSET STR1
  
 UP:
  MOV AL , [SI]
  CMP AL , '$'
  JZ DN          ; IF DESTINATION == SOURCE THEN ZF = 1
 
  INC LEN
  INC SI  
 LOOP UP
 

 ; Printing length
 ;MOV DL , LEN
 ;ADD DL , 48
 ;MOV AH , 2
 ;INT 21H
DN: 
 mov di, offset str1
 mov al,'F'
 mov cl,LEN
 cld
 repne scasb
 jnz quit
 dec di
 
 quit: ret 

  
END