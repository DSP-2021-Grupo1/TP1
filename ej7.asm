	org	x:$0000
	dc	$10fedc,$210fed,$4210fe,$84210f,$d84210,$fb8421

	org	p:$e000
	move	x:(r0)+,a
	rep	#6
	move	a,y:(r4)+	x:(r0)+,a
	jlc	OK
	bset	#0,y:$100
OK	bclr	#6,sr