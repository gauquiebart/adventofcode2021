solving
solveMapping
	^ self wireToSegmentPermutations detect: [ :aPossibleMapping |
		self codeNumbersMatchSignalPatternsFor:aPossibleMapping]