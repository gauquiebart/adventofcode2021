tests
testPuzzleA

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| testInput |
	testInput := self puzzleInput.

	self
		assert: (Day03BinaryDiagnostic gammaRate: testInput bitMasks: (Day03BinaryDiagnostic  bitMasks: 12))
			* (Day03BinaryDiagnostic epsilonRate: testInput bitMasks: (Day03BinaryDiagnostic bitMasks: 12))
		equals: 3009600