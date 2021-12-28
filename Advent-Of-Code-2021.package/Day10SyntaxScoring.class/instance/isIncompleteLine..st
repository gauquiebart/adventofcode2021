solving
isIncompleteLine: input

	| bracketOpened |
	bracketOpened := 0.
	input do: [ :each | 
		each = ${ ifTrue: [ bracketOpened := bracketOpened + 1 ].
		each = $} ifTrue: [ bracketOpened := bracketOpened - 1 ].
		each = $( ifTrue: [ bracketOpened := bracketOpened + 1 ].
		each = $) ifTrue: [ bracketOpened := bracketOpened - 1 ].
		each = $[ ifTrue: [ bracketOpened := bracketOpened + 1 ].
		each = $] ifTrue: [ bracketOpened := bracketOpened - 1 ].
		each = $< ifTrue: [ bracketOpened := bracketOpened + 1 ].
		each = $> ifTrue: [ bracketOpened := bracketOpened - 1 ] ].

	^ bracketOpened isZero not