private-solving
completeIncomplete: input

	self firstUnbalancedCharacter: input.

	^ stack asArray collect: #matchingClosingBracket