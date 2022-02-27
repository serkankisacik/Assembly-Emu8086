
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax,00h
mov bx,00h
mov cx,00h
mov dx,00h

mov ax,16
mov ax,16h
mov bl,20
mov bh,45

mov cx,24h
mov dx,35
mov ah,16h


ret




