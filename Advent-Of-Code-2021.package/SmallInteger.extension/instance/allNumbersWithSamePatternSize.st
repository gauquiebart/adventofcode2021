*Advent-Of-Code-2021
allNumbersWithSamePatternSize
	^ (0 to: 9) select: [ :aNumber | 
		  aNumber signalPatterns size = self signalPatterns size ]