*Advent-Of-Code-2021
isValidPattern: aSignalPattern

	^ (0 to: 9) anySatisfy: [ :each | 
		  each signalPatterns = aSignalPattern ]