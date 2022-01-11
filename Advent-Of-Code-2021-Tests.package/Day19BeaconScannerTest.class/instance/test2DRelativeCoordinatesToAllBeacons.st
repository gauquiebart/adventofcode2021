tests
test2DRelativeCoordinatesToAllBeacons

	self
		assert: ((Day19BeaconScanner relativeCoordinatesToAllBeacons: { 
					 (0 @ 2 @ 0).
					 (4 @ 1 @ 0).
					 (3 @ 3 @ 0) }) size)
		equals: 72