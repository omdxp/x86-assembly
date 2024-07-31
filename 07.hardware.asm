org 7c00h

BITS 16 ; 16-bit 8086 processor

; writing to hardware
mov al, 'A'
out 130, al ; push AL content 'A' to the printer bin in port 130

; reading from hardware
in al, 110 ; read a byte from port 110

ret

times 510-($ - $$) db 0
dw 0xAA55
