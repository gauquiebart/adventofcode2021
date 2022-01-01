tests
testPuzzleBFast

	| initialTemplate pairInsertionRules occurences |
	initialTemplate := 'VHCKBFOVCHHKOHBPNCKO'.
	pairInsertionRules := self parseInsertionRules:
		                      self rawPuzzleInsertionRules.

	occurences := Day14ExtendedPolymerization
		              expand: initialTemplate
		              fastWithRules: pairInsertionRules
		              forTimes: 40.

	self assert: occurences max - occurences min equals: 3318837563123.