tests
test2DFindLocationsOfBeacons

	| scanners |
	scanners := AOCDay19 parseRawInput: '--- scanner 0 ---
-1,-1,1
-2,-2,2
-3,-3,3
-2,-3,1
5,6,-4
8,0,7

--- scanner 1 ---
1,-1,1
2,-2,2
3,-3,3
2,-1,3
-5,4,-6
-8,-7,0'.

	self
		assert: (AOCDay19 findLocationsOfBeacons: scanners)
		equals: { 
				(-1 @ -1 @ 1).
				(-2 @ -2 @ 2).
				(-3 @ -3 @ 3).
				(-2 @ -3 @ 1).
				(5 @ 6 @ -4).
				(8 @ 0 @ 7) } asSet