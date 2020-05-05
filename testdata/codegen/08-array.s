.data
string1: .asciz "below output should be 18 16 14 12 10 8 6 4 2 0\n"
string2: .asciz "%d "
string3: .asciz None
string4: .asciz "%d "
string5: .asciz None
string6: .asciz "\n"
.global main
main:
	movq %rax, -8(%rsp)
	movq $1, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $1, %rbx
begin_for:
	cmp $[154 91 82 35], %rbx
	jge end_for
	movq $0, %rax
	movq $10, %rax
	movq -8(%rsp), %rax
	movq -8(%rsp), %rax
	movq %rax, -16(%rsp)
	movq $2, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	addq $1, %rbx
	jmp begin_for
end_for:
	ret
	movq $0, %rax
	movq $10, %rax
	movq -8(%rsp), %rax
	movq -8(%rsp), %rax
	movq %rax, -16(%rsp)
	movq $2, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq $1, %rbx
begin_for:
	cmp $[154 91 82 35], %rbx
	jge end_for
	movq $0, %rax
	movq $10, %rax
	movq $2, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $3, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	addq $1, %rbx
	jmp begin_for
end_for:
	ret
	movq $0, %rax
	movq $10, %rax
	movq $4, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $5, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $6, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
ret
