accessing
removeOtherNumbersWithSamePatternWith: aNumberWithUniqueMapping and: aUniqueSignalMappingCollection from: numbersToUniqueSignalMapping

				| actualPattern otherNumbersWithSamePattern uniqueSignalMapping |
				actualPattern := aNumberWithUniqueMapping signalPatterns.
				uniqueSignalMapping := aUniqueSignalMappingCollection first.

				otherNumbersWithSamePattern := aNumberWithUniqueMapping
					                               allNumbersWithSamePatternSize.

				otherNumbersWithSamePattern do: [ :aNumberToTrim | 
					| signalMappingsForNumberToTrim signalMappingsForNumberToKeep |
					signalMappingsForNumberToTrim := numbersToUniqueSignalMapping 
						                                 at: aNumberToTrim.

					signalMappingsForNumberToKeep := signalMappingsForNumberToTrim 
						                                 select: [ :each | 
							                                 uniqueSignalMapping 
								                                 allSatisfy: [ :aChar | 
								                                 (each occurrencesOf: aChar)
								                                 > 0 ] ].

					numbersToUniqueSignalMapping
						at: aNumberToTrim
						put: signalMappingsForNumberToKeep ]