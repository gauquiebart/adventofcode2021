tests
testPointOnLineSegment

self
		deny: ((LineSegment from: 5 @ 9 to: 0 @ 9) isPointOnLine: -1 @ 9)
		equals: true.
	self
		assert: ((LineSegment from: 5 @ 9 to: 0 @ 9) isPointOnLine: 0 @ 9)
		equals: true.
	self
		deny: ((LineSegment from: 0 @ 9 to: 5 @ 9) isPointOnLine: -1 @ 9)
		equals: true.
	self
		assert: ((LineSegment from: 0 @ 9 to: 5 @ 9) isPointOnLine: 0 @ 9)
		equals: true.
	self
		assert: ((LineSegment from: 0 @ 9 to: 5 @ 9) isPointOnLine: 1 @ 9)
		equals: true.
	self
		assert: ((LineSegment from: 0 @ 9 to: 5 @ 9) isPointOnLine: 2 @ 9)
		equals: true.
	self
		assert: ((LineSegment from: 0 @ 9 to: 5 @ 9) isPointOnLine: 3 @ 9)
		equals: true.
	self
		assert: ((LineSegment from: 0 @ 9 to: 5 @ 9) isPointOnLine: 4 @ 9)
		equals: true.
	self
		assert: ((LineSegment from: 0 @ 9 to: 5 @ 9) isPointOnLine: 5 @ 9)
		equals: true.
	self
		deny: ((LineSegment from: 0 @ 9 to: 5 @ 9) isPointOnLine: 6 @ 9)
		equals: true.
	self
		deny: ((LineSegment from: 0 @ 9 to: 5 @ 9) isPointOnLine: 0 @ 8)
		equals: true.
	self
		deny: ((LineSegment from: 0 @ 9 to: 5 @ 9) isPointOnLine: 0 @ 10)
		equals: true.
	self
		assert: ((LineSegment from: 1 @ 1 to: 3 @ 3) isPointOnLine: 1 @ 1)
		equals: true.
	self
		assert: ((LineSegment from: 1 @ 1 to: 3 @ 3) isPointOnLine: 2 @ 2)
		equals: true.
	self
		assert: ((LineSegment from: 1 @ 1 to: 3 @ 3) isPointOnLine: 3 @ 3)
		equals: true.
	self
		deny: ((LineSegment from: 1 @ 1 to: 3 @ 3) isPointOnLine: 3 @ 2)
		equals: true.
	self
		deny: ((LineSegment from: 1 @ 1 to: 3 @ 3) isPointOnLine: 2 @ 3)
		equals: true