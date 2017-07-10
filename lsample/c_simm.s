	.file	"c_simm.cpp"
	.section	.text.unlikely._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
.LCOLDB0:
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LHOTB0:
	.align 2
	.p2align 4,,15
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1725:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1725:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text.unlikely._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LCOLDE0:
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"ASSRT FAILED:"
.LC2:
	.string	"n > 0"
.LC3:
	.string	"file: "
.LC4:
	.string	"c_simm.cpp"
.LC5:
	.string	"line: "
.LC6:
	.string	"gl_idbl==NULL"
.LC7:
	.string	"gl_altby2N==NULL"
.LC8:
	.string	"gl_onemiby2N==NULL"
.LC9:
	.string	"0==1"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	_Z10gl_setnmaxl
	.type	_Z10gl_setnmaxl, @function
_Z10gl_setnmaxl:
.LFB1970:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	jle	.L45
	movq	_ZL8gl_state(%rip), %rbx
	movq	%rdi, %rbp
	testq	%rbx, %rbx
	je	.L5
	js	.L4
	cmpq	$2, %rbx
	jg	.L4
	cmpq	_ZL7gl_nmax(%rip), %rdi
	jg	.L46
.L2:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L47
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore_state
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.LC1(%rip), %rsi
	movl	$13, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC9(%rip), %rsi
	movl	$4, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%rbx), %rbp
	testq	%rbp, %rbp
	je	.L20
	cmpb	$0, 56(%rbp)
	je	.L18
	movsbl	67(%rbp), %esi
.L19:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	leaq	.LC3(%rip), %rsi
	movl	$6, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC4(%rip), %rsi
	movl	$10, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L20
	cmpb	$0, 56(%rbp)
	je	.L21
	movsbl	67(%rbp), %esi
.L22:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rbx
	movl	$6, %edx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movl	$58, %esi
	call	_ZNSolsEi@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L20
	cmpb	$0, 56(%rbx)
	je	.L23
	movsbl	67(%rbx), %esi
.L24:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	ud2
	.p2align 4,,10
	.p2align 3
.L5:
	cmpq	$0, _ZL7gl_idbl(%rip)
	jne	.L48
	cmpq	$0, _ZL10gl_altby2N(%rip)
	jne	.L49
	cmpq	$0, _ZL12gl_onemiby2N(%rip)
	jne	.L50
	leaq	8(,%rdi,8), %r12
	movq	%rdi, _ZL7gl_nmax(%rip)
	movl	$16, %esi
	movq	%rsp, %rdi
	movq	%r12, %rdx
	call	posix_memalign@PLT
	testl	%eax, %eax
	movq	%rbx, %rax
	cmove	(%rsp), %rax
	movq	%r12, %rdx
	movl	$16, %esi
	movq	%rsp, %rdi
	movq	%rax, _ZL7gl_idbl(%rip)
	call	posix_memalign@PLT
	testl	%eax, %eax
	movq	%rbx, %rax
	cmove	(%rsp), %rax
	movq	%r12, %rdx
	movl	$16, %esi
	movq	%rsp, %rdi
	movq	%rax, _ZL10gl_altby2N(%rip)
	call	posix_memalign@PLT
	testl	%eax, %eax
	cmove	(%rsp), %rbx
	movq	$1, _ZL8gl_state(%rip)
	movq	%rbx, _ZL12gl_onemiby2N(%rip)
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L18:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	_ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	.L19
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L21:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	_ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	.L22
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L23:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	_ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	.L24
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L46:
	movq	_ZL7gl_idbl(%rip), %rdi
	leaq	8(,%rbp,8), %rbx
	call	free@PLT
	movq	_ZL10gl_altby2N(%rip), %rdi
	call	free@PLT
	movq	_ZL12gl_onemiby2N(%rip), %rdi
	call	free@PLT
	movq	%rbx, %rdx
	movl	$16, %esi
	movq	%rsp, %rdi
	movq	%rbp, _ZL7gl_nmax(%rip)
	call	posix_memalign@PLT
	xorl	%edx, %edx
	testl	%eax, %eax
	cmove	(%rsp), %rdx
	movl	$16, %esi
	movq	%rsp, %rdi
	movq	%rdx, _ZL7gl_idbl(%rip)
	movq	%rbx, %rdx
	call	posix_memalign@PLT
	xorl	%edx, %edx
	testl	%eax, %eax
	cmove	(%rsp), %rdx
	movl	$16, %esi
	movq	%rsp, %rdi
	movq	%rdx, _ZL10gl_altby2N(%rip)
	movq	%rbx, %rdx
	call	posix_memalign@PLT
	xorl	%edx, %edx
	testl	%eax, %eax
	cmove	(%rsp), %rdx
	movq	$1, _ZL8gl_state(%rip)
	movq	%rdx, _ZL12gl_onemiby2N(%rip)
	jmp	.L2
.L45:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.LC1(%rip), %rsi
	movl	$13, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC2(%rip), %rsi
	movl	$5, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	leaq	.LC3(%rip), %rsi
	movl	$6, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC4(%rip), %rsi
	movl	$10, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	leaq	.LC5(%rip), %rsi
	movl	$6, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$34, %esi
.L43:
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	ud2
.L47:
	call	__stack_chk_fail@PLT
.L20:
	call	_ZSt16__throw_bad_castv@PLT
.L50:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.LC1(%rip), %rsi
	movl	$13, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC8(%rip), %rsi
	movl	$18, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	leaq	.LC3(%rip), %rsi
	movl	$6, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC4(%rip), %rsi
	movl	$10, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	leaq	.LC5(%rip), %rsi
	movl	$6, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$39, %esi
	jmp	.L43
.L48:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.LC1(%rip), %rsi
	movl	$13, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC6(%rip), %rsi
	movl	$13, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	leaq	.LC3(%rip), %rsi
	movl	$6, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC4(%rip), %rsi
	movl	$10, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	leaq	.LC5(%rip), %rsi
	movl	$6, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$37, %esi
	jmp	.L43
.L49:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.LC1(%rip), %rsi
	movl	$13, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC7(%rip), %rsi
	movl	$16, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	leaq	.LC3(%rip), %rsi
	movl	$6, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC4(%rip), %rsi
	movl	$10, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	leaq	.LC5(%rip), %rsi
	movl	$6, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$38, %esi
	jmp	.L43
	.cfi_endproc
.LFE1970:
	.size	_Z10gl_setnmaxl, .-_Z10gl_setnmaxl
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC11:
	.string	"(gl_state==1) || (gl_state==2)"
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	_Z7gl_setNl
	.type	_Z7gl_setNl, @function
_Z7gl_setNl:
.LFB1971:
	.cfi_startproc
	movq	_ZL8gl_state(%rip), %rax
	subq	$1, %rax
	cmpq	$1, %rax
	ja	.L64
	movq	_ZL7gl_nmax(%rip), %rdx
	testq	%rdx, %rdx
	js	.L53
	movq	_ZL7gl_idbl(%rip), %rsi
	leaq	1(%rdx), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L55:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, (%rsi,%rax,8)
	addq	$1, %rax
	cmpq	%rcx, %rax
	jne	.L55
	pxor	%xmm1, %xmm1
	addq	%rdi, %rdi
	movq	_ZL10gl_altby2N(%rip), %rsi
	movl	$1, %eax
	movsd	.LC12(%rip), %xmm2
	cvtsi2sdq	%rdi, %xmm1
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L66:
	movsd	.LC12(%rip), %xmm5
	movq	%rax, %rcx
	movsd	%xmm5, -8(%rsi,%rax,8)
	addq	$1, %rax
	cmpq	%rcx, %rdx
	jl	.L65
.L58:
	testb	$1, %al
	jne	.L66
	pxor	%xmm0, %xmm0
	movapd	%xmm2, %xmm4
	movq	%rax, %rcx
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rsi,%rax,8)
	addq	$1, %rax
	cmpq	%rcx, %rdx
	jge	.L58
.L65:
	movq	_ZL12gl_onemiby2N(%rip), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L59:
	pxor	%xmm0, %xmm0
	movapd	%xmm2, %xmm3
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm1, %xmm0
	subsd	%xmm0, %xmm3
	movsd	%xmm3, (%rcx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rdx
	jge	.L59
.L53:
	movq	$2, _ZL8gl_state(%rip)
	ret
.L64:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.LC1(%rip), %rsi
	movl	$13, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC11(%rip), %rsi
	movl	$30, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	leaq	.LC3(%rip), %rsi
	movl	$6, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC4(%rip), %rsi
	movl	$10, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	leaq	.LC5(%rip), %rsi
	movl	$6, %edx
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$64, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	ud2
	.cfi_endproc
.LFE1971:
	.size	_Z7gl_setNl, .-_Z7gl_setNl
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	_Z12collprob_optlll
	.type	_Z12collprob_optlll, @function
_Z12collprob_optlll:
.LFB1972:
	.cfi_startproc
	leaq	(%rdi,%rdi), %r8
	movq	_ZL7gl_idbl(%rip), %r9
	movq	_ZL10gl_altby2N(%rip), %rdx
	movq	_ZL12gl_onemiby2N(%rip), %rcx
	testq	%r8, %r8
	jle	.L72
	movq	%rsi, %r10
	movsd	.LC12(%rip), %xmm2
	subq	%r8, %r10
	leaq	-8(%r9,%rsi,8), %rax
	leaq	-8(%r9,%r10,8), %r8
	movapd	%xmm2, %xmm1
	.p2align 4,,10
	.p2align 3
.L69:
	mulsd	8(%rax), %xmm2
	subq	$16, %rax
	addq	$16, %rdx
	mulsd	16(%rax), %xmm1
	mulsd	-16(%rdx), %xmm2
	mulsd	-8(%rdx), %xmm1
	cmpq	%rax, %r8
	jne	.L69
	movapd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
.L68:
	subq	%rdi, %rsi
	subq	$1, %rsi
	testq	%rsi, %rsi
	jle	.L70
	.p2align 4,,10
	.p2align 3
.L71:
	mulsd	(%rcx,%rsi,8), %xmm0
	subq	$1, %rsi
	jne	.L71
.L70:
	rep ret
.L72:
	movsd	.LC12(%rip), %xmm0
	jmp	.L68
	.cfi_endproc
.LFE1972:
	.size	_Z12collprob_optlll, .-_Z12collprob_optlll
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.rodata.str1.1
.LC15:
	.string	"%f\n"
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.globl	_Z14collprob_unoptlll
	.type	_Z14collprob_unoptlll, @function
_Z14collprob_unoptlll:
.LFB1973:
	.cfi_startproc
	pxor	%xmm5, %xmm5
	addq	%rdx, %rdx
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	(%rdi,%rdi), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %r13
	cvtsi2sdq	%rdx, %xmm5
	movq	%rsi, %rbp
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	testq	%r12, %r12
	movsd	%xmm5, 8(%rsp)
	jle	.L91
	movsd	.LC12(%rip), %xmm0
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
	movl	$1, %ebx
	call	__printf_chk@PLT
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rbp, %xmm1
.L82:
	cmpq	%r12, %rbx
	je	.L76
.L79:
	movapd	%xmm1, %xmm0
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
	movsd	%xmm1, (%rsp)
	call	__printf_chk@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rax
	subq	%rbx, %rax
	movsd	(%rsp), %xmm1
	testb	$1, %bl
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm0, %xmm1
	jne	.L88
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jne	.L79
.L76:
	subq	%r13, %rbp
	leaq	-1(%rbp), %rbx
	testq	%rbx, %rbx
	jle	.L84
	.p2align 4,,10
	.p2align 3
.L81:
	movapd	%xmm1, %xmm0
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
	movsd	%xmm1, (%rsp)
	call	__printf_chk@PLT
	pxor	%xmm0, %xmm0
	movsd	.LC12(%rip), %xmm2
	movsd	(%rsp), %xmm1
	cvtsi2sdq	%rbx, %xmm0
	subq	$1, %rbx
	divsd	8(%rsp), %xmm0
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	jne	.L81
.L84:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movapd	%xmm1, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L88:
	.cfi_restore_state
	pxor	%xmm0, %xmm0
	addq	$1, %rbx
	cvtsi2sdq	%rbx, %xmm0
	mulsd	8(%rsp), %xmm0
	divsd	%xmm0, %xmm1
	jmp	.L82
.L91:
	movsd	.LC12(%rip), %xmm1
	jmp	.L76
	.cfi_endproc
.LFE1973:
	.size	_Z14collprob_unoptlll, .-_Z14collprob_unoptlll
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4,,15
	.globl	collprob
	.type	collprob, @function
collprob:
.LFB1974:
	.cfi_startproc
	cmpq	%rsi, _ZL7gl_nmax(%rip)
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	jge	.L93
	movq	%rsi, %rdi
	call	_Z10gl_setnmaxl@PLT
.L93:
	movq	%rbp, %rdi
	call	_Z7gl_setNl@PLT
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_Z12collprob_optlll@PLT
	.cfi_endproc
.LFE1974:
	.size	collprob, .-collprob
	.section	.text.unlikely
.LCOLDE17:
	.text
.LHOTE17:
	.section	.rodata.str1.1
.LC19:
	.string	"Finished on generation "
.LC20:
	.string	"Did not reach tolerance"
	.section	.text.unlikely
.LCOLDB21:
	.text
.LHOTB21:
	.p2align 4,,15
	.globl	onlydouble
	.type	onlydouble, @function
onlydouble:
.LFB1975:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	1(%rdi), %rax
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%rcx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movq	%rax, %rcx
	movabsq	$1143914305352105984, %rax
	movq	%rsi, 56(%rsp)
	movsd	%xmm0, 40(%rsp)
	cmpq	%rax, %rcx
	ja	.L96
	movq	%rcx, %rax
	movq	%rdi, %rbx
	movq	%rdx, %r13
	salq	$3, %rax
	movq	%rax, %r14
	movq	%rax, %rdi
	movq	%rax, 48(%rsp)
	call	_Znam@PLT
	movq	%r14, %rdi
	movq	%rax, 16(%rsp)
	call	_Znam@PLT
	testq	%rbx, %rbx
	movq	%rax, %r15
	js	.L100
	movq	48(%rsp), %rdx
	movq	16(%rsp), %rdi
	xorl	%esi, %esi
	call	memset@PLT
.L100:
	cmpq	$0, 32(%rsp)
	movq	16(%rsp), %rax
	movq	48(%rsp), %rcx
	movsd	.LC12(%rip), %xmm5
	movsd	%xmm5, -8(%rax,%rcx)
	jle	.L123
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	jle	.L101
.L142:
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L104:
	leaq	1(%rsi), %r12
	movq	$0, (%r15,%rsi,8)
	movq	%rsi, 8(%rsp)
	movq	%r12, %rbp
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L140:
	addq	$1, %r12
.L102:
	cmpq	%rsi, %rbx
	jl	.L105
	cmpq	$1, %rsi
	movq	16(%rsp), %rax
	je	.L139
	movq	%rsi, %rdi
	subq	8(%rsp), %rdi
	movq	0(%r13,%r14,8), %rdx
	movsd	(%rax,%rsi,8), %xmm1
	movsd	%xmm1, (%rsp)
	call	collprob@PLT
	mulsd	(%rsp), %xmm0
	addsd	-8(%r15,%rbp,8), %xmm0
	movsd	%xmm0, -8(%r15,%rbp,8)
.L105:
	cmpq	%rbp, %r12
	movq	%r12, %rsi
	jle	.L140
	cmpq	%rbp, 24(%rsp)
	movq	%rbp, %rsi
	jne	.L104
	movsd	.LC12(%rip), %xmm4
	movl	$1, %eax
	movsd	%xmm4, (%r15)
	movapd	%xmm4, %xmm0
	.p2align 4,,10
	.p2align 3
.L108:
	subsd	(%r15,%rax,8), %xmm0
	addq	$1, %rax
	cmpq	24(%rsp), %rax
	movsd	%xmm0, (%r15)
	jne	.L108
	movsd	.LC12(%rip), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
.L122:
	subsd	8(%r15), %xmm0
	movsd	40(%rsp), %xmm3
	ucomisd	%xmm0, %xmm3
	ja	.L141
	addq	$1, %r14
	cmpq	%r14, 32(%rsp)
	je	.L98
	movq	16(%rsp), %rax
	testq	%rbx, %rbx
	movq	%r15, 16(%rsp)
	movq	%rax, %r15
	jg	.L142
.L101:
	movsd	.LC12(%rip), %xmm6
	pxor	%xmm0, %xmm0
	movsd	%xmm6, (%r15)
	jmp	.L122
.L123:
	movq	%r15, %rax
	movq	16(%rsp), %r15
	movq	%rax, 16(%rsp)
.L98:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbp
	leaq	.LC20(%rip), %rsi
	movl	$23, %edx
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	0(%rbp), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%rbp), %r13
	testq	%r13, %r13
	je	.L112
	cmpb	$0, 56(%r13)
	je	.L118
	movsbl	67(%r13), %esi
.L119:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	testq	%rbx, %rbx
	js	.L121
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rdi
	movq	%r15, %rsi
	call	memcpy@PLT
.L121:
	movq	%r15, %rdi
	call	_ZdlPv@PLT
	movq	16(%rsp), %rdi
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT
.L141:
	.cfi_restore_state
	testq	%rbx, %rbx
	js	.L114
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rdi
	movq	%r15, %rsi
	call	memcpy@PLT
.L114:
	movq	%r15, %rdi
	call	_ZdlPv@PLT
	movq	16(%rsp), %rdi
	call	_ZdlPv@PLT
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.LC19(%rip), %rsi
	movl	$23, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L112
	cmpb	$0, 56(%rbx)
	je	.L115
	movsbl	67(%rbx), %esi
	jmp	.L116
.L115:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	_ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	jne	.L143
.L116:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
.L118:
	.cfi_restore_state
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	_ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	.L119
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L139:
	movsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%r15)
	jmp	.L105
.L143:
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L116
.L96:
	call	__cxa_throw_bad_array_new_length@PLT
.L112:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE1975:
	.size	onlydouble, .-onlydouble
	.section	.text.unlikely
.LCOLDE21:
	.text
.LHOTE21:
	.section	.text.unlikely
.LCOLDB22:
	.text
.LHOTB22:
	.p2align 4,,15
	.globl	notriple
	.type	notriple, @function
notriple:
.LFB1976:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %rax
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	addq	$1, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%rcx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movq	%rax, %rcx
	movabsq	$1143914305352105984, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 56(%rsp)
	cmpq	%rax, %rcx
	movsd	%xmm0, 40(%rsp)
	ja	.L145
	movq	%rcx, %rax
	movq	%rdi, %r14
	movq	%rdx, %r12
	salq	$3, %rax
	movq	%rax, %r15
	movq	%rax, %rdi
	movq	%rax, 48(%rsp)
	call	_Znam@PLT
	movq	%r15, %rdi
	movq	%rax, %rbx
	call	_Znam@PLT
	testq	%r14, %r14
	movq	%rax, %r15
	js	.L149
	movq	48(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	memset@PLT
.L149:
	cmpq	$0, 32(%rsp)
	movq	48(%rsp), %rax
	movsd	.LC12(%rip), %xmm5
	movsd	%xmm5, -8(%rbx,%rax)
	jle	.L171
	xorl	%r14d, %r14d
	cmpq	$0, 16(%rsp)
	jle	.L150
.L190:
	movl	$1, %r13d
	.p2align 4,,10
	.p2align 3
.L155:
	movq	$0, (%r15,%r13,8)
	movq	%r13, %rbp
	.p2align 4,,10
	.p2align 3
.L153:
	cmpq	$1, %rbp
	je	.L188
	movq	(%r12,%r14,8), %rdx
	movsd	(%rbx,%rbp,8), %xmm1
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	subq	%r13, %rdi
	movsd	%xmm1, 8(%rsp)
	call	collprob@PLT
	mulsd	8(%rsp), %xmm0
	addsd	(%r15,%r13,8), %xmm0
	movsd	%xmm0, (%r15,%r13,8)
.L152:
	addq	$1, %rbp
	cmpq	%rbp, 16(%rsp)
	jge	.L153
	addq	$1, %r13
	cmpq	24(%rsp), %r13
	jne	.L155
	movsd	.LC12(%rip), %xmm4
	movl	$1, %eax
	movsd	%xmm4, (%r15)
	movapd	%xmm4, %xmm0
	.p2align 4,,10
	.p2align 3
.L156:
	subsd	(%r15,%rax,8), %xmm0
	addq	$1, %rax
	cmpq	24(%rsp), %rax
	movsd	%xmm0, (%r15)
	jne	.L156
	movsd	.LC12(%rip), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
.L170:
	subsd	8(%r15), %xmm0
	movsd	40(%rsp), %xmm3
	ucomisd	%xmm0, %xmm3
	ja	.L189
	addq	$1, %r14
	cmpq	%r14, 32(%rsp)
	je	.L147
	cmpq	$0, 16(%rsp)
	movq	%rbx, %rax
	movq	%r15, %rbx
	movq	%rax, %r15
	jg	.L190
.L150:
	movsd	.LC12(%rip), %xmm6
	pxor	%xmm0, %xmm0
	movsd	%xmm6, (%r15)
	jmp	.L170
.L188:
	movsd	8(%rbx), %xmm0
	movsd	%xmm0, 8(%r15)
	jmp	.L152
.L171:
	movq	%r15, %rax
	movq	%rbx, %r15
	movq	%rax, %rbx
.L147:
	movq	_ZSt4cerr@GOTPCREL(%rip), %r12
	leaq	.LC20(%rip), %rsi
	movl	$23, %edx
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r12), %r13
	testq	%r13, %r13
	je	.L160
	cmpb	$0, 56(%r13)
	je	.L166
	movsbl	67(%r13), %esi
.L167:
	movq	%r12, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	cmpq	$0, 16(%rsp)
	js	.L169
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rdi
	movq	%r15, %rsi
	call	memcpy@PLT
.L169:
	movq	%r15, %rdi
	call	_ZdlPv@PLT
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT
.L189:
	.cfi_restore_state
	cmpq	$0, 16(%rsp)
	js	.L162
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rdi
	movq	%r15, %rsi
	call	memcpy@PLT
.L162:
	movq	%r15, %rdi
	call	_ZdlPv@PLT
	movq	%rbx, %rdi
	call	_ZdlPv@PLT
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.LC19(%rip), %rsi
	movl	$23, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L160
	cmpb	$0, 56(%rbx)
	je	.L163
	movsbl	67(%rbx), %esi
	jmp	.L164
.L163:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	_ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	jne	.L191
.L164:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
.L166:
	.cfi_restore_state
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	_ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	.L167
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L167
.L191:
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L164
.L160:
	call	_ZSt16__throw_bad_castv@PLT
.L145:
	call	__cxa_throw_bad_array_new_length@PLT
	.cfi_endproc
.LFE1976:
	.size	notriple, .-notriple
	.section	.text.unlikely
.LCOLDE22:
	.text
.LHOTE22:
	.section	.text.unlikely
.LCOLDB23:
	.section	.text.startup,"ax",@progbits
.LHOTB23:
	.p2align 4,,15
	.type	_GLOBAL__sub_I_c_simm.cpp, @function
_GLOBAL__sub_I_c_simm.cpp:
.LFB2167:
	.cfi_startproc
	leaq	_ZStL8__ioinit(%rip), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2167:
	.size	_GLOBAL__sub_I_c_simm.cpp, .-_GLOBAL__sub_I_c_simm.cpp
	.section	.text.unlikely
.LCOLDE23:
	.section	.text.startup
.LHOTE23:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_c_simm.cpp
	.local	_ZL8gl_state
	.comm	_ZL8gl_state,8,8
	.data
	.align 8
	.type	_ZL7gl_nmax, @object
	.size	_ZL7gl_nmax, 8
_ZL7gl_nmax:
	.quad	-1000
	.local	_ZL12gl_onemiby2N
	.comm	_ZL12gl_onemiby2N,8,8
	.local	_ZL10gl_altby2N
	.comm	_ZL10gl_altby2N,8,8
	.local	_ZL7gl_idbl
	.comm	_ZL7gl_idbl,8,8
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC12:
	.long	0
	.long	1072693248
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
