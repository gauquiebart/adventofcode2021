tests
testDirectBasinAround

	| smokeBasin |
	smokeBasin := Day09SmokeBasin new heightMap: self aTestInput.

	self
		assert: (smokeBasin directBasinAround: 1 @ 2)
		equals: (Set newFrom: { 
					 (1 @ 2).
					 (1 @ 1) }).

	self
		assert: (smokeBasin directBasinAround: 1 @ 10)
		equals: (Set newFrom: { 
					 (1 @ 9).
					 (2 @ 10).
					 (1 @ 10) })