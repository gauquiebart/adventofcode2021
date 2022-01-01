tests
testExpandPolymerTemplateFast

	| initialTemplate pairInsertionRules occurences |
	initialTemplate := 'NNCB'.
	pairInsertionRules := self parseInsertionRules:
		                      self rawTestInsertionRules.

	occurences := Day14ExtendedPolymerization
		              expand: initialTemplate
		              fastWithRules: pairInsertionRules
		              forTimes: 1.

	self assert: (occurences at: 'N') equals: 2.
	self assert: (occurences at: 'B') equals: 2.
	self assert: (occurences at: 'C') equals: 2.
	self assert: (occurences at: 'H') equals: 1.

	occurences := Day14ExtendedPolymerization
		              expand: initialTemplate
		              fastWithRules: pairInsertionRules
		              forTimes: 2.
	self assert: (occurences at: 'N') equals: 2.
	self assert: (occurences at: 'B') equals: 6.
	self assert: (occurences at: 'C') equals: 4.
	self assert: (occurences at: 'H') equals: 1.

	occurences := Day14ExtendedPolymerization
		              expand: initialTemplate
		              fastWithRules: pairInsertionRules
		              forTimes: 3.
	self assert: (occurences at: 'N') equals: 5.
	self assert: (occurences at: 'B') equals: 11.
	self assert: (occurences at: 'C') equals: 5.
	self assert: (occurences at: 'H') equals: 4.

	occurences := Day14ExtendedPolymerization
		              expand: initialTemplate
		              fastWithRules: pairInsertionRules
		              forTimes: 4.
	self assert: (occurences at: 'N') equals: 11.
	self assert: (occurences at: 'B') equals: 23.
	self assert: (occurences at: 'C') equals: 10.
	self assert: (occurences at: 'H') equals: 5.

	occurences := Day14ExtendedPolymerization
		              expand: initialTemplate
		              fastWithRules: pairInsertionRules
		              forTimes: 5.
	self assert: occurences sum equals: 97.

	self assert: (occurences at: 'N') equals: 23.
	self assert: (occurences at: 'B') equals: 46.
	self assert: (occurences at: 'C') equals: 15.
	self assert: (occurences at: 'H') equals: 13.

	occurences := Day14ExtendedPolymerization
		              expand: initialTemplate
		              fastWithRules: pairInsertionRules
		              forTimes: 10.
	self assert: occurences sum equals: 3073.

	self assert: (occurences at: 'N') equals: 865.
	self assert: (occurences at: 'B') equals: 1749.
	self assert: (occurences at: 'C') equals: 298.
	self assert: (occurences at: 'H') equals: 161.

	occurences := Day14ExtendedPolymerization
		              expand: initialTemplate
		              fastWithRules: pairInsertionRules
		              forTimes: 40.
	self assert: occurences sum equals: 3298534883329.

	self assert: (occurences at: 'H') equals: 3849876073.
	self assert: (occurences at: 'B') equals: 2192039569602