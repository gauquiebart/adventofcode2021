tests
testAddToRegularNumberRightSeveralLevelsHigherAndInNestedBranch

	self
		assert: (Day18SnailFish explodeOnce: { 
					 { 
						 3.
						 { 
							 2.
							 { 
								 1.
								 { 7. 3 } } } }.
					 { 
						 6.
						 { 
							 5.
							 { 
								 4.
								 { 3. 2 } } } } })
		equals: { 
				{ 
					3.
					{ 
						2.
						{ 8. 0 } } }.
				{ 
					9.
					{ 
						5.
						{ 
							4.
							{ 3. 2 } } } } }.

	self
		assert: (Day18SnailFish explodeOnce: { 
					 { 
						 3.
						 { 
							 2.
							 { 8. 0 } } }.
					 { 
						 9.
						 { 
							 5.
							 { 
								 4.
								 { 3. 2 } } } } })
		equals: { 
					 { 
						 3.
						 { 
							 2.
							 { 8. 0 } } } .
					 { 
						 9.
						 { 
							 5.
							 { 
								 7.
								 0 } } } }