org 7c00h

BITS 16 ; 16-bit 8086 processor

mov ah, 0x0e
mov al, 'A'
int 0x10 ; interrupt processor to run some code in 0x10 address memory and jump back here

; memory has interrupt vector table at 0000:0000 (segment:offset)
; 256 addresses corresponding for each interrupt

; make our own interrupt
push ds ; push data segment to stack so we can restore it later to where it was
mov ax, 0
mov ds, ax
mov word [0x00], handle_int0 ; 4 bytes per interrupt
mov [0x02], cs ; we use code segment to get the address for handle_int0 
pop ds

; call int0
int 0x00

ret

handle_int0:
   mov ah, 0x0e
   mov al, 'A'
   int 0x10
   iret ; return from interrupt 

times 510-($ - $$) db 0
dw 0xAA55

