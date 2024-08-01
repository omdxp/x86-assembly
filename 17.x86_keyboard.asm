global _my_asm
extern _getchar

_my_asm:
	push ebp
	mov ebp, esp

	call _getchar ; call getchar() C function
	; eax will contain the returned character
	add eax, 1 ; add 1 to the read character

	pop ebp
	ret
