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
				 add: 0 @ 2;
				 add: 0 @ 3;
				 add: 0 @ 4;
				 yourself).
	self
		assert: (LineSegment from: 9 @ 4 to: 3 @ 4) asPoints
		equals: (OrderedCollection new
				 add: 9 @ 4;
				 add: 8 @ 4;
				 add: 7 @ 4;
				 add: 6 @ 4;
				 add: 5 @ 4;
				 add: 4 @ 4;
				 add: 3 @ 4;
				 yourself).
	self
		assert: (LineSegment from: 7 @ 9 to: 9 @ 7) asPoints
		equals: (OrderedCollection new
				 add: 7 @ 9;
				 add: 8 @ 8;
				 add: 9 @ 7;
				 yourself).
	self
		assert: (LineSegment from: 9 @ 7 to: 7 @ 9) asPoints
		equals: (OrderedCollection new
				 add: 9 @ 7;
				 add: 8 @ 8;
				 add: 7 @ 9;
				 yourself).
		self
		assert: (LineSegment from: 9 @ 7 to: 7 @ 9) asPoints
		equals: (OrderedCollection new
				 add: 9 @ 7;
				 add: 8 @ 8;
				 add: 7 @ 9;
				 yourself).		