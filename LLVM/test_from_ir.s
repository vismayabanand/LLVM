	.text
	.file	"test.c"
	.globl	test                            # -- Begin function test
	.p2align	4, 0x90
	.type	test,@function
test:                                   # @test
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$9, -12(%rbp)
	jle	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_4
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -20(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$9, -4(%rbp)
	jl	.LBB0_1
# %bb.6:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -8(%rbp)
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	callq	test
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
