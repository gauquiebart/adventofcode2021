private
darkOrValueAtRow: row andColumn: column

	row < 1 ifTrue: [ ^ $. ].
	column < 1 ifTrue: [ ^ $. ].
	row > self numberOfRows ifTrue: [ ^ $. ].
	column > self numberOfColumns ifTrue: [ ^ $. ].

	^ (imageLines at: row) at: column