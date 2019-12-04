	.file	"lee_dot_product.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.align 4
	.type	_ZL8arr_size, @object
	.size	_ZL8arr_size, 4
_ZL8arr_size:
	.long	

	.local	_ZL4arr1
	.comm	_ZL4arr1,4194304,32
	.local	_ZL4arr2
	.comm	_ZL4arr2,4194304,32
.LC2:
	.string	"Array Size: %d"
.LC3:
	.string	"\nTime: %f nanoseconds\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB884:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
.L3:
	cmpl	$1048575, -24(%rbp)
	jg	.L2
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	_ZL4arr1(%rip), %rax
	movl	$1, (%rdx,%rax)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	_ZL4arr2(%rip), %rax
	movl	$0, (%rdx,%rax)
	addl	$1, -24(%rbp)
	jmp	.L3
.L2:
	call	clock@PLT
	movq	%rax, -16(%rbp)
	movl	$1048576, %edx
	leaq	_ZL4arr2(%rip), %rsi
	leaq	_ZL4arr1(%rip), %rdi
	call	_Z25dot_product_vectorizationPiS_i
	movl	%eax, -20(%rbp)
	call	clock@PLT
	subq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	cvtsi2sdq	-16(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$256, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE884:
	.size	main, .-main
	.globl	_Z25dot_product_vectorizationPiS_i
	.type	_Z25dot_product_vectorizationPiS_i, @function
_Z25dot_product_vectorizationPiS_i:
.LFB885:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rbx
	movups	(%rax), %xmm1
	movups	(%rbx), %xmm2
	
	mulps	%xmm2, %xmm1
	addps	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
.L6:
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE885:
	.size	_Z25dot_product_vectorizationPiS_i, .-_Z25dot_product_vectorizationPiS_i
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.align 8
.LC1:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
