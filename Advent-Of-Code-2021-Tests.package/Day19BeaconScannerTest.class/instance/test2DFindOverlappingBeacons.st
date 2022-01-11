tests
test2DFindOverlappingBeacons

	| scanners |
	scanners := Day19BeaconScanner parseRawInput: '--- scanner 0 ---
0,2,0
4,1,0
3,3,0

--- scanner 1 ---
-1,-1,0
-5,0,0
-2,1,0'.

	self
		assert: (Day19BeaconScanner
				 findOverlappingBeaconsFor: (scanners at: 1)
				 and: (scanners at: 2))
		equals: { 
				(0 @ 1 @ 3).
				(1 @ 0 @ -4).
				(0 @ -2 @ 1) } asSet