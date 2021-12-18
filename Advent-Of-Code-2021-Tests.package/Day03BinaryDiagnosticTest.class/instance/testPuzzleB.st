tests
testPuzzleB

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| testInput |
	testInput := self puzzleInput.

	self
		assert: (Day03BinaryDiagnostic oxygenGeneratorRating: testInput atIndex: 12)
			* (Day03BinaryDiagnostic co2ScrubberRating: testInput atIndex: 12)
		equals: 6940518