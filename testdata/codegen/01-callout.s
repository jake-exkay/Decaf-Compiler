.data
string1: .asciz "Hello, World.\n"
.global main
main:
	movq %rax, -0(%rsp)
	movq $33, %rax
	movq $1, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $5, %rax
	movq %rax, -16(%rsp)
	movq $5, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
ret
