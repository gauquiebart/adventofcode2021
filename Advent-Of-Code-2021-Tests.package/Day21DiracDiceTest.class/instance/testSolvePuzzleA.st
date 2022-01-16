tests
testSolvePuzzleA

	| die player1 player2 game |
	die := AOCDeterministic100SidedDie new.
	player1 := AOCDiracDicePlayer new
		           position: 7;
		           yourself.
	player2 := AOCDiracDicePlayer new
		           position: 3;
		           yourself.
	game := AOCDiracDiceGame new
		        die: die player1: player1 player2: player2;
		        yourself.

	game letsPlay.

	self assert: game winningPlayer equals: player1.
	
	self assert: game losingPlayer score * die numberOfRolls 
	equals: 551901