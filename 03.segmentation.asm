org 7c00h

BITS 16 ; 16-bit 8086 processor

jmp _test ; change IP to point to _test label address

mov ax, 0x300
mov ds, ax ; cannot copy immediate value to special registers
;mov [0xff], 0x30 ; copy 0x30 into address 0xff based on data segment register (DS)
; what DS stores is the offset for [0xff]

; DS value x 16 + 0xff = the place of memory to put 0x30

; CS code segment

_test:

jmp 0x7c0:0xff ; jump from segment to another 

ret

times 510-($ - $$) db 0
dw 0xAA55
