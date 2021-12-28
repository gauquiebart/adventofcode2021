tests
testCorruptedNestedChunks

	| corruptedChunks |
	corruptedChunks := #( '([' '{(}()()}' '<([{<}>])>' '((((((((((])))))))))' ).

	corruptedChunks do: [ :each | 
		self
			assert: (Day10SyntaxScoring new isCorruptedChunk: each)
			equals: true ]