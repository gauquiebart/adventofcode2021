tests
testAsPoints

	self
		assert: (LineSegment from: 0 @ 9 to: 5 @ 9) asPoints
		equals: (OrderedCollection new
				 add: 0 @ 9;
				 add: 1 @ 9;
				 add: 2 @ 9;
				 add: 3 @ 9;
				 add: 4 @ 9;
				 add: 5 @ 9;
				 yourself).
	self
		assert: (LineSegment from: 0 @ 2 to: 0 @ 4) asPoints
		equals: (OrderedCollection new
				 add: 0 @ 2; add: 0 @ 3; add: 0 @ 4;
				 yourself).
	self
		assert: (LineSegment from: 1 @ 1 to: 3 @ 3) asPoints
		equals: (OrderedCollection new
				 add: 1 @ 1; add: 2 @ 2; add: 3 @ 3;
				 yourself).