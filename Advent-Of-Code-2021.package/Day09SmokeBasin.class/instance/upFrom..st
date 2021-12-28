private-accessing
upFrom: aPoint

	^ aPoint y = 1
		  ifTrue: [ nil ]
		  ifFalse: [ aPoint + (0 @ -1) ]