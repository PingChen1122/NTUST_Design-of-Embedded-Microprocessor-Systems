	AREA Fibon,CODE,READONLY
	ENTRY

start 
	ldr	r0,=Sequence
	ldr r1,n1
	ldr r2,n2
	str r1,[r0]
	add r4,r0,#4
	str r2,[r4]
	ldr r5,num
	sub r5,r5,#2
loop
	add r6,r1,r2
	add r4,r4,#4
	str r6,[r4]
	;r1=r2
	mov r1,r2
	mov r2,r6
	sub r5,r5,#1
	cmp r5,#0
	bne loop
stop

	AREA data,DATA,READONLY
n1 dcd 1
n2 dcd 1
num dcd 10 
Sequence dcd 0

	END

