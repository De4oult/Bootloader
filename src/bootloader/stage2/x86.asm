bits 16

section _TEXT class=CODE

global _x86_VideoWriteChar_Teletype
_x86_VideoWriteChar_Teletype:
    push bp
    mov bp, sp

    push bx

    mov ah, 0Eh
    mov al, [bp + 4]
    mov bh, [bp + 6]

    int 10h

    pop bx

    mov sp, bp
    pop bp
    ret