.data
string1: .asciz "10! = %d (3628800)\n"
string2: .asciz None
.global main
factorial:
	cmp %r11 %r10
	jl if-label-1l
	je if-label-1e
	jg if-label-1g
	ret
if-label-1:
	movq %rax, -8(%rsp)
	movq $1, %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $1, %rax
	ret
	movq $1, %rax
	movq $n*factorial(n-1), %rax
	ret
	movq %rax, -8(%rsp)
	movq -8(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
main:
	movq %rax, -8(%rsp)
	movq $1, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $2, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -8(%rsp), %rax
ret
