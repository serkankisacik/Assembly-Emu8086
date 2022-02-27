org 100h

mov cx,100;Bloklardakielemansayýsý
mov bx,0;index’ibaþlat
L1:
mov ax,BLOCK1[bx];BLOCK1’dekisýradakisayýyýal
Add ax,BLOCK2[bx];BLOCK2’dekisýradakisayýyýekle
mov BLOCK2[bx],ax;sonucusakla
add bx,2;Birsonrakielemanageç
loop L1
Ret
BLOCK1 DW 100DUP(1)
BLOCK2 DW 100DUP(2)