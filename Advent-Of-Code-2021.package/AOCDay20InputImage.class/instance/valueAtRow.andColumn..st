private
valueAtRow: row andColumn: column

	row < 1 ifTrue: [ ^ infiniteCharacter ].
	column < 1 ifTrue: [ ^ infiniteCharacter ].
	row > self numberOfRows ifTrue: [ ^ infiniteCharacter ].
	column > self numberOfColumns ifTrue: [ ^ infiniteCharacter ].

	^ (imageLines at: row) at: column