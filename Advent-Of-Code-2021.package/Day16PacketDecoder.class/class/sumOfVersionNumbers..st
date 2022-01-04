translate
sumOfVersionNumbers: decoded

	(self isLiteral: decoded) ifTrue: [ ^ decoded at: 2 ].
	(self isOperator: decoded) ifTrue: [ 
		^ (decoded at: 2)
		  + (self sumOfVersionNumbers: (self subPackets: decoded)) ].

	^ decoded sum: [ :each | self sumOfVersionNumbers: each ]