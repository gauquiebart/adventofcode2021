solving - private
explodeOnce: aNumber

	| exploded result |
	exploded := self explodeOnce: aNumber level: 1.
	result := exploded isAssociation
		          ifTrue: [ exploded key ]
		          ifFalse: [ exploded ].

	(result at: 1) isAssociation ifTrue: [ 
		| remainingAddition rightPart |
		remainingAddition := (result at: 1) value at: 2.
		rightPart := result at: 2.
		result := { 
			          (result at: 1) key.
			          { 
				          ((rightPart at: 1) + remainingAddition).
				          (rightPart at: 2) } } ].

	^ result