tests
testPuzzleB

	| grid puzzleInput |
	puzzleInput := self puzzleInput.
	grid := DumboOctopusGrid new gridOfEnergyLevels: puzzleInput.

	self assert: grid advanceStepsTillFirstFullFlash equals: 290