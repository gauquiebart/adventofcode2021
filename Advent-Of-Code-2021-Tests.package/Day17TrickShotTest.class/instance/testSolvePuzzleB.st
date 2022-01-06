tests
testSolvePuzzleB

	|targetArea|
	
	"target area: x=138..184, y=-125..-71"
	targetArea := 138 @ -125 corner: 184 @ -71.
	
	self assert: ((Day17TrickShot findAllStartVelocitiesToReachTargetArea: targetArea) size)
	equals: 4120