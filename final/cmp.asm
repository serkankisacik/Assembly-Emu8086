
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov dx,00fah
add dx,0006h
mov bx,dx


mov ax,50
cmp ax,60

mov ax,50
cmp ax,50

mov ax,50
cmp ax,40

ret




