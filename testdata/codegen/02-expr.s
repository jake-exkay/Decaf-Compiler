.data
.global main
movq %rax, -8(%rsp)
movq %rax, -16(%rsp)
movq %rax, -24(%rsp)
movq %rax, -32(%rsp)
movq %rax, -40(%rsp)
test:
ret
