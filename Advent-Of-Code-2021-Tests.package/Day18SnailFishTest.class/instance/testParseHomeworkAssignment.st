tests
testParseHomeworkAssignment

	self
		assert: (Day18SnailFish parseHomeworkAssignmentAsNumbers: '[1,1]
[2,2]
[3,3]
[4,4]')
		equals: { 
				{ 1. 1 }.
				{ 2. 2 }.
				{ 3. 3 }.
				{ 4. 4 } }