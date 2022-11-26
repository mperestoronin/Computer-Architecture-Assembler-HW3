	.file	"getPi.c"
	.intel_syntax noprefix
	.text
	.globl	getPi
	.type	getPi, @function
getPi:
	endbr64	
	push	rbp	
	mov	rbp, rsp
	movsd	QWORD PTR -24[rbp], xmm0	# pi, pi  #берем параметр pi
# ./getPi.c:4:     for (double i = 2.0; i < 3000000; i += 4) {
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp95,
	movsd	QWORD PTR -8[rbp], xmm0	# i, tmp95
# ./getPi.c:4:     for (double i = 2.0; i < 3000000; i += 4) {
	jmp	.L2	
.L3:
# ./getPi.c:5:         pi += 4.0 / (i * (i + 1) * (i + 2));
	movsd	xmm1, QWORD PTR -8[rbp]	# tmp96, i
	movsd	xmm0, QWORD PTR .LC1[rip]	# tmp97,
	addsd	xmm0, xmm1	# _1, tmp96
# ./getPi.c:5:         pi += 4.0 / (i * (i + 1) * (i + 2));
	movapd	xmm1, xmm0	# _1, _1
	mulsd	xmm1, QWORD PTR -8[rbp]	# _1, i
# ./getPi.c:5:         pi += 4.0 / (i * (i + 1) * (i + 2));
	movsd	xmm2, QWORD PTR -8[rbp]	# tmp98, i
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp99,
	addsd	xmm0, xmm2	# _3, tmp98
# ./getPi.c:5:         pi += 4.0 / (i * (i + 1) * (i + 2));
	mulsd	xmm1, xmm0	# _4, _3
# ./getPi.c:5:         pi += 4.0 / (i * (i + 1) * (i + 2));
	movsd	xmm0, QWORD PTR .LC2[rip]	# tmp100,
	divsd	xmm0, xmm1	# _5, _4
# ./getPi.c:5:         pi += 4.0 / (i * (i + 1) * (i + 2));
	movsd	xmm1, QWORD PTR -24[rbp]	# tmp102, pi
	addsd	xmm0, xmm1	# tmp101, tmp102
	movsd	QWORD PTR -24[rbp], xmm0	# pi, tmp101
# ./getPi.c:6:         pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	movsd	xmm1, QWORD PTR -8[rbp]	# tmp103, i
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp104,
	addsd	xmm1, xmm0	# _6, tmp104
# ./getPi.c:6:         pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	movsd	xmm2, QWORD PTR -8[rbp]	# tmp105, i
	movsd	xmm0, QWORD PTR .LC3[rip]	# tmp106,
	addsd	xmm0, xmm2	# _7, tmp105
# ./getPi.c:6:         pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	mulsd	xmm1, xmm0	# _8, _7
# ./getPi.c:6:         pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	movsd	xmm2, QWORD PTR -8[rbp]	# tmp107, i
	movsd	xmm0, QWORD PTR .LC2[rip]	# tmp108,
	addsd	xmm0, xmm2	# _9, tmp107
# ./getPi.c:6:         pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	mulsd	xmm1, xmm0	# _10, _9
# ./getPi.c:6:         pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	movsd	xmm0, QWORD PTR .LC2[rip]	# tmp109,
	divsd	xmm0, xmm1	# tmp109, _10
	movapd	xmm1, xmm0	# _11, tmp109
# ./getPi.c:6:         pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	movsd	xmm0, QWORD PTR -24[rbp]	# tmp111, pi
	subsd	xmm0, xmm1	# tmp110, _11
	movsd	QWORD PTR -24[rbp], xmm0	# pi, tmp110
# ./getPi.c:4:     for (double i = 2.0; i < 3000000; i += 4) {
	movsd	xmm1, QWORD PTR -8[rbp]	# tmp113, i
	movsd	xmm0, QWORD PTR .LC2[rip]	# tmp114,
	addsd	xmm0, xmm1	# tmp112, tmp113
	movsd	QWORD PTR -8[rbp], xmm0	# i, tmp112
.L2:
# ./getPi.c:4:     for (double i = 2.0; i < 3000000; i += 4) {
	movsd	xmm0, QWORD PTR .LC4[rip]	# tmp115,
	comisd	xmm0, QWORD PTR -8[rbp]	# tmp115, i
	ja	.L3	
# ./getPi.c:8:     return pi;
	movsd	xmm0, QWORD PTR -24[rbp]	# _16, pi # возвращаем pi
# ./getPi.c:9: }
	pop	rbp	#
	ret	
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
