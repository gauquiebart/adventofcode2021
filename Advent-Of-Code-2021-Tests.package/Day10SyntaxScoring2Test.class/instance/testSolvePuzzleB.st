tests
testSolvePuzzleB

	self
		assert:
		(Day10SyntaxScoring2 new middleCompletionStringScore:
			 self puzzleInput)
		equals: 1190420163