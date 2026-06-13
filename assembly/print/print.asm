.global _start
.intel_syntax noprefix

	
_start:
	mov rax, 1  
	mov rdi, 1
	lea rsi, [hello]
	mov rdx, 13
	syscall

	jmp exit


exit:
	mov rax, 0x3c
	mov rdi, 0
	syscall

hello:
	.asciz "Hello World\n"




