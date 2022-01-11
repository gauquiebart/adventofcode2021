tests
testMirrorX
	self assert: (5 @ 70 @ 900) mirrorX
	equals: (-5 @ 70 @ 900)
	