tests
testAddToRegularNumberRightSeveralLevelsHigher

	self
		assert: (Day18SnailFish reduce: { 
					 { 
						 6.
						 { 
							 5.
							 { 
								 4.
								 { 3. 2 } } } }.
					 1 })
		equals: { 
					 { 
						 6.
						 { 
							 5.
							 { 
								 7.
								 0 } } }.
					 3 }