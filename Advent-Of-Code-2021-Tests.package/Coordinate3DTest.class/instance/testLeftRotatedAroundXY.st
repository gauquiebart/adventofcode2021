tests
testLeftRotatedAroundXY
	self assert: (5 @ 70 @ 900) leftRotatedAroundXY
	equals: (70 @ -5 @ 900).
	
	self assert: (5 @ 70 @ 900) leftRotatedAroundXY leftRotatedAroundXY leftRotatedAroundXY leftRotatedAroundXY
	equals: (5 @ 70 @ 900).
	