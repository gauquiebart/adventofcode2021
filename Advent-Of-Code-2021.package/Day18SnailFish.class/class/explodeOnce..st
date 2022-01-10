solving - private
explodeOnce: aNumber

	| exploded result |
	exploded := self explodeOnce: aNumber level: 1.
	result := exploded.

	result := exploded isAssociation
		          ifTrue: [ exploded key ]
		          ifFalse: [ exploded ].

"	(result at: 1) isAssociation ifTrue: [ 
		| leftPart remainingAddition rightPart |
		leftPart := (result at: 1) key.
		remainingAddition := (result at: 1) value at: 2.
		rightPart := result at: 2.
		result := { 
			          leftPart.
			          { 
				          ((rightPart at: 1) + remainingAddition).
				          (rightPart at: 2) } } ]."

	"^ self resolveRemainingExplodedAssociations: result"
	^ result