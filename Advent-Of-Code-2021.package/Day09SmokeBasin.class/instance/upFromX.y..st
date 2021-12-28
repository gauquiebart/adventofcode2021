private-accessing
upFromX: x y: y

	^ y = 1
	ifTrue: [ nil ]
	ifFalse: [ self x: x y: (y - 1)]