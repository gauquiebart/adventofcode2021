tests
testPuzzleB

	| testInput lanternFisher |
	testInput := self puzzleInput asOrderedCollection.
	lanternFisher := Day06LanternFish new initialFish: testInput.

	self assert: (lanternFisher advanceDays: 256) equals: 1653559299811