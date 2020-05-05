.data
string1: .asciz "expecting an error next:\n\n"
.global main
main:
	movq $1, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $100, %rax
	movq $0, %rax
ret
