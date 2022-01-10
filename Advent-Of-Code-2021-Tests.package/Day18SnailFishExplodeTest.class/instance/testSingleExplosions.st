tests
testSingleExplosions

	self
		assert: (Day18SnailFish explodeOnce: { 
					 { 
						 { 
							 { 4. 0 }.
							 { 5. 0 } }.
						 { 
							 { 
								 { 4. 5 }.
								 { 2. 6 } }.
							 { 9. 5 } } }.
					 9 })
		equals: { 
				{ 
					{ 
						{ 4. 0 }.
						{ 5. 4 } }.
					{ 
						{ 
							0.
							{ 7. 6 } }.
						{ 9. 5 } } }.
				9 }.

	self
		assert: (Day18SnailFish explodeOnce: { 
					 { 
						 { 
							 { 0. 7 }.
							 4 }.
						 { 
							 { 7. 8 }.
							 { 
								 0.
								 { 6. 7 } } } }.
					 { 1. 1 } })
		equals: { 
				{ 
					{ 
						{ 0. 7 }.
						4 }.
					{ 
						{ 7. 8 }.
						{ 6. 0 } } }.
				{ 8. 1 } }.

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