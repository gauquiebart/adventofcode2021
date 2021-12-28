private-accessing
downFromX: x y: y

	^ self maxY = y
		  ifTrue: [ nil ]
		  ifFalse: [self x: x y: y + 1]