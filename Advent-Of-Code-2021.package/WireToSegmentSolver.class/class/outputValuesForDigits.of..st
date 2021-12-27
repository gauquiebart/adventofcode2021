solving
outputValuesForDigits: digits of: aCollectionOfSolvers

	| signalPatternSizes |
	signalPatternSizes := (digits collect: [ :aDigit | 
		                       aDigit signalPatterns ]) collect: [ 
		                      :aSignalPattern | aSignalPattern size ].

	^ aCollectionOfSolvers flatCollect: [ :aSolver | 
		  aSolver outputValuesMatchingSize: signalPatternSizes ]