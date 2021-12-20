accessing
playGameLastBoardToWin

	| numberIndex winningBoards lastWinningBoard lastWinningIndex |
	numberIndex := 1.
	winningBoards := OrderedCollection new.

	[ 
	numberIndex < numberSequence size and:
		winningBoards size ~= bingoBoards size ] whileTrue: [ 
		| newWinningBoards |
		self markBingoBoardsWith: (numberSequence at: numberIndex).

		newWinningBoards := self winningBoards
			                    removeAll: winningBoards;
			                    yourself.

		newWinningBoards isNotEmpty ifTrue: [ 
			lastWinningBoard := newWinningBoards at: 1.
			lastWinningIndex := numberIndex.
			winningBoards := self winningBoards ].

		numberIndex := numberIndex + 1 ].

	^ self
		  winningScore: (numberSequence at: lastWinningIndex)
		  forBoard: lastWinningBoard