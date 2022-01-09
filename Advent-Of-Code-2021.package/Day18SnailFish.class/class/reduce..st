solving
reduce: aNumber
	|result explodedNumber|
	
	result := aNumber.
		
	explodedNumber := self explodeOnce: aNumber.
	
	result := explodedNumber.
	
	"self shouldBeImplemented."
	
	^ result