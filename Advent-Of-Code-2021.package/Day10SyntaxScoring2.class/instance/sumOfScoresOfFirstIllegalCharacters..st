solving
sumOfScoresOfFirstIllegalCharacters: anInputCollection

	^ ((anInputCollection
		    collect: [ :each | self firstUnbalancedCharacter: each ]
		    thenReject: #isNil) collect: #syntaxScore) sum