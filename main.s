	.file	"main.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "\11\11enter num of rows:\0"
LC1:
	.ascii "%i\0"
LC2:
	.ascii "x = %i\12\0"
LC3:
	.ascii "\11\11mohey 5awal\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$20, 28(%esp)
	movl	$LC0, (%esp)
	call	_printf
	leal	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_puts
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	_hsquare
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.globl	_hsquare
	.def	_hsquare;	.scl	2;	.type	32;	.endef
_hsquare:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L4
L17:
	cmpl	$0, -12(%ebp)
	jne	L5
	movl	$0, -16(%ebp)
	jmp	L6
L7:
	movl	$42, (%esp)
	call	_putchar
	movl	$32, (%esp)
	call	_putchar
	addl	$1, -16(%ebp)
L6:
	movl	-16(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	L7
	jmp	L8
L5:
	movl	8(%ebp), %eax
	subl	$1, %eax
	cmpl	-12(%ebp), %eax
	jne	L9
	movl	$0, -16(%ebp)
	jmp	L10
L11:
	movl	$42, (%esp)
	call	_putchar
	movl	$32, (%esp)
	call	_putchar
	addl	$1, -16(%ebp)
L10:
	movl	-16(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	L11
	jmp	L8
L9:
	movl	$0, -20(%ebp)
	jmp	L12
L16:
	cmpl	$0, -20(%ebp)
	jne	L13
	movl	$42, (%esp)
	call	_putchar
	movl	$32, (%esp)
	call	_putchar
	jmp	L14
L13:
	movl	8(%ebp), %eax
	subl	$1, %eax
	cmpl	-20(%ebp), %eax
	jne	L15
	movl	$42, (%esp)
	call	_putchar
	movl	$32, (%esp)
	call	_putchar
	jmp	L14
L15:
	movl	$32, (%esp)
	call	_putchar
	movl	$32, (%esp)
	call	_putchar
L14:
	addl	$1, -20(%ebp)
L12:
	movl	-20(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	L16
L8:
	movl	$10, (%esp)
	call	_putchar
	addl	$1, -12(%ebp)
L4:
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	L17
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
