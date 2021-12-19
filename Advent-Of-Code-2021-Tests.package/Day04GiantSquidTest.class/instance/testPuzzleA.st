tests
testPuzzleA

	| randomNumbers bingoBoards bingoGame |
	randomNumbers := self puzzleInputRandomNumbers.

	bingoBoards := self puzzleInputBingoBoards.

	bingoGame := BingoGame new
		             numberSequence: randomNumbers;
		             bingoBoards: bingoBoards;
		             yourself.

	self assert: bingoGame playGame equals: 39984