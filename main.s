	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"main.c"
	.global	alphabet
	.data
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
	.global	codeLookup
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
	.global	codeSizes
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
	.global	characterLookup
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
	.section	.rodata
	.align	2
.LC0:
	.ascii	"A\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	add	fp, sp, #12
	sub	sp, sp, #64
	mov	r3, sp
	mov	r5, r3
	ldr	r3, .L3
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-16]
	mov	r3, r0
	mov	r1, r3
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #29
	mov	r4, r2, asl #3
	str	r4, [fp, #-72]
	ldr	ip, [fp, #-72]
	orr	ip, r3, ip
	str	ip, [fp, #-72]
	mov	r3, r1, asl #3
	str	r3, [fp, #-76]
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-76]
	str	r2, [fp, #-72]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r0
	mov	r1, r3
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #29
	mov	r4, r2, asl #3
	str	r4, [fp, #-64]
	ldr	ip, [fp, #-64]
	orr	ip, r3, ip
	str	ip, [fp, #-64]
	mov	r3, r1, asl #3
	str	r3, [fp, #-68]
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-68]
	str	r2, [fp, #-64]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r0
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	str	sp, [fp, #-56]
	ldr	r2, [fp, #-56]
	add	r3, r2, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-16]
	mov	r0, r3
	mov	r1, #0
	bl	memset
	ldr	r3, [fp, #-16]
	add	r0, r3, #1
	mov	r3, r0
	mov	r1, r3
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #29
	mov	r4, r2, asl #3
	str	r4, [fp, #-48]
	ldr	ip, [fp, #-48]
	orr	ip, r3, ip
	str	ip, [fp, #-48]
	mov	r3, r1, asl #3
	str	r3, [fp, #-52]
	sub	r2, fp, #52
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-52]
	str	r2, [fp, #-48]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #52
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r0
	mov	r1, r3
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #29
	mov	r4, r2, asl #3
	str	r4, [fp, #-40]
	ldr	ip, [fp, #-40]
	orr	ip, r3, ip
	str	ip, [fp, #-40]
	mov	r3, r1, asl #3
	str	r3, [fp, #-44]
	sub	r2, fp, #44
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-44]
	str	r2, [fp, #-40]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #44
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r0
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	str	sp, [fp, #-32]
	ldr	r2, [fp, #-32]
	add	r3, r2, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-28]
	ldr	r0, [fp, #-20]
	mov	r1, r3
	bl	encode
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	mov	r0, r3
	ldr	r1, [fp, #-16]
	bl	decode
	mov	r3, #0
	mov	sp, r5
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, fp, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LC0
	.size	main, .-main
	.align	2
	.global	encode
	.type	encode, %function
encode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	mov	r1, #0
	str	r1, [fp, #-24]
	b	.L6
.L8:
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #65
	and	r1, r3, #255
	mov	r2, r1
	ldr	r3, .L10
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	str	r3, [fp, #-20]
	mov	r2, r1
	ldr	r3, .L10+4
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	mov	r3, r2, asr r3
	and	r3, r3, #255
	mov	r2, r1
	orr	r3, r2, r3
	and	r3, r3, #255
	and	r3, r3, #255
	ldr	r2, [fp, #-12]
	strb	r3, [r2, #0]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-16]
	add	r3, r2, r1
	and	r3, r3, #255
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	cmp	r2, #7
	bls	.L7
	ldr	r1, [fp, #-24]
	sub	r3, r1, #8
	and	r3, r3, #255
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r1, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r3, r1, asl r3
	and	r3, r3, #255
	mov	r2, r0
	orr	r3, r2, r3
	and	r3, r3, #255
	and	r3, r3, #255
	ldr	r2, [fp, #-12]
	strb	r3, [r2, #0]
.L7:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L6:
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L8
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L11:
	.align	2
.L10:
	.word	codeLookup
	.word	codeSizes
	.size	encode, .-encode
	.align	2
	.global	decode
	.type	decode, %function
decode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	str	r3, [fp, #-28]
	mov	r2, #0
	str	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L13
.L15:
	ldr	r2, [fp, #-28]
	ldr	r3, .L17
	ldrb	r1, [r3, r2]	@ zero_extendqisi2
	sub	r3, r1, #65
	and	r3, r3, #255
	mov	r2, r3
	ldr	r3, .L17+4
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r2, [fp, #-24]
	add	r3, r2, r0
	and	r3, r3, #255
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #7
	bls	.L14
	ldr	r2, [fp, #-24]
	sub	r3, r2, #8
	and	r3, r3, #255
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L14:
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	mov	r3, r2, asl r3
	and	r1, r3, #255
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	rsb	r3, r3, #8
	mov	r3, r2, asr r3
	and	r3, r3, #255
	mov	r2, r1
	orr	r3, r2, r3
	and	r3, r3, #255
	and	r3, r3, #255
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L13:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	blt	.L15
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L18:
	.align	2
.L17:
	.word	characterLookup
	.word	codeSizes
	.size	decode, .-decode
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
