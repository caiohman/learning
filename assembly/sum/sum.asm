.data
s:
	.string "S: x"

a:
	.byte 1

.text
.global _start
.intel_syntax noprefix

_start:
	mov rbx, 2
	mov rcx, 5
	add rbx, rcx
	add rbx, '0'
	mov [a], rbx
	
	mov rax, 1  
	mov rdi, 1
	lea rsi, a
	mov rdx, 13
	syscall

	jmp exit


exit:
	mov rax, 0x3c
	mov rdi, 0
	syscall







