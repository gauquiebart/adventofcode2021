solving
letsPlay

	[ player1 score >= 1000 or: [ player2 score >= 1000 ] ] whileFalse: [ 
		player1 rollThreeTimes: die.

		player1 score >= 1000 ifFalse: [ player2 rollThreeTimes: die ] ].

	