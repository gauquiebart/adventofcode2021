tests
testWireToSegmentSolverForFullTestInput

	| wireToSegmentSolvers |
	wireToSegmentSolvers := self asWireToSegmentSolverByPermutations:
		                        self aTestInput.

		self
			assert: (wireToSegmentSolvers sum: [ :each | each decodeNumbers ])
			equals: 61229.