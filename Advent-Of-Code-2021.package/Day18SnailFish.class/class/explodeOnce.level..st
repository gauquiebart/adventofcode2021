solving - private
explodeOnce: aNumber level: aNestedLevel

	| xBeforeExplosion xAfterExplosion yBeforeExplosion yAfterExplosion |
	aNumber isNumber ifTrue: [ ^ aNumber ].
	aNestedLevel = 5 ifTrue: [ 
		^ 0 -> { 
			  (aNumber at: 1).
			  (aNumber at: 2) } ].

	xBeforeExplosion := aNumber at: 1.
	xAfterExplosion := self
		                   explodeOnce: xBeforeExplosion
		                   level: aNestedLevel + 1.

	yBeforeExplosion := aNumber at: 2.
	yAfterExplosion := self
		                   explodeOnce: yBeforeExplosion
		                   level: aNestedLevel + 1.

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
					  xAfterExplosion.
					  yAfterExplosion key } -> yAfterExplosion value ] ].
	xAfterExplosion isAssociation ifTrue: [ 
		yBeforeExplosion isNumber ifTrue: [ 
			^ { 
				  xAfterExplosion key.
				  (yBeforeExplosion + (xAfterExplosion value at: 2)) } -> { 
				  (xAfterExplosion value at: 1).
				  0 } ] ].

	^ { 
		  xAfterExplosion.
		  yAfterExplosion }

	"self shouldBeImplemented."