.data
	.align	2
.LC0:
	.ascii	"\012 ENTER A VALUE: \000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"\012 array[%d] = %d \000"
	.align	2
.LC3:
	.ascii	"\012 Enter A SEARCH VALUE: \000"
	.align	2
.LC4:
	.ascii	"That value does not exist in the array!\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L3:
	ldr	r3, .L12
	mov	r0, r3
	bl	printf
	ldr	r2, .L12+4
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #2
	sub	r1, fp, #48
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__isoc99_scanf
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	ble	.L3
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L4
.L5:
	ldr	r2, .L12+8
	ldr	r1, [fp, #-8]
	mvn	r3, #43
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	mov	r0, r2
	ldr	r1, [fp, #-8]
	mov	r2, r3
	bl	printf
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L4:
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	ble	.L5
	ldr	r3, .L12+12
	mov	r0, r3
	bl	printf
	ldr	r2, .L12+4
	sub	r3, fp, #52
	mov	r0, r2
	mov	r1, r3
	bl	__isoc99_scanf
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L6
.L11:
	ldr	r2, [fp, #-8]
	mvn	r3, #43
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	beq	.L7
	ldr	r0, .L12+16
	bl	puts
.L7:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L8
.L10:
	ldr	r2, [fp, #-8]
	mvn	r3, #43
	mov	r2, r2, asl #2
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bne	.L9
	ldr	r2, .L12+8
	ldr	r1, [fp, #-8]
	mvn	r3, #43
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	mov	r0, r2
	ldr	r1, [fp, #-8]
	mov	r2, r3
	bl	printf
.L9:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L8:
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	ble	.L10
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L6:
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	ble	.L11
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L13:
	.align	2
.L12:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.size	main, .-main
	
	
