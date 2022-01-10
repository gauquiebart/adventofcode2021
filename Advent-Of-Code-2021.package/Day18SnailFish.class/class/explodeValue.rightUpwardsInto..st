solving - private
explodeValue: aValue rightUpwardsInto: aNumber

	aNumber isNumber ifTrue: [ ^ aNumber + aValue ].
	^ { 
		  (aNumber at: 1).
		  (self explodeValue: aValue rightUpwardsInto: (aNumber at: 2)) }