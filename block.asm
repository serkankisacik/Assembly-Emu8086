org 100h

mov cx,100;Bloklardakielemansay�s�
mov bx,0;index�iba�lat
L1:
mov ax,BLOCK1[bx];BLOCK1�dekis�radakisay�y�al
Add ax,BLOCK2[bx];BLOCK2�dekis�radakisay�y�ekle
mov BLOCK2[bx],ax;sonucusakla
add bx,2;Birsonrakielemanage�
loop L1
Ret
BLOCK1 DW 100DUP(1)
BLOCK2 DW 100DUP(2)