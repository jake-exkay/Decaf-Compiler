.data
string1: .asciz "%d "
string2: .asciz None
string3: .asciz "%d "
string4: .asciz None
string5: .asciz "\n"
.global main
main:
	movq %rax, -8(%rsp)
	movq %rax, -16(%rsp)
	movq %rax, -24(%rsp)
	movq %rax, -32(%rsp)
	movq %rax, -40(%rsp)
	movq $1, %rbx
	jmp begin-for-1
begin-for-1:
	cmp $[154 91 82 35], %rbx
	jge end-for-1
	movq $0, %rax
	movq $1000, %rax
	movq -40(%rsp), %rax
	movq -40(%rsp), %rax
	movq -40(%rsp), %rax
	movq $0, %rax
	addq $1, %rbx
	jmp begin-for-1
end-for-1:
	ret
	movq $0, %rax
	movq $1000, %rax
	movq -40(%rsp), %rax
	movq -40(%rsp), %rax
	movq -40(%rsp), %rax
	movq $0, %rax
	movq $1, %rbx
	jmp begin-for-2
begin-for-2:
	cmp $[154 91 82 35], %rbx
	jge end-for-2
	movq $0, %rax
	movq $998, %rax
	movq %rax, -48(%rsp)
	movq $998, %rax
	movq -48(%rsp), %rax
	movq %rax, -56(%rsp)
	movq $2, %rax
	movq -56(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq -48(%rsp), %rax
	movq %rax, -56(%rsp)
	movq -56(%rsp), %rax
	movq -56(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -48(%rsp), %rax
	movq %rax, -56(%rsp)
	movq -56(%rsp), %rax
	movq -56(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -48(%rsp), %rax
	movq -48(%rsp), %rax
	addq $1, %rbx
	jmp begin-for-2
end-for-2:
	ret
	movq $0, %rax
	movq $998, %rax
	movq $998, %rax
	movq -48(%rsp), %rax
	movq %rax, -56(%rsp)
	movq $2, %rax
	movq -56(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq -48(%rsp), %rax
	movq %rax, -56(%rsp)
	movq -56(%rsp), %rax
	movq -56(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -48(%rsp), %rax
	movq %rax, -56(%rsp)
	movq -56(%rsp), %rax
	movq -56(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -48(%rsp), %rax
	movq -48(%rsp), %rax
	movq $1, %rbx
	jmp begin-for-3
begin-for-3:
	cmp $[154 91 82 35], %rbx
	jge end-for-3
	movq $0, %rax
	movq $1000, %rax
	movq $1, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $2, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	addq $1, %rbx
	jmp begin-for-3
end-for-3:
	ret
	movq $0, %rax
	movq $1000, %rax
	movq $3, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $4, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $5, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
ret
