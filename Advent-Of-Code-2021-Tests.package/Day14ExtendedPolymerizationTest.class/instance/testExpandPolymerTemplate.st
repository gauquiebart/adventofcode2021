tests
testExpandPolymerTemplate

	| template pairInsertionRules |
	template := 'NNCB'.
	pairInsertionRules := self parseInsertionRules:
		                      self rawTestInsertionRules.

	template := Day14ExtendedPolymerization
		            expand: template
		            withRules: pairInsertionRules.

	self assert: template equals: 'NCNBCHB'.

	template := Day14ExtendedPolymerization
		            expand: template
		            withRules: pairInsertionRules.

	self assert: template equals: 'NBCCNBBBCBHCB'.

	template := Day14ExtendedPolymerization
		            expand: template
		            withRules: pairInsertionRules.

	self assert: template equals: 'NBBBCNCCNBBNBNBBCHBHHBCHB'.

	template := Day14ExtendedPolymerization
		            expand: template
		            withRules: pairInsertionRules.

	self
		assert: template
		equals: 'NBBNBNBBCCNBCNCCNBBNBBNBBBNBBNBBCBHCBHHNHCBBCBHCB'.

	template := Day14ExtendedPolymerization
		            expand: template
		            withRules: pairInsertionRules.

	self assert: template size equals: 97.

	1 to: 5 do: [ :index | 
		template := Day14ExtendedPolymerization
			            expand: template
			            withRules: pairInsertionRules ].
	self assert: template size equals: 3073.

	self
		assert: (Day14ExtendedPolymerization lowestOccurenceCount: template)
		equals: 161.

	self
		assert:
		(Day14ExtendedPolymerization highestOccurenceCount: template)
		equals: 1749.