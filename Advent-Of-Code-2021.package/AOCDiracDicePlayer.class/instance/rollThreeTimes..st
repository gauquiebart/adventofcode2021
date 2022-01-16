solving
rollThreeTimes: aDie
	|roll1 roll2 roll3 numberOfPositionsToMove|
	roll1 := aDie roll.
	roll2 := aDie roll.
	roll3 := aDie roll.
	
	numberOfPositionsToMove := roll1 + roll2 + roll3.
	
	self movePositions: numberOfPositionsToMove.
	
	score := score + position