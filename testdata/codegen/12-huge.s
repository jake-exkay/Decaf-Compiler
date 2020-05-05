.data
string1: .asciz "top of gurp\n"
string2: .asciz "done j\n"
string3: .asciz "done i\n"
string4: .asciz "done j\n"
string5: .asciz "done k\n"
string6: .asciz "done k\n"
string7: .asciz "done m\n%d %d\n"
string8: .asciz None
string9: .asciz None
string10: .asciz "after n\n"
string11: .asciz "after first if\n"
string12: .asciz "after second if\n"
string13: .asciz "after third if\n"
string14: .asciz "%d"
string15: .asciz None
string16: .asciz " "
string17: .asciz "%d"
string18: .asciz None
string19: .asciz " "
string20: .asciz "%d"
string21: .asciz None
string22: .asciz " "
string23: .asciz "%d"
string24: .asciz None
string25: .asciz "%d"
string26: .asciz None
string27: .asciz "%d"
string28: .asciz None
string29: .asciz "after fourth if\n"
string30: .asciz "Top of loop\n"
string31: .asciz "done z gurp\n"
string32: .asciz "%d"
string33: .asciz None
string34: .asciz "\n"
string35: .asciz "done 0z gurp\n"
string36: .asciz "done y gurp\n"
string37: .asciz "done a gurp\n"
string38: .asciz "done b gurp\n"
string39: .asciz "After gurps\n"
string40: .asciz "%d"
string41: .asciz None
string42: .asciz " "
string43: .asciz "%d"
string44: .asciz None
string45: .asciz " "
string46: .asciz "%d"
string47: .asciz None
string48: .asciz " "
string49: .asciz "%d"
string50: .asciz None
string51: .asciz "\n"
string52: .asciz "Top of loop\n"
string53: .asciz "done z gurp\n"
string54: .asciz "%d"
string55: .asciz None
string56: .asciz "\n"
string57: .asciz "done 0z gurp\n"
string58: .asciz "done y gurp\n"
string59: .asciz "done a gurp\n"
string60: .asciz "done b gurp\n"
string61: .asciz "After gurps\n"
string62: .asciz "%d"
string63: .asciz None
string64: .asciz " "
string65: .asciz "%d"
string66: .asciz None
string67: .asciz " "
string68: .asciz "%d"
string69: .asciz None
string70: .asciz " "
string71: .asciz "%d"
string72: .asciz None
string73: .asciz "\n"
.global main
gurp:
	movq %rax, -8(%rsp)
	movq %rax, -16(%rsp)
	movq %rax, -24(%rsp)
	movq %rax, -32(%rsp)
	movq %rax, -40(%rsp)
	movq %rax, -48(%rsp)
	movq %rax, -56(%rsp)
	movq %rax, -64(%rsp)
	movq %rax, -72(%rsp)
	movq %rax, -80(%rsp)
	movq %rax, -88(%rsp)
	movq %rax, -96(%rsp)
	movq %rax, -104(%rsp)
	movq %rax, -112(%rsp)
	movq %rax, -120(%rsp)
	movq %rax, -128(%rsp)
	movq %rax, -136(%rsp)
	movq %rax, -144(%rsp)
	movq %rax, -152(%rsp)
	movq %rax, -160(%rsp)
	movq %rax, -168(%rsp)
	movq %rax, -176(%rsp)
	movq $1, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	imul %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq $2, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq $1, %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $3, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $3, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq $4, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq $2, %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $5, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $6, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
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
	movq -176(%rsp), %rax
	movq $9, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -176(%rsp), %rax
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq $10, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-1l
	je if-label-1e
	jg if-label-1g
	ret
if-label-1:
	movq %rax, -184(%rsp)
	movq $50, %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	cmp %r11 %r10
	jl if-label-2l
	je if-label-2e
	jg if-label-2g
	ret
if-label-2:
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq $1, %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq $3, %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq $3, %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	cmp %r11 %r10
	jl if-label-3l
	je if-label-3e
	jg if-label-3g
	ret
if-label-3:
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	cmp %r11 %r10
	jl if-label-4l
	je if-label-4e
	jg if-label-4g
	ret
if-label-4:
	movq $3, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq $3, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq $3, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $11, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	cmp %r11 %r10
	jl if-label-5l
	je if-label-5e
	jg if-label-5g
	ret
if-label-5:
	movq $3, %rax
	movq $-1, %rax
	movq $12, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $99, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	cmp %r11 %r10
	jl if-label-6l
	je if-label-6e
	jg if-label-6g
	ret
if-label-6:
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq $-1, %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	movq %r11, %rax
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq $42, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
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
	movq $15, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
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
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $19, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $20, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $21, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $22, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	cmp %r11 %r10
	jl if-label-7l
	je if-label-7e
	jg if-label-7g
	ret
if-label-7:
	movq $23, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $24, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	cmp %r11 %r10
	jl if-label-8l
	je if-label-8e
	jg if-label-8g
	ret
if-label-8:
	movq $25, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $26, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $27, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $28, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -176(%rsp), %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq $29, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $a-b+d+e+f+h+i+j+k+l+m-n+o-p+q-r+s-t+u-v+w-x+y-z+a1+a2+a3-a4, %rax
	ret
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	movq %rax, -184(%rsp)
	movq -184(%rsp), %rax
	movq -184(%rsp), %r10
	movq %rax, %r11
	subq %r10, %r11
	movq %r11, %rax
main:
	movq %rax, -184(%rsp)
	movq %rax, -192(%rsp)
	movq $1, %rbx
	jmp begin-for-1
begin-for-1:
	cmp $[154 91 82 35], %rbx
	jge end-for-1
	movq $3, %rax
	movq $5, %rax
	movq $30, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $31, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $32, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $33, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -192(%rsp), %rax
	movq $34, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $35, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $36, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $37, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $38, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $39, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $40, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $41, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -192(%rsp), %rax
	movq $42, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $43, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $44, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -192(%rsp), %rax
	movq $45, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $46, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $47, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -192(%rsp), %rax
	movq $48, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $49, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $50, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -192(%rsp), %rax
	movq $51, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	addq $1, %rbx
	jmp begin-for-1
end-for-1:
	ret
	movq $3, %rax
	movq $5, %rax
	movq $52, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $53, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $54, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $55, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -192(%rsp), %rax
	movq $56, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $57, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $58, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $59, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $60, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $61, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $62, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $63, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -192(%rsp), %rax
	movq $64, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $65, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $66, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -192(%rsp), %rax
	movq $67, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $68, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $69, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -192(%rsp), %rax
	movq $70, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $71, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq $72, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
	movq -192(%rsp), %rax
	movq $73, %rdi
	subq $8, %rsp
	call printf
	addq $8, %rsp
ret
