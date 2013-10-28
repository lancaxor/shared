	.file	"cmain.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.globl	sin_mac
	.bss
	.align 4
	.type	sin_mac, @object
	.size	sin_mac, 4
sin_mac:
	.zero	4
	.globl	sin_inIP
	.align 4
	.type	sin_inIP, @object
	.size	sin_inIP, 4
sin_inIP:
	.zero	4
	.globl	sin_outIP
	.align 4
	.type	sin_outIP, @object
	.size	sin_outIP, 4
sin_outIP:
	.zero	4
	.globl	l_mac
	.align 8
	.type	l_mac, @object
	.size	l_mac, 8
l_mac:
	.zero	8
	.globl	l_out
	.align 8
	.type	l_out, @object
	.size	l_out, 8
l_out:
	.zero	8
	.globl	noFound
	.data
	.type	noFound, @object
	.size	noFound, 1
noFound:
	.byte	1
	.globl	firstParamLen
	.bss
	.align 4
	.type	firstParamLen, @object
	.size	firstParamLen, 4
firstParamLen:
	.zero	4
	.text
	.globl	_Z14SplitConvertIpPc
	.type	_Z14SplitConvertIpPc, @function
_Z14SplitConvertIpPc:
.LFB973:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA973
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-49(%rbp), %rdx
	movq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE0:
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZNKSs6lengthEv
	movl	%eax, firstParamLen(%rip)
	movl	$0, -20(%rbp)
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	movl	$46, %esi
	movq	%rax, %rdi
	call	_ZNKSs4findEcm
	movl	%eax, -24(%rbp)
	movl	$16, %edi
	call	_Znam
	movq	%rax, -40(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L2
.L3:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-48(%rbp), %rax
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZNKSs6substrEmm
.LEHE1:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB2:
	call	_ZNKSs5c_strEv
.LEHE2:
	movq	%rax, %rdi
	call	atoi
	movl	%eax, (%rbx)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSsD1Ev
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	movl	$46, %esi
	movq	%rax, %rdi
	call	_ZNKSs4findEcm
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-64(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	_ZNKSs4findEcm
.LEHE3:
	movl	%eax, -24(%rbp)
	addl	$1, -28(%rbp)
.L2:
	cmpl	$3, -28(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L3
	movq	-40(%rbp), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSsD1Ev
.LEHE4:
	movq	%rbx, %rax
	jmp	.L13
.L9:
	movq	%rax, %rbx
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	jmp	.L6
.L12:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L8
.L11:
	movq	%rax, %rbx
.L8:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	jmp	.L6
.L10:
.L6:
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L13:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE973:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA973:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE973-.LLSDACSB973
.LLSDACSB973:
	.uleb128 .LEHB0-.LFB973
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L9-.LFB973
	.uleb128 0
	.uleb128 .LEHB1-.LFB973
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L11-.LFB973
	.uleb128 0
	.uleb128 .LEHB2-.LFB973
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L12-.LFB973
	.uleb128 0
	.uleb128 .LEHB3-.LFB973
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L11-.LFB973
	.uleb128 0
	.uleb128 .LEHB4-.LFB973
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L10-.LFB973
	.uleb128 0
	.uleb128 .LEHB5-.LFB973
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE973:
	.text
	.size	_Z14SplitConvertIpPc, .-_Z14SplitConvertIpPc
	.section	.rodata
	.align 8
.LC0:
	.string	"Ussage: mac2ip [subnet IP] [MAC]"
	.align 8
.LC1:
	.string	"Params format: xxx.xxx.xxx.xxx"
.LC2:
	.string	"xxx -- number from 0 to 255"
.LC3:
	.string	"join!"
	.text
	.globl	_Z7OutHelpv
	.type	_Z7OutHelpv, @function
_Z7OutHelpv:
.LFB974:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC0, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE974:
	.size	_Z7OutHelpv, .-_Z7OutHelpv
	.section	.rodata
.LC4:
	.string	"MAC & IP required!"
.LC5:
	.string	"HELP/0"
.LC6:
	.string	"MAC required!"
.LC7:
	.string	"Incorrect MAC"
.LC8:
	.string	"Incorrect IP"
.LC9:
	.string	"MAC: "
.LC10:
	.string	"Outer IP: "
	.align 8
.LC11:
	.string	"-----------------------------------------"
.LC12:
	.string	"Inner IPs:"
.LC13:
	.string	"No Addresses found!"
.LC14:
	.string	""
.LC15:
	.string	"pause"
	.text
	.globl	main
	.type	main, @function
main:
.LFB975:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	cmpl	$1, -52(%rbp)
	jg	.L16
	movl	$.LC4, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	call	_Z7OutHelpv
	movl	$1, %eax
	jmp	.L17
.L16:
	cmpl	$2, -52(%rbp)
	jg	.L18
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z14SplitConvertIpPc
	movl	$0, -20(%rbp)
	jmp	.L19
.L20:
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rbx
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
.L19:
	movl	firstParamLen(%rip), %eax
	cmpl	%eax, -20(%rbp)
	setl	%al
	testb	%al, %al
	jne	.L20
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L21
	call	_Z7OutHelpv
	movl	$5, %eax
	jmp	.L17
.L21:
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$2, %eax
	jmp	.L17
.L18:
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	inet_addr
	movl	%eax, %eax
	movq	%rax, l_mac(%rip)
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	inet_addr
	movl	%eax, %eax
	movq	%rax, l_out(%rip)
	movq	l_mac(%rip), %rax
	movl	%eax, sin_mac(%rip)
	movq	l_out(%rip), %rax
	movl	%eax, sin_outIP(%rip)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z14SplitConvertIpPc
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z14SplitConvertIpPc
	movq	%rax, -48(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L22
.L27:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$255, %eax
	jg	.L23
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L24
.L23:
	movl	$.LC7, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$3, %eax
	jmp	.L17
.L24:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$255, %eax
	jg	.L25
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L26
.L25:
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$4, %eax
	jmp	.L17
.L26:
	addl	$1, -24(%rbp)
.L22:
	cmpl	$3, -24(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L27
	movl	sin_outIP(%rip), %edi
	call	inet_ntoa
	movq	%rax, %rbx
	movl	sin_mac(%rip), %edi
	call	inet_ntoa
	movq	%rax, %r12
	movl	$.LC9, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC11, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movq	$0, -32(%rbp)
	jmp	.L28
.L30:
	movq	l_mac(%rip), %rax
	movq	%rax, %rdx
	andq	-32(%rbp), %rdx
	movq	l_out(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L29
	movb	$0, noFound(%rip)
	movq	-32(%rbp), %rax
	movl	%eax, sin_inIP(%rip)
	movl	sin_inIP(%rip), %edi
	call	inet_ntoa
	movq	%rax, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
.L29:
	addq	$1, -32(%rbp)
.L28:
	movl	$4294967294, %eax
	cmpq	%rax, -32(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L30
	movzbl	noFound(%rip), %eax
	testb	%al, %al
	je	.L31
	movl	$.LC13, %eax
	jmp	.L32
.L31:
	movl	$.LC14, %eax
.L32:
	movq	%rax, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC15, %edi
	call	system
	movl	$0, %eax
.L17:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE975:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1018:
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
	jne	.L33
	cmpl	$65535, -8(%rbp)
	jne	.L33
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1018:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_sin_mac, @function
_GLOBAL__sub_I_sin_mac:
.LFB1019:
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
.LFE1019:
	.size	_GLOBAL__sub_I_sin_mac, .-_GLOBAL__sub_I_sin_mac
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_sin_mac
	.section	.rodata
	.align 8
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 8
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.quad	_ZL22__gthrw_pthread_cancelm
	.weakref	_ZL22__gthrw_pthread_cancelm,pthread_cancel
	.hidden	__dso_handle
	.ident	"GCC: (Debian 4.7.2-5) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
