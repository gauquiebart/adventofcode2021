solving - private
calculateYSpeedToNumberOfStepsMappingToStayInTargetAreaVertically: targetArea

	| result top bottom |
	top := targetArea top.
	bottom := targetArea bottom.
	result := OrderedDictionary new.


	top to: 1000 do: [ :initialYSpeed | 
		| possibleSteps ySpeed numberOfSteps yPosition highestYPosition |
		possibleSteps := OrderedCollection new.
		highestYPosition := 0.
		yPosition := 0.
		numberOfSteps := 0.
		ySpeed := initialYSpeed.
		[ yPosition > top ] whileTrue: [ 
			yPosition := yPosition + ySpeed.
			highestYPosition := yPosition max: highestYPosition.
			ySpeed := ySpeed - 1.
			numberOfSteps := numberOfSteps + 1.
			(yPosition <= bottom and: yPosition >= top) ifTrue: [ 
				possibleSteps add: numberOfSteps -> { 
						yPosition.
						highestYPosition.
						ySpeed } ] ].
		result at: initialYSpeed put: possibleSteps asArray ].

	^ result reject: [ :each | each isEmpty ]