global _my_asm

; my_asm(int x, int y);
_my_asm:
	; a stack frame
	; word = 4 bytes
	; any action in the stack takes a word
	; () call instruction 4 bytes : pushes return address to the stack

	push ebp ; push base pointer to stack and takes another 4 bytes (total now is 8 bytes)
	mov ebp, esp ; copy stack pointer to base pointer
	; base pointer can be use with stack pointer as way to access the stack without modifying its content
	; it is basically a register to store the stack pointer value at a given time
	mov eax, [ebp+8] ; first argument of function
	mov ebx, [ebp+12] ; second argument of function
	pop ebp ; pop base pointer from the stack
	; C programming language expects functions to return values in eax register (extended AX register)
	ret
