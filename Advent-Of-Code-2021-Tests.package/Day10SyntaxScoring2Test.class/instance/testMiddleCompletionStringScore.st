tests
testMiddleCompletionStringScore

	self
		assert:
			(Day10SyntaxScoring2 new middleCompletionStringScore:
				 self aTestInput)
		equals: 288957