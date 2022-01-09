solving - private
removeRemainingAssociations: aNumber

	aNumber isNumber ifTrue: [ ^ aNumber ].
	aNumber isAssociation ifTrue: [ ^ aNumber key ].

	^ { 
		  (self removeRemainingAssociations: (aNumber at: 1)).
		  (self removeRemainingAssociations: (aNumber at: 2)) }