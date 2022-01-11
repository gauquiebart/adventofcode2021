tests
testLeftRotatedAroundXZ
	self assert: (5 @ 70 @ 900) leftRotatedAroundXZ
	equals: (900 @ 70 @ -5).
	
	self assert: (5 @ 70 @ 900) leftRotatedAroundXZ leftRotatedAroundXZ leftRotatedAroundXZ leftRotatedAroundXZ
	equals: (5 @ 70 @ 900).
	