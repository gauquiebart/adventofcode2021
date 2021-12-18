as yet unclassified
rate: aCollectionOfBinaryIntegers bitMasks: bitMasks comparison: bitMaskComparisonBlock

	^ bitMasks sum: [ :bitMask | 
		  (aCollectionOfBinaryIntegers count: [ :anInteger | 
			   bitMaskComparisonBlock value: bitMask value: anInteger ])
		  > (aCollectionOfBinaryIntegers size / 2)
			  ifTrue: [ bitMask ]
			  ifFalse: [ 0 ] ]