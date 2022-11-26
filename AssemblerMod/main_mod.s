	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC1:
	.string	"Result: %.14f"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64	
	push	rbp	
	mov	rbp, rsp
	sub	rsp, 16
# ./main.c:5:     double pi = 3.0;
	movsd	xmm0, QWORD PTR .LC0[rip]	# переменная pi (double pi = 3)
	movsd	QWORD PTR -8[rbp], xmm0	# переменная pi (double pi = 3)
# ./main.c:6:     printf("Result: %.14f", getPi(pi));
# начало printf("Result: %.14f", getPi(pi));
	mov	rax, QWORD PTR -8[rbp]	# tmp86, pi передача параметра pi
	movq	xmm0, rax	#, tmp86 pi передача параметра pi
	call	getPi@PLT	# вызов getpi
	lea	rdi, .LC1[rip]
	mov	eax, 1	
	call	printf@PLT # вызов printf
	mov	eax, 0	# _6,
# ./main.c:7: }
# конец printf("Result: %.14f", getPi(pi));
	leave	
	ret	
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1074266112
