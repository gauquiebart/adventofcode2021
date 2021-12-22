tests
testFuelToPositionOfLeastFuel

	| testInput |
	testInput := #( 16 , 1 , 2 , 0 , 4 , 2 , 7 , 1 , 2 , 14 ) select: [ 
		             :aNumber | aNumber ~= #, ].
	
	self assert: (Day07TheTreacheryOfWhales fuelToPositionOfLeastFuelOf: testInput)
	equals: 37.