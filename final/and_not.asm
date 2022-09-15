; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov al,5h
    not al
    and al,0fh
ends

end start ; set entry point and stop the assembler.
