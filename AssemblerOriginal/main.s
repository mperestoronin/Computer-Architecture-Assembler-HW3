	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC1:
	.string	"Result: %.14f" # строка из строчки printf("Result: %.14f", getPi(pi));
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	movsd	xmm0, QWORD PTR .LC0[rip] # переменная pi (double pi = 3.0)
	movsd	QWORD PTR -8[rbp], xmm0 # переменная pi (double pi = 3.0)
	# передача параметров и вызов getpi
	mov	rax, QWORD PTR -8[rbp] #передаем pi  в функцию getPi(pi)
	movq	xmm0, rax
	call	getPi@PLT # вызов getPi
	lea	rdi, .LC1[rip]
	mov	eax, 1
	call	printf@PLT # вызов printf
	mov	eax, 0 # return 0 в рузультате успешной работы программы
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1074266112
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
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
