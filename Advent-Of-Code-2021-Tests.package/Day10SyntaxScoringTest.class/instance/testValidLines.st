tests
testValidLines

	self assert: (Day10SyntaxScoring new isValidLine: '{}') equals: true.
	self
		assert: (Day10SyntaxScoring new isValidLine: '{}{}')
		equals: true.
	self
		assert: (Day10SyntaxScoring new isValidLine: '{}{()}')
		equals: true.
	self
		assert: (Day10SyntaxScoring new isValidLine: '{}{()]')
		equals: false	