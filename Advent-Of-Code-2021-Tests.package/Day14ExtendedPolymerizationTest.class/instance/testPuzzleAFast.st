tests
testPuzzleAFast

	| initialTemplate pairInsertionRules occurences |
	initialTemplate := 'VHCKBFOVCHHKOHBPNCKO'.
	pairInsertionRules := self parseInsertionRules:
		                      self rawPuzzleInsertionRules.

	occurences := Day14ExtendedPolymerization
		              expand: initialTemplate
		              fastWithRules: pairInsertionRules
		              forTimes: 10.

	self assert: occurences max - occurences min equals: 2587