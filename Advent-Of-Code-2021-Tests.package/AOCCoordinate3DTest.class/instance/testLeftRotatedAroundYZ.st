tests
testLeftRotatedAroundYZ

	self assert: (5 @ 70 @ 900) leftRotatedAroundYZ equals: 5 @ 900 @ -70.

	self
		assert: (5 @ 70 @ 900) leftRotatedAroundYZ leftRotatedAroundYZ
				leftRotatedAroundYZ leftRotatedAroundYZ
		equals: 5 @ 70 @ 900