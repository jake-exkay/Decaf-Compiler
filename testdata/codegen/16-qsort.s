.data
string1: .asciz "creating random array of %d elements\n"
string2: .asciz None
string3: .asciz None
string4: .asciz "\nbefore sort:\n"
string5: .asciz "%d\n"
string6: .asciz None
string7: .asciz "%d\n"
string8: .asciz None
string9: .asciz "\nafter sort\n"
string10: .asciz "%d\n"
string11: .asciz None
string12: .asciz "%d\n"
string13: .asciz None
.global main
	movq %rax, -8(%rsp)
	movq %rax, -16(%rsp)
partition:
	movq %rax, -24(%rsp)
	movq %rax, -32(%rsp)
	movq %rax, -40(%rsp)
	movq %rax, -40(%rsp)
	movq %rax, -40(%rsp)
	movq %rax, -40(%rsp)
	movq %rax, -40(%rsp)
	movq %rax, -40(%rsp)
	movq %rax, -40(%rsp)
	movq -40(%rsp), %rax
	movq -40(%rsp), %rax
	movq %rax, -56(%rsp)
	movq $1, %rax
	movq -56(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq -40(%rsp), %rax
	movq %rax, -56(%rsp)
	movq $1, %rax
	movq -56(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq $1, %rbx
	jmp begin-for-1
begin-for-1:
	cmp $[154 91 82 35], %rbx
	jge end-for-1
	movq $0, %rax
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq -40(%rsp), %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq $1, %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $1, %rbx
	jmp begin-for-1
begin-for-1:
	cmp $[154 91 155 91 82 35], %rbx
	jge end-for-1
	movq $0, %rax
	movq -40(%rsp), %rax
	cmp %r11 %r10
	jl if-label-1l
	je if-label-1e
	jg if-label-1g
	ret
if-label-1:
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq -40(%rsp), %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	jmp main
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq $1, %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	addq $1, %rbx
	jmp begin-for-1
end-for-1:
	ret
	movq $0, %rax
	movq -40(%rsp), %rax
	cmp %r11 %r10
	jl if-label-2l
	je if-label-2e
	jg if-label-2g
	ret
if-label-2:
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq -40(%rsp), %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	jmp main
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq $1, %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $1, %rbx
	jmp begin-for-2
begin-for-2:
	cmp $[154 91 155 91 82 35], %rbx
	jge end-for-2
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq $1, %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -40(%rsp), %rax
	cmp %r11 %r10
	jl if-label-3l
	je if-label-3e
	jg if-label-3g
	ret
if-label-3:
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq -40(%rsp), %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq -40(%rsp), %rax
	jmp main
	addq $1, %rbx
	jmp begin-for-2
end-for-2:
	ret
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq $1, %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -40(%rsp), %rax
	cmp %r11 %r10
	jl if-label-4l
	je if-label-4e
	jg if-label-4g
	ret
if-label-4:
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq -40(%rsp), %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq -40(%rsp), %rax
	jmp main
	cmp %r11 %r10
	jl if-label-5l
	je if-label-5e
	jg if-label-5g
	ret
if-label-5:
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq -40(%rsp), %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq -40(%rsp), %rax
	movq -40(%rsp), %rax
	movq -40(%rsp), %rax
	movq -40(%rsp), %rax
	movq -40(%rsp), %rax
	movq $j, %rax
	ret
	movq -40(%rsp), %rax
	addq $1, %rbx
	jmp begin-for-3
end-for-3:
	ret
	movq $0, %rax
	movq -40(%rsp), %rax
	movq %rax, -56(%rsp)
	movq -40(%rsp), %rax
	movq -56(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq $1, %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $1, %rbx
	jmp begin-for-4
begin-for-4:
	cmp $[154 91 155 91 82 35], %rbx
	jge end-for-4
	movq $0, %rax
	movq -40(%rsp), %rax
	cmp %r11 %r10
	jl if-label-6l
	je if-label-6e
	jg if-label-6g
	ret
if-label-6:
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq -40(%rsp), %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	jmp main
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq $1, %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	addq $1, %rbx
	jmp begin-for-4
end-for-4:
	ret
	movq $0, %rax
	movq -40(%rsp), %rax
	cmp %r11 %r10
	jl if-label-7l
	je if-label-7e
	jg if-label-7g
	ret
if-label-7:
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq -40(%rsp), %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	jmp main
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq $1, %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $1, %rbx
	jmp begin-for-5
begin-for-5:
	cmp $[154 91 155 91 82 35], %rbx
	jge end-for-5
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq $1, %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -40(%rsp), %rax
	cmp %r11 %r10
	jl if-label-8l
	je if-label-8e
	jg if-label-8g
	ret
if-label-8:
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq -40(%rsp), %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq -40(%rsp), %rax
	jmp main
	addq $1, %rbx
	jmp begin-for-5
end-for-5:
	ret
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq $1, %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -40(%rsp), %rax
	cmp %r11 %r10
	jl if-label-9l
	je if-label-9e
	jg if-label-9g
	ret
if-label-9:
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq -40(%rsp), %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq -40(%rsp), %rax
	jmp main
	cmp %r11 %r10
	jl if-label-10l
	je if-label-10e
	jg if-label-10g
	ret
if-label-10:
	movq -40(%rsp), %rax
	movq %rax, -8(%rsp)
	movq -40(%rsp), %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq -40(%rsp), %rax
	movq -40(%rsp), %rax
	movq -40(%rsp), %rax
	movq -40(%rsp), %rax
	movq -40(%rsp), %rax
	movq $j, %rax
	ret
	movq -40(%rsp), %rax
	movq $-1, %rax
	ret
	movq $-1, %rax
quicksort:
	movq %rax, -48(%rsp)
	movq %rax, -48(%rsp)
	cmp %r11 %r10
	jl if-label-11l
	je if-label-11e
	jg if-label-11g
	ret
if-label-11:
	movq -48(%rsp), %rax
	movq %rax, -16(%rsp)
	movq -48(%rsp), %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq -48(%rsp), %rax
	movq -48(%rsp), %rax
	movq -48(%rsp), %rax
	movq %rax, -8(%rsp)
	movq $1, %rax
	movq -8(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -48(%rsp), %rax
main:
	movq %rax, -56(%rsp)
	movq %rax, -56(%rsp)
	movq %rax, -56(%rsp)
	movq $10, %rax
	movq $1, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $2, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -56(%rsp), %rax
	movq $3, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $17, %rax
	movq $1, %rbx
	jmp begin-for-6
begin-for-6:
	cmp $[154 91 82 35], %rbx
	jge end-for-6
	movq $0, %rax
	movq -56(%rsp), %rax
	movq -56(%rsp), %rax
	movq -56(%rsp), %rax
	addq $1, %rbx
	jmp begin-for-6
end-for-6:
	ret
	movq $0, %rax
	movq -56(%rsp), %rax
	movq -56(%rsp), %rax
	movq -56(%rsp), %rax
	movq $4, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $1, %rbx
	jmp begin-for-7
begin-for-7:
	cmp $[154 91 82 35], %rbx
	jge end-for-7
	movq $0, %rax
	movq -56(%rsp), %rax
	movq $5, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $6, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -56(%rsp), %rax
	addq $1, %rbx
	jmp begin-for-7
end-for-7:
	ret
	movq $0, %rax
	movq -56(%rsp), %rax
	movq $7, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $8, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -56(%rsp), %rax
	movq $0, %rax
	movq -56(%rsp), %rax
	movq %rax, -24(%rsp)
	movq $1, %rax
	movq -24(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $9, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $1, %rbx
	jmp begin-for-8
begin-for-8:
	cmp $[154 91 82 35], %rbx
	jge end-for-8
	movq $0, %rax
	movq -56(%rsp), %rax
	movq $10, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $11, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -56(%rsp), %rax
	addq $1, %rbx
	jmp begin-for-8
end-for-8:
	ret
	movq $0, %rax
	movq -56(%rsp), %rax
	movq $12, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $13, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -56(%rsp), %rax
ret
