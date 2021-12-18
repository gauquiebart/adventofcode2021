tests
testPuzzleA

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| commands |
	commands := self puzzleInput.

	self
		assert: (Day02Dive horizontalPosition: commands)
			* (Day02Dive finalDepth: commands)
		equals: 1990000