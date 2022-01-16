private
enhancedBy: imageEnhancementAlgorithm atRow: row andColumn: column

	| around center index |
	center := row @ column.
	around := { 
		          (center + (-1 @ -1)).
		          (center + (-1 @ 0)).
		          (center + (-1 @ 1)).
		          (center + (0 @ -1)).
		          center.
		          (center + (0 @ 1)).
		          (center + (1 @ -1)).
		          (center + (1 @ 0)).
		          (center + (1 @ 1)) }.

	index := (around collect: [ :eachPosition | 
		self darkOrValueAtRow: eachPosition x andColumn: eachPosition y ])
	inject: 0 into: [:sum :each | (sum << 1) bitOr: (each = $# ifTrue: 1 ifFalse: 0)].

	^ imageEnhancementAlgorithm at: (index + 1)