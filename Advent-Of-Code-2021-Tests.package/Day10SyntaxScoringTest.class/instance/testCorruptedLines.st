tests
testCorruptedLines

	self
		assert:
		(Day10SyntaxScoring new isCorruptedLine: '[][}')
		equals: true.

	self
		assert:
		(Day10SyntaxScoring new isCorruptedLine: '{([(<{}[<>[]}>{[]{[(<()>')
		equals: true.

	self
		assert:
		(Day10SyntaxScoring new isCorruptedLine: '[[<[([]))<([[{}[[()]]]')
		equals: true.

	self
		assert:
		(Day10SyntaxScoring new isCorruptedLine: '[{[{({}]{}}([{[{{{}}([]')
		equals: true.
		
	self
		assert:
		(Day10SyntaxScoring new isCorruptedLine: '[<(<(<(<{}))><([]([]()')
		equals: true.
		
	self
		assert:
		(Day10SyntaxScoring new isCorruptedLine: '<{([([[(<>()){}]>(<<{{')
		equals: true.		
	