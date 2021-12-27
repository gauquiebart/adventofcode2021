private
codeNumbersMatchSignalPatternsFor: aMapping

	^ signalPatterns allSatisfy: [ :aSignalPattern |
		|decoded| 
		  decoded:= self decode: aSignalPattern with: aMapping.
		SmallInteger isValidPattern: decoded]