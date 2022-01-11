solving
magnitude: aNumber

	aNumber isNumber ifTrue: [ ^ aNumber ].
	^ 3 * (self magnitude: (aNumber at: 1))
	  + (2 * (self magnitude: (aNumber at: 2)))