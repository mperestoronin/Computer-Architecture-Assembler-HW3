	.file	"getPi.c"
	.intel_syntax noprefix
	.text
	.globl	getPi
	.type	getPi, @function
getPi:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR -24[rbp], xmm0 # double pi
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -8[rbp], xmm0 # double i
	jmp	.L2 # цикл for
.L3:# начало pi += 4.0 / (i * (i + 1) * (i + 2));
	movsd	xmm1, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	addsd	xmm0, xmm1
	movapd	xmm1, xmm0
	mulsd	xmm1, QWORD PTR -8[rbp] # кстати mulsd значит Multiply Scalar Double-Precision Floating-Point Value, т.е. перемножение чисел с плавающей точкой
	movsd	xmm2, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR .LC0[rip]
	addsd	xmm0, xmm2
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1 # деление 4 / (то, что считалось ранее)
	movsd	xmm1, QWORD PTR -24[rbp] # присваиваем старое значение pi
	addsd	xmm0, xmm1 # складываем старое значение pi с результатами вычилений 
	movsd	QWORD PTR -24[rbp], xmm0 # присваивание результата операции обратно в переменную pi
	# конец pi += 4.0 / (i * (i + 1) * (i + 2));
	# начало pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	movsd	xmm1, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR .LC0[rip]
	addsd	xmm1, xmm0
	movsd	xmm2, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR .LC3[rip]
	addsd	xmm0, xmm2
	mulsd	xmm1, xmm0
	movsd	xmm2, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR .LC2[rip]
	addsd	xmm0, xmm2
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	# конец pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	movsd	xmm1, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR .LC2[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
.L2:
	movsd	xmm0, QWORD PTR .LC4[rip]
	comisd	xmm0, QWORD PTR -8[rbp]
	ja	.L3
	movsd	xmm0, QWORD PTR -24[rbp] # return pi
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	getPi, .-getPi
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1073741824
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1074790400
	.align 8
.LC3:
	.long	0
	.long	1074266112
	.align 8
.LC4:
	.long	0
	.long	1095164768
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
