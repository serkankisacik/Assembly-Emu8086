.model small

.data
   C EQU 15
   
   var1 db 12
   var2 db ?

.code

main proc  
    mov ax,@data
    mov ds,ax
    
    mov var2,C
    
    mov al,var1
    mov ah,var2
    
    mov var2,al
    mov var1,ah
    
    
    
    
    main endp

end