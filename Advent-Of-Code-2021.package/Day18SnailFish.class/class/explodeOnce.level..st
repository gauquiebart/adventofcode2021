solving - private
explodeOnce: aNumber level: aNestedLevel

	| xBeforeExplosion xAfterExplosion xExploded yBeforeExplosion yAfterExplosion |
	aNumber isNumber ifTrue: [ ^ aNumber ].
	aNestedLevel = 5 ifTrue: [ 
		^ { 
			  #explode.
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

	(xAfterExplosion isArray and: [ (xAfterExplosion at: 1) = #explode ]) 
		ifTrue: [ 
			yAfterExplosion := yBeforeExplosion isNumber
				                   ifTrue: [ 
				                   yBeforeExplosion + (xAfterExplosion at: 3) ]
				                   ifFalse: 0.
			xAfterExplosion := 0 ].
	(yAfterExplosion isArray and: [ (yAfterExplosion at: 1) = #explode ]) 
		ifTrue: [ 
			xAfterExplosion := xBeforeExplosion isNumber
				                   ifTrue: [ 
				                   xBeforeExplosion + (yAfterExplosion at: 2) ]
				                   ifFalse: 0.
			yAfterExplosion := 0 ].

	^ { 
		  xAfterExplosion.
		  yAfterExplosion }

	"self shouldBeImplemented."