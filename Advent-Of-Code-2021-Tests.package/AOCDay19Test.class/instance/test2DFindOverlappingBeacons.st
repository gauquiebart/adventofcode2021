tests
test2DFindOverlappingBeacons

	| scanners |
	scanners := AOCDay19 parseRawInput: '--- scanner 0 ---
0,2,0
4,1,0
3,3,0

--- scanner 1 ---
-1,-1,0
-5,0,0
-2,1,0'.

	self
		assert: (AOCDay19
				 findOverlappingBeaconsFor: (scanners at: 1)
				 and: (scanners at: 2))
		equals: { 
				(4 @ 1 @ 0).
				(3 @ 3 @ 0).
				(0 @ 2 @ 0) } asSet