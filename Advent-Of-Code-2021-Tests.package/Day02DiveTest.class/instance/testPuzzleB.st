tests
testPuzzleB

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| commands result|
	commands := self puzzleInput.
	
	result := Day02Dive horizontalPositionAndDepth: commands.

	self
		assert: (result at: 1) * (result at: 2)
		equals: 1975421260