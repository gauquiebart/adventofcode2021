tests
testRelativeCoordinatesToAllBeacons

	self
		assert: (Day19BeaconScanner relativeCoordinatesToAllBeacons: { 
					 (4 @ 0 @ 0).
					 (5 @ 0 @ 0) })
		equals: { 
				(-1 @ 0 @ 0).
				(1 @ 0 @ 0) } asSet.

	self
		assert: (Day19BeaconScanner relativeCoordinatesToAllBeacons: { 
					 (2 @ 0 @ 0).
					 (3 @ 0 @ 0) })
		equals: { 
				(-1 @ 0 @ 0).
				(1 @ 0 @ 0) } asSet.

	self
		assert: (Day19BeaconScanner relativeCoordinatesToAllBeacons: { 
					 (-2 @ 0 @ 0).
					 (-3 @ 0 @ 0) })
		equals: { 
				(-1 @ 0 @ 0).
				(1 @ 0 @ 0) } asSet.

	self
		assert: (Day19BeaconScanner relativeCoordinatesToAllBeacons: { 
					 (-4 @ 0 @ 0).
					 (-5 @ 0 @ 0) })
		equals: { 
				(-1 @ 0 @ 0).
				(1 @ 0 @ 0) } asSet