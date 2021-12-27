as yet unclassified
trimUniquePatterns: numbersToUniqueSignalMapping

	0 to: 9 do: [ :number | 
		| uniqueSignalPattern |
		uniqueSignalPattern := numbersToUniqueSignalMapping at: number.
		uniqueSignalPattern size = 1 ifTrue: [ 
			0 to: 9 do: [ :aNumberToTrim | 
				number = aNumberToTrim ifFalse: [ 
					| uniqueSignalPatternToKeep |
					uniqueSignalPatternToKeep := (numbersToUniqueSignalMapping at:
						                              aNumberToTrim) reject: [ :aPattern | 
						                             aPattern
						                             = uniqueSignalPattern first ].
					numbersToUniqueSignalMapping
						at: aNumberToTrim
						put: uniqueSignalPatternToKeep ] ] ] ].