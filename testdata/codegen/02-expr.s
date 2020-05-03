.data
string1: .asciz "%d %d\n"
string2: .asciz None
string3: .asciz None
.global main
main:
	movq %rax, -8(%rsp)
	movq %rax, -16(%rsp)
	movq %rax, -24(%rsp)
	movq %rax, -32(%rsp)
	movq %rax, -40(%rsp)
	movq $10, %rax
	movq $20, %rax
	movq $30, %rax
	movq -40(%rsp), %rax
	movq %rax, -48(%rsp)
	movq -48(%rsp), %rax
	movq -48(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq $1, %rdi
	subq $8, %rsp
	call string1
	addq $8, %rsp
	movq $2, %rdi
	subq $8, %rsp
	call string2
	addq $8, %rsp
	movq -40(%rsp), %rax
	movq $3, %rdi
	subq $8, %rsp
	call string3
	addq $8, %rsp
	movq -40(%rsp), %rax
test:
ret
