org 7c00h

BITS 16 ; 16-bit 8086 processor

; math
mov al, 0X20
add al, 0X10 ; add 0x20 to 0x10, so AL will be 0x30
sub al, 0X10 ; AL will be 0x20
mov bl, 0x02
mul bl ; for unsigned multiplication, AL will be 0x40 because AL is multiplied by BL 

; multiplication of bigger numbers
mov ax, 5550
mov bx, 20
mul bx ; DX will contain a part of the result 1(DL) B1(AH) 98(AL)

mov al, -2
mov bl, -4
imul bl ; signed multiplication: result is 08 in AL  

mov ax, 20
mov bl, 10
div bl ; signed division: 00(AH remainder) 02(AL result)

; division of bigger numbers
mov dx, 0x0a
mov ax, 0xffff
mov bx, 400
div bx ; Ox0affff / 400d = AX(070A result) DX(005F modulus)

; idiv for unsigned division

mov ax, 0x1000
mov bx, 0x0000
div bx ; interrupt will be handled: division by zero (setup with the processor)
; we can override our interrupt handler for division by zero to handle this error manually

ret

times 510-($ - $$) db 0
dw 0xAA55
