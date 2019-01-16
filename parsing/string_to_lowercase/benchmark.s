	.file	"benchmark.cpp"
	.text
	.align 2
	.p2align 4,,15
	.type	_ZNKUlOT_DpOT0_E_clIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_EJSC_EEEDaS0_S3_.isra.26, @function
_ZNKUlOT_DpOT0_E_clIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_EJSC_EEEDaS0_S3_.isra.26:
.LFB4308:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %r12
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	movq	%rsp, %rbx
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%r13, %rsi
	call	*%r12
	movq	(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	.L2
	call	_ZdlPv@PLT
.L2:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movabsq	$3022314549036572937, %rdx
	subq	%rbp, %rax
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$14, %rdx
	movq	%rdx, %rax
	subq	%rcx, %rax
	movq	40(%rsp), %rsi
	xorq	%fs:40, %rsi
	jne	.L6
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4308:
	.size	_ZNKUlOT_DpOT0_E_clIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_EJSC_EEEDaS0_S3_.isra.26, .-_ZNKUlOT_DpOT0_E_clIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_EJSC_EEEDaS0_S3_.isra.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"basic_string::_M_create"
	.text
	.align 2
	.p2align 4,,15
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.isra.38.constprop.51, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.isra.38.constprop.51:
.LFB4333:
	.cfi_startproc
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	js	.L12
	addq	$1, %rdi
	jmp	_Znwm@PLT
.L12:
	leaq	.LC0(%rip), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE4333:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.isra.38.constprop.51, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.isra.38.constprop.51
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"basic_string::_M_construct null not valid"
	.text
	.align 2
	.p2align 4,,15
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.39, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.39:
.LFB4321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	jne	.L14
	testq	%rdx, %rdx
	jne	.L30
.L14:
	movq	%rdx, %rbx
	subq	%rsi, %rbx
	cmpq	$15, %rbx
	movq	%rbx, 16(%rsp)
	ja	.L31
	movq	0(%rbp), %rdx
	cmpq	$1, %rbx
	movq	%rdx, %rax
	je	.L32
	testq	%rbx, %rbx
	jne	.L16
.L18:
	movq	16(%rsp), %rax
	movq	%rax, 8(%rbp)
	movb	$0, (%rdx,%rax)
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L33
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	.cfi_restore_state
	movzbl	(%rsi), %eax
	movb	%al, (%rdx)
	movq	0(%rbp), %rdx
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L31:
	leaq	16(%rsp), %rdi
	movq	%rsi, 8(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.isra.38.constprop.51
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	%rax, 0(%rbp)
	movq	%rdx, 16(%rbp)
.L16:
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	0(%rbp), %rdx
	jmp	.L18
.L30:
	leaq	.LC1(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
.L33:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4321:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.39, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.39
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.41,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.39
	.p2align 4,,15
	.globl	_Z16str_to_lowercaseRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z16str_to_lowercaseRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_Z16str_to_lowercaseRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB3443:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$32, %ecx
	movq	%rdi, %rbx
	movq	%rsi, %r8
	subq	$272, %rsp
	.cfi_def_cfa_offset 288
	movq	%fs:40, %rax
	movq	%rax, 264(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rdi
	rep stosq
	movabsq	$2314885530818453536, %rax
	movq	8(%rsi), %rdi
	movq	%rax, 65(%rsp)
	movq	%rax, 73(%rsp)
	movq	%rax, 81(%rsp)
	movl	$8224, %eax
	movw	%ax, 89(%rsp)
	movq	(%rsi), %rax
	addq	%rax, %rdi
	cmpq	%rax, %rdi
	je	.L35
	.p2align 4,,10
	.p2align 3
.L36:
	movsbq	(%rax), %rcx
	addq	$1, %rax
	movq	%rcx, %rdx
	orb	(%rsp,%rcx), %dl
	movb	%dl, -1(%rax)
	cmpq	%rax, %rdi
	jne	.L36
.L35:
	leaq	16(%rbx), %rax
	movq	%rbx, %rdi
	movq	%rax, (%rbx)
	movq	(%r8), %rsi
	movq	8(%r8), %rdx
	addq	%rsi, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.41
	movq	264(%rsp), %rsi
	xorq	%fs:40, %rsi
	movq	%rbx, %rax
	jne	.L40
	addq	$272, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L40:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3443:
	.size	_Z16str_to_lowercaseRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z16str_to_lowercaseRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align 4,,15
	.globl	_Z17str_to_lowercase2RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z17str_to_lowercase2RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_Z17str_to_lowercase2RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB3444:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %r12
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rsi), %rbx
	movq	8(%rsi), %rbp
	addq	%rbx, %rbp
	cmpq	%rbx, %rbp
	je	.L42
	.p2align 4,,10
	.p2align 3
.L43:
	movsbl	(%rbx), %edi
	addq	$1, %rbx
	call	toupper@PLT
	movb	%al, -1(%rbx)
	cmpq	%rbx, %rbp
	jne	.L43
.L42:
	leaq	16(%r12), %rax
	movq	%r12, %rdi
	movq	%rax, (%r12)
	movq	0(%r13), %rsi
	movq	8(%r13), %rdx
	addq	%rsi, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.41
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3444:
	.size	_Z17str_to_lowercase2RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z17str_to_lowercase2RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align 4,,15
	.globl	_Z17str_to_lowercase3RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z17str_to_lowercase3RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_Z17str_to_lowercase3RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB3445:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r14
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %r13
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rsi), %rbx
	movq	8(%rsi), %r12
	addq	%rbx, %r12
	cmpq	%rbx, %r12
	je	.L47
	.p2align 4,,10
	.p2align 3
.L49:
	movsbl	(%rbx), %edi
	movl	%edi, %ebp
	call	isalpha@PLT
	testl	%eax, %eax
	je	.L48
	orl	$32, %ebp
	movb	%bpl, (%rbx)
.L48:
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jne	.L49
.L47:
	leaq	16(%r13), %rax
	movq	%r13, %rdi
	movq	%rax, 0(%r13)
	movq	(%r14), %rsi
	movq	8(%r14), %rdx
	addq	%rsi, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.41
	popq	%rbx
	.cfi_def_cfa_offset 40
	movq	%r13, %rax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3445:
	.size	_Z17str_to_lowercase3RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z17str_to_lowercase3RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align 4,,15
	.globl	_Z17str_to_lowercase4RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z17str_to_lowercase4RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_Z17str_to_lowercase4RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB3446:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r14
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %r13
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rsi), %rbp
	movq	8(%rsi), %r12
	addq	%rbp, %r12
	cmpq	%rbp, %r12
	je	.L56
	.p2align 4,,10
	.p2align 3
.L58:
	movsbl	0(%rbp), %edi
	movl	%edi, %ebx
	call	isalpha@PLT
	movl	%ebx, %edx
	orl	$32, %edx
	testl	%eax, %eax
	cmovne	%edx, %ebx
	addq	$1, %rbp
	movb	%bl, -1(%rbp)
	cmpq	%rbp, %r12
	jne	.L58
.L56:
	leaq	16(%r13), %rax
	movq	%r13, %rdi
	movq	%rax, 0(%r13)
	movq	(%r14), %rsi
	movq	8(%r14), %rdx
	addq	%rsi, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.41
	popq	%rbx
	.cfi_def_cfa_offset 40
	movq	%r13, %rax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3446:
	.size	_Z17str_to_lowercase4RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z17str_to_lowercase4RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:
.LFB3797:
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
	movq	8(%rdi), %rbp
	movq	(%rdi), %rbx
	cmpq	%rbx, %rbp
	je	.L64
	movq	%rdi, %r12
	.p2align 4,,10
	.p2align 3
.L66:
	movq	(%rbx), %rdi
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L65
	call	_ZdlPv@PLT
.L65:
	addq	$32, %rbx
	cmpq	%rbx, %rbp
	jne	.L66
	movq	(%r12), %rbx
.L64:
	testq	%rbx, %rbx
	je	.L63
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT
	.p2align 4,,10
	.p2align 3
.L63:
	.cfi_restore_state
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3797:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.set	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv:
.LFB4052:
	.cfi_startproc
	movq	4992(%rdi), %rax
	cmpq	$623, %rax
	leaq	1(%rax), %rdx
	ja	.L89
.L72:
	movq	(%rdi,%rax,8), %rax
	movq	%rdx, 4992(%rdi)
	movq	%rax, %rcx
	shrq	$11, %rcx
	movl	%ecx, %edx
	xorq	%rax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rdx
	movq	%rdx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L89:
	leaq	1816(%rdi), %r8
	movq	%rdi, %rax
	movq	%rdi, %rdx
	movl	$2567483615, %r9d
	.p2align 4,,10
	.p2align 3
.L74:
	movq	(%rdx), %rcx
	movq	8(%rdx), %rsi
	andq	$-2147483648, %rcx
	andl	$2147483647, %esi
	orq	%rsi, %rcx
	movq	%rcx, %rsi
	shrq	%rsi
	xorq	3176(%rdx), %rsi
	andl	$1, %ecx
	je	.L73
	xorq	%r9, %rsi
.L73:
	movq	%rsi, (%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %r8
	jne	.L74
	leaq	3168(%rdi), %rsi
	movl	$2567483615, %r8d
	.p2align 4,,10
	.p2align 3
.L76:
	movq	1816(%rax), %rdx
	movq	1824(%rax), %rcx
	andq	$-2147483648, %rdx
	andl	$2147483647, %ecx
	orq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	%rcx
	xorq	(%rax), %rcx
	andl	$1, %edx
	je	.L75
	xorq	%r8, %rcx
.L75:
	movq	%rcx, 1816(%rax)
	addq	$8, %rax
	cmpq	%rax, %rsi
	jne	.L76
	movq	4984(%rdi), %rax
	movq	(%rdi), %rdx
	andq	$-2147483648, %rax
	andl	$2147483647, %edx
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	%rdx
	xorq	3168(%rdi), %rdx
	testb	$1, %al
	je	.L77
	movl	$2567483615, %eax
	xorq	%rax, %rdx
.L77:
	movq	%rdx, 4984(%rdi)
	xorl	%eax, %eax
	movl	$1, %edx
	jmp	.L72
	.cfi_endproc
.LFE4052:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.section	.text._ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE, @function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE:
.LFB3940:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
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
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movslq	4(%rdx), %r15
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movslq	(%rdx), %rax
	subq	%rax, %r15
	movl	$4294967294, %eax
	cmpq	%rax, %r15
	ja	.L91
	leaq	1(%r15), %r12
	addq	$1, %rax
	xorl	%edx, %edx
	divq	%r12
	imulq	%rax, %r12
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L92:
	movq	%rbx, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	cmpq	%rax, %r12
	jbe	.L92
	xorl	%edx, %edx
	divq	%r13
.L93:
	addl	0(%rbp), %eax
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L106
	addq	$40, %rsp
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
	ret
	.p2align 4,,10
	.p2align 3
.L91:
	.cfi_restore_state
	movl	$4294967295, %eax
	cmpq	%rax, %r15
	jne	.L107
	movq	%rsi, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L107:
	leaq	16(%rsp), %rax
	movq	%rdi, %r13
	movabsq	$-4294967296, %r12
	movq	%rax, 8(%rsp)
.L98:
	movq	8(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%r12, 16(%rsp)
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	movq	%rbx, %rdi
	movl	%eax, %r14d
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%r14, %rdx
	salq	$32, %rdx
	addq	%rdx, %rax
	setc	%dl
	cmpq	%rax, %r15
	movzbl	%dl, %edx
	jb	.L98
	testq	%rdx, %rdx
	jne	.L98
	jmp	.L93
.L106:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3940:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE, .-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.section	.rodata.str1.1
.LC2:
	.string	"default"
	.text
	.p2align 4,,15
	.globl	_Z22generate_random_stringB5cxx11j
	.type	_Z22generate_random_stringB5cxx11j, @function
_Z22generate_random_stringB5cxx11j:
.LFB3439:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3439
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	leaq	7+.LC2(%rip), %rdx
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	%esi, %ebx
	leaq	-7(%rdx), %rsi
	subq	$10064, %rsp
	.cfi_def_cfa_offset 10112
	leaq	16(%rsp), %r12
	leaq	5056(%rsp), %r13
	movq	%fs:40, %rax
	movq	%rax, 10056(%rsp)
	xorl	%eax, %eax
	leaq	16(%r12), %rax
	movq	%r12, %rdi
	movq	%rax, 16(%rsp)
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.39
.LEHE0:
	movq	%r12, %rsi
	movq	%r13, %rdi
.LEHB1:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE1:
	movq	%r13, %rdi
.LEHB2:
	call	_ZNSt13random_device9_M_getvalEv@PLT
.LEHE2:
	movl	%eax, %ecx
	movl	$1, %edx
	leaq	48(%rsp), %r14
	movq	%rcx, 48(%rsp)
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L128:
	movq	-8(%r14,%rdx,8), %rcx
.L110:
	movq	%rcx, %rax
	shrq	$30, %rax
	xorq	%rcx, %rax
	imulq	$1812433253, %rax, %rax
	addl	%edx, %eax
	movq	%rax, (%r14,%rdx,8)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	.L128
	movq	%r13, %rdi
	movq	$624, 5040(%rsp)
	addq	$16, %r12
	call	_ZNSt13random_device7_M_finiEv@PLT
	movq	16(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L111
	call	_ZdlPv@PLT
.L111:
	movabsq	$523986010160, %rax
	movl	%ebx, %edx
	movq	%rax, 8(%rsp)
	leaq	16(%rbp), %rax
	cmpq	$15, %rdx
	movq	%rdx, (%rsp)
	movq	%rax, 0(%rbp)
	ja	.L129
.L112:
	testq	%rdx, %rdx
	je	.L113
	cmpq	$1, %rdx
	je	.L130
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	(%rsp), %rdx
	movq	0(%rbp), %rax
.L113:
	movq	%rdx, 8(%rbp)
	movb	$0, (%rax,%rdx)
	movq	0(%rbp), %rbx
	movq	8(%rbp), %r13
	addq	%rbx, %r13
	cmpq	%rbx, %r13
	je	.L108
	leaq	8(%rsp), %r12
	.p2align 4,,10
	.p2align 3
.L116:
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%r12, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	addq	$1, %rbx
	movb	%al, -1(%rbx)
	cmpq	%rbx, %r13
	jne	.L116
.L108:
	movq	10056(%rsp), %rsi
	xorq	%fs:40, %rsi
	movq	%rbp, %rax
	jne	.L131
	addq	$10064, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L130:
	.cfi_restore_state
	movb	$0, (%rax)
	movq	(%rsp), %rdx
	movq	0(%rbp), %rax
	jmp	.L113
.L129:
	movq	%rsp, %rdi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.isra.38.constprop.51
.LEHE3:
	movq	(%rsp), %rdx
	movq	%rax, 0(%rbp)
	movq	%rdx, 16(%rbp)
	jmp	.L112
.L122:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZNSt13random_device7_M_finiEv@PLT
.L118:
	movq	16(%rsp), %rdi
	addq	$16, %r12
	cmpq	%r12, %rdi
	je	.L119
	call	_ZdlPv@PLT
.L119:
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L121:
	movq	%rax, %rbx
	jmp	.L118
.L131:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3439:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3439:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3439-.LLSDACSB3439
.LLSDACSB3439:
	.uleb128 .LEHB0-.LFB3439
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3439
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L121-.LFB3439
	.uleb128 0
	.uleb128 .LEHB2-.LFB3439
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L122-.LFB3439
	.uleb128 0
	.uleb128 .LEHB3-.LFB3439
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB3439
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE3439:
	.text
	.size	_Z22generate_random_stringB5cxx11j, .-_Z22generate_random_stringB5cxx11j
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:
.LFB4066:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %r14
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	subq	%rcx, %rax
	subq	%rcx, %r13
	sarq	$5, %rax
	testq	%rax, %rax
	je	.L150
	leaq	(%rax,%rax), %rcx
	movq	$-32, %r12
	cmpq	%rcx, %rax
	jbe	.L161
.L134:
	movq	%r12, %rdi
	movq	%rdx, 8(%rsp)
	movq	%rsi, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rsi
	movq	8(%rsp), %rdx
	leaq	32(%rax), %rbx
	movq	%rax, %rbp
	addq	%rax, %r12
.L135:
	addq	%rbp, %r13
	movq	(%rdx), %rcx
	leaq	16(%r13), %rax
	movq	%rax, 0(%r13)
	leaq	16(%rdx), %rax
	cmpq	%rax, %rcx
	je	.L162
	movq	%rcx, 0(%r13)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%r13)
.L137:
	movq	8(%rdx), %rcx
	movq	%rax, (%rdx)
	movq	$0, 8(%rdx)
	movb	$0, 16(%rdx)
	movq	(%r14), %rdx
	movq	%rcx, 8(%r13)
	cmpq	%rsi, %rdx
	je	.L138
	leaq	16(%rdx), %rax
	movq	%rsi, %rdi
	addq	$32, %rdx
	subq	%rdx, %rdi
	movq	%rbp, %rbx
	movq	%rdi, %rdx
	andq	$-32, %rdx
	leaq	32(%rbp,%rdx), %rcx
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L139:
	movq	%rdx, (%rbx)
	movq	(%rax), %rdx
	movq	%rdx, 16(%rbx)
.L140:
	movq	-8(%rax), %rdx
	movq	%rdx, 8(%rbx)
	leaq	32(%rbx), %rdx
	movq	$0, -8(%rax)
	movb	$0, (%rax)
	movq	%rax, -16(%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	je	.L163
	movq	%rdx, %rbx
.L141:
	leaq	16(%rbx), %rdx
	movq	%rdx, (%rbx)
	movq	-16(%rax), %rdx
	cmpq	%rax, %rdx
	jne	.L139
	movdqu	(%rax), %xmm0
	movups	%xmm0, 16(%rbx)
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L163:
	addq	$64, %rbx
.L138:
	movq	8(%r14), %rdx
	cmpq	%rsi, %rdx
	je	.L142
	leaq	16(%rsi), %rax
	addq	$32, %rsi
	subq	%rsi, %rdx
	andq	$-32, %rdx
	leaq	32(%rbx,%rdx), %rcx
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L143:
	movq	%rdx, (%rbx)
	movq	(%rax), %rdx
	movq	%rdx, 16(%rbx)
.L144:
	movq	-8(%rax), %rdx
	addq	$32, %rbx
	movq	$0, -8(%rax)
	movb	$0, (%rax)
	movq	%rax, -16(%rax)
	addq	$32, %rax
	movq	%rdx, -24(%rbx)
	cmpq	%rcx, %rbx
	je	.L164
.L145:
	leaq	16(%rbx), %rdx
	movq	%rdx, (%rbx)
	movq	-16(%rax), %rdx
	cmpq	%rax, %rdx
	jne	.L143
	movdqu	(%rax), %xmm0
	movups	%xmm0, 16(%rbx)
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L164:
	movq	8(%r14), %r15
.L142:
	movq	(%r14), %r13
	cmpq	%r15, %r13
	je	.L146
	.p2align 4,,10
	.p2align 3
.L148:
	movq	0(%r13), %rdi
	leaq	16(%r13), %rax
	cmpq	%rax, %rdi
	je	.L147
	call	_ZdlPv@PLT
.L147:
	addq	$32, %r13
	cmpq	%r15, %r13
	jne	.L148
	movq	(%r14), %r15
.L146:
	testq	%r15, %r15
	je	.L149
	movq	%r15, %rdi
	call	_ZdlPv@PLT
.L149:
	movq	%rbp, (%r14)
	movq	%rbx, 8(%r14)
	movq	%r12, 16(%r14)
	addq	$24, %rsp
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
	ret
	.p2align 4,,10
	.p2align 3
.L150:
	.cfi_restore_state
	movl	$1, %ecx
.L133:
	salq	$5, %rcx
	movq	%rcx, %r12
	jmp	.L134
	.p2align 4,,10
	.p2align 3
.L162:
	movdqu	16(%rdx), %xmm0
	movups	%xmm0, 16(%r13)
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L161:
	movabsq	$576460752303423487, %rax
	cmpq	%rax, %rcx
	ja	.L134
	testq	%rcx, %rcx
	jne	.L133
	movl	$32, %ebx
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	jmp	.L135
	.cfi_endproc
.LFE4066:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_:
.LFB3967:
	.cfi_startproc
	movq	8(%rdi), %rax
	cmpq	16(%rdi), %rax
	je	.L166
	leaq	16(%rax), %rdx
	movq	%rdx, (%rax)
	movq	(%rsi), %rcx
	leaq	16(%rsi), %rdx
	cmpq	%rdx, %rcx
	je	.L173
	movq	%rcx, (%rax)
	movq	16(%rsi), %rcx
	movq	%rcx, 16(%rax)
.L168:
	movq	8(%rsi), %rcx
	movq	%rcx, 8(%rax)
	movb	$0, 16(%rsi)
	movq	8(%rdi), %rax
	movq	%rdx, (%rsi)
	movq	$0, 8(%rsi)
	addq	$32, %rax
	movq	%rax, 8(%rdi)
	subq	$32, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L173:
	movdqu	16(%rsi), %xmm0
	movups	%xmm0, 16(%rax)
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L166:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	movq	%rax, %rsi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	movq	8(%rbx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	subq	$32, %rax
	ret
	.cfi_endproc
.LFE3967:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB3447:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3447
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$3000000, %esi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$96, %rsp
	.cfi_def_cfa_offset 128
	leaq	48(%rsp), %rbx
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	$0, 32(%rsp)
	leaq	16(%rsp), %rbp
.LEHB5:
	call	_Z22generate_random_stringB5cxx11j
.LEHE5:
	leaq	16(%rsp), %rbp
	movq	%rbx, %rsi
	movq	%rbp, %rdi
.LEHB6:
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_
.LEHE6:
	movq	48(%rsp), %rdi
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L175
	call	_ZdlPv@PLT
.L175:
	movl	$3000000, %esi
	movq	%rbx, %rdi
.LEHB7:
	call	_Z22generate_random_stringB5cxx11j
.LEHE7:
	movq	%rbx, %rsi
	movq	%rbp, %rdi
.LEHB8:
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_
.LEHE8:
	movq	48(%rsp), %rdi
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L176
	call	_ZdlPv@PLT
.L176:
	movl	$3000000, %esi
	movq	%rbx, %rdi
.LEHB9:
	call	_Z22generate_random_stringB5cxx11j
.LEHE9:
	movq	%rbx, %rsi
	movq	%rbp, %rdi
.LEHB10:
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_
.LEHE10:
	movq	48(%rsp), %rdi
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L177
	call	_ZdlPv@PLT
.L177:
	movl	$3000000, %esi
	movq	%rbx, %rdi
.LEHB11:
	call	_Z22generate_random_stringB5cxx11j
.LEHE11:
	movq	%rbx, %rsi
	movq	%rbp, %rdi
.LEHB12:
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_
.LEHE12:
	movq	48(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	.L178
	call	_ZdlPv@PLT
.L178:
	movq	16(%rsp), %rsi
	leaq	_Z16str_to_lowercaseRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rdi
.LEHB13:
	call	_ZNKUlOT_DpOT0_E_clIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_EJSC_EEEDaS0_S3_.isra.26
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	16(%rsp), %rax
	leaq	_Z17str_to_lowercase2RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rdi
	leaq	32(%rax), %rsi
	call	_ZNKUlOT_DpOT0_E_clIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_EJSC_EEEDaS0_S3_.isra.26
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	16(%rsp), %rax
	leaq	_Z17str_to_lowercase3RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rdi
	leaq	64(%rax), %rsi
	call	_ZNKUlOT_DpOT0_E_clIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_EJSC_EEEDaS0_S3_.isra.26
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	16(%rsp), %rax
	leaq	_Z17str_to_lowercase4RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rdi
	leaq	96(%rax), %rsi
	call	_ZNKUlOT_DpOT0_E_clIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_EJSC_EEEDaS0_S3_.isra.26
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE13:
	movq	%rbp, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	xorl	%eax, %eax
	movq	88(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L201
	addq	$96, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L201:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L193:
.L198:
	movq	48(%rsp), %rdi
	addq	$16, %rbx
	movq	%rax, %r12
	cmpq	%rbx, %rdi
	je	.L187
	call	_ZdlPv@PLT
.L187:
	movq	%r12, %rax
.L181:
	movq	%rbp, %rdi
	movq	%rax, 8(%rsp)
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	movq	8(%rsp), %rax
	movq	%rax, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L192:
	jmp	.L198
.L191:
	jmp	.L198
.L190:
	jmp	.L198
.L189:
	jmp	.L181
	.cfi_endproc
.LFE3447:
	.section	.gcc_except_table
.LLSDA3447:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3447-.LLSDACSB3447
.LLSDACSB3447:
	.uleb128 .LEHB5-.LFB3447
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L189-.LFB3447
	.uleb128 0
	.uleb128 .LEHB6-.LFB3447
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L190-.LFB3447
	.uleb128 0
	.uleb128 .LEHB7-.LFB3447
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L189-.LFB3447
	.uleb128 0
	.uleb128 .LEHB8-.LFB3447
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L191-.LFB3447
	.uleb128 0
	.uleb128 .LEHB9-.LFB3447
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L189-.LFB3447
	.uleb128 0
	.uleb128 .LEHB10-.LFB3447
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L192-.LFB3447
	.uleb128 0
	.uleb128 .LEHB11-.LFB3447
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L189-.LFB3447
	.uleb128 0
	.uleb128 .LEHB12-.LFB3447
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L193-.LFB3447
	.uleb128 0
	.uleb128 .LEHB13-.LFB3447
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L189-.LFB3447
	.uleb128 0
	.uleb128 .LEHB14-.LFB3447
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE3447:
	.section	.text.startup
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z22generate_random_stringB5cxx11j, @function
_GLOBAL__sub_I__Z22generate_random_stringB5cxx11j:
.LFB4281:
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
.LFE4281:
	.size	_GLOBAL__sub_I__Z22generate_random_stringB5cxx11j, .-_GLOBAL__sub_I__Z22generate_random_stringB5cxx11j
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z22generate_random_stringB5cxx11j
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
