as yet unclassified
oxygenGeneratorRating: aCollectionOfBinaryIntegers atIndex: index

	^ self
		  lifeSupportRating: aCollectionOfBinaryIntegers
		  atIndex: index
		  bitComparisonBlock: [ :bitMask :anInteger | 
		  (anInteger bitAnd: bitMask) > 0 ]
	useMostCommonValue: true