solving-private
calculateXSpeedToNumberOfStepsMappingToStayInTargetAreaHorizontally: targetArea

	| maxXSpeed result left right |
	left := targetArea left.
	right := targetArea right.
	maxXSpeed := targetArea right.
	result := OrderedDictionary new.

	1 to: maxXSpeed do: [ :initialXSpeed | 
		| possibleSteps xSpeed numberOfSteps xPosition |
		possibleSteps := OrderedCollection new.
		xPosition := 0.
		numberOfSteps := 0.
		xSpeed := initialXSpeed.
		[ xSpeed = 0 ] whileFalse: [ 
			xPosition := xPosition + xSpeed.
			xSpeed := xSpeed - 1 max: 0.
			numberOfSteps := numberOfSteps + 1.
			(xPosition >= left and: xPosition <= right) ifTrue: [ 
				possibleSteps add: numberOfSteps -> { 
						xPosition.
						xSpeed } ] ].
		result at: initialXSpeed put: possibleSteps asArray ].


	^ (result reject: [ :each | each isEmpty ]) collect: [ :each | 
		  each last ]