as yet unclassified
winningBoard
	^ bingoBoards detect: [ :bingoBoard | bingoBoard winning ] ifNone: [ nil ]