tests
testAddToRegularNumberLeftOneLevelHigher

	self
		assert: (Day18SnailFish explodeOnce: { 
					 7.
					 { 
						 6.
						 { 
							 5.
							 { 
								 4.
								 { 3. 2 } } } } })
		equals: { 
				7.
				{ 
					6.
					{ 
						5.
						{ 7. 0 } } } }