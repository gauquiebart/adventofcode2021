printing
printOn: aStream 
	"The receiver prints on aStream in terms of infix notation."
	
	aStream nextPut: $(.
	x printOn: aStream.
	aStream nextPut: $@.
	y printOn: aStream.
	aStream nextPut: $@.
	z printOn: aStream.
	aStream nextPut: $).