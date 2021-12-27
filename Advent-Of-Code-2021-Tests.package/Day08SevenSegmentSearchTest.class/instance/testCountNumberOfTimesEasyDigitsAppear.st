tests
testCountNumberOfTimesEasyDigitsAppear

	| signalsAndOutput |
	signalsAndOutput := self asWireToSegmentSolverByPermutations: self aTestInput.

	self
		assert: (WireToSegmentSolverByPermutations
				 outputValuesForDigits: #( 1 4 7 8 )
				 of: signalsAndOutput) size
		equals: 26