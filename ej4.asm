	org	p:$e000
	move	#$00,a2
	move	#$000123,a1
	move	#$800000,a0
	move	#$ff,b2
	move	#$000000,b1
	move	#$ffffff,b0
	move	#$400000,x1
	move	#$400000,x0
	
	macr	x0,x1,a
	rnd	b
	mpyr	x0,x1,b