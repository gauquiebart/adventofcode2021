solving
solveMapping

	^ self class wireToSegmentPermutations detect: [ :aPossibleMapping | 
		  self codeNumbersMatchSignalPatternsFor: aPossibleMapping ]