as yet unclassified
co2ScrubberRating: aCollectionOfBinaryIntegers atIndex: index

	^ self
		  lifeSupportRating: aCollectionOfBinaryIntegers
		  atIndex: index
		  bitComparisonBlock: [ :bitMask :anInteger | 
		  (anInteger bitAnd: bitMask) = 0 ]
	useMostCommonValue: false