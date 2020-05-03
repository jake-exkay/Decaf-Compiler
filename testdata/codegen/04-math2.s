.data
string1: .asciz "10 + 20 is %d (30)\n"
string2: .asciz None
string3: .asciz "10 - 20 is %d (-10)\n"
string4: .asciz None
string5: .asciz "10 * 20 is %d (200)\n"
string6: .asciz None
string7: .asciz "a < b is correct\n"
string8: .asciz "a <= b is correct\n"
string9: .asciz "a > b is incorrect\n"
string10: .asciz "a >= b is incorrect\n"
string11: .asciz "c < b is incorrect\n"
string12: .asciz "c <= b is correct\n"
string13: .asciz "c > b is incorrect\n"
string14: .asciz "c >= b is correct\n"
string15: .asciz "a == a is correct\n"
string16: .asciz "a != a is incorrect\n"
string17: .asciz "a == b is incorrect\n"
string18: .asciz "a != b is correct\n"
string19: .asciz "true and true is correct\n"
string20: .asciz "false and true is incorrect\n"
string21: .asciz "true and false is incorrect\n"
string22: .asciz "false and false is incorrect\n"
string23: .asciz "true or true is correct\n"
string24: .asciz "false or true is correct\n"
string25: .asciz "true or false is correct\n"
string26: .asciz "false or false is incorrect\n"
.global main
main:
	movq %rax, -8(%rsp)
	movq %rax, -16(%rsp)
	movq %rax, -24(%rsp)
	movq $10, %rax
	movq %rax, -32(%rsp)
	movq $20, %rax
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
	movq $10, %rax
	movq $3, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $4, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -24(%rsp), %rax
	movq $10, %rax
	movq %rax, -32(%rsp)
	movq $20, %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq $5, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $6, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -24(%rsp), %rax
	movq $1, %rax
	movq $2, %rax
	movq $2, %rax
	cmp %r11 %r10
	jl if-label-1l
	je if-label-1e
	jg if-label-1g
	ret
if-label-1:
	movq -24(%rsp), %rax
	movq %rax, -32(%rsp)
	movq -32(%rsp), %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $7, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-2l
	je if-label-2e
	jg if-label-2g
	ret
if-label-2:
	movq -24(%rsp), %rax
	movq %rax, -32(%rsp)
	movq -32(%rsp), %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $8, %rdi
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
	movq %rax, -32(%rsp)
	movq -32(%rsp), %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $9, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-4l
	je if-label-4e
	jg if-label-4g
	ret
if-label-4:
	movq -24(%rsp), %rax
	movq %rax, -32(%rsp)
	movq -32(%rsp), %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
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
	movq -24(%rsp), %rax
	movq %rax, -32(%rsp)
	movq -32(%rsp), %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $11, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-6l
	je if-label-6e
	jg if-label-6g
	ret
if-label-6:
	movq -24(%rsp), %rax
	movq %rax, -32(%rsp)
	movq -32(%rsp), %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $12, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-7l
	je if-label-7e
	jg if-label-7g
	ret
if-label-7:
	movq -24(%rsp), %rax
	movq %rax, -32(%rsp)
	movq -32(%rsp), %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $13, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-8l
	je if-label-8e
	jg if-label-8g
	ret
if-label-8:
	movq -24(%rsp), %rax
	movq %rax, -32(%rsp)
	movq -32(%rsp), %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $14, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-9l
	je if-label-9e
	jg if-label-9g
	ret
if-label-9:
	movq -24(%rsp), %rax
	movq %rax, -32(%rsp)
	movq -32(%rsp), %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $15, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-10l
	je if-label-10e
	jg if-label-10g
	ret
if-label-10:
	movq -24(%rsp), %rax
	movq %rax, -32(%rsp)
	movq -32(%rsp), %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $16, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-11l
	je if-label-11e
	jg if-label-11g
	ret
if-label-11:
	movq -24(%rsp), %rax
	movq %rax, -32(%rsp)
	movq -32(%rsp), %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $17, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-12l
	je if-label-12e
	jg if-label-12g
	ret
if-label-12:
	movq -24(%rsp), %rax
	movq %rax, -32(%rsp)
	movq -32(%rsp), %rax
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $18, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-13l
	je if-label-13e
	jg if-label-13g
	ret
if-label-13:
	movq %rax, -32(%rsp)
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $19, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-14l
	je if-label-14e
	jg if-label-14g
	ret
if-label-14:
	movq %rax, -32(%rsp)
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $20, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-15l
	je if-label-15e
	jg if-label-15g
	ret
if-label-15:
	movq %rax, -32(%rsp)
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $21, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-16l
	je if-label-16e
	jg if-label-16g
	ret
if-label-16:
	movq %rax, -32(%rsp)
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $22, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-17l
	je if-label-17e
	jg if-label-17g
	ret
if-label-17:
	movq %rax, -32(%rsp)
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $23, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-18l
	je if-label-18e
	jg if-label-18g
	ret
if-label-18:
	movq %rax, -32(%rsp)
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $24, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-19l
	je if-label-19e
	jg if-label-19g
	ret
if-label-19:
	movq %rax, -32(%rsp)
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $25, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-20l
	je if-label-20e
	jg if-label-20g
	ret
if-label-20:
	movq %rax, -32(%rsp)
	movq -32(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq $26, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
ret
