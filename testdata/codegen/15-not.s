.data
string1: .asciz "INCORRECT - shorcircuiting failed\n"
string2: .asciz "should see 6 corrects and no incorrects\n"
string3: .asciz "INCORRECT\n"
string4: .asciz "correct\n"
string5: .asciz "correct\n"
string6: .asciz "INCORRECT\n"
string7: .asciz "INCORRECT\n"
string8: .asciz "correct\n"
string9: .asciz "INCORRECT\n"
string10: .asciz "correct\n"
string11: .asciz "correct\n"
string12: .asciz "INCORRECT\n"
string13: .asciz "correct\n"
string14: .asciz "INCORRECT\n"
.global main
fail:
	movq $1, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $b, %rax
	ret
main:
	movq %rax, -8(%rsp)
	movq %rax, -16(%rsp)
	movq %rax, -24(%rsp)
	movq $2, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq %rax, -32(%rsp)
	movq $1, %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	cmp %r11 %r10
	jl if-label-1l
	je if-label-1e
	jg if-label-1g
	ret
if-label-1:
	movq $3, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $4, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-2l
	je if-label-2e
	jg if-label-2g
	ret
if-label-2:
	movq $5, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $6, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-3l
	je if-label-3e
	jg if-label-3g
	ret
if-label-3:
	movq -24(%rsp), %rax
	movq $7, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $8, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-4l
	je if-label-4e
	jg if-label-4g
	ret
if-label-4:
	movq $9, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $10, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-5l
	je if-label-5e
	jg if-label-5g
	ret
if-label-5:
	movq $11, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $12, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-6l
	je if-label-6e
	jg if-label-6g
	ret
if-label-6:
	movq $13, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $14, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
ret
