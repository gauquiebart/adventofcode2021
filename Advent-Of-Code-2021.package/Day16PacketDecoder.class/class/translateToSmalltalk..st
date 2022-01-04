translate
translateToSmalltalk: decoded

	(self isLiteral: decoded) ifTrue: [ 
		^ (self subPackets: decoded) asString ].
	(self isOperator: decoded) ifTrue: [ 
		|operands|
		operands := self translateToSmalltalk: (self subPackets: decoded).
		(self typeOfOperator: decoded) = 0 ifTrue: [ 
			^  operands , ' sum' ].
		(self typeOfOperator: decoded) = 1 ifTrue: [ 
			^ operands , ' product' ].
		(self typeOfOperator: decoded) = 2 ifTrue: [ 
			^ operands , ' min' ].
		 ].

	^ '{' , (' . ' join:
		   (decoded collect: [ :each | self translateToSmalltalk: each ]))
	  , '}'