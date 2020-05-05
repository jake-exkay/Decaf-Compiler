.data
string1: .asciz "args: %d+%d+%d+%d+%d+%d=%d\n"
string2: .asciz None
string3: .asciz None
string4: .asciz None
string5: .asciz None
string6: .asciz None
string7: .asciz None
string8: .asciz None
string9: .asciz "short circuit failed in and\n"
string10: .asciz "short circuit failed in or\n"
string11: .asciz "hello world from main\n"
string12: .asciz "some values (13,14): %d %d\n"
string13: .asciz None
string14: .asciz None
string15: .asciz "returned a variable, value is %d, should be 81\n"
string16: .asciz None
string17: .asciz "returned a constant, value is %d, should be 1\n"
string18: .asciz None
string19: .asciz "successfully did a short-circuited and.\n"
string20: .asciz "if failed on a && proc\n"
string21: .asciz "if failed on !a && proc\n"
string22: .asciz "successfully did a short-circuited and.\n"
string23: .asciz "successfully did a short-circuited or.\n"
string24: .asciz "if failed on a || proc\n"
string25: .asciz "successfully did a short-circuited or.\n"
string26: .asciz "if failed on !a || proc\n"
string27: .asciz "sum from 0 to 99 is %d, should be 4950\n"
string28: .asciz None
.global main
	movq %rax, -8(%rsp)
test_long_args:
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
	movq $5, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $6, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $7, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $8, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq %rax, -16(%rsp)
	movq -16(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq -16(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq -16(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq -16(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq -16(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq $a+b+c+d+e+f, %rax
	ret
	movq %rax, -16(%rsp)
	movq -16(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq -16(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq -16(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq -16(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq -16(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
test_short_circuit:
	cmp %r11 %r10
	jl if-label-1l
	je if-label-1e
	jg if-label-1g
	ret
if-label-1:
	movq %rax, -16(%rsp)
	movq $1, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	cmp %r11 %r10
	jl if-label-2l
	je if-label-2e
	jg if-label-2g
	ret
if-label-2:
	movq %rax, -16(%rsp)
	movq $1, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $9, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $10, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $true, %rax
	ret
	movq $1, %rax
main:
	movq %rax, -16(%rsp)
	movq %rax, -24(%rsp)
	movq %rax, -32(%rsp)
	movq %rax, -40(%rsp)
	movq %rax, -48(%rsp)
	movq $11, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $13, %rax
	movq $14, %rax
	movq $12, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $13, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -48(%rsp), %rax
	movq $14, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -48(%rsp), %rax
	movq $15, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $16, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -48(%rsp), %rax
	movq $17, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $18, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -48(%rsp), %rax
	movq $1, %rax
	cmp %r11 %r10
	jl if-label-3l
	je if-label-3e
	jg if-label-3g
	ret
if-label-3:
	movq -48(%rsp), %rax
	movq %rax, -56(%rsp)
	movq -56(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $19, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $20, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-4l
	je if-label-4e
	jg if-label-4g
	ret
if-label-4:
	movq -48(%rsp), %rax
	movq %rax, -56(%rsp)
	movq $1, %rax
	movq -56(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq %rax, -56(%rsp)
	movq -56(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $21, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $22, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-5l
	je if-label-5e
	jg if-label-5g
	ret
if-label-5:
	movq -48(%rsp), %rax
	movq %rax, -56(%rsp)
	movq -56(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $23, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $24, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-6l
	je if-label-6e
	jg if-label-6g
	ret
if-label-6:
	movq -48(%rsp), %rax
	movq %rax, -56(%rsp)
	movq $1, %rax
	movq -56(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq %rax, -56(%rsp)
	movq -56(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $25, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $26, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $0, %rax
	movq $100, %rax
	movq $1, %rbx
	jmp begin-for-1
begin-for-1:
	cmp $[154 91 82 35], %rbx
	jge end-for-1
	movq $0, %rax
	movq -48(%rsp), %rax
	movq -48(%rsp), %rax
	movq %rax, -56(%rsp)
	movq -56(%rsp), %rax
	movq -56(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	addq $1, %rbx
	jmp begin-for-1
end-for-1:
	ret
	movq $0, %rax
	movq -48(%rsp), %rax
	movq -48(%rsp), %rax
	movq %rax, -56(%rsp)
	movq -56(%rsp), %rax
	movq -56(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq $27, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $28, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -48(%rsp), %rax
ret
