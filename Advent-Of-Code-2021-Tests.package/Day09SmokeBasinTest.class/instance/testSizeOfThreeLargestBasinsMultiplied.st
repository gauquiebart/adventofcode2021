tests
testSizeOfThreeLargestBasinsMultiplied

	self
		assert: (Day09SmokeBasin new heightMap: self aTestInput)
				sizeOfThreeLargestBasinsMultiplied
		equals: 1134