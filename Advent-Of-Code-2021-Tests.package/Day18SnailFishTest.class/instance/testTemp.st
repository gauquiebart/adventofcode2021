tests
testTemp

	self
		assert: (Day18SnailFish reduce: { 
					 7.
					 { 
						 { 
							 { 3. 7 }.
							 { 4. 3 } }.
						 { 
							 { 6. 3 }.
							 { 8. 8 } } } })
		equals: { 
				7.
				{ 
					{ 
						{ 3. 7 }.
						{ 4. 3 } }.
					{ 
						{ 6. 3 }.
						{ 8. 8 } } } }