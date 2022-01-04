helper
typeOfOperator: decoded

	^ (self isOperator: decoded)
		  ifTrue: [ decoded at: 3 ]
		  ifFalse: [ nil ]