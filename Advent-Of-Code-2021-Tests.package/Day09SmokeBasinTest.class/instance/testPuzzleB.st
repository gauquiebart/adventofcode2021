tests
testPuzzleB

	self
		assert: (Day09SmokeBasin new heightMap: self puzzleInput)
				sizeOfThreeLargestBasinsMultiplied
		equals: 1391940