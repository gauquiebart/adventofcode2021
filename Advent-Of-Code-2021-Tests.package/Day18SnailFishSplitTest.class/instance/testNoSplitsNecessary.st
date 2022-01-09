tests
testNoSplitsNecessary

	self assert: (Day18SnailFish reduce: { 2. 3 }) equals: { 2. 3 }.

	self
		assert: (Day18SnailFish reduce: { 
					 { 1. 2 }.
					 3 })
		equals: { 
				{ 1. 2 }.
				3 }.

	self
		assert: (Day18SnailFish reduce: { 
					 2.
					 { 3. 4 } })
		equals: { 
				2.
				{ 3. 4 } }.

	self
		assert: (Day18SnailFish reduce: { 
					 { 1. 2 }.
					 { 3. 4 } })
		equals: { 
				{ 1. 2 }.
				{ 3. 4 } }.

	self
		assert: (Day18SnailFish reduce: { 
					 { 
						 { 
							 { 1. 2 }.
							 { 3. 4 } }.
						 { 
							 { 5. 6 }.
							 { 7. 8 } } }.
					 9 })
		equals: { 
				{ 
					{ 
						{ 1. 2 }.
						{ 3. 4 } }.
					{ 
						{ 5. 6 }.
						{ 7. 8 } } }.
				9 }