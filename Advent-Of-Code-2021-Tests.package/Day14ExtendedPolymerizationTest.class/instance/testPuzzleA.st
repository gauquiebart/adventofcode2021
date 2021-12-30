tests
testPuzzleA

	| template pairInsertionRules |
	template := 'VHCKBFOVCHHKOHBPNCKO'.
	pairInsertionRules := self parseInsertionRules:
		                      self rawPuzzleInsertionRules.

	1 to: 10 do: [ :index | 
		template := Day14ExtendedPolymerization
			            expand: template
			            withRules: pairInsertionRules ].

	self
		assert:
			(Day14ExtendedPolymerization highestOccurenceCount: template)
			- (Day14ExtendedPolymerization lowestOccurenceCount: template)
		equals: 2587