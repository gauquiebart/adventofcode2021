resolving
reduceWithOutputValue: anOutputValue

	| numbersWithPatternsOfSameSize |
	numbersWithPatternsOfSameSize := anOutputValue size
		                                 allNumbersWithSamePatternSize.

	numbersWithPatternsOfSameSize do: [ :aNumber | 
		aNumber signalPatterns do: [ :aSignalPattern | 
			aSignalPattern do: [ :aSegment | 				
				| wiresForSegment impossibleWiresForSegment |
				wiresForSegment := self segmentToWires at: aSegment.
				(anOutputValue intersection: wiresForSegment) = wiresForSegment
					ifFalse: [ 
						impossibleWiresForSegment := wiresForSegment
						                             \
						                             (anOutputValue intersection:
							                              wiresForSegment) ]
					ifTrue: [ impossibleWiresForSegment := #(  ) ].

				self
					removeImpossibleWires: impossibleWiresForSegment
					forSegment: aSegment ] ] ].

	self shouldBeImplemented