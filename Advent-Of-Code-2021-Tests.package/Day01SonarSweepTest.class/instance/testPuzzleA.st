tests
testPuzzleA

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	self
		assert: (Day01SonarSweep countIncreases: self puzzleInput )
		equals: 1713