solving - private
explodeOnce: aNumber

	| exploded |
	exploded := self explodeOnce: aNumber level: 1.
	^ exploded isAssociation
		  ifTrue: [ exploded key ]
		  ifFalse: [ exploded ]