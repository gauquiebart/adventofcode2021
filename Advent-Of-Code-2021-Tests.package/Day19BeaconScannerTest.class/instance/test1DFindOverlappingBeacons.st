tests
test1DFindOverlappingBeacons

	self
		assert: (Day19BeaconScanner
				 findOverlappingBeaconsFor: { 
						 (4 @ 0 @ 0).
						 (5 @ 0 @ 0) }
				 and: { 
						 (2 @ 0 @ 0).
						 (3 @ 0 @ 0) })
		equals: { (-1 @ 0 @ 0) } asSet