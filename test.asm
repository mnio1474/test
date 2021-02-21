	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 4
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	L___stack_chk_guard$non_lazy_ptr-L0$pb(%eax), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -4(%ebp)
	movl	$1, -20(%ebp)
	movl	-20(%ebp), %ecx
	addl	$1, %ecx
	movl	%ecx, -20(%ebp)
	movl	-20(%ebp), %ecx
	addl	$100, %ecx
	movl	%ecx, -20(%ebp)
	movl	L___stack_chk_guard$non_lazy_ptr-L0$pb(%eax), %eax
	movl	(%eax), %eax
	movl	-4(%ebp), %ecx
	cmpl	%ecx, %eax
	jne	LBB0_2
## %bb.1:
	xorl	%eax, %eax
	addl	$24, %esp
	popl	%ebp
	retl
LBB0_2:
	calll	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function

	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
