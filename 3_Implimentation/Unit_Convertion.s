	.file	"Unit_Convertion.c"
	.text
	.section	.rodata
.LC0:
	.string	"Welcome to Unit Converter! "
	.align 8
.LC1:
	.string	"Here is a list of conversation to choose from: "
	.align 8
.LC2:
	.string	"Temperature(T),Currency(C),Mass(M) "
	.align 8
.LC3:
	.string	"Please enter the letter you want to convert."
.LC4:
	.string	"%c"
	.align 8
.LC5:
	.string	"Welcome to Temperature Converter! "
	.align 8
.LC6:
	.string	"Here is a list of conversations to choose from: "
	.align 8
.LC7:
	.string	"Enter 1 for Fahrenheit to Celsius. "
	.align 8
.LC8:
	.string	"Enter 2 for Celsius to Fahrenheit. "
.LC9:
	.string	"%d"
	.align 8
.LC10:
	.string	"Please enter the Fahrenheit degree: "
.LC12:
	.string	"Celcius: %d"
	.align 8
.LC13:
	.string	"Please enter the Celcius degree: "
.LC16:
	.string	"Fahrenheit: %d"
	.align 8
.LC17:
	.string	"Please enter the correct choice. "
	.align 8
.LC18:
	.string	"Welcome to Currency Converter! "
.LC19:
	.string	"Enter 1 for USD to Euro. "
.LC20:
	.string	"Enter 2 for USD to JPY. "
.LC21:
	.string	"Enter 3 for USD to RMB. "
.LC22:
	.string	"Please enter the USD amount: "
.LC24:
	.string	"Euro: %.2f"
.LC26:
	.string	"JPY: %.2f"
.LC28:
	.string	"RMB: %.2f"
.LC29:
	.string	"Please enter correct choice. "
.LC30:
	.string	"Welcome to Mass Converter! "
	.align 8
.LC31:
	.string	"Enter 1 for ounces to pounds. "
.LC32:
	.string	"Enter 2 for gram to pounds. "
	.align 8
.LC33:
	.string	"Please enter the ounce amount: "
.LC35:
	.string	"Pounds: %.2f"
	.align 8
.LC36:
	.string	"Please enter the gram amount: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	-77(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-77(%rbp), %eax
	cmpb	$84, %al
	jne	.L2
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	leaq	-76(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-76(%rbp), %eax
	cmpl	$1, %eax
	jne	.L3
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-64(%rbp), %eax
	subl	$32, %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L4
.L3:
	movl	-76(%rbp), %eax
	cmpl	$2, %eax
	jne	.L5
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	leaq	-60(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-60(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	.LC15(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L4
.L5:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	jmp	.L4
.L2:
	movzbl	-77(%rbp), %eax
	cmpb	$67, %al
	jne	.L6
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	leaq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-72(%rbp), %eax
	cmpl	$1, %eax
	jne	.L7
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC23(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	cvtss2sd	-20(%rbp), %xmm0
	leaq	.LC24(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L4
.L7:
	movl	-72(%rbp), %eax
	cmpl	$2, %eax
	jne	.L8
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	leaq	-52(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-52(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC25(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	cvtss2sd	-24(%rbp), %xmm0
	leaq	.LC26(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L4
.L8:
	movl	-72(%rbp), %eax
	cmpl	$3, %eax
	jne	.L9
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-48(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC27(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	leaq	.LC28(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L4
.L9:
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	jmp	.L4
.L6:
	movzbl	-77(%rbp), %eax
	cmpb	$77, %al
	jne	.L4
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	leaq	.LC32(%rip), %rdi
	call	puts@PLT
	leaq	-68(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-68(%rbp), %eax
	cmpl	$1, %eax
	jne	.L10
	leaq	.LC33(%rip), %rdi
	call	puts@PLT
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC34(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	cvtss2sd	-32(%rbp), %xmm0
	leaq	.LC35(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L4
.L10:
	movl	-68(%rbp), %eax
	cmpl	$2, %eax
	jne	.L11
	leaq	.LC36(%rip), %rdi
	call	puts@PLT
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC37(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	cvtss2sd	-36(%rbp), %xmm0
	leaq	.LC35(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L4
.L11:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
.L4:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC11:
	.long	1908874354
	.long	1071761180
	.align 8
.LC14:
	.long	3435973837
	.long	1073532108
	.align 8
.LC15:
	.long	0
	.long	1077936128
	.align 8
.LC23:
	.long	1030792151
	.long	1072420618
	.align 8
.LC25:
	.long	2405181686
	.long	1079756226
	.align 8
.LC27:
	.long	343597384
	.long	1075529646
	.align 8
.LC34:
	.long	0
	.long	1068498944
	.align 8
.LC37:
	.long	1503296278
	.long	1063391084
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
