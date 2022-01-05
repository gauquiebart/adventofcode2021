solving
calculateHighestYPositionFor: targetArea

	| calculateXSpeedToNumberOfStepsMappingToStayInTargetAreaHorizontally calculateYSpeedToNumberOfStepsMappingToStayIntoTargetAreaVertically bestVerticalSpeed |
	calculateXSpeedToNumberOfStepsMappingToStayInTargetAreaHorizontally := self 
		                                                                       calculateXSpeedToNumberOfStepsMappingToStayInTargetAreaHorizontally:
		                                                                       targetArea.


	calculateYSpeedToNumberOfStepsMappingToStayIntoTargetAreaVertically := self 
		                                                                       calculateYSpeedToNumberOfStepsMappingToStayInTargetAreaVertically:
		                                                                       targetArea.


	bestVerticalSpeed := calculateYSpeedToNumberOfStepsMappingToStayIntoTargetAreaVertically
		                     values last.

	^ (bestVerticalSpeed at: 1) value at: 2