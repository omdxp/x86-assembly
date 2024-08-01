global _main
extern _printf

section .text
_main:
	push message ; push message to stack
	call _printf
	add esp, 4 ; add 4 bytes to the stack pointer because we are in 32 bits
	ret

message:
	db 'Hello, World', 10, 0
