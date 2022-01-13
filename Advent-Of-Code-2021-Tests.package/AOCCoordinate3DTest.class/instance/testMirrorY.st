tests
testMirrorY
	self assert: (5 @ 70 @ 900) mirrorY
	equals: (5 @ -70 @ 900)
	