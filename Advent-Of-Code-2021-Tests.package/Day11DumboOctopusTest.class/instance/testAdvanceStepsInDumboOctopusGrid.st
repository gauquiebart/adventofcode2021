tests
testAdvanceStepsInDumboOctopusGrid

	| grid simpleTestInput |
	simpleTestInput := #( 1 1 1 1 1 1 9 9 9 1 1 9 1 9 1 1 9 9 9 1 1 1 1 1
	                      1 ) splitAt: 5.
	grid := DumboOctopusGrid new gridOfEnergyLevels: simpleTestInput.

	self assert: grid flashes equals: 0.

	grid advanceStep: 1.
	
	self assert: grid flashes equals: 9.
	
	
		
