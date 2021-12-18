as yet unclassified
epsilonRate: aCollectionOfBinaryIntegers bitMasks: bitMasks
	^ self rate: aCollectionOfBinaryIntegers bitMasks: bitMasks comparison: [ :bitMask :anInteger | 
			   (anInteger bitAnd: bitMask) = 0 ].