.data
callout0: .asciz "H"
callout1: .asciz "e"
callout2: .asciz "l"
callout3: .asciz "l"
callout4: .asciz "*"
callout5: .asciz "o"
callout6: .asciz "*"
callout7: .asciz "*"
callout8: .asciz "*"
callout9: .asciz "*"
callout10: .asciz " "
callout11: .asciz "*"
callout12: .asciz "W"
callout13: .asciz "o"
callout14: .asciz "r"
callout15: .asciz "*"
callout16: .asciz "l"
callout17: .asciz "d"
callout18: .asciz "["
callout19: .asciz "]"
callout20: .asciz "\n"
callout21: .asciz "should be here\n"
callout22: .asciz "should not be here\n"
callout23: .asciz "should be here\n"
callout24: .asciz "should not be here\n"
.global main
not2:
	movq %rax, -8(%rsp)
	cmp %r11 %r10
	jl label0l
	je label0e
	jg label0g
	ret
label0:
	movq -8(%rsp), %rax
phw:
	cmp %r11 %r10
	jl label1l
	je label1e
	jg label1g
	ret
label1:
	cmp %r11 %r10
	jl label2l
	je label2e
	jg label2g
	ret
label2:
	movq -8(%rsp), %rax
	cmp %r11 %r10
	jl label3l
	je label3e
	jg label3g
	ret
label3:
	cmp %r11 %r10
	jl label4l
	je label4e
	jg label4g
	ret
label4:
	cmp %r11 %r10
	jl label5l
	je label5e
	jg label5g
	ret
label5:
	cmp %r11 %r10
	jl label6l
	je label6e
	jg label6g
	ret
label6:
	cmp %r11 %r10
	jl label7l
	je label7e
	jg label7g
	ret
label7:
	cmp %r11 %r10
	jl label8l
	je label8e
	jg label8g
	ret
label8:
	cmp %r11 %r10
	jl label9l
	je label9e
	jg label9g
	ret
label9:
	cmp %r11 %r10
	jl label10l
	je label10e
	jg label10g
	ret
label10:
	cmp %r11 %r10
	jl label11l
	je label11e
	jg label11g
	ret
label11:
	cmp %r11 %r10
	jl label12l
	je label12e
	jg label12g
	ret
label12:
	cmp %r11 %r10
	jl label13l
	je label13e
	jg label13g
	ret
label13:
	cmp %r11 %r10
	jl label14l
	je label14e
	jg label14g
	ret
label14:
	cmp %r11 %r10
	jl label15l
	je label15e
	jg label15g
	ret
label15:
	cmp %r11 %r10
	jl label16l
	je label16e
	jg label16g
	ret
label16:
	movq $true, %rax
	movq $true, %rax
	movq $true, %rax
	movq $true, %rax
	movq $false, %rax
	movq $true, %rax
	movq $true, %rax
	movq $false, %rax
	movq $true, %rax
	movq $true, %rax
	cmp %r11 %r10
	jl label17l
	je label17e
	jg label17g
	ret
label17:
	movq $2, %rax
	movq %rax, -16(%rsp)
	movq -16(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
	cmp %r11 %r10
	jl label18l
	je label18e
	jg label18g
	ret
label18:
	movq $2, %rax
	movq %rax, -16(%rsp)
	movq $5, %rax
	movq -16(%rsp), %r10
	movq %rax, %r11
	addq %r10, %r11
	movq %r11, %rax
ret
