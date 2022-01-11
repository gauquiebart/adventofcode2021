tests
testFullyMirrored

	self assert: (5 @ 70 @ 900) fullyMirrored equals: { 
			(5 @ 70 @ 900).
			(-5 @ 70 @ 900).
			(5 @ -70 @ 900).
			(5 @ 70 @ -900).
			(-5 @ -70 @ 900).
			(-5 @ 70 @ -900).
			(5 @ -70 @ -900).
			(-5 @ -70 @ -900) }