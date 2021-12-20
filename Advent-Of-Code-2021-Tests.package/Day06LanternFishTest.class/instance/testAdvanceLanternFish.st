tests
testAdvanceLanternFish

	| testInput lanternFisher |
	testInput := #( 3 4 3 1 2 ) asOrderedCollection.
	lanternFisher := Day06LanternFish new initialFish: testInput.

	self
		assert: lanternFisher advanceDay
		equals: #( 2 3 2 0 1 ) asOrderedCollection.
	self
		assert: lanternFisher advanceDay
		equals: #( 1 2 1 6 0 8 ) asOrderedCollection.
	self
		assert: lanternFisher advanceDay
		equals: #( 0 1 0 5 6 7 8 ) asOrderedCollection.