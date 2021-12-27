*Advent-Of-Code-2021
allNumbersWithPatternSize: aPatternSize

	^ (0 to: 9) select: [ :aNumber | 
		  aNumber signalPatterns size = aPatternSize ]