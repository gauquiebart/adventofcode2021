tests
testPuzzleB

	| randomNumbers bingoBoards bingoGame |
	randomNumbers := self puzzleInputRandomNumbers.

	bingoBoards := self puzzleInputBingoBoards.

	bingoGame := BingoGame new
		             numberSequence: randomNumbers;
		             bingoBoards: bingoBoards;
		             yourself.

	self assert: bingoGame playGameLastBoardToWin equals: 8468