solving
largestMagnitudeOfTwoSums: aCollectionOfNumbers

	^ ((Array streamContents: [ :stream | 
		    aCollectionOfNumbers combinations: 2 atATimeDo: [ :each | 
			    stream nextPut: each copy.
			    stream nextPut: each copy reversed ] ]) collect: [ :eachPair | 
		   self magnitude: (self addAll: eachPair) ]) max