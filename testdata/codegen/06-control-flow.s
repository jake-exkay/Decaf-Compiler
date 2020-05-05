.data
string1: .asciz "ERROR: for loop is bad (1)\n"
string2: .asciz "ERROR: for loop is bad (2)\n"
string3: .asciz "ERROR: true branch is bad (2)\n"
string4: .asciz "ERROR: else branch is bad (2)\n"
string5: .asciz "control flow OK if no previous output\n"
.global main
main:
	movq %rax, -8(%rsp)
	movq %rax, -16(%rsp)
	movq %rax, -24(%rsp)
	movq $0, %rax
	movq $1, %rbx
begin_for:
	cmp $[154 91 82 35], %rbx
	jge end_for
	movq $0, %rax
	movq $10, %rax
	movq -24(%rsp), %rax
	addq $1, %rbx
	jmp begin_for
end_for:
	ret
	movq $0, %rax
	movq $10, %rax
	movq -24(%rsp), %rax
	cmp %r11 %r10
	jl if-label-1l
	je if-label-1e
	jg if-label-1g
	ret
if-label-1:
	movq -24(%rsp), %rax
	movq %rax, -32(%rsp)
	movq $45, %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $1, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $11, %rax
	movq $1, %rbx
begin_for:
	cmp $[154 91 82 35], %rbx
	jge end_for
	movq $10, %rax
	movq $0, %rax
	movq $1, %rax
	addq $1, %rbx
	jmp begin_for
end_for:
	ret
	movq $10, %rax
	movq $0, %rax
	movq $1, %rax
	cmp %r11 %r10
	jl if-label-2l
	je if-label-2e
	jg if-label-2g
	ret
if-label-2:
	movq -24(%rsp), %rax
	movq %rax, -32(%rsp)
	movq $11, %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $2, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-3l
	je if-label-3e
	jg if-label-3g
	ret
if-label-3:
	movq $1, %rax
	movq %rax, -32(%rsp)
	movq $2, %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $3, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-4l
	je if-label-4e
	jg if-label-4g
	ret
if-label-4:
	movq $1, %rax
	movq %rax, -32(%rsp)
	movq $2, %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $4, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $5, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
ret
