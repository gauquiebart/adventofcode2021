tests
testAdvanceAllSteps

	| grid testInput |
	testInput := self aTestInput.
	grid := DumboOctopusGrid new gridOfEnergyLevels: testInput.

	grid advanceAllSteps.
	
	self assert: grid flashes equals: 1656