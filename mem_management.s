
	AREA I_M, CODE, READONLY
	ENTRY

main
	LDR r0,=k1;
	LDR r4,=X;
	MOV r7,#0; index
et1 CMP r7,#5;
	BEQ fin;
	LDR r1,[r0,r7,lsl #2];
	STR r1,[r4,r7,lsl #2];
	ADD r7,r7,#1;
	B et1;
fin	
	; MOV r0, #100;
	; First program
	;LDR r1,=k1; r1 <= direccion de k1
	;LDR r2,[r1];
	;LDR r3,=k2;
	;LDR r4,[r3];
	;LDRB r5,[r3];
	;LDRB r6,[r3,#1];
	;LDRB r7,[r5,#2];
	;LDRB r8,[r5,#3];
	;ALIGN
	; almacenar k1 en x
	;LDR r0, =X;
	;STR r2, [r0];
	;LDR r1, =Y;
	;STRB r4, [r1];
	;STRB r5, [r1, #1];
	
here B here;

	AREA I_M1, DATA, READONLY
; literal pool
k1 DCD 0x55555555;
; First program
;k2 DCB 0xAA, 0xBB, 0xCC, 0xFF;
k2 DCD 0xAA, 0xBB, 0xCC, 0xFF;
	
	AREA D_M, DATA, READWRITE
X SPACE 200

; First program
; X SPACE 4
; Y SPACE 1		

	END
