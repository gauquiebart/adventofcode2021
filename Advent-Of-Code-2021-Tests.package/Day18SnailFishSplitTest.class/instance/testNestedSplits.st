tests
testNestedSplits

	self
		assert: (Day18SnailFish splitOnce: { 
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
						{ 0. 13 } } }.
				{ 1. 1 } }.

	self
		assert: (Day18SnailFish splitOnce: { 
					 { 
						 { 
							 { 0. 7 }.
							 4 }.
						 { 
							 { 7. 8 }.
							 { 0. 13 } } }.
					 { 1. 1 } })
		equals: { 
				{ 
					{ 
						{ 0. 7 }.
						4 }.
					{ 
						{ 7. 8 }.
						{ 
							0.
							{ 6. 7 } } } }.
				{ 1. 1 } }