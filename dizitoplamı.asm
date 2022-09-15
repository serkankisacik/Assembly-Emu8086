;4.soru 
data segment
   
   
ends

stack segment
  sayi db 1,2,3,4,5
ends

code segment
start:
    mov ax, data
    mov ds, ax
    
    lea si,sayi
         
    mov al,[si]  
       
    mov cx,5
    
    topla:

    add al,[si+1]
    inc si 
    loop topla  
    
 
    mov ax, 4c00h 
    int 21h    
ends

end start 