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
.LFB1210:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1210:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text.unlikely._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LCOLDE0:
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LHOTE0:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	collprob
	.type	collprob, @function
collprob:
.LFB1453:
	.cfi_startproc
	vxorpd	%xmm2, %xmm2, %xmm2
	leal	(%rdi,%rdi), %ecx
	addl	%edx, %edx
	testl	%ecx, %ecx
	vcvtsi2sd	%edx, %xmm2, %xmm2
	jle	.L19
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$1, %eax
	vcvtsi2sd	%esi, %xmm0, %xmm0
.L9:
	cmpl	%ecx, %eax
	je	.L3
.L6:
	vxorpd	%xmm1, %xmm1, %xmm1
	movl	%esi, %edx
	subl	%eax, %edx
	testb	$1, %al
	vcvtsi2sd	%edx, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
	jne	.L15
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	.L6
.L3:
	subl	%edi, %esi
	subl	$1, %esi
	testl	%esi, %esi
	jle	.L16
	vmovsd	.LC1(%rip), %xmm3
	.p2align 4,,10
	.p2align 3
.L8:
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sd	%esi, %xmm1, %xmm1
	vdivsd	%xmm2, %xmm1, %xmm1
	subl	$1, %esi
	vsubsd	%xmm1, %xmm3, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
	jne	.L8
	rep ret
	.p2align 4,,10
	.p2align 3
.L15:
	vxorpd	%xmm1, %xmm1, %xmm1
	addl	$1, %eax
	vcvtsi2sd	%eax, %xmm1, %xmm1
	vmulsd	%xmm2, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	jmp	.L9
.L16:
	rep ret
.L19:
	vmovsd	.LC1(%rip), %xmm0
	jmp	.L3
	.cfi_endproc
.LFE1453:
	.size	collprob, .-collprob
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"Finished on generation "
.LC5:
	.string	"Did not reach tolerance"
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	onlydouble
	.type	onlydouble, @function
onlydouble:
.LFB1454:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	1(%rdi), %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movabsq	$1143914305352105984, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	cmpq	%rax, %r15
	movq	%rdi, 8(%rsp)
	movq	%rsi, 72(%rsp)
	vmovsd	%xmm0, 64(%rsp)
	movq	%rcx, 48(%rsp)
	ja	.L21
	leaq	0(,%r15,8), %rax
	movq	%rdi, %rbx
	movq	%rdx, %r13
	movq	%rax, %r14
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	call	_Znam@PLT
	movq	%r14, %rdi
	movq	%rax, 32(%rsp)
	call	_Znam@PLT
	testq	%rbx, %rbx
	movq	%rax, %r15
	js	.L25
	movq	40(%rsp), %rdx
	movq	32(%rsp), %rdi
	xorl	%esi, %esi
	call	memset@PLT
.L25:
	xorl	%r14d, %r14d
	cmpq	$0, 48(%rsp)
	movq	32(%rsp), %rax
	movq	40(%rsp), %rdi
	vmovsd	.LC1(%rip), %xmm5
	vmovsd	%xmm5, -8(%rax,%rdi)
	jle	.L65
.L42:
	addq	$8, %rax
	movl	$1, %r12d
	cmpq	%r12, 8(%rsp)
	movq	%rax, 24(%rsp)
	movq	%r13, %rax
	movl	%r12d, %ebx
	movl	%r14d, 60(%rsp)
	movq	%r15, %r13
	movq	%r14, %r15
	movq	%rax, %r14
	jl	.L26
	.p2align 4,,10
	.p2align 3
.L67:
	leal	1(%r12), %eax
	movq	$0, 0(%r13,%r12,8)
	xorl	%ebp, %ebp
	movl	%eax, 56(%rsp)
	movq	%r14, %rax
	movq	%r15, %r14
	movq	%r12, %r15
	movq	%rax, %r12
	.p2align 4,,10
	.p2align 3
.L27:
	leaq	(%r15,%rbp), %rax
	cmpq	%rax, 8(%rsp)
	jl	.L29
	cmpl	$1, %ebx
	je	.L66
	movq	24(%rsp), %rax
	movl	(%r12,%r14,8), %edx
	movl	%ebx, %esi
	movl	%ebp, %edi
	vmovsd	(%rax,%rbp,8), %xmm1
	vmovsd	%xmm1, 16(%rsp)
	call	collprob@PLT
	vmulsd	16(%rsp), %xmm0, %xmm0
	vaddsd	0(%r13,%r15,8), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%r15,8)
.L29:
	addl	$1, %ebx
	addq	$1, %rbp
	cmpl	%ebx, 56(%rsp)
	jge	.L27
	movq	%r12, %rax
	movq	%r15, %r12
	addq	$8, 24(%rsp)
	addq	$1, %r12
	cmpq	%r12, 8(%rsp)
	movq	%r14, %r15
	movl	%r12d, %ebx
	movq	%rax, %r14
	jge	.L67
.L26:
	cmpq	$0, 8(%rsp)
	vmovsd	.LC1(%rip), %xmm2
	movq	%r14, %rax
	movq	%r15, %r14
	movq	%r13, %r15
	vmovsd	%xmm2, (%r15)
	movq	%rax, %r13
	vxorpd	%xmm0, %xmm0, %xmm0
	jle	.L32
	movq	40(%rsp), %rsi
	leaq	8(%r15), %rax
	vmovapd	%xmm2, %xmm0
	leaq	(%r15,%rsi), %rdx
	.p2align 4,,10
	.p2align 3
.L33:
	vsubsd	(%rax), %xmm0, %xmm0
	addq	$8, %rax
	cmpq	%rax, %rdx
	vmovsd	%xmm0, (%r15)
	jne	.L33
	vmovsd	.LC1(%rip), %xmm3
	vsubsd	%xmm0, %xmm3, %xmm0
.L32:
	vsubsd	8(%r15), %xmm0, %xmm0
	vmovsd	64(%rsp), %xmm4
	vucomisd	%xmm0, %xmm4
	ja	.L68
	addq	$1, %r14
	cmpq	%r14, 48(%rsp)
	je	.L23
	movq	32(%rsp), %rax
	movq	%r15, 32(%rsp)
	movq	%rax, %r15
	movq	32(%rsp), %rax
	jmp	.L42
.L68:
	cmpq	$0, 8(%rsp)
	js	.L39
	movq	40(%rsp), %rdx
	movq	72(%rsp), %rdi
	movq	%r15, %rsi
	call	memcpy@PLT
.L39:
	movq	%r15, %rdi
	call	_ZdlPv@PLT
	movq	32(%rsp), %rdi
	call	_ZdlPv@PLT
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.LC4(%rip), %rsi
	movl	$23, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	60(%rsp), %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L37
	cmpb	$0, 56(%rbx)
	je	.L40
	movsbl	67(%rbx), %esi
	jmp	.L41
.L65:
	movq	%r15, %rax
	movq	32(%rsp), %r15
	movq	%rax, 32(%rsp)
.L23:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbp
	leaq	.LC5(%rip), %rsi
	movl	$23, %edx
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	0(%rbp), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%rbp), %r12
	testq	%r12, %r12
	je	.L37
	cmpb	$0, 56(%r12)
	je	.L43
	movsbl	67(%r12), %esi
.L44:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	cmpq	$0, 8(%rsp)
	js	.L46
	movq	40(%rsp), %rdx
	movq	72(%rsp), %rdi
	movq	%r15, %rsi
	call	memcpy@PLT
.L46:
	movq	%r15, %rdi
	call	_ZdlPv@PLT
	movq	32(%rsp), %rdi
	addq	$88, %rsp
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
.L40:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	_ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	jne	.L69
.L41:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	addq	$88, %rsp
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
.L43:
	.cfi_restore_state
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	_ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	.L44
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L66:
	movq	32(%rsp), %rax
	vmovsd	8(%rax), %xmm0
	vmovsd	%xmm0, 8(%r13)
	jmp	.L29
.L69:
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L41
.L21:
	call	__cxa_throw_bad_array_new_length@PLT
.L37:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE1454:
	.size	onlydouble, .-onlydouble
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.globl	notriple
	.type	notriple, @function
notriple:
.LFB1455:
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
	movq	%rdi, %rbx
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	%rdi, (%rsp)
	movq	%rax, 32(%rsp)
	movq	%rax, %rdi
	movabsq	$1143914305352105984, %rax
	movq	%rsi, 72(%rsp)
	movq	%rcx, 48(%rsp)
	cmpq	%rax, %rdi
	vmovsd	%xmm0, 64(%rsp)
	ja	.L71
	movq	%rdi, %rax
	movq	%rdx, %r13
	salq	$3, %rax
	movq	%rax, %r14
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	call	_Znam@PLT
	movq	%r14, %rdi
	movq	%rax, 24(%rsp)
	call	_Znam@PLT
	testq	%rbx, %rbx
	movq	%rax, %r15
	js	.L75
	movq	40(%rsp), %rdx
	movq	24(%rsp), %rdi
	xorl	%esi, %esi
	call	memset@PLT
.L75:
	xorl	%r14d, %r14d
	cmpq	$0, 48(%rsp)
	movq	24(%rsp), %rax
	movq	40(%rsp), %rdi
	vmovsd	.LC1(%rip), %xmm5
	vmovsd	%xmm5, -8(%rax,%rdi)
	jle	.L120
	cmpq	$0, (%rsp)
	movl	%r14d, 60(%rsp)
	jle	.L76
.L124:
	movq	24(%rsp), %rax
	movl	$1, %ebp
	addq	$8, %rax
	movq	%rax, 16(%rsp)
	movq	%r13, %rax
	movq	%rbp, %r13
	movq	%r15, %rbp
	movq	%r14, %r15
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L79:
	xorl	%ebx, %ebx
	cmpq	%r13, (%rsp)
	movl	%r13d, %r12d
	movq	$0, 0(%rbp,%r13,8)
	jl	.L82
	movq	%r14, %rax
	movq	%r15, %r14
	movq	%rax, %r15
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L122:
	movq	24(%rsp), %rax
	vmovsd	8(%rax), %xmm0
	vmovsd	%xmm0, 8(%rbp)
.L81:
	addq	$1, %rbx
	addl	$1, %r12d
	leaq	0(%r13,%rbx), %rax
	cmpq	%rax, (%rsp)
	jl	.L121
.L109:
	cmpl	$1, %r12d
	je	.L122
	movq	16(%rsp), %rax
	movl	(%r15,%r14,8), %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	vmovsd	(%rax,%rbx,8), %xmm1
	vmovsd	%xmm1, 8(%rsp)
	call	collprob@PLT
	vmulsd	8(%rsp), %xmm0, %xmm0
	vaddsd	0(%rbp,%r13,8), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%rbp,%r13,8)
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L121:
	movq	%r15, %rax
	movq	%r14, %r15
	movq	%rax, %r14
.L82:
	addq	$1, %r13
	addq	$8, 16(%rsp)
	cmpq	32(%rsp), %r13
	jne	.L79
	movq	40(%rsp), %rsi
	vmovsd	.LC1(%rip), %xmm2
	leaq	8(%rbp), %rax
	movq	%r14, %r13
	movq	%r15, %r14
	vmovsd	%xmm2, 0(%rbp)
	vmovapd	%xmm2, %xmm0
	leaq	0(%rbp,%rsi), %rdx
	movq	%rbp, %r15
	.p2align 4,,10
	.p2align 3
.L84:
	vsubsd	(%rax), %xmm0, %xmm0
	addq	$8, %rax
	cmpq	%rax, %rdx
	vmovsd	%xmm0, (%r15)
	jne	.L84
	vmovsd	.LC1(%rip), %xmm3
	vsubsd	%xmm0, %xmm3, %xmm0
.L98:
	vsubsd	8(%r15), %xmm0, %xmm0
	vmovsd	64(%rsp), %xmm4
	vucomisd	%xmm0, %xmm4
	ja	.L123
	addq	$1, %r14
	cmpq	%r14, 48(%rsp)
	je	.L73
	cmpq	$0, (%rsp)
	movq	24(%rsp), %rax
	movl	%r14d, 60(%rsp)
	movq	%r15, 24(%rsp)
	movq	%rax, %r15
	jg	.L124
.L76:
	vmovsd	.LC1(%rip), %xmm6
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm6, (%r15)
	jmp	.L98
.L120:
	movq	%r15, %rax
	movq	24(%rsp), %r15
	movq	%rax, 24(%rsp)
.L73:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbp
	leaq	.LC5(%rip), %rsi
	movl	$23, %edx
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	0(%rbp), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%rbp), %r13
	testq	%r13, %r13
	je	.L88
	cmpb	$0, 56(%r13)
	je	.L94
	movsbl	67(%r13), %esi
.L95:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	cmpq	$0, (%rsp)
	js	.L97
	movq	40(%rsp), %rdx
	movq	72(%rsp), %rdi
	movq	%r15, %rsi
	call	memcpy@PLT
.L97:
	movq	%r15, %rdi
	call	_ZdlPv@PLT
	movq	24(%rsp), %rdi
	addq	$88, %rsp
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
.L123:
	.cfi_restore_state
	cmpq	$0, (%rsp)
	js	.L90
	movq	40(%rsp), %rdx
	movq	72(%rsp), %rdi
	movq	%r15, %rsi
	call	memcpy@PLT
.L90:
	movq	%r15, %rdi
	call	_ZdlPv@PLT
	movq	24(%rsp), %rdi
	call	_ZdlPv@PLT
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.LC4(%rip), %rsi
	movl	$23, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	60(%rsp), %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L88
	cmpb	$0, 56(%rbx)
	je	.L91
	movsbl	67(%rbx), %esi
	jmp	.L92
.L91:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	_ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	jne	.L125
.L92:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	addq	$88, %rsp
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
.L94:
	.cfi_restore_state
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	_ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	.L95
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L95
.L125:
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L92
.L88:
	call	_ZSt16__throw_bad_castv@PLT
.L71:
	call	__cxa_throw_bad_array_new_length@PLT
	.cfi_endproc
.LFE1455:
	.size	notriple, .-notriple
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	test
	.type	test, @function
test:
.LFB1456:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$11, %edx
	movl	$6, %esi
	movl	$1, %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	collprob@PLT
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L132
	cmpb	$0, 56(%rbx)
	je	.L128
	movsbl	67(%rbx), %esi
.L129:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
	.p2align 4,,10
	.p2align 3
.L128:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	_ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	.L129
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L129
.L132:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE1456:
	.size	test, .-test
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
.LCOLDB9:
	.section	.text.startup,"ax",@progbits
.LHOTB9:
	.p2align 4,,15
	.type	_GLOBAL__sub_I_c_simm.cpp, @function
_GLOBAL__sub_I_c_simm.cpp:
.LFB1647:
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
.LFE1647:
	.size	_GLOBAL__sub_I_c_simm.cpp, .-_GLOBAL__sub_I_c_simm.cpp
	.section	.text.unlikely
.LCOLDE9:
	.section	.text.startup
.LHOTE9:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_c_simm.cpp
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
