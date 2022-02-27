
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,5
mov cl,9
mul cl
mov bx,15

mul bx
mov ax,0fffah
mul bx
mov ax,14
div cl


ret




