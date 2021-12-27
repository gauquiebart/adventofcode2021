tests
testPuzzleB

	| wireToSegmentSolvers |
	wireToSegmentSolvers := self asWireToSegmentSolverByPermutations:
		                        self puzzleInput.

	self
		assert: (wireToSegmentSolvers sum: [ :each | each decodeNumbers ])
		equals: 908067