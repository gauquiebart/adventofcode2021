tests
testPuzzleA

	self
		assert: (Day09SmokeBasin new heightMap: self puzzleInput)
				sumOfRiskLevelsOfAllLowPoints
		equals: 458