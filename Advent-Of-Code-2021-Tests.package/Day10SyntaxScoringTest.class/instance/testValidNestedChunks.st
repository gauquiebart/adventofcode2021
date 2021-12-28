tests
testValidNestedChunks

	| validChunks |
	validChunks := #( '([])' '{()()()}' '<([{}])>' '[<>({}){}[([])<>]]'
	                  '(((((((((())))))))))' ).

	validChunks do: [ :each | 
		self assert: (Day10SyntaxScoring new isValidChunk: each) equals: true ]