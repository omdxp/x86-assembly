global _my_asm

_my_asm:
	push ebp
	mov ebp, esp

	mov eax, [esp+8] ; A
	mov eax, [esp+9] ; B
	mov eax, [esp+10] ; C
	mov eax, [esp+10] ; random character because of an uninitialzed data

	pop ebp
	ret
