tests
testAdvanceLanternFishFor80Days

	| testInput lanternFisher |
	testInput := #( 3 4 3 1 2 ) asOrderedCollection.
	lanternFisher := Day06LanternFish new initialFish: testInput.

	self assert: (lanternFisher advanceDays: 80) equals: 5934