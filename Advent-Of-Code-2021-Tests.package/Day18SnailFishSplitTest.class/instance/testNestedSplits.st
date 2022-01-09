tests
testNestedSplits

	self
		assert: (Day18SnailFish reduce: { 
					 { 
						 { 
							 { 0. 7 }.
							 4 }.
						 { 
							 15.
							 { 0. 13 } } }.
					 { 1. 1 } })
		equals: { 
				{ 
					{ 
						{ 0. 7 }.
						4 }.
					{ 
						{ 7. 8 }.

						{ 6. 0 } } }.
				{ 8. 1 } }