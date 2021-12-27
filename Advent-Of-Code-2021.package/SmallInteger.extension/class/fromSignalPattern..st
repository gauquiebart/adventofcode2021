*Advent-Of-Code-2021
fromSignalPattern: aSignalPattern
	^ (0 to: 9) detect: [ :each | 
		  each signalPatterns asSet = aSignalPattern asSet ]