org 7c00h

BITS 16 ; 16-bit 8086 processor


; registers (small memory regions in the processor)

; general purpose registers
; AX
; BX
; CX
; DX

mov ah, 30h ; set high byte of AX register to 0x30
mov al, 10h ; set low byte of AX register to 0x10
mov ax, 0xffff ; set AH to 0xff and AL to 0xff

lodsb ; load a byte from where SI is pointing into the low byte of AX register

mov bx, 0xffff
mov bh, 0x30

; special registers (they don't have high and low bytes)
; CS
; IP program counter
; SS
; SP stack pointer
; BP
; SI
; DI
; DS
; ES

; XS these are segmentation registers

ret

times 510-($ - $$) db 0
dw 0xAA55
