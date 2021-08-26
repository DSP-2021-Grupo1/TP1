	org	p:$e000
	move	#$0c0000,x1
	move	#$600000,x0
	
	add	x1,a
	rep	#$a
	norm	r0,a
	add	x0,a