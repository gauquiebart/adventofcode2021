tests
testFullyRotatedAroundXY

	self assert: (5 @ 70 @ 900) fullyRotatedAroundXY equals: { 
			(5 @ 70 @ 900).
			(70 @ -5 @ 900).
			(-5 @ -70 @ 900).
			(-70 @ 5 @ 900) }