solving
middleCompletionStringScore: anInputCollection

	| scores |
	scores := OrderedCollection new.

	scores := ((anInputCollection select: [ :each | 
		            (self firstUnbalancedCharacter: each) isNil ]) collect: [ 
		           :complete | self completeIncomplete: complete ]) 
		          collect: [ :completion | completion completionScore ].

	^ scores sort middle