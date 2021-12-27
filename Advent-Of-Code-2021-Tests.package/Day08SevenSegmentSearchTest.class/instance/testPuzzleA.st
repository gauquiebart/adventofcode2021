tests
testPuzzleA

	| signalsAndOutput |
	signalsAndOutput := self asWireToSegmentSolverByPermutations: self puzzleInput.

	self
		assert: (WireToSegmentSolverByPermutations
				 outputValuesForDigits: #( 1 4 7 8 )
				 of: signalsAndOutput) size
		equals: 301