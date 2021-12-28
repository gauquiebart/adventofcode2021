tests
testBasin

	| smokeBasin |
	smokeBasin := Day09SmokeBasin new heightMap: self aTestInput.

	self assert: (smokeBasin basinOf: 1 @ 2) equals: (Set newFrom: { 
				 (1 @ 1).
				 (2 @ 1).
				 (1 @ 2) }).
				
	self assert: (smokeBasin basinOf: 1 @ 10) equals: (Set newFrom: { 
				 (1 @ 9).
				 (2 @ 9).
				 (3 @ 10).
				(1 @ 7).
				(2 @ 10).
				(1 @ 10).
				(1 @ 8).
				(2 @ 7).
				(1 @ 6)
				 }).
			