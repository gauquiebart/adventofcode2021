as yet unclassified
trimUniquePatterns2: numbersToUniqueSignalMapping
	
	0 to: 9 do: [ :number | 
		| uniqueSignalPattern |
		uniqueSignalPattern := numbersToUniqueSignalMapping at: number.
		uniqueSignalPattern size = 2 ifTrue: [ 
			|sameSignalPatterns|
			sameSignalPatterns := numbersToUniqueSignalMapping select: [ :aValue | 
				aValue asSet = uniqueSignalPattern asSet].
			
			sameSignalPatterns size > 1 ifTrue: [ 
						| mappingsToTrim |
						mappingsToTrim := numbersToUniqueSignalMapping select: [ 
							                  :aValueToTrim | aValueToTrim size > 2 ].

						mappingsToTrim keysAndValuesDo: [ :key :value | 
							| trimmed |
							trimmed := value \ uniqueSignalPattern.
							numbersToUniqueSignalMapping at: key put: trimmed ] ] ] ]