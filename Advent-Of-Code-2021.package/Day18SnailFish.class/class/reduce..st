solving
reduce: aNumber
	|result explodedNumber splittedNumber |
	
	result := aNumber.
		
	explodedNumber := self explodeOnce: aNumber.
	splittedNumber := self splitOnce: explodedNumber.
	
	result := splittedNumber.
	
	
	^ result