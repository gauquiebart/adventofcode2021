private
movePositions: aNumber

	position := (position + aNumber) \\ 10.
	position isZero ifTrue: [ position := 10 ].