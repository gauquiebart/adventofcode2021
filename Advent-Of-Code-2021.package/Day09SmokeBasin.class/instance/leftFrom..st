private-accessing
leftFrom: aPoint

	^ aPoint x = 1
		  ifTrue: [ nil ]
		  ifFalse: [ aPoint + (-1 @ 0) ]