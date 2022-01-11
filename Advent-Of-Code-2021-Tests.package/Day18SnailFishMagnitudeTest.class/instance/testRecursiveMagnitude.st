tests
testRecursiveMagnitude

	self
		assert: (Day18SnailFish magnitude: { 
					 { 9. 1 }.
					 { 1. 9 } })
		equals: 129.

	self
		assert: (Day18SnailFish magnitude: { 
					 { 
						 { 
							 { 8. 7 }.
							 { 7. 7 } }.
						 { 
							 { 8. 6 }.
							 { 7. 7 } } }.
					 { 
						 { 
							 { 0. 7 }.
							 { 6. 6 } }.
						 { 8. 7 } } })
		equals: 3488