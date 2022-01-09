tests
testAddToRegularNumberRightSeveralLevelsHigherAndInNestedBranch

	self
		assert: (Day18SnailFish reduce: { 
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
							{ 3. 2 } } } } }