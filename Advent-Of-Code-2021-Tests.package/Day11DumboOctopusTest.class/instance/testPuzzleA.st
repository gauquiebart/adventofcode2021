tests
testPuzzleA

	| grid puzzleInput |
	puzzleInput := self puzzleInput.
	grid := DumboOctopusGrid new gridOfEnergyLevels: puzzleInput.

	grid advanceAllSteps.

	self assert: grid flashes equals: 1732