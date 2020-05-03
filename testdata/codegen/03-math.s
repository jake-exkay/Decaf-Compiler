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
	movq %rax, -8(%rsp)
	movq $3, %rax
	movq $-2147483647, %rax
	movq $1, %rdi
	subq $8, %rsp
	call string1
	addq $8, %rsp
	movq $2, %rdi
	subq $8, %rsp
	call string2
	addq $8, %rsp
	movq -8(%rsp), %rax
	movq $3, %rdi
	subq $8, %rsp
	call string3
	addq $8, %rsp
	movq $4, %rdi
	subq $8, %rsp
	call string4
	addq $8, %rsp
	movq -8(%rsp), %rax
	movq $100, %rax
	movq $5, %rdi
	subq $8, %rsp
	call string5
	addq $8, %rsp
	movq $6, %rdi
	subq $8, %rsp
	call string6
	addq $8, %rsp
	movq -8(%rsp), %rax
	movq $100, %rax
	movq $7, %rdi
	subq $8, %rsp
	call string7
	addq $8, %rsp
	movq $8, %rdi
	subq $8, %rsp
	call string8
	addq $8, %rsp
	movq -8(%rsp), %rax
	movq $100, %rax
	movq $9, %rdi
	subq $8, %rsp
	call string9
	addq $8, %rsp
	movq $10, %rdi
	subq $8, %rsp
	call string10
	addq $8, %rsp
	movq -8(%rsp), %rax
	movq $10, %rax
	movq %rax, -16(%rsp)
	movq $5, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq $11, %rdi
	subq $8, %rsp
	call string11
	addq $8, %rsp
	movq $12, %rdi
	subq $8, %rsp
	call string12
	addq $8, %rsp
	movq -8(%rsp), %rax
	movq $3, %rax
	movq -8(%rsp), %rax
	movq %rax, -16(%rsp)
	movq -16(%rsp), %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq $13, %rdi
	subq $8, %rsp
	call string13
	addq $8, %rsp
	movq $14, %rdi
	subq $8, %rsp
	call string14
	addq $8, %rsp
	movq -8(%rsp), %rax
	movq $3, %rax
	movq %rax, -16(%rsp)
	movq $4, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq $15, %rdi
	subq $8, %rsp
	call string15
	addq $8, %rsp
	movq $16, %rdi
	subq $8, %rsp
	call string16
	addq $8, %rsp
	movq -8(%rsp), %rax
	movq $1, %rax
	ret
	movq $1, %rax
ret
