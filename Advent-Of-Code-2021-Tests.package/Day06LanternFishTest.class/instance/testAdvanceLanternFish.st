tests
testAdvanceLanternFish

	| testInput lanternFisher |
	testInput := #( 3 4 3 1 2 ) asOrderedCollection.
	lanternFisher := Day06LanternFish new initialFish: testInput.

	self assert: (lanternFisher advanceDays: 1) equals: 5.
	self assert: (lanternFisher advanceDays: 1) equals: 6.
	self assert: (lanternFisher advanceDays: 1) equals: 7