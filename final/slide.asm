
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,6bh
ror al,1
rol al,3

mov ax,2h
shl ax,8


mov al,6bh
shr al,1
shr al,3

mov al,8ch
sar al,1
sar al,3


mov al,11100000b
sar al,1

mov al,10010000b
sal al,1


mov dl,5
shl dl,2

mov dl,85
shr dl,1
shr dl,1
shr dl,1

mov al,12
shl al,10
shl al,1


ret




