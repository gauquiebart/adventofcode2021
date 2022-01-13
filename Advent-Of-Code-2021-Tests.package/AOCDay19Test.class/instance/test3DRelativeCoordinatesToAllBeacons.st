tests
test3DRelativeCoordinatesToAllBeacons

	self
		assert: (AOCDay19 relativeCoordinatesToAllBeacons: { 
		(-1 @ -1 @ 1).
		(-2 @ -2 @ 2).
		(-3 @ -3 @ 3).
		(-2 @ -3 @ 1).
	   ( 5 @  6 @ -4).
		( 8 @ 0 @7)}) size
		equals: 516