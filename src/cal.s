	.file	"cal.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\nWelCome To Simple Calcualtor Choose One Option:"
.LC1:
	.string	" 1: Addition"
.LC2:
	.string	" 2: Substraction"
.LC3:
	.string	" 3: Multiplication"
.LC4:
	.string	" 4: Division"
.LC5:
	.string	" 5: Quit"
.LC6:
	.string	"Enter your choice:"
.LC7:
	.string	"%d"
.LC8:
	.string	" Enter Two Numbers"
.LC9:
	.string	" %d %d"
.LC10:
	.string	" Sum :%d\n"
.LC11:
	.string	" Subtraction :%d\n"
.LC12:
	.string	" Multiplication :%d\n"
.LC13:
	.string	" Division :%d\n"
.LC14:
	.string	" Enter correct choice"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.L10:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-24(%rbp), %eax
	cmpl	$5, %eax
	ja	.L2
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L4(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L4(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L2-.L4
	.long	.L3-.L4
	.long	.L5-.L4
	.long	.L6-.L4
	.long	.L7-.L4
	.long	.L8-.L4
	.text
.L3:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	leaq	-16(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L9
.L5:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	leaq	-16(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L9
.L6:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	leaq	-16(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L9
.L7:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	leaq	-16(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-20(%rbp), %eax
	movl	-16(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L9
.L8:
	movl	$0, %edi
	call	exit@PLT
.L2:
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	nop
.L9:
	jmp	.L10
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
