as yet unclassified
epsilonRate: aCollectionOfBinaryIntegers ofLength: length

	^ ((0 to: length - 1) collect: [ :index | 1 << index ]) sum: [ 
		  :bitMask | 
		  (aCollectionOfBinaryIntegers count: [ :anInteger | 
			   (anInteger bitAnd: bitMask) = 0 ])
		  > (aCollectionOfBinaryIntegers size / 2)
			  ifTrue: [ bitMask ]
			  ifFalse: [ bitMask bitAnd: 0 ] ]