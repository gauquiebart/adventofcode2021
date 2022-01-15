tests
testLargestManhattenDistanceForATestInput

	| beacons |
	beacons := AOCDay19 parseRawInput: self aRawTestInput.
	
	self
		assert:
			(AOCDay19 largestManhattenDistance: beacons usingMinOverlapOfBeacons: 12)
		equals: 3621