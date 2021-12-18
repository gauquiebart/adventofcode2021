tests
testPuzzleA

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| testInput |
	testInput := self puzzleInput.

	self
		assert: (Day03BinaryDiagnostic gammaRate: testInput ofLength: 12)
			* (Day03BinaryDiagnostic epsilonRate: testInput ofLength: 12)
		equals: 3009600