tests
testMirrorZ
	self assert: (5 @ 70 @ 900) mirrorZ
	equals: (5 @ 70 @ -900)
	