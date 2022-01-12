tests
test1DFindLocationsOfBeacons

	self
		assert: (Day19BeaconScanner findLocationsOfBeacons: { 
					 { 
						 (4 @ 0 @ 0).
						 (5 @ 0 @ 0) }.
					 { 
						 (2 @ 0 @ 0).
						 (3 @ 0 @ 0).
						 (100 @ 0 @ 0) } })
		equals: { 
				(4 @ 0 @ 0).
				(5 @ 0 @ 0).
				(102 @ 0 @ 0) } asSet