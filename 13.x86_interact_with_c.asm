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
	
	; esp = 1000
	; ebp = 1000
	mov ebp, esp
	; esp = 996

	sub esp, 8 ; 4 (for 1 argument), 8 (for 2 arguments), 12, 16 (keep memory aligned)
	; first argument
	mov eax, dword[ebp+8];
	mov dword[ebp-4], eax ; move double word 30 to the address at ebp-4
	; second argument
	mov eax, dword[ebp+12]
	mov dword[ebp-8], eax

	mov eax, dword[ebp-4] ; store variable a to EAX
	add eax, dword[ebp-8] ; add EAX with variable b and store resutl in EAX

	add esp, 8 ; stack pointer should be returned correctly because it holds the return address (if we sub from it, we should add to it like here)

	pop ebp ; pop base pointer from the stack
	; C programming language expects functions to return values in eax register (extended AX register)
	ret
