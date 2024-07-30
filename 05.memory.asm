org 7c00h

BITS 16 ; 16-bit 8086 processor

mov bx, 0xfff0
mov byte [bx], 0x30 ; copy one byte
mov word [bx], 0x30 ; copy 2 bytes 

mov ax, [0x00] ; read 2 bytes of content from memory in address 0000 from DS offset and copy it to AX register 
mov dl, [0x00] ; read 1 byte of content from memory in address 0000 and copy it to DL register 

ret

times 510-($ - $$) db 0
dw 0xAA55

