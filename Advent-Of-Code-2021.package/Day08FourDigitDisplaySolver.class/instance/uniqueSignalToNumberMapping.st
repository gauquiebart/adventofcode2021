accessing
uniqueSignalToNumberMapping

	| numbersToUniqueSignalMapping |
	numbersToUniqueSignalMapping := Dictionary new.

	0 to: 9 do: [ :number | 
		numbersToUniqueSignalMapping
			at: number
			put:
			(self uniqueSignalPatternsMatchingSize: number signalPatterns size) ].

	1 to: 5 do: [ :aNumberOfTimes | 
		(numbersToUniqueSignalMapping select: [ :aValue | aValue size = 1 ]) 
			keysAndValuesDo: [ 
				:aNumberWithUniqueMapping 
				:aUniqueSignalMappingCollection | 
				self
					removeOtherNumbersWithSamePatternWith: aNumberWithUniqueMapping
					and: aUniqueSignalMappingCollection
					from: numbersToUniqueSignalMapping.

				self trimUniquePatterns: numbersToUniqueSignalMapping.
				self trimUniquePatterns2: numbersToUniqueSignalMapping. ] ].

	self shouldBeImplemented