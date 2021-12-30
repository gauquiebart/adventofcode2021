as yet unclassified
horizontalPositionAndDepth: anOrderedCollectionOfCommands

	| aim horizontalPosition depth |
	aim := 0.
	horizontalPosition := 0.
	depth := 0.

	anOrderedCollectionOfCommands asPairs do: [ 
		:aCommandAndCount | 
		| aCommand count |
		aCommand := aCommandAndCount at: 1.
		count := aCommandAndCount at: 2.

		aCommand = 'down' ifTrue: [ aim := aim + count ].
		aCommand = 'up' ifTrue: [ aim := aim - count ].
		aCommand = 'forward' ifTrue: [ 
			horizontalPosition := horizontalPosition + count.
			depth := depth + (aim * count) ] ].

	^ Array with: horizontalPosition with: depth