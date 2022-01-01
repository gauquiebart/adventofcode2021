tests
testExpandPolymerTemplateFastAlgorithmBuilding

	| occurences |
	occurences := Day14ExtendedPolymerization
		              expand: 'ABAB'
		              fastWithRules:
		              { (Association key: 'AB' value: 'AAB') }
		              forTimes: 1.

	self assert: (occurences at: 'A') equals: 4.
	self assert: (occurences at: 'B') equals: 2.


	occurences := Day14ExtendedPolymerization
		              expand: 'ABAB'
		              fastWithRules:
		              { (Association key: 'AB' value: 'ACB') }
		              forTimes: 1.

	self assert: (occurences at: 'A') equals: 2.
	self assert: (occurences at: 'B') equals: 2.
	self assert: (occurences at: 'C') equals: 2.

	occurences := Day14ExtendedPolymerization
		              expand: 'AB'
		              fastWithRules:
		              { (Association key: 'AB' value: 'ACB') }
		              forTimes: 1.

	self assert: (occurences at: 'A') equals: 1.
	self assert: (occurences at: 'B') equals: 1.
	self assert: (occurences at: 'C') equals: 1