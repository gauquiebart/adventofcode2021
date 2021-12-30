tests
testAdvanceStepsTillFirstFullFlash

	| grid testInput |
	testInput := self aTestInput.
	grid := DumboOctopusGrid new gridOfEnergyLevels: testInput.

	self assert: grid advanceStepsTillFirstFullFlash equals: 195.