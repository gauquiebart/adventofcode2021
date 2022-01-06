solving
findAllStartVelocitiesToReachTargetArea: targetArea

	| xSpeeds ySpeeds maxSteps startVelocities |
	xSpeeds := self 
		           calculateXSpeedToNumberOfStepsMappingToStayInTargetAreaHorizontally:
		           targetArea.


	ySpeeds := self 
		           calculateYSpeedToNumberOfStepsMappingToStayInTargetAreaVertically:
		           targetArea.

	maxSteps := { 
		            (self findMaxSteps: xSpeeds).
		            (self findMaxSteps: ySpeeds) } max.

	startVelocities := OrderedCollection new.

	1 to: maxSteps do: [ :numberOfSteps | 
		| xSpeedsMatchingNumberOfSteps ySpeedsMatchingNumberOfSteps |
		xSpeedsMatchingNumberOfSteps := self
			                                findSpeedsIn: xSpeeds
			                                matchingSteps: numberOfSteps.
		ySpeedsMatchingNumberOfSteps := self
			                                findSpeedsIn: ySpeeds
			                                matchingSteps: numberOfSteps.

		xSpeedsMatchingNumberOfSteps keysAndValuesDo: [ :xSpeed :xSteps | 
			ySpeedsMatchingNumberOfSteps keysAndValuesDo: [ :ySpeed :ySteps | 
				| xAcceleration |
				xAcceleration := xSteps first value second.
				startVelocities add: xSpeed -> ySpeed.
				xAcceleration = 0 ifTrue: [ 
					numberOfSteps + 1 to: maxSteps do: [ :eachAdditionalStep | 
						| additionalYSpeedsMatchingMoreSteps |
						additionalYSpeedsMatchingMoreSteps := self
							                                      findSpeedsIn: ySpeeds
							                                      matchingSteps:
							                                      eachAdditionalStep.
						additionalYSpeedsMatchingMoreSteps keysAndValuesDo: [ 
							:additionalYSpeed 
							:additionalYSteps | 
							startVelocities add: xSpeed -> additionalYSpeed ] ] ] ] ] ].

	^ startVelocities asSet