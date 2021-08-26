	LIST	
	ORG	x:$0000		; Seteo la memoria donde está el vector
	dc 0.7,0.5,0.1,-0.7	; $0000
	dc -0.7,-0.5,-0.4,-0.9	; $0004
	dc 0.8,0.9,-0.8,-0.2	; $0008
	dc -0.3,0.8,-0.7,-0.3	; $000C
	dc 0.3,0.7,-0.6,-0.6	; $0010
	dc -0.3,-0.8,0.1,0.5	; $0014
	dc -0.8,-0.9,-0.8,-0.9	; $0018
	dc 0.8,0.7,-0.4,-0.4	; $001C
	
	ORG	p:$e000

main	EQU	*
	move	#$0000,r0	; Cargo la posición del vector A
	move	#$0010,r4	; Cargo la posición del vector B
	move	#4,n0		; Cargo el tamaño del vector
;	jsr	vect_max		; Llamo a la subrutina vect_max
;	END	main
	
;vect_max	EQU	*
	do	n0,NEXT		; Activo el loop
	move	x:(r0)+,a	; a con A_i
	move	x:(r4),b		; b con B_i
	cmpm	a,b		; |b|-|a|
	tlt	a,b		; <0 -> |a|>|b| -> transfer a to b
	move	b,x:(r4)+
NEXT
;	END	vect_max
	END	main