org 0x7C00
bits 16

main:
    ; data segments setup
    mov ax, 0
    mov ds, ax
    mov es, ax

    ; stack setup
    mov ss, ax
    mov sp, 0x7C00

    hlt

.halt:
    jmp .halt


times 510-($-$$) db 0

dw 0AA55h