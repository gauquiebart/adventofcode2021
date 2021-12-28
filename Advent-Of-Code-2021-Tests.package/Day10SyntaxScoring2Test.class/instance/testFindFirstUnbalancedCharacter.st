tests
testFindFirstUnbalancedCharacter

	| balancedSimpleChunks balancedNestedChunks incompleteLines |
	balancedSimpleChunks := #( '{}' '()' '[]' '<>' '<><>' ).
	balancedNestedChunks := #( '([])' '{()()()}' '<([{}])>' '[<>({}){}[([])<>]]'
	                           '(((((((((())))))))))' ).
	incompleteLines := #( '[({(<(())[]>[[{[]{<()<>>'
	                      '[(()[<>])]({[<{<<[]>>('
	                      '(((({<>}<{<{<>}{[]{[]{}'
	                      '{<[[]]>}<{[{[{[]{()[[[]'
					'<{([{{}}[<[[[<>{}]]]>[]]' ).

	self
		assert: (Day10SyntaxScoring2 new firstUnbalancedCharacter: '[}')
		equals: $}.

	self
		assert: (Day10SyntaxScoring2 new firstUnbalancedCharacter: '{>')
		equals: $>.

	self
		assert: (Day10SyntaxScoring2 new firstUnbalancedCharacter: '<)')
		equals: $).

	self
		assert: (Day10SyntaxScoring2 new firstUnbalancedCharacter: '(]')
		equals: $].

	self
		assert: (Day10SyntaxScoring2 new firstUnbalancedCharacter: '()[}')
		equals: $}.

	self
		assert:
		(Day10SyntaxScoring2 new firstUnbalancedCharacter: '([[[{})')
		equals: $).

	self
		assert: (Day10SyntaxScoring2 new firstUnbalancedCharacter:
				 '{([(<{}[<>[]}>{[]{[(<()>')
		equals: $}.

	self
		assert: (Day10SyntaxScoring2 new firstUnbalancedCharacter:
				 '[[<[([]))<([[{}[[()]]]')
		equals: $).

	self
		assert: (Day10SyntaxScoring2 new firstUnbalancedCharacter:
				 '[{[{({}]{}}([{[{{{}}([]')
		equals: $].

	self
		assert: (Day10SyntaxScoring2 new firstUnbalancedCharacter:
				 '[<(<(<(<{}))><([]([]()')
		equals: $).

	self
		assert: (Day10SyntaxScoring2 new firstUnbalancedCharacter:
				 '<{([([[(<>()){}]>(<<{{')
		equals: $>.

	balancedSimpleChunks do: [ :each | 
		self
			assert: (Day10SyntaxScoring2 new firstUnbalancedCharacter: each)
			equals: nil ].

	balancedNestedChunks do: [ :each | 
		self
			assert: (Day10SyntaxScoring2 new firstUnbalancedCharacter: each)
			equals: nil ].

	incompleteLines do: [ :each | 
		self
			assert: (Day10SyntaxScoring2 new firstUnbalancedCharacter: each)
			equals: nil ]