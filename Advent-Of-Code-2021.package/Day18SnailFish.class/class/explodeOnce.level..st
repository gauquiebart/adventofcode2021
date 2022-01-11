solving - private
explodeOnce: aNumber level: aNestedLevel

	| xBeforeExplosion xAfterExplosion yBeforeExplosion yAfterExplosion xExploded |
	aNumber isNumber ifTrue: [ ^ aNumber ].
	aNestedLevel = 5 ifTrue: [ 
		^ 0 -> { 
			  (aNumber at: 1).
			  (aNumber at: 2) } ].

	xBeforeExplosion := aNumber at: 1.
	xAfterExplosion := self
		                   explodeOnce: xBeforeExplosion
		                   level: aNestedLevel + 1.

	xExploded := xBeforeExplosion ~= xAfterExplosion.

	yBeforeExplosion := aNumber at: 2.
	yAfterExplosion := xExploded
		                   ifTrue: [ yBeforeExplosion ]
		                   ifFalse: [ 
		                   self
			                   explodeOnce: yBeforeExplosion
			                   level: aNestedLevel + 1 ].

	xAfterExplosion isAssociation ifTrue: [ 
		yBeforeExplosion isNumber
			ifTrue: [ 
				^ { 
					  xAfterExplosion key.
					  (yBeforeExplosion + (xAfterExplosion value at: 2)) } -> { 
					  (xAfterExplosion value at: 1).
					  0 } ]
			ifFalse: [ 
				^ { 
					  xAfterExplosion key.
					  (self
						   explodeValue: (xAfterExplosion value at: 2)
						   leftUpwardsInto: yAfterExplosion) } -> { 
					  (xAfterExplosion value at: 1).
					  0 } ] ].

	yAfterExplosion isAssociation ifTrue: [ 
		xBeforeExplosion isNumber
			ifTrue: [ 
				^ { 
					  (xBeforeExplosion + (yAfterExplosion value at: 1)).
					  yAfterExplosion key } -> { 
					  0.
					  (yAfterExplosion value at: 2) } ]
			ifFalse: [ 
				^ { 
					  (self
						   explodeValue: (yAfterExplosion value at: 1)
						   rightUpwardsInto: xAfterExplosion).
					  yAfterExplosion key } -> { 
					  0.
					  (yAfterExplosion value at: 2) } ] ].


	^ { 
		  xAfterExplosion.
		  yAfterExplosion }