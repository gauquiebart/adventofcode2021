tests
testSolvePuzzleB

	| beacons |
	beacons := AOCDay19 parseRawInput: self aRawPuzzleInput.
	
	self
		assert:
			(AOCDay19 largestManhattenDistance: beacons usingMinOverlapOfBeacons: 12)
		equals: 10842