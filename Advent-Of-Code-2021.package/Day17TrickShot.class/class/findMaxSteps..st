solving - private
findMaxSteps: aDictionary

	^ ((aDictionary values flatCollect: [ :numberOfSteps |
		numberOfSteps  ]) collect: #key) max.
	