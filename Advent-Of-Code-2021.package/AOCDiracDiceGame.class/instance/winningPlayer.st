accessing
winningPlayer

	player1 score >= 1000 ifTrue: [ ^ player1 ].
	player2 score >= 1000 ifTrue: [ ^ player2 ].

	^ nil