as yet unclassified
lifeSupportRating: aCollectionOfBinaryIntegers atIndex: index bitComparisonBlock: bitComparisonBlock useMostCommonValue: useMostCommonValue

	^ aCollectionOfBinaryIntegers size = 1
		  ifTrue: [ aCollectionOfBinaryIntegers at: 1 ]
		  ifFalse: [ 
			  | bitMask binaryIntegersWithOneBitMask remainingSelection |
			  bitMask := 1 << (index - 1).
			  binaryIntegersWithOneBitMask := aCollectionOfBinaryIntegers 
				                                  select: [ :anInteger | 
				                                  bitComparisonBlock
					                                  value: bitMask
					                                  value: anInteger ].
			  remainingSelection := binaryIntegersWithOneBitMask.
			  useMostCommonValue
				  ifTrue: [ 
					  binaryIntegersWithOneBitMask size
					  >= (aCollectionOfBinaryIntegers size / 2) ifFalse: [ 
						  remainingSelection := aCollectionOfBinaryIntegers 
							                        copyWithoutAll:
							                        binaryIntegersWithOneBitMask ] ]
				  ifFalse: [ 
					  binaryIntegersWithOneBitMask size
					  <= (aCollectionOfBinaryIntegers size / 2) ifFalse: [ 
						  remainingSelection := aCollectionOfBinaryIntegers 
							                        copyWithoutAll:
							                        binaryIntegersWithOneBitMask ] ].

			  self
				  lifeSupportRating: remainingSelection
				  atIndex: index - 1
				  bitComparisonBlock: bitComparisonBlock
				  useMostCommonValue: useMostCommonValue ]