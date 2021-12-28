tests
testIncompleteLine

	| incompleteLine completeLine corruptLines |
	incompleteLine := #( '{(}' '{{}{}' '{})' '{{}()' '[({(<(())[]>[[{[]{<()<>>'
	                     '[(()[<>])]({[<{<<[]>>(' ).
	completeLine := #( '{()}' '{{}{}}' '{{}{}]' ).
	corruptLines := #( '{([(<{}[<>[]}>{[]{[(<()>' ).

	incompleteLine do: [ :each | 
		self
			assert: (Day10SyntaxScoring new isIncompleteLine: each)
			equals: true ].

	"completeLine do: [ :each | 
		self
			assert: (Day10SyntaxScoring new isIncompleteLine: each)
			equals: false ]."

	"corruptLines do: [ :each | 
		self
			assert: (Day10SyntaxScoring new isIncompleteLine: each)
			equals: false ]"