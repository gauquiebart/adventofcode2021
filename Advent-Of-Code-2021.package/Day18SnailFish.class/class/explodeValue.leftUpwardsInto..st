solving - private
explodeValue: aValue leftUpwardsInto: aNumber

	aNumber isNumber ifTrue: [ ^ aNumber + aValue ].
	^ { 
		  (self explodeValue: aValue leftUpwardsInto: (aNumber at: 1)).
		  (aNumber at: 2) }