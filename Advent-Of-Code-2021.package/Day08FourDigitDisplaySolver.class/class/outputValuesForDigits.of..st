as yet unclassified
outputValuesForDigits: digits of: aCollectionOfFourDigitDisplaySolvers
	
	|signalPatternSizes|
	signalPatternSizes:= (digits collect: [ :aDigit |
		aDigit signalPatterns ])
		collect: [ :aSignalPattern |
			aSignalPattern size ].
		
	^ aCollectionOfFourDigitDisplaySolvers flatCollect: [ :aFourDigitDisplaySolver |
		aFourDigitDisplaySolver outputValuesMatchingSize: signalPatternSizes ].