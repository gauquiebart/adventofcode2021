tests
test3DFindOverlappingBeacons

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
-8,-7,0

--- scanner 2 ---
-1,-1,-1
-2,-2,-2
-3,-3,-3
-1,-3,-2
4,6,5
-7,0,8

--- scanner 3 ---
1,1,-1
2,2,-2
3,3,-3
1,3,-2
-4,-6,5
7,0,8

--- scanner 4 ---
1,1,1
2,2,2
3,3,3
3,1,2
-6,-4,-5
0,7,-8'.

	(Array streamContents: [ :stream | 
		 (1 to: 4)
			 combinations: 2
			 atATimeDo: [ :each | stream nextPut: each copy ] ]) do: [ 
		:eachCombination | 
		self
			assert: (AOCDay19
					 findOverlappingBeaconsFor:
					 (scanners at: (eachCombination at: 1))
					 and: (scanners at: (eachCombination at: 2))) size
			equals: 6 ]