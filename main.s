	.file	"main.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	main
	.type	main, @function
main:
.LFB1800:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	leaq	-72(%rbp), %rax
	movl	$12, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	_ZN6MatrixILi2ELi1EfEC1IiJiEEET_DpT0_
	leaq	-64(%rbp), %rax
	movl	$4, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN6MatrixILi2ELi2EfEC1IiJiiiEEET_DpT0_
	movq	-72(%rbp), %r9
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rax
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movq	%r9, -104(%rbp)
	movq	-104(%rbp), %xmm2
	movq	%r8, -104(%rbp)
	movq	-104(%rbp), %xmm0
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %xmm1
	movq	%rax, %rdi
	call	_ZN6MatrixILi3ELi3EfEC1IS_ILi2ELi2EfEJS_ILi2ELi1EfEiiiEEET_DpT0_
	subq	$8, %rsp
	subq	$40, %rsp
	movq	%rsp, %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movl	-16(%rbp), %eax
	movl	%eax, 32(%rcx)
	movl	$_ZSt4cout, %edi
	call	_ZlsRSo6MatrixILi3ELi3EfE
	addq	$48, %rsp
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1800:
	.size	main, .-main
	.section	.text._ZN6MatrixILi2ELi2EfEC2IiJiiiEEET_DpT0_,"axG",@progbits,_ZN6MatrixILi2ELi2EfEC5IiJiiiEEET_DpT0_,comdat
	.align 2
	.weak	_ZN6MatrixILi2ELi2EfEC2IiJiiiEEET_DpT0_
	.type	_ZN6MatrixILi2ELi2EfEC2IiJiiiEEET_DpT0_, @function
_ZN6MatrixILi2ELi2EfEC2IiJiiiEEET_DpT0_:
.LFB2039:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	$0, -8(%rbp)
.L7:
	cmpl	$1, -8(%rbp)
	jg	.L4
	movl	$0, -4(%rbp)
.L6:
	cmpl	$1, -4(%rbp)
	jg	.L5
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -4(%rbp)
	jmp	.L6
.L5:
	addl	$1, -8(%rbp)
	jmp	.L7
.L4:
	movl	-40(%rbp), %edi
	movl	-36(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	_ZN6MatrixILi2ELi2EfE8fill_matILi0ELi0ELb0EiiJiiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2039:
	.size	_ZN6MatrixILi2ELi2EfEC2IiJiiiEEET_DpT0_, .-_ZN6MatrixILi2ELi2EfEC2IiJiiiEEET_DpT0_
	.weak	_ZN6MatrixILi2ELi2EfEC1IiJiiiEEET_DpT0_
	.set	_ZN6MatrixILi2ELi2EfEC1IiJiiiEEET_DpT0_,_ZN6MatrixILi2ELi2EfEC2IiJiiiEEET_DpT0_
	.section	.text._ZN6MatrixILi2ELi1EfEC2IiJiEEET_DpT0_,"axG",@progbits,_ZN6MatrixILi2ELi1EfEC5IiJiEEET_DpT0_,comdat
	.align 2
	.weak	_ZN6MatrixILi2ELi1EfEC2IiJiEEET_DpT0_
	.type	_ZN6MatrixILi2ELi1EfEC2IiJiEEET_DpT0_, @function
_ZN6MatrixILi2ELi1EfEC2IiJiEEET_DpT0_:
.LFB2042:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	$0, -8(%rbp)
.L12:
	cmpl	$1, -8(%rbp)
	jg	.L9
	movl	$0, -4(%rbp)
.L11:
	cmpl	$0, -4(%rbp)
	jg	.L10
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -4(%rbp)
	jmp	.L11
.L10:
	addl	$1, -8(%rbp)
	jmp	.L12
.L9:
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6MatrixILi2ELi1EfE8fill_matILi0ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2042:
	.size	_ZN6MatrixILi2ELi1EfEC2IiJiEEET_DpT0_, .-_ZN6MatrixILi2ELi1EfEC2IiJiEEET_DpT0_
	.weak	_ZN6MatrixILi2ELi1EfEC1IiJiEEET_DpT0_
	.set	_ZN6MatrixILi2ELi1EfEC1IiJiEEET_DpT0_,_ZN6MatrixILi2ELi1EfEC2IiJiEEET_DpT0_
	.section	.text._ZN6MatrixILi3ELi3EfEC2IS_ILi2ELi2EfEJS_ILi2ELi1EfEiiiEEET_DpT0_,"axG",@progbits,_ZN6MatrixILi3ELi3EfEC5IS_ILi2ELi2EfEJS_ILi2ELi1EfEiiiEEET_DpT0_,comdat
	.align 2
	.weak	_ZN6MatrixILi3ELi3EfEC2IS_ILi2ELi2EfEJS_ILi2ELi1EfEiiiEEET_DpT0_
	.type	_ZN6MatrixILi3ELi3EfEC2IS_ILi2ELi2EfEJS_ILi2ELi1EfEiiiEEET_DpT0_, @function
_ZN6MatrixILi3ELi3EfEC2IS_ILi2ELi2EfEJS_ILi2ELi1EfEiiiEEET_DpT0_:
.LFB2045:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -24(%rbp)
	movq	%xmm1, %rdi
	movaps	%xmm0, -80(%rbp)
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %r9
	movq	%rdi, %r9
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
	movq	%xmm2, -32(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	$0, -8(%rbp)
.L17:
	cmpl	$2, -8(%rbp)
	jg	.L14
	movl	$0, -4(%rbp)
.L16:
	cmpl	$2, -4(%rbp)
	jg	.L15
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rcx,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L16
.L15:
	addl	$1, -8(%rbp)
	jmp	.L17
.L14:
	movl	-60(%rbp), %ecx
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %esi
	movq	-32(%rbp), %r9
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%r9, -80(%rbp)
	movq	-80(%rbp), %xmm2
	movq	%r8, -80(%rbp)
	movq	-80(%rbp), %xmm0
	movq	%rdi, -80(%rbp)
	movq	-80(%rbp), %xmm1
	movq	%rax, %rdi
	call	_ZN6MatrixILi3ELi3EfE8fill_matILi0ELi0ELb1ES_ILi2ELi2EfES_ILi2ELi1EfEJiiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2045:
	.size	_ZN6MatrixILi3ELi3EfEC2IS_ILi2ELi2EfEJS_ILi2ELi1EfEiiiEEET_DpT0_, .-_ZN6MatrixILi3ELi3EfEC2IS_ILi2ELi2EfEJS_ILi2ELi1EfEiiiEEET_DpT0_
	.weak	_ZN6MatrixILi3ELi3EfEC1IS_ILi2ELi2EfEJS_ILi2ELi1EfEiiiEEET_DpT0_
	.set	_ZN6MatrixILi3ELi3EfEC1IS_ILi2ELi2EfEJS_ILi2ELi1EfEiiiEEET_DpT0_,_ZN6MatrixILi3ELi3EfEC2IS_ILi2ELi2EfEJS_ILi2ELi1EfEiiiEEET_DpT0_
	.section	.rodata
.LC1:
	.string	" "
	.section	.text._ZlsRSo6MatrixILi3ELi3EfE,"axG",@progbits,_ZlsRSo6MatrixILi3ELi3EfE,comdat
	.weak	_ZlsRSo6MatrixILi3ELi3EfE
	.type	_ZlsRSo6MatrixILi3ELi3EfE, @function
_ZlsRSo6MatrixILi3ELi3EfE:
.LFB2047:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
.L22:
	cmpl	$2, -8(%rbp)
	jg	.L19
	movl	$0, -4(%rbp)
.L21:
	cmpl	$2, -4(%rbp)
	jg	.L20
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	16(%rbp), %rdi
	call	_ZN6MatrixILi3ELi3EfEixEi
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, -28(%rbp)
	movss	-28(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEf
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -4(%rbp)
	jmp	.L21
.L20:
	addl	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	jmp	.L22
.L19:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2047:
	.size	_ZlsRSo6MatrixILi3ELi3EfE, .-_ZlsRSo6MatrixILi3ELi3EfE
	.section	.text._ZN6MatrixILi2ELi2EfE8fill_matILi0ELi0ELb0EiiJiiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_,"axG",@progbits,_ZN6MatrixILi2ELi2EfE8fill_matILi0ELi0ELb0EiiJiiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_,comdat
	.align 2
	.weak	_ZN6MatrixILi2ELi2EfE8fill_matILi0ELi0ELb0EiiJiiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_
	.type	_ZN6MatrixILi2ELi2EfE8fill_matILi0ELi0ELb0EiiJiiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_, @function
_ZN6MatrixILi2ELi2EfE8fill_matILi0ELi0ELb0EiiJiiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_:
.LFB2128:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	cvtsi2ss	-12(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6MatrixILi2ELi2EfE8fill_matILi0ELi1ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2128:
	.size	_ZN6MatrixILi2ELi2EfE8fill_matILi0ELi0ELb0EiiJiiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_, .-_ZN6MatrixILi2ELi2EfE8fill_matILi0ELi0ELb0EiiJiiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_
	.section	.text._ZN6MatrixILi2ELi1EfE8fill_matILi0ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_,"axG",@progbits,_ZN6MatrixILi2ELi1EfE8fill_matILi0ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_,comdat
	.align 2
	.weak	_ZN6MatrixILi2ELi1EfE8fill_matILi0ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_
	.type	_ZN6MatrixILi2ELi1EfE8fill_matILi0ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_, @function
_ZN6MatrixILi2ELi1EfE8fill_matILi0ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_:
.LFB2130:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cvtsi2ss	-12(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN6MatrixILi2ELi1EfE8fill_matILi1ELi0ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2130:
	.size	_ZN6MatrixILi2ELi1EfE8fill_matILi0ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_, .-_ZN6MatrixILi2ELi1EfE8fill_matILi0ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_
	.section	.text._ZN6MatrixILi3ELi3EfE8fill_matILi0ELi0ELb1ES_ILi2ELi2EfES_ILi2ELi1EfEJiiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_,"axG",@progbits,_ZN6MatrixILi3ELi3EfE8fill_matILi0ELi0ELb1ES_ILi2ELi2EfES_ILi2ELi1EfEJiiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_,comdat
	.align 2
	.weak	_ZN6MatrixILi3ELi3EfE8fill_matILi0ELi0ELb1ES_ILi2ELi2EfES_ILi2ELi1EfEJiiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_
	.type	_ZN6MatrixILi3ELi3EfE8fill_matILi0ELi0ELb1ES_ILi2ELi2EfES_ILi2ELi1EfEJiiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_, @function
_ZN6MatrixILi3ELi3EfE8fill_matILi0ELi0ELb1ES_ILi2ELi2EfES_ILi2ELi1EfEJiiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_:
.LFB2132:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -24(%rbp)
	movq	%xmm1, %rdi
	movaps	%xmm0, -80(%rbp)
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %r9
	movq	%rdi, %r9
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
	movq	%xmm2, -32(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	$0, -8(%rbp)
.L29:
	cmpl	$1, -8(%rbp)
	jg	.L26
	movl	$0, -4(%rbp)
.L28:
	cmpl	$1, -4(%rbp)
	jg	.L27
	movl	-8(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN6MatrixILi2ELi2EfEixEi
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movss	%xmm0, (%rcx,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L28
.L27:
	addl	$1, -8(%rbp)
	jmp	.L29
.L26:
	movl	-60(%rbp), %ecx
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %esi
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -80(%rbp)
	movq	-80(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZN6MatrixILi3ELi3EfE8fill_matILi0ELi2ELb1ES_ILi2ELi1EfEiJiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2132:
	.size	_ZN6MatrixILi3ELi3EfE8fill_matILi0ELi0ELb1ES_ILi2ELi2EfES_ILi2ELi1EfEJiiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_, .-_ZN6MatrixILi3ELi3EfE8fill_matILi0ELi0ELb1ES_ILi2ELi2EfES_ILi2ELi1EfEJiiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_
	.section	.text._ZN6MatrixILi3ELi3EfEixEi,"axG",@progbits,_ZN6MatrixILi3ELi3EfEixEi,comdat
	.align 2
	.weak	_ZN6MatrixILi3ELi3EfEixEi
	.type	_ZN6MatrixILi3ELi3EfEixEi, @function
_ZN6MatrixILi3ELi3EfEixEi:
.LFB2134:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2134:
	.size	_ZN6MatrixILi3ELi3EfEixEi, .-_ZN6MatrixILi3ELi3EfEixEi
	.section	.text._ZN6MatrixILi2ELi2EfE8fill_matILi0ELi1ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_,"axG",@progbits,_ZN6MatrixILi2ELi2EfE8fill_matILi0ELi1ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_,comdat
	.align 2
	.weak	_ZN6MatrixILi2ELi2EfE8fill_matILi0ELi1ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_
	.type	_ZN6MatrixILi2ELi2EfE8fill_matILi0ELi1ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_, @function
_ZN6MatrixILi2ELi2EfE8fill_matILi0ELi1ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_:
.LFB2176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	cvtsi2ss	-12(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6MatrixILi2ELi2EfE8fill_matILi1ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2176:
	.size	_ZN6MatrixILi2ELi2EfE8fill_matILi0ELi1ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_, .-_ZN6MatrixILi2ELi2EfE8fill_matILi0ELi1ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_
	.section	.text._ZN6MatrixILi2ELi1EfE8fill_matILi1ELi0ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_,"axG",@progbits,_ZN6MatrixILi2ELi1EfE8fill_matILi1ELi0ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_,comdat
	.align 2
	.weak	_ZN6MatrixILi2ELi1EfE8fill_matILi1ELi0ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_
	.type	_ZN6MatrixILi2ELi1EfE8fill_matILi1ELi0ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_, @function
_ZN6MatrixILi2ELi1EfE8fill_matILi1ELi0ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_:
.LFB2177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cvtsi2ss	-12(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2177:
	.size	_ZN6MatrixILi2ELi1EfE8fill_matILi1ELi0ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_, .-_ZN6MatrixILi2ELi1EfE8fill_matILi1ELi0ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_
	.section	.text._ZN6MatrixILi2ELi2EfEixEi,"axG",@progbits,_ZN6MatrixILi2ELi2EfEixEi,comdat
	.align 2
	.weak	_ZN6MatrixILi2ELi2EfEixEi
	.type	_ZN6MatrixILi2ELi2EfEixEi, @function
_ZN6MatrixILi2ELi2EfEixEi:
.LFB2178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2178:
	.size	_ZN6MatrixILi2ELi2EfEixEi, .-_ZN6MatrixILi2ELi2EfEixEi
	.section	.text._ZN6MatrixILi3ELi3EfE8fill_matILi0ELi2ELb1ES_ILi2ELi1EfEiJiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_,"axG",@progbits,_ZN6MatrixILi3ELi3EfE8fill_matILi0ELi2ELb1ES_ILi2ELi1EfEiJiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_,comdat
	.align 2
	.weak	_ZN6MatrixILi3ELi3EfE8fill_matILi0ELi2ELb1ES_ILi2ELi1EfEiJiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_
	.type	_ZN6MatrixILi3ELi3EfE8fill_matILi0ELi2ELb1ES_ILi2ELi1EfEiJiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_, @function
_ZN6MatrixILi3ELi3EfE8fill_matILi0ELi2ELb1ES_ILi2ELi1EfEiJiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_:
.LFB2179:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%xmm0, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	$0, -8(%rbp)
.L40:
	cmpl	$1, -8(%rbp)
	jg	.L37
	movl	$0, -4(%rbp)
.L39:
	cmpl	$0, -4(%rbp)
	jg	.L38
	movl	-8(%rbp), %edx
	leaq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN6MatrixILi2ELi1EfEixEi
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	addl	$2, %edx
	movss	(%rax), %xmm0
	movq	-24(%rbp), %rcx
	movslq	%edx, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movss	%xmm0, (%rcx,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L39
.L38:
	addl	$1, -8(%rbp)
	jmp	.L40
.L37:
	movl	-44(%rbp), %ecx
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi0ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2179:
	.size	_ZN6MatrixILi3ELi3EfE8fill_matILi0ELi2ELb1ES_ILi2ELi1EfEiJiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_, .-_ZN6MatrixILi3ELi3EfE8fill_matILi0ELi2ELb1ES_ILi2ELi1EfEiJiiEEENSt9enable_ifIXT1_EvE4typeET2_T3_DpT4_
	.section	.text._ZN6MatrixILi2ELi2EfE8fill_matILi1ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_,"axG",@progbits,_ZN6MatrixILi2ELi2EfE8fill_matILi1ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_,comdat
	.align 2
	.weak	_ZN6MatrixILi2ELi2EfE8fill_matILi1ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_
	.type	_ZN6MatrixILi2ELi2EfE8fill_matILi1ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_, @function
_ZN6MatrixILi2ELi2EfE8fill_matILi1ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_:
.LFB2226:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cvtsi2ss	-12(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN6MatrixILi2ELi2EfE8fill_matILi1ELi1ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2226:
	.size	_ZN6MatrixILi2ELi2EfE8fill_matILi1ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_, .-_ZN6MatrixILi2ELi2EfE8fill_matILi1ELi0ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_
	.section	.text._ZN6MatrixILi2ELi1EfEixEi,"axG",@progbits,_ZN6MatrixILi2ELi1EfEixEi,comdat
	.align 2
	.weak	_ZN6MatrixILi2ELi1EfEixEi
	.type	_ZN6MatrixILi2ELi1EfEixEi, @function
_ZN6MatrixILi2ELi1EfEixEi:
.LFB2227:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2227:
	.size	_ZN6MatrixILi2ELi1EfEixEi, .-_ZN6MatrixILi2ELi1EfEixEi
	.section	.text._ZN6MatrixILi3ELi3EfE8fill_matILi2ELi0ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_,"axG",@progbits,_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi0ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_,comdat
	.align 2
	.weak	_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi0ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_
	.type	_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi0ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_, @function
_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi0ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_:
.LFB2228:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	cvtsi2ss	-12(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 24(%rax)
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi1ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2228:
	.size	_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi0ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_, .-_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi0ELb0EiiJiEEENSt9enable_ifIXntT1_EvE4typeET2_T3_DpT4_
	.section	.text._ZN6MatrixILi2ELi2EfE8fill_matILi1ELi1ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_,"axG",@progbits,_ZN6MatrixILi2ELi2EfE8fill_matILi1ELi1ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_,comdat
	.align 2
	.weak	_ZN6MatrixILi2ELi2EfE8fill_matILi1ELi1ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_
	.type	_ZN6MatrixILi2ELi2EfE8fill_matILi1ELi1ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_, @function
_ZN6MatrixILi2ELi2EfE8fill_matILi1ELi1ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_:
.LFB2269:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cvtsi2ss	-12(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 12(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2269:
	.size	_ZN6MatrixILi2ELi2EfE8fill_matILi1ELi1ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_, .-_ZN6MatrixILi2ELi2EfE8fill_matILi1ELi1ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_
	.section	.text._ZN6MatrixILi3ELi3EfE8fill_matILi2ELi1ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_,"axG",@progbits,_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi1ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_,comdat
	.align 2
	.weak	_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi1ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_
	.type	_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi1ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_, @function
_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi1ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_:
.LFB2270:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cvtsi2ss	-12(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 28(%rax)
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi2ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2270:
	.size	_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi1ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_, .-_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi1ELb0EiiEENSt9enable_ifIXntT1_EvE4typeET2_T3_
	.section	.text._ZN6MatrixILi3ELi3EfE8fill_matILi2ELi2ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_,"axG",@progbits,_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi2ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_,comdat
	.align 2
	.weak	_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi2ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_
	.type	_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi2ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_, @function
_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi2ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_:
.LFB2286:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cvtsi2ss	-12(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 32(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2286:
	.size	_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi2ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_, .-_ZN6MatrixILi3ELi3EfE8fill_matILi2ELi2ELb0EiEENSt9enable_ifIXntT1_EvE4typeET2_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2288:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L50
	cmpl	$65535, -8(%rbp)
	jne	.L50
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L50:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2288:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.rodata
	.type	_Z16is_same_templateIi6MatrixILi1ELi1EfEE, @object
	.size	_Z16is_same_templateIi6MatrixILi1ELi1EfEE, 1
_Z16is_same_templateIi6MatrixILi1ELi1EfEE:
	.zero	1
	.type	_Z16is_same_templateI6MatrixILi2ELi2EfES0_ILi1ELi1EfEE, @object
	.size	_Z16is_same_templateI6MatrixILi2ELi2EfES0_ILi1ELi1EfEE, 1
_Z16is_same_templateI6MatrixILi2ELi2EfES0_ILi1ELi1EfEE:
	.byte	1
	.type	_Z16is_same_templateI6MatrixILi2ELi1EfES0_ILi1ELi1EfEE, @object
	.size	_Z16is_same_templateI6MatrixILi2ELi1EfES0_ILi1ELi1EfEE, 1
_Z16is_same_templateI6MatrixILi2ELi1EfES0_ILi1ELi1EfEE:
	.byte	1
	.text
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2289:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2289:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.2.0-1ubuntu1~14.04) 7.2.0"
	.section	.note.GNU-stack,"",@progbits
