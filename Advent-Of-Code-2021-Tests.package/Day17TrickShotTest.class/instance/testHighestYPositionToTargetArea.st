tests
testHighestYPositionToTargetArea

	|targetArea|
	
	targetArea := 20 @ -10 corner: 30 @ -5.
	
	self assert: (Day17TrickShot calculateHighestYPositionFor: targetArea)
	equals: 45