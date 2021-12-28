private-accessing
downFrom: aPoint

	^ self maxY = aPoint y
		  ifTrue: [ nil ]
		  ifFalse: [ aPoint + (0 @ 1)]