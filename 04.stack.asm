org 7c00h

BITS 16 ; 16-bit 8086 processor

; SP 0xfffe
push 0xffff ; push 0xffff to stack
; SP oxfffc
; SS 0x0700 (stack segment)    
; in memory 0700:fffc
; stack grows downwards and usefull for temporary information

pop ax
; SP 0xfffe
; AX contains the value that been popped of from the stack (0xffff)

; call expect to go back

_main:
    call _test ; calls a subroutine
    ; call uses stack to store return address, in this case is the IP for this instruction
    mov ah, 0x20
    ret ; returns from subroutine 

; addresses are stored backward because intel hase little endian
 
_test: ; labels are converted to addresses by the assembler
    mov ah, 0x10
    ret

times 510-($ - $$) db 0
dw 0xAA55
