translate
translateToSmalltalk: decoded

	(self isLiteral: decoded) ifTrue: [ 
		^ (self subPackets: decoded) asString ].
	(self isOperator: decoded) ifTrue: [ 
		| operands |
		operands := self translateToSmalltalk: (self subPackets: decoded).
		(self typeOfOperator: decoded) = 0 ifTrue: [ ^ operands , ' sum' ].
		(self typeOfOperator: decoded) = 1 ifTrue: [ 
			^ operands , ' product' ].
		(self typeOfOperator: decoded) = 2 ifTrue: [ ^ operands , ' min' ].
		(self typeOfOperator: decoded) = 3 ifTrue: [ ^ operands , ' max' ].
		(self typeOfOperator: decoded) = 5 ifTrue: [ 
			^ operands , ' whenFirstGreaterThanSecondThenOneElseZero' ].
		(self typeOfOperator: decoded) = 6 ifTrue: [ 
			^ operands , ' whenFirstLessThanSecondThenOneElseZero' ].
		(self typeOfOperator: decoded) = 7 ifTrue: [ 
			^ operands , ' whenFirstEqualThanSecondThenOneElseZero' ] ].

	^ '{' , (' . ' join:
		   (decoded collect: [ :each | self translateToSmalltalk: each ]))
	  , '}'