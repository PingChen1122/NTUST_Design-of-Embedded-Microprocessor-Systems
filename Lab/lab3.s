	AREA Matrix,CODE,READONLY
	ENTRY
	
start

	ldr r0,=MatrixA
	mov r1,#5
loop3
	mov r2,r1
	mov r3,r0
loop5
	ldrb r6,[r3]
	ldrb r7,[r3,#4]
	cmp r6,r7
	ble loop10
	strb r6,[r3,#4]
	strb r7,[r3]
loop10
	add r3,r3,#4
	sub r2,r2,#1
	cmp r2,#0
	bne loop5
	sub r1,r1,#1
	cmp r1,#0
	bne loop3
	
	
	

		

	
	

stop

	AREA Data,DATA,READWRITE
MatrixA dcd 9,3,0,2,7,1
	
	END	
