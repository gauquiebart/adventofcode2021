tests
testFullyRotatedAroundXZ
	self assert: (5 @ 70 @ 900) fullyRotatedAroundXZ
	equals: {(5 @ 70 @ 900) . 
				(900 @ 70 @ -5).
				(-5 @ 70 @ -900).
				(-900 @ 70 @ 5) }
	