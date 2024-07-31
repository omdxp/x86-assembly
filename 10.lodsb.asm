org 7c00h

BITS 16 ; 16-bit 8086 processor

; LODSB load a byte at DS:[SI] into AL and updates SI
; if DF = 0 -> SI += 1
; if DF = 1 -> SI -= 1 

mov si, message
lodsb 

mov ah, 0eh
mov al, al
int 0x10 ; print H to screen

ret

message: db 'Hello, World!', 0 ; data byte

times 510-($ - $$) db 0
dw 0xAA55

