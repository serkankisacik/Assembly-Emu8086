; multi-segment executable file template.

data segment          
    sayi1 db ?
    sayi2 db ?
    mesaj db 'Rakam Girin : $'
    toplam db 'Toplam : $'     
    satir db 0 
    sutun db 0 
    karakter db ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax
    
    ;*************1. sayiyi al
    lea dx,mesaj
    call ekranaYaz
    call rakamGir   
    sub al,30h
    mov sayi1,al  
    ;*************2. sayiyi al
    ;call ekranaYaz
    call rakamGir   
    sub al,30h
    mov sayi2,al
    ;*************Toplam
    mov al,sayi1
    add al,sayi2 
    add al,30h         
    mov karakter,al
    call sil   
    call imlecKonum
    lea dx,toplam
    call ekranaYaz  
    call rakamYaz           
    ;*************
    jmp son  
ends
    
sil PROC 
    mov ah,06h    ;fonk. numarasi
    mov al,00h    ;kac satir silinecegi //00h tumu..
    mov cx,00h    ;sol ust kose koordinati
    mov dx,184fh  ;sag alt kose koordinati
    mov bh,07h    ;zemin rengi (0), yazi rengi(7)  
    int 10h
    RET
sil ENDP  

ekranaYaz PROC ;DX'in icerigini ekrana yaz 
    ;lea dx,mesaj
    mov ah,09h    
    int 21h
    RET
ekranaYaz ENDP

rakamYaz PROC
    mov dl,karakter
    mov ah,02h
    int 21h            
    RET
rakamYaz ENDP

rakamGir PROC ;ekrandan karakter al
    mov ah,00h    
    int 16h
    RET
rakamGir ENDP

imlecKonum PROC
    mov ah,02h
    mov bh,00h
    mov dl,sutun ;sutun numarasi
    mov dh,satir ;satir numarasi    
    int 10h
    RET  
imlecKonum ENDP
    
    son:
end start ; set entry point and stop the assembler.

                                                                                                    