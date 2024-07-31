org 7c00h

BITS 16 ; 16-bit 8086 processor

mov al, 6
cmp al, 5 ; compare 5 with content of el
je _equal ; if the ZF (Zero Flag) is set to 1 it will jump to the address of _equal label
jne _not_equal ; jump if not equal (.i.e ZF is 0)
ja _above ; jump above if CF (Carry Flag) and ZF are set to 0, jump to _ebove 
jb _below ; jump below if CF is set to 1, jump to _below
jae _above_or_equal ; jump if CF is 0 to _above_or_equal
jbe _below_or_equal ; jump if CF is set to 1 to _below_or_equal

jmp _exit

_equal:
    mov ah, 0eh
    mov al, 'A'
    int 0x10

_not_equal:
    mov ah, 0eh
    mov al, 'B'
    int 0x10

_above:
    mov ah, 0eh
    mov al, 'C'
    int 0x10

_below:
    mov ah, 0eh
    mov al, 'D'
    int 0x10
    
_above_or_equal:
    mov ah, 0eh
    mov al, 'E'
    int 0x10

_below_or_equal:
    mov ah, 0eh
    mov al, 'F'
    int 0x10
    
_exit:  
ret

times 510-($ - $$) db 0
dw 0xAA55

