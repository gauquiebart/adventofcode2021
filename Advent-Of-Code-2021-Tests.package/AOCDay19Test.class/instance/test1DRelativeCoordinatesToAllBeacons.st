tests
test1DRelativeCoordinatesToAllBeacons

	| beacons |
	beacons := { 
		           (4 @ 0 @ 0).
		           (5 @ 0 @ 0) }.
	self
		assert:
		(AOCDay19 relativeCoordinatesToAllBeacons: beacons)
		equals: { 
				(-1 @ 0 @ 0 -> beacons).
				(1 @ 0 @ 0 -> beacons).
				(0 @ -1 @ 0 -> beacons).
				(0 @ 1 @ 0 -> beacons).
				(0 @ 0 @ -1 -> beacons).
				(0 @ 0 @ 1 -> beacons) } asSet.

	beacons := { 
		           (2 @ 0 @ 0).
		           (3 @ 0 @ 0) }.
	self
		assert:
		(AOCDay19 relativeCoordinatesToAllBeacons: beacons)
		equals: { 
				(-1 @ 0 @ 0 -> beacons).
				(1 @ 0 @ 0 -> beacons).
				(0 @ -1 @ 0 -> beacons).
				(0 @ 1 @ 0 -> beacons).
				(0 @ 0 @ -1 -> beacons).
				(0 @ 0 @ 1 -> beacons) } asSet.

	beacons := { 
		           (-2 @ 0 @ 0).
		           (-3 @ 0 @ 0) }.
	self
		assert:
		(AOCDay19 relativeCoordinatesToAllBeacons: beacons)
		equals: { 
				(-1 @ 0 @ 0 -> beacons).
				(1 @ 0 @ 0 -> beacons).
				(0 @ -1 @ 0 -> beacons).
				(0 @ 1 @ 0 -> beacons).
				(0 @ 0 @ -1 -> beacons).
				(0 @ 0 @ 1 -> beacons) } asSet.

	beacons := { 
		           (-4 @ 0 @ 0).
		           (-5 @ 0 @ 0) }.
	self
		assert:
		(AOCDay19 relativeCoordinatesToAllBeacons: beacons)
		equals: { 
				(-1 @ 0 @ 0 -> beacons).
				(1 @ 0 @ 0 -> beacons).
				(0 @ -1 @ 0 -> beacons).
				(0 @ 1 @ 0 -> beacons).
				(0 @ 0 @ -1 -> beacons).
				(0 @ 0 @ 1 -> beacons) } asSet