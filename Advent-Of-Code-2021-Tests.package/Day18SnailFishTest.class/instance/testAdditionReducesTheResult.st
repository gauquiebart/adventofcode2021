tests
testAdditionReducesTheResult

	self
		assert: (Day18SnailFish
				 add: { 
						 { 
							 { 
								 { 4. 3 }.
								 4 }.
							 4 }.
						 { 
							 7.
							 { 
								 { 8. 4 }.
								 9 } } }
				 with: { 1. 1 })
		equals: { 
				{ 
					{ 
						{ 0. 7 }.
						4 }.
					{ 
						{ 7. 8 }.
						{ 6. 0 } } }.
				{ 8. 1 } }