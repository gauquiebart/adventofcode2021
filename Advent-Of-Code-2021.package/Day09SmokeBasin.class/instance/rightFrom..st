private-accessing
rightFrom: aPoint

	^ self maxX = aPoint x
		  ifTrue: [ nil ]
		  ifFalse: [ aPoint + (1 @ 0)]