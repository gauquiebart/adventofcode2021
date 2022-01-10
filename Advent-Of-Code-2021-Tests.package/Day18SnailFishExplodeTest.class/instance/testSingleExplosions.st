tests
testSingleExplosions

	self
		assert: (Day18SnailFish explodeOnce: { 
					 { 
						 { 
							 { 
								 { 1. 1 }.
								 { 2. 2 } }.
							 { 3. 3 } }.
						 { 4. 4 } }.
					 { 5. 5 } })
		equals: { 
					 { 
						 { 
							 { 
								 0.
								 { 3. 2 } }.
							 { 3. 3 } }.
						 { 4. 4 } }.
					 { 5. 5 } }