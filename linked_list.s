	.section	__TEXT,__text,regular,pure_instructions
	.globl	_new_list
	.align	4, 0x90
_new_list:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	pushq	%r14
	pushq	%rbx
Ltmp2:
	movq	%rdi, %rbx
	movl	$24, %edi
	callq	_malloc
	testq	%rax, %rax
	movq	%rax, %r14
	jne	LBB1_2
	leaq	L_.str2(%rip), %rdi
	xorb	%al, %al
	callq	_printf
	jmp	LBB1_3
LBB1_2:
	movq	%rbx, 16(%r14)
	movq	%r14, 8(%r14)
	movq	%r14, (%r14)
LBB1_3:
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end1:

	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin2:
	pushq	%rbp
Ltmp3:
	movq	%rsp, %rbp
Ltmp4:
	popq	%rbp
	ret
Leh_func_end2:

	.globl	_fetch_data
	.align	4, 0x90
_fetch_data:
Leh_func_begin3:
	pushq	%rbp
Ltmp5:
	movq	%rsp, %rbp
Ltmp6:
	testq	%rdi, %rdi
	je	LBB3_4
	testl	%esi, %esi
	movq	(%rdi), %rax
	jle	LBB3_3
	.align	4, 0x90
LBB3_2:
	decl	%esi
	movq	(%rax), %rax
	jne	LBB3_2
LBB3_3:
	movq	16(%rax), %rax
	popq	%rbp
	ret
LBB3_4:
	leaq	L_.str(%rip), %rdi
	xorb	%al, %al
	callq	_printf
	popq	%rbp
	ret
Leh_func_end3:

	.globl	_insert_last
	.align	4, 0x90
_insert_last:
Leh_func_begin4:
	pushq	%rbp
Ltmp7:
	movq	%rsp, %rbp
Ltmp8:
	pushq	%r14
	pushq	%rbx
Ltmp9:
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	je	LBB4_3
	leaq	L_.str1(%rip), %rdi
	xorb	%al, %al
	callq	_printf
LBB4_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
LBB4_3:
	movq	%rsi, %r14
	movl	$24, %edi
	callq	_malloc
	movq	%r14, 16(%rax)
	movq	%rbx, (%rax)
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, (%rcx)
	movq	%rax, 8(%rbx)
	jmp	LBB4_2
Leh_func_end4:

	.globl	_insert_first
	.align	4, 0x90
_insert_first:
Leh_func_begin5:
	pushq	%rbp
Ltmp10:
	movq	%rsp, %rbp
Ltmp11:
	pushq	%rbx
	subq	$8, %rsp
Ltmp12:
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	je	LBB5_3
	leaq	L_.str1(%rip), %rdi
	xorb	%al, %al
	callq	_printf
LBB5_2:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
LBB5_3:
	movl	$24, %edi
	callq	_malloc
	movq	%rbx, (%rax)
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, (%rcx)
	movq	%rax, 8(%rbx)
	jmp	LBB5_2
Leh_func_end5:

	.globl	_free_list
	.align	4, 0x90
_free_list:
Leh_func_begin6:
	pushq	%rbp
Ltmp13:
	movq	%rsp, %rbp
Ltmp14:
	pushq	%r14
	pushq	%rbx
Ltmp15:
	movq	(%rdi), %rax
	testq	%rax, %rax
	jne	LBB6_2
	leaq	L_.str(%rip), %rdi
	xorb	%al, %al
	callq	_printf
	jmp	LBB6_5
LBB6_2:
	movq	%rdi, %rbx
	movq	8(%rax), %rcx
	movq	$0, (%rcx)
	movq	(%rax), %rcx
	movq	%rax, %rdi
	.align	4, 0x90
LBB6_3:
	movq	%rcx, %r14
	callq	_free
	movq	(%r14), %rcx
	testq	%rcx, %rcx
	movq	%r14, %rdi
	jne	LBB6_3
	movq	$0, (%rbx)
LBB6_5:
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end6:

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "The list was NULL"

L_.str1:
	.asciz	 "The list was Null"

L_.str2:
	.asciz	 "Could not retrive any memory"

	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
Lset0 = Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset0
Leh_frame_common_begin:
	.long	0
	.byte	1
	.asciz	 "zR"
	.byte	1
	.byte	120
	.byte	16
	.byte	1
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	3
Leh_frame_common_end:
	.globl	_new_list.eh
_new_list.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp16:
	.quad	Leh_func_begin1-Ltmp16
Lset3 = Leh_func_end1-Leh_func_begin1
	.quad	Lset3
	.byte	0
	.byte	4
Lset4 = Ltmp0-Leh_func_begin1
	.long	Lset4
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset5 = Ltmp1-Ltmp0
	.long	Lset5
	.byte	13
	.byte	6
	.byte	4
Lset6 = Ltmp2-Ltmp1
	.long	Lset6
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end1:

	.globl	_main.eh
_main.eh:
Lset7 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset7
Leh_frame_begin2:
Lset8 = Leh_frame_begin2-Leh_frame_common
	.long	Lset8
Ltmp17:
	.quad	Leh_func_begin2-Ltmp17
Lset9 = Leh_func_end2-Leh_func_begin2
	.quad	Lset9
	.byte	0
	.byte	4
Lset10 = Ltmp3-Leh_func_begin2
	.long	Lset10
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset11 = Ltmp4-Ltmp3
	.long	Lset11
	.byte	13
	.byte	6
	.align	3
Leh_frame_end2:

	.globl	_fetch_data.eh
_fetch_data.eh:
Lset12 = Leh_frame_end3-Leh_frame_begin3
	.long	Lset12
Leh_frame_begin3:
Lset13 = Leh_frame_begin3-Leh_frame_common
	.long	Lset13
Ltmp18:
	.quad	Leh_func_begin3-Ltmp18
Lset14 = Leh_func_end3-Leh_func_begin3
	.quad	Lset14
	.byte	0
	.byte	4
Lset15 = Ltmp5-Leh_func_begin3
	.long	Lset15
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset16 = Ltmp6-Ltmp5
	.long	Lset16
	.byte	13
	.byte	6
	.align	3
Leh_frame_end3:

	.globl	_insert_last.eh
_insert_last.eh:
Lset17 = Leh_frame_end4-Leh_frame_begin4
	.long	Lset17
Leh_frame_begin4:
Lset18 = Leh_frame_begin4-Leh_frame_common
	.long	Lset18
Ltmp19:
	.quad	Leh_func_begin4-Ltmp19
Lset19 = Leh_func_end4-Leh_func_begin4
	.quad	Lset19
	.byte	0
	.byte	4
Lset20 = Ltmp7-Leh_func_begin4
	.long	Lset20
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset21 = Ltmp8-Ltmp7
	.long	Lset21
	.byte	13
	.byte	6
	.byte	4
Lset22 = Ltmp9-Ltmp8
	.long	Lset22
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end4:

	.globl	_insert_first.eh
_insert_first.eh:
Lset23 = Leh_frame_end5-Leh_frame_begin5
	.long	Lset23
Leh_frame_begin5:
Lset24 = Leh_frame_begin5-Leh_frame_common
	.long	Lset24
Ltmp20:
	.quad	Leh_func_begin5-Ltmp20
Lset25 = Leh_func_end5-Leh_func_begin5
	.quad	Lset25
	.byte	0
	.byte	4
Lset26 = Ltmp10-Leh_func_begin5
	.long	Lset26
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset27 = Ltmp11-Ltmp10
	.long	Lset27
	.byte	13
	.byte	6
	.byte	4
Lset28 = Ltmp12-Ltmp11
	.long	Lset28
	.byte	131
	.byte	3
	.align	3
Leh_frame_end5:

	.globl	_free_list.eh
_free_list.eh:
Lset29 = Leh_frame_end6-Leh_frame_begin6
	.long	Lset29
Leh_frame_begin6:
Lset30 = Leh_frame_begin6-Leh_frame_common
	.long	Lset30
Ltmp21:
	.quad	Leh_func_begin6-Ltmp21
Lset31 = Leh_func_end6-Leh_func_begin6
	.quad	Lset31
	.byte	0
	.byte	4
Lset32 = Ltmp13-Leh_func_begin6
	.long	Lset32
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset33 = Ltmp14-Ltmp13
	.long	Lset33
	.byte	13
	.byte	6
	.byte	4
Lset34 = Ltmp15-Ltmp14
	.long	Lset34
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end6:


.subsections_via_symbols
