tests
testSumOfRiskLevelsOfAllLowPoints

	self
		assert:
		((Day09SmokeBasin new heightMap: self aTestInput) sumOfRiskLevelsOfAllLowPoints)
		equals: 15