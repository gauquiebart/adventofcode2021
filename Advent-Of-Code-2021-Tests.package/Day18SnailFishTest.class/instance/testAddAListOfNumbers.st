tests
testAddAListOfNumbers

	self
		assert: (Day18SnailFish
				 addAll: {{1 . 1} . { 2 . 2} . { 3 . 3 } . { 4 . 4 } })
		equals: { { { { 1 . 1 } . { 2 . 2 } } . { 3 . 3 } } . { 4 . 4 } }.
		
		
	self
		assert: (Day18SnailFish
				 addAll: {{1 . 1} . { 2 . 2} . { 3 . 3 } . { 4 . 4 } . { 5 . 5 } })
		equals: { { { { 3 . 0 } . { 5 . 3 } } . { 4 . 4 } } . { 5 . 5 } }.
		
	self
		assert: (Day18SnailFish
				 addAll: {{1 . 1} . { 2 . 2} . { 3 . 3 } . { 4 . 4 } . { 5 . 5 } . { 6 . 6 } })
		equals: { { { { 5 . 0 } . { 7 . 4 } } . { 5 . 5 } } . { 6 . 6 } }.