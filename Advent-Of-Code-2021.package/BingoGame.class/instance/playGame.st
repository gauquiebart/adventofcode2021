as yet unclassified
playGame
	|numberIndex|
	numberIndex := 1.

	[ self winningBoard isNil] 
	whileTrue: [ 
		self markBingoBoardsWith: (numberSequence at: numberIndex).
		numberIndex := numberIndex + 1].

	^ self winningScore: (numberSequence at: (numberIndex - 1))