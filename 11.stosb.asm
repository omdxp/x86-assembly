org 7c00h

BITS 16 ; 16-bit 8086 processor

; STOSB stores a byte in ES:[DI] and updates DI
; if DF = 0 -> DI += 1
; if DF = 1 -> DI -= 1

mov al, 'A'
mov di, message
stosb

; print the modified byte
mov si, message
lodsb
mov ah, 0eh
int 0x10 ; prints A (the setted byte by stosb in message)

ret

message: db 'Hello, World!', 0 ; data byte

times 510-($ - $$) db 0
dw 0xAA55

