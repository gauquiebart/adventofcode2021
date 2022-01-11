tests
testSimpleMagnitude
	self assert: (Day18SnailFish magnitude: {9 . 1})
	equals: 29.
	
	self assert: (Day18SnailFish magnitude: {1 . 9})
	equals: 21.