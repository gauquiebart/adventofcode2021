tests
testSimpleSplit

	self assert: (Day18SnailFish reduce: { 10. 3 }) equals: { 
			{ 5. 5 }.
			3 }.

	self assert: (Day18SnailFish reduce: { 11. 3 }) equals: { 
			{ 5. 6 }.
			3 }.

	self assert: (Day18SnailFish reduce: { 12. 3 }) equals: { 
			{ 6. 6 }.
			3 }