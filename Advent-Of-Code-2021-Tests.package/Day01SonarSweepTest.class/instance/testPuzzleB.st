tests
testPuzzleB

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	self
		assert: (Day01SonarSweep countIncreasesForSlidingWindow: self puzzleInput )
		equals: 1734