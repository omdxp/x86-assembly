org 7c00h

BITS 16 ; 16-bit 8086 processor

jmp main

message: db 'Hello, World!', 0

print:
	mov ah, 0eh ; 0eh BIOS command

loop:
	lodsb
	cmp al, 0
	je done
	int 10h
	jmp loop

done:
	ret

main:
	mov si, message
	call print
	ret

times 510-($ - $$) db 0
dw 0xAA55
