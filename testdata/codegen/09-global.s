.data
string1: .asciz "%d + %d = %d (15)\n"
string2: .asciz None
string3: .asciz None
string4: .asciz None
.global main
	movq %rax, -8(%rsp)
	movq %rax, -16(%rsp)
	movq %rax, -24(%rsp)
main:
	movq $10, %rax
	movq $5, %rax
	movq -24(%rsp), %rax
	movq %rax, -32(%rsp)
	movq -32(%rsp), %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq $1, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $2, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -24(%rsp), %rax
	movq $3, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -24(%rsp), %rax
	movq $4, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -24(%rsp), %rax
ret
