.data
string1: .asciz "H"
string2: .asciz "e"
string3: .asciz "l"
string4: .asciz "l"
string5: .asciz "*"
string6: .asciz "o"
string7: .asciz "*"
string8: .asciz "*"
string9: .asciz "*"
string10: .asciz "*"
string11: .asciz " "
string12: .asciz "*"
string13: .asciz "W"
string14: .asciz "o"
string15: .asciz "r"
string16: .asciz "*"
string17: .asciz "l"
string18: .asciz "d"
string19: .asciz "["
string20: .asciz "]"
string21: .asciz "\n"
string22: .asciz "should be here\n"
string23: .asciz "should not be here\n"
string24: .asciz "should be here\n"
string25: .asciz "should not be here\n"
.global main
not2:
	movq %rax, -8(%rsp)
	movq $1, %rax
	cmp %r11 %r10
	jl if-label-1l
	je if-label-1e
	jg if-label-1g
	ret
if-label-1:
	movq $0, %rax
	movq $b, %rax
	ret
	movq -8(%rsp), %rax
phw:
	cmp %r11 %r10
	jl if-label-2l
	je if-label-2e
	jg if-label-2g
	ret
if-label-2:
	movq $1, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-3l
	je if-label-3e
	jg if-label-3g
	ret
if-label-3:
	movq -8(%rsp), %rax
	movq $2, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-4l
	je if-label-4e
	jg if-label-4g
	ret
if-label-4:
	movq $3, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-5l
	je if-label-5e
	jg if-label-5g
	ret
if-label-5:
	movq $4, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-6l
	je if-label-6e
	jg if-label-6g
	ret
if-label-6:
	movq $5, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-7l
	je if-label-7e
	jg if-label-7g
	ret
if-label-7:
	movq $6, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-8l
	je if-label-8e
	jg if-label-8g
	ret
if-label-8:
	movq $7, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-9l
	je if-label-9e
	jg if-label-9g
	ret
if-label-9:
	movq $8, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-10l
	je if-label-10e
	jg if-label-10g
	ret
if-label-10:
	movq $9, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-11l
	je if-label-11e
	jg if-label-11g
	ret
if-label-11:
	movq $10, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $11, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-12l
	je if-label-12e
	jg if-label-12g
	ret
if-label-12:
	movq $12, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-13l
	je if-label-13e
	jg if-label-13g
	ret
if-label-13:
	cmp %r11 %r10
	jl if-label-14l
	je if-label-14e
	jg if-label-14g
	ret
if-label-14:
	movq $13, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-15l
	je if-label-15e
	jg if-label-15g
	ret
if-label-15:
	movq $14, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-16l
	je if-label-16e
	jg if-label-16g
	ret
if-label-16:
	movq $15, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-17l
	je if-label-17e
	jg if-label-17g
	ret
if-label-17:
	movq $16, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $17, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $18, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
main:
	movq $19, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $1, %rax
	movq $1, %rax
	movq $1, %rax
	movq $1, %rax
	movq $0, %rax
	movq $1, %rax
	movq $1, %rax
	movq $0, %rax
	movq $1, %rax
	movq $1, %rax
	movq $20, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $21, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-18l
	je if-label-18e
	jg if-label-18g
	ret
if-label-18:
	movq $2, %rax
	movq %rax, -16(%rsp)
	movq -16(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq %rax, -16(%rsp)
	movq $2, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq $22, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-19l
	je if-label-19e
	jg if-label-19g
	ret
if-label-19:
	movq $2, %rax
	movq %rax, -16(%rsp)
	movq $5, %rax
	movq -16(%rsp), %r10
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
	movq $25, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
ret
