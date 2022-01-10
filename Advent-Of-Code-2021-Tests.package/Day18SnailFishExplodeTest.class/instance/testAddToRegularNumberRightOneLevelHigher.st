tests
testAddToRegularNumberRightOneLevelHigher

	self
		assert: (Day18SnailFish explodeOnce: { 
					 { 
						 { 
							 { 
								 { 9. 8 }.
								 1 }.
							 2 }.
						 3 }.
					 4 })
		equals: { 
				{ 
					{ 
						{ 0. 9 }.
						2 }.
					3 }.
				4 }.