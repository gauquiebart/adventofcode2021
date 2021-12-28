private-solving
firstUnbalancedCharacter: input

	self resetStack.

	input do: [ :each | 
		each isOpeningBracket
			ifTrue: [ stack push: each ]
			ifFalse: [ 
			stack pop = each matchingOpeningBracket ifFalse: [ ^ each ] ]].


	^ stack isEmpty ifTrue: [ nil ]