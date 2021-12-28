tests
testSolvePuzzleA

	self
		assert:
			(Day10SyntaxScoring2 new sumOfScoresOfFirstIllegalCharacters:
				 self puzzleInput)
		equals: 389589