	AREA Matrix,CODE,READONLY
	ENTRY
	
start
	ldr r0,=MatrixA
	ldr r1,=MatrixB
	ldr r2,=MatrixC
	mov r3,#0
	mov r4,#0
	mov r5,#0
	mov r6,#0
	
	;(0,0)
	mov r9,#3
loop1
	ldr r7,[r0]	
	ldr r8,[r1]
	mla r3,r7,r8,r3
	
	add r0,r0,#4
	add r1,r1,#8
	sub r9,r9,#1
	cmp r9,#0
	bne loop1
	
	str r3,[r2]
	mov r9,#3
	ldr r0,=MatrixA
	ldr r1,=MatrixB
	
	
	;(0,1)
	add r1,r1,#4
loop2
	ldr r7,[r0]	
	ldr r8,[r1]
	mla r4,r7,r8,r4
	
	add r0,r0,#4
	add r1,r1,#8
	sub r9,r9,#1
	cmp r9,#0
	bne loop2
	
	str r4,[r2,#4]
	mov r9,#3
	ldr r0,=MatrixA
	ldr r1,=MatrixB
	ldr r2,=MatrixC
	mov r3,#0
	mov r4,#0
	mov r5,#0
	mov r6,#0
	;(1,0)
	add r0,r0,#12
loop3
	ldr r7,[r0]	
	ldr r8,[r1]
	mla r5,r7,r8,r5
	
	add r0,r0,#4
	add r1,r1,#8
	sub r9,r9,#1
	cmp r9,#0
	bne loop3
	
	str r5,[r2,#8]
	mov r9,#3
	ldr r0,=MatrixA
	ldr r1,=MatrixB
	
	;(1,1)
	
	mov r9,#3
	ldr r0,=MatrixA
	ldr r1,=MatrixB
	ldr r2,=MatrixC
	mov r3,#0
	mov r4,#0
	mov r5,#0
	mov r6,#0
	;(1,0)
	add r0,r0,#12
	add r1,r1,#4
loop4
	ldr r7,[r0]	
	ldr r8,[r1]
	mla r6,r7,r8,r6
	
	add r0,r0,#4
	add r1,r1,#8
	sub r9,r9,#1
	cmp r9,#0
	bne loop4
	
	str r6,[r2,#16]
	mov r9,#3

stop

	AREA Data,DATA,READWRITE
MatrixA dcd 1,2,3
		dcd 4,5,6
MatrixB dcd 1,4
		dcd 2,5
		dcd 3,6
MatrixC dcd 0,0
		dcd 0,0
		
	END