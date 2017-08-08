	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	encode
	.type	encode, %function
encode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}
	ldrb	r2, [r0, #0]	@ zero_extendqisi2
	cmp	r2, #0
	mov	r5, r1
	beq	.L5
	ldrb	r1, [r1, #0]	@ zero_extendqisi2
	ldr	r7, .L8
	mov	r6, r0
	mov	ip, #0
.L4:
	sub	r2, r2, #65
	mov	r3, r7
	and	r2, r2, #255
	ldrb	r0, [r3, r2]!	@ zero_extendqisi2
	ldrb	r4, [r3, #16]	@ zero_extendqisi2
	orr	r2, r1, r4, asr ip
	add	r3, r0, ip
	and	ip, r3, #255
	and	r1, r2, #255
	cmp	ip, #7
	sub	r3, ip, #8
	strb	r1, [r5, #0]
	bls	.L3
	and	ip, r3, #255
	ldrb	r3, [r5, #1]!	@ zero_extendqisi2
	rsb	r2, ip, r0
	orr	r3, r3, r4, asl r2
	and	r1, r3, #255
	strb	r1, [r5, #0]
.L3:
	ldrb	r2, [r6, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L4
.L5:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	encode, .-encode
	.align	2
	.global	decode
	.type	decode, %function
decode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}
	subs	r7, r1, #0
	mov	r4, r0
	mov	r6, r2
	ldrb	r3, [r0, #0]	@ zero_extendqisi2
	ble	.L11
	mov	ip, #0
	ldr	r5, .L16
	mov	r0, ip
	b	.L13
.L15:
	mov	r3, r3, asl ip
	orr	r3, r3, r2, asr r1
	and	r3, r3, #255
.L13:
	add	r2, r5, r3
	ldrb	r1, [r2, #32]	@ zero_extendqisi2
	sub	r3, r1, #65
	and	r3, r3, #255
	ldrb	r2, [r5, r3]	@ zero_extendqisi2
	add	r2, r2, ip
	and	ip, r2, #255
	strb	r1, [r6, r0]
	cmp	ip, #7
	sub	r3, ip, #8
	add	r0, r0, #1
	andhi	ip, r3, #255
	addhi	r4, r4, #1
	cmp	r7, r0
	rsb	r1, ip, #8
	ldrb	r3, [r4, #0]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	bgt	.L15
.L11:
	mov	r3, #0
	strb	r3, [r6, r7]
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.size	decode, .-decode
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp}
	add	fp, sp, #24
	sub	sp, sp, #8
	mov	r2, sp
	mov	r3, r2, lsr #3
	mov	r7, r3, asl #3
	sub	sp, sp, #16
	mov	r3, #0
	mov	ip, r3
	strb	r3, [r7, #0]
	mov	r3, sp
	mov	r2, r3, lsr #3
	ldr	r6, .L23
	ldr	r8, .L23+4
	mov	sl, r2, asl #3
	mov	r4, r7
	mov	r1, ip
	mov	r0, #65
.L20:
	sub	r2, r0, #65
	mov	r3, r8
	and	r2, r2, #255
	ldrb	r0, [r3, r2]!	@ zero_extendqisi2
	ldrb	r5, [r3, #16]	@ zero_extendqisi2
	orr	r2, ip, r5, asr r1
	add	r3, r0, r1
	and	r1, r3, #255
	and	ip, r2, #255
	cmp	r1, #7
	sub	r3, r1, #8
	strb	ip, [r4, #0]
	bls	.L19
	and	r1, r3, #255
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
	rsb	r2, r1, r0
	orr	r3, r3, r5, asl r2
	and	ip, r3, #255
	strb	ip, [r4, #0]
.L19:
	ldrb	r0, [r6, #1]!	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L20
	ldrb	r3, [r7, #0]	@ zero_extendqisi2
	add	r3, r8, r3
	ldrb	r2, [r3, #32]	@ zero_extendqisi2
	strb	r0, [sl, #1]
	strb	r2, [sl, #0]
	sub	sp, fp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, fp}
	bx	lr
.L24:
	.align	2
.L23:
	.word	.LC0
	.word	.LANCHOR0
	.size	main, .-main
	.global	alphabet
	.global	codeLookup
	.global	codeSizes
	.global	characterLookup
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	codeSizes, %object
	.size	codeSizes, 16
codeSizes:
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.type	codeLookup, %object
	.size	codeLookup, 16
codeLookup:
	.byte	-32
	.byte	64
	.byte	0
	.byte	-48
	.byte	-96
	.byte	-128
	.byte	112
	.byte	32
	.byte	-80
	.byte	96
	.byte	-56
	.byte	48
	.byte	-104
	.byte	-64
	.byte	56
	.byte	-112
	.type	characterLookup, %object
	.size	characterLookup, 255
characterLookup:
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	76
	.byte	76
	.byte	76
	.byte	76
	.byte	76
	.byte	76
	.byte	76
	.byte	76
	.byte	79
	.byte	79
	.byte	79
	.byte	79
	.byte	79
	.byte	79
	.byte	79
	.byte	79
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	70
	.byte	70
	.byte	70
	.byte	70
	.byte	70
	.byte	70
	.byte	70
	.byte	70
	.byte	70
	.byte	70
	.byte	70
	.byte	70
	.byte	70
	.byte	70
	.byte	70
	.byte	70
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	77
	.byte	77
	.byte	77
	.byte	77
	.byte	77
	.byte	77
	.byte	77
	.byte	77
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	73
	.byte	73
	.byte	73
	.byte	73
	.byte	73
	.byte	73
	.byte	73
	.byte	73
	.byte	73
	.byte	73
	.byte	73
	.byte	73
	.byte	73
	.byte	73
	.byte	73
	.byte	73
	.byte	78
	.byte	78
	.byte	78
	.byte	78
	.byte	78
	.byte	78
	.byte	78
	.byte	78
	.byte	75
	.byte	75
	.byte	75
	.byte	75
	.byte	75
	.byte	75
	.byte	75
	.byte	75
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.space	1
	.type	alphabet, %object
	.size	alphabet, 16
alphabet:
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"A\000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
