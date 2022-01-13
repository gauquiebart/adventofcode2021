tests
testFullyRotatedAroundYZ

	self assert: (5 @ 70 @ 900) fullyRotatedAroundYZ equals: { 
			(5 @ 70 @ 900).
			(5 @ 900 @ -70).
			(5 @ -70 @ -900).
			(5 @ -900 @ 70) }