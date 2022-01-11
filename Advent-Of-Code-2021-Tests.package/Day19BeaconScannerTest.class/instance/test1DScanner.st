tests
test1DScanner

	self
		assert: (Day19BeaconScanner parseRawInput: '--- scanner 0 ---
4,0,0
5,0,0

--- scanner 1 ---
2,0,0
3,0,0')
		equals: { 
				{ 
					(4 @ 0 @ 0).
					(5 @ 0 @ 0) }.
				{ 
					(2 @ 0 @ 0).
					(3 @ 0 @ 0) } }