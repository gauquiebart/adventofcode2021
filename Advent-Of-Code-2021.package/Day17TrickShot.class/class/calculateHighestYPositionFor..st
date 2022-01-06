solving
calculateHighestYPositionFor: targetArea

	| ySpeeds bestVerticalSpeed |
	ySpeeds := self 
		           calculateYSpeedToNumberOfStepsMappingToStayInTargetAreaVertically:
		           targetArea.


	bestVerticalSpeed := ySpeeds values last.

	^ (bestVerticalSpeed at: 1) value at: 2