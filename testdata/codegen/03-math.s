.data
string1: .asciz "min int operation: result should be -2147483648, is: %d\n"
string2: .asciz None
string3: .asciz "paren assoc: result should be 100, is: %d\n"
string4: .asciz None
string5: .asciz "- assoc: result should be 10, is: %d\n"
string6: .asciz None
string7: .asciz "-,+ assoc: result should be 90, is: %d\n"
string8: .asciz None
string9: .asciz "- * assoc: result should be 80, is: %d\n"
string10: .asciz None
string11: .asciz "result should be 46, is: %d\n"
string12: .asciz None
string13: .asciz "*, -, uses var: result should be 11, is: %d\n"
string14: .asciz None
string15: .asciz "*,- assoc: result should be 2, is: %d\n"
string16: .asciz None
.global main
main:
	movq %rax, -0(%rsp)
	movq $3, %rax
	movq $-2147483647, %rax
	movq %rax, -16(%rsp)
	movq $1, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $1, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $2, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -0(%rsp), %rax
	movq %rax, -16(%rsp)
	movq $2, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq $3, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $4, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -0(%rsp), %rax
	movq $100, %rax
	movq %rax, -16(%rsp)
	movq $50, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq $40, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $5, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $6, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -0(%rsp), %rax
	movq $100, %rax
	movq %rax, -16(%rsp)
	movq $50, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq $40, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq $7, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $8, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -0(%rsp), %rax
	movq $100, %rax
	movq %rax, -16(%rsp)
	movq $5, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq $4, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq $9, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $10, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -0(%rsp), %rax
	movq $10, %rax
	movq %rax, -16(%rsp)
	movq $5, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq $4, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $11, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $12, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -0(%rsp), %rax
	movq $3, %rax
	movq -0(%rsp), %rax
	movq %rax, -16(%rsp)
	movq -0(%rsp), %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq -16(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $13, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $14, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -0(%rsp), %rax
	movq $3, %rax
	movq %rax, -16(%rsp)
	movq $4, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq $2, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq $5, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq $15, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $16, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -0(%rsp), %rax
	movq $1, %rax
	ret
	movq $1, %rax
ret
