tests
testCountNumberOfTimesEasyDigitsAppear

	| signalsAndOutput |
	signalsAndOutput := self asWireToSegmentSolverByPermutations: self aTestInput.

	self
		assert: (WireToSegmentSolver
				 outputValuesForDigits: #( 1 4 7 8 )
				 of: signalsAndOutput) size
		equals: 26