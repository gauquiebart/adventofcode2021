tests
testPuzzleA

	| testInput lanternFisher |
	testInput := self puzzleInput asOrderedCollection.
	lanternFisher := Day06LanternFish new initialFish: testInput.

	self assert: (lanternFisher advanceDays: 80) equals: 366057