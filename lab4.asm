
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,3
mov bl,7
mov cl,12

add al,cl
add al,bl

mov ax,20
mov ax,20h
mov cx,00h
mov dx,35

mov bx,16
mov cx,5h
add ax,5
add bx,15h

add cx,dx
sub ax,13
sub ax,13h
sub dx,ax

inc ch
dec cx
inc dx

ret




