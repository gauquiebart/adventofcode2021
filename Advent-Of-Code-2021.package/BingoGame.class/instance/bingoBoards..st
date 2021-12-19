as yet unclassified
bingoBoards: aCollectionOfBingoBoardNumbers

	bingoBoards := aCollectionOfBingoBoardNumbers collect: [ :aCollectionOfBoardNumbers |
	 BingoBoard new boardNumbers: aCollectionOfBoardNumbers; yourself]