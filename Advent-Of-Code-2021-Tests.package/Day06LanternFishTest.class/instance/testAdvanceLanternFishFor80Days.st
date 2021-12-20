tests
testAdvanceLanternFishFor80Days

	| testInput lanternFisher |
	testInput := #( 3 4 3 1 2 ) asOrderedCollection.
	lanternFisher := Day06LanternFish new initialFish: testInput.

	1 to: 80 do: [ :aNumber | lanternFisher advanceDay ].

	self assert: lanternFisher lanternFishes size equals: 5934