.data
string1: .asciz "correct\n"
string2: .asciz "INCORRECT\n"
string3: .asciz "sum of 1 - 8 is %d (36)\n"
string4: .asciz None
.global main
add:
	movq $(a+b), %rax
	ret
sub:
	movq $(a-, %rax
	ret
sum:
	movq $(a+b+c+d+e+f+g+h), %rax
	ret
main:
	movq %rax, -8(%rsp)
	movq %rax, -16(%rsp)
	movq %rax, -24(%rsp)
	movq %rax, -32(%rsp)
	movq $1, %rax
	movq $2, %rax
	cmp %r11 %r10
	jl if-label-1l
	je if-label-1e
	jg if-label-1g
	ret
if-label-1:
	movq -32(%rsp), %rax
	movq %rax, -40(%rsp)
	movq -40(%rsp), %rax
	movq -40(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $1, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $2, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $3, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $4, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
ret
