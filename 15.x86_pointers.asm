global _my_asm

section .text
_my_asm:
	push ebp
	mov ebp, esp

	mov eax, [esp+8] ; pointer address
	mov eax, [eax] ; get value in memory at that address

	pop ebp
	ret
