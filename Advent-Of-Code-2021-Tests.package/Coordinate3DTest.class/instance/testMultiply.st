tests
testMultiply
	self assert: (5 @ 70 @ 900) * (2 @ 20 @ 800)
	equals: 10 @ 1400 @ 720000
	