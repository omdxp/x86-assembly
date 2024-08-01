global _my_asm

_my_asm:
	push ebp
	mov ebp, esp

	; C uses registers where it can for structures
	mov eax, 123 ; struct test.a
	mov edx, 'AB' ; struct test.b and test.c
	; when there is no room left in edx register, it goes to the next register
	; when the structure is too big it pass an address that we can write to
	;mov eax, [ebp+8]
	;mov byte [eax+1], 'A'

	pop ebp
	ret
