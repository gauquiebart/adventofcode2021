solving
firstUnbalancedCharacter: input

	| stack |
	stack := Stack new.

	input do: [ :each | 
		each = ${ ifTrue: [ stack push: each ].
		each = $} ifTrue: [ 
			| pop |
			pop := stack pop.
			pop = ${ ifFalse: [ ^ each ] ].
		each = $( ifTrue: [ stack push: each ].
		each = $) ifTrue: [ 
			| pop |
			pop := stack pop.
			pop = $( ifFalse: [ ^ each ] ].
		each = $[ ifTrue: [ stack push: each ].
		each = $] ifTrue: [ 
			| pop |
			pop := stack pop.
			pop = $[ ifFalse: [ ^ each ] ].
		each = $< ifTrue: [ stack push: each ].
		each = $> ifTrue: [ 
			| pop |
			pop := stack pop.
			pop = $< ifFalse: [ ^ each ] ] ].


	^ stack isEmpty ifTrue: [ nil ]