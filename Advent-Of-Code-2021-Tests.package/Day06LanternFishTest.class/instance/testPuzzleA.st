tests
testPuzzleA

	| testInput lanternFisher |
	testInput := self puzzleInput asOrderedCollection.
	lanternFisher := Day06LanternFish new initialFish: testInput.

	1 to: 80 do: [ :aNumber | lanternFisher advanceDay ].

	self assert: lanternFisher lanternFishes size equals: 366057