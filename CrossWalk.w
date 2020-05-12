		area FinalProject, code, readonly
		export __main
__main  proc
		ldr r12,=500
		ldr r11,=250
 		LDR r0,=0x40004C20
		mov r1, #2_00000001
		LSL r2,r1,#1
		LSL r3,r1,#4
		LSL r4,r1,#5
		LSL r6,r1,#6
		LSL r8,r1,#7
		add r5,r1,r2
		add r9,r6,r8
		add r10,r5,r9
		add r5,r3,r4
		STRB r10, [r0,#24]
		STRB r10, [r0,#26]
		STRB r10, [r0,#28]
		STRB r5, [r0,#26]
		
		STRB r10, [r0,#25]
		STRB r10, [r0,#27]
		STRB r10, [r0,#29]
		STRB r5, [r0,#27]
		
		STRB r10, [r0,#5]
		STRB r10, [r0,#7]
		STRB r10, [r0,#9]
		
		LDR r5, =0x30000000
		LDR r10, =0x30000010
		
L1open

	push {r11}
	bl delay
	pop {r11}
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomLeft
	cmp r7, #0x20
	beq TopRight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomRight
	cmp r7, #0x20
	beq TopLeft
	
	STRB r9,[r0,#23]
	push {r11}
	bl delay
	pop {r11}
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomLeft
	cmp r7, #0x20
	beq TopRight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomRight
	cmp r7, #0x20
	beq TopLeft
	
	push {r11}
	bl delay
	pop {r11}

	STRB r2,[r0,#23]
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomLeft
	cmp r7, #0x20
	beq TopRight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomRight
	cmp r7, #0x20
	beq TopLeft
	
	push {r11}
	bl delay
	pop {r11}	

	STRB r1,[r0,#23]
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomLeft
	cmp r7, #0x20
	beq TopRight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomRight
	cmp r7, #0x20
	beq TopLeft
	
	push {r11}
	bl delay
	pop {r11}
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomLeft
	cmp r7, #0x20
	beq TopRight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomRight
	cmp r7, #0x20
	beq TopLeft
	b L2open
halt 	b L1open
		b halt
L2open
	
	push {r11}
	bl delay
	pop {r11}
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomLeft
	cmp r7, #0x20
	beq TopRight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomRight
	cmp r7, #0x20
	beq TopLeft
	
	STRB r9,[r0,#22]
	
	push {r11}
	bl delay
	pop {r11}
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomLeft
	cmp r7, #0x20
	beq TopRight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomRight
	cmp r7, #0x20
	beq TopLeft
	
	push {r11}
	bl delay
	pop {r11}
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomLeft
	cmp r7, #0x20
	beq TopRight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomRight
	cmp r7, #0x20
	beq TopLeft
	
	push {r11}
	bl delay
	pop {r11}
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomLeft
	cmp r7, #0x20
	beq TopRight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomRight
	cmp r7, #0x20
	beq TopLeft
	
	push {r11}
	bl delay
	pop {r11}
		
	STRB r2,[r0,#22]
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomLeft
	cmp r7, #0x20
	beq TopRight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomRight
	cmp r7, #0x20
	beq TopLeft
		
	push {r11}
	bl delay
	pop {r11}	
	
	STRB r1,[r0,#22]
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomLeft
	cmp r7, #0x20
	beq TopRight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomRight
	cmp r7, #0x20
	beq TopLeft
	
	push {r11}
	bl delay
	pop {r11}
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomLeft
	cmp r7, #0x20
	beq TopRight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomRight
	cmp r7, #0x20
	beq TopLeft
	
	push {r11}
	bl delay
	pop {r11}
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomLeft
	cmp r7, #0x20
	beq TopRight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomRight
	cmp r7, #0x20
	beq TopLeft
	
	b L1open
	
TopRight
	push {r11}
	bl delay
	pop {r11}
	ldr r7, [r10]
	cmp r7, #0x10
	beq RightCrossWalkOn
	cmp r7, #0x20
	beq TopCrossWalkOn
TopLeft
	push {r11}
	bl delay
	pop {r11}
	ldr r7, [r5]
	cmp r7, #0x10
	beq LeftCrossWalkOn
	cmp r7, #0x20
	beq TopCrossWalkOn

BottomRight
	push {r11}
	bl delay
	pop {r11}
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomCrossWalkOn
	cmp r7, #0x20
	beq RightCrossWalkOn

BottomLeft
	push {r11}
	bl delay
	pop {r11}
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomCrossWalkOn
	cmp r7, #0x20
	beq LeftCrossWalkOn
	
LeftCrossWalkOn
	STRB r6,[r0,#23];L1
	STRB r2,[r0,#22];L2
	STRB r2,[r0,#3];CW
	push {r11}
	bl delay
	pop {r11}
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomALeft
	cmp r7, #0x20
	beq LeftARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq LeftARight
	
	push {r11}
	bl delay
	pop {r11}
	
	push {r11}
	bl delay
	pop {r11}
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomALeft
	cmp r7, #0x20
	beq LeftARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq LeftARight
	
	push {r11}
	bl delay
	pop {r11}
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomALeft
	cmp r7, #0x20
	beq LeftARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq LeftARight
	
	push {r11}
	bl delay
	pop {r11}

	STRB r2,[r0,#23]
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomALeft
	cmp r7, #0x20
	beq LeftARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq LeftARight
	
	push {r11}
	bl delay
	pop {r11}	

	STRB r1,[r0,#23]
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomALeft
	cmp r7, #0x20
	beq LeftARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq LeftARight
	
	
	push {r11}
	bl delay
	pop {r11}
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomALeft
	cmp r7, #0x20
	beq LeftARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq BottomALeft
	cmp r7, #0x20
	beq LeftARight
	
	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}
	
	mov r7,#0
	STRB r7,[r5]
	STRB r7,[r10]
	STRB r7,[r0,#3]
	
	b L2open
RightCrossWalkOn
	STRB r9,[r0,#23];L1
	STRB r2,[r0,#22];L2
	STRB r3,[r0,#3];CW

	push {r11}
	bl delay
	pop {r11}
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq TopARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq LeftARight
	
	push {r11}
	bl delay
	pop {r11}
	
	push {r11}
	bl delay
	pop {r11}
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq TopARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq LeftARight
	
	push {r11}
	bl delay
	pop {r11}
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq TopARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq LeftARight
	
	push {r11}
	bl delay
	pop {r11}

	STRB r2,[r0,#23]
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq TopARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq LeftARight
	
	push {r11}
	bl delay
	pop {r11}	

	STRB r1,[r0,#23]
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq TopARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq LeftARight
	
	
	push {r11}
	bl delay
	pop {r11}
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq TopARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq LeftARight
	cmp r7, #0x20
	beq LeftARight
	
	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}
	
	mov r7,#0
	STRB r7,[r5]
	STRB r7,[r10]
	STRB r7,[r0,#3]
	
	b L2open
TopCrossWalkOn
	STRB r2,[r0,#23];L1
	STRB r6,[r0,#22];L2
	STRB r6,[r0,#3];CW
	
	push {r11}
	bl delay
	pop {r11}
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq TopABottom
	cmp r7, #0x20
	beq TopARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq TopABottom
	cmp r7, #0x20
	beq TopABottom
	
	push {r11}
	bl delay
	pop {r11}
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq TopABottom
	cmp r7, #0x20
	beq TopARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq TopABottom
	cmp r7, #0x20
	beq TopABottom
	
	push {r11}
	bl delay
	pop {r11}
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq TopABottom
	cmp r7, #0x20
	beq TopARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq TopABottom
	cmp r7, #0x20
	beq TopABottom
	
	push {r11}
	bl delay
	pop {r11}
		
	STRB r2,[r0,#22]
	
	ldr r7, [r5]
	cmp r7, #0x10
	beq TopABottom
	cmp r7, #0x20
	beq TopARight
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq TopABottom
	cmp r7, #0x20
	beq TopABottom
	
	push {r11}
	bl delay
	pop {r11}	
	
	STRB r1,[r0,#22]
	
	push {r11}
	bl delay
	pop {r11}
	
	push {r11}
	bl delay
	pop {r11}
		
	mov r7,#0
	STRB r7,[r5]
	STRB r7,[r10]
	STRB r7,[r0,#3]
	
	b L1open
	
BottomCrossWalkOn
	mov r7, #0
	STRB r2,[r0,#23];L1
	STRB r9,[r0,#22];L2
	STRB r8,[r0,#3];CW

	push {r11}
	bl delay
	pop {r11}
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomALeft
	cmp r7, #0x20
	beq TopABottom
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq TopABottom
	cmp r7, #0x20
	beq TopABottom

	push {r11}
	bl delay
	pop {r11}
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomALeft
	cmp r7, #0x20
	beq TopABottom
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq TopABottom
	cmp r7, #0x20
	beq TopABottom

	push {r11}
	bl delay
	pop {r11}
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomALeft
	cmp r7, #0x20
	beq TopABottom
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq TopABottom
	cmp r7, #0x20
	beq TopABottom
	
	push {r11}
	bl delay
	pop {r11}
		
	STRB r2,[r0,#22]
		
	ldr r7, [r5]
	cmp r7, #0x10
	beq BottomALeft
	cmp r7, #0x20
	beq TopABottom
	
	ldr r7, [r10]
	cmp r7, #0x10
	beq TopABottom
	cmp r7, #0x20
	beq TopABottom
	
	push {r11}
	bl delay
	pop {r11}	
	
	STRB r1,[r0,#22]
	
	push {r11}
	bl delay
	pop {r11}
	
	push {r11}
	bl delay
	pop {r11}
	
	mov r7,#0
	STRB r7,[r5]
	STRB r7,[r10]
	STRB r7,[r0,#3]
	
	b L1open

TopABottom

	STRB r2,[r0,#23];L1
	STRB r6,[r0,#22];L2
	STRB r2,[r0,#3];CW
	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}
	
	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}

	STRB r2,[r0,#22]

	push {r11}
	bl delay
	pop {r11}	

	STRB r1,[r0,#22]

	push {r11}
	bl delay
	pop {r11}
	
	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}
	
	mov r7,#0
	STRB r7,[r5]
	STRB r7,[r10]
	STRB r7,[r0,#3]
	
	b L2open

TopARight

	STRB r8,[r0,#23];L1
	STRB r2,[r0,#22];L2
	STRB r2,[r0,#3];CW
	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}
	
	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}

	STRB r2,[r0,#23]

	push {r11}
	bl delay
	pop {r11}	

	STRB r1,[r0,#23]

	push {r11}
	bl delay
	pop {r11}
	
	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}
	
	mov r7,#0
	STRB r7,[r5]
	STRB r7,[r10]
	STRB r7,[r0,#3]
	
	b L2open

BottomALeft

	STRB r2,[r0,#23];L1
	STRB r8,[r0,#22];L2
	STRB r2,[r0,#3];CW
	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}
	
	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}

	STRB r2,[r0,#22]

	push {r11}
	bl delay
	pop {r11}	

	STRB r1,[r0,#22]

	push {r11}
	bl delay
	pop {r11}
	
	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}
	
	mov r7,#0
	STRB r7,[r5]
	STRB r7,[r10]
	STRB r7,[r0,#3]
	
	b L2open

LeftARight

	STRB r6,[r0,#23];L1
	STRB r2,[r0,#22];L2
	STRB r2,[r0,#3];CW
	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}
	
	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}

	STRB r2,[r0,#23]

	push {r11}
	bl delay
	pop {r11}	

	STRB r1,[r0,#23]

	push {r11}
	bl delay
	pop {r11}
	
	push {r11}
	bl delay
	pop {r11}

	push {r11}
	bl delay
	pop {r11}
	
	mov r7,#0
	STRB r7,[r5]
	STRB r7,[r10]
	STRB r7,[r0,#3]
	
	b L2open

delay
	sub r11,#1
	push {r12}
loop
	ldrb r7,[r0]
	and r7,r7,#0x30
	cmp r7, #0x10
	bne n1
	STRB r7,[r5]
n1	cmp r7, #0x20
	bne n2
	STRB r7,[r5]
n2	
	ldrb r7,[r0,#1]
	and r7,r7,#0x30
	cmp r7, #0x10
	bne n3
	STRB r7,[r5]
n3	cmp r7, #0x20
	bne n4
	STRB r7,[r5]
n4	
	sub r12,#1
	cmp r12,#0
	bne loop
	pop {r12}
	cmp r11, #0
	bne delay 
	bx	lr
	
		endp
		end
			

