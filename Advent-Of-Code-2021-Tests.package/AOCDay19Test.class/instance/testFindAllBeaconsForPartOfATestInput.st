tests
testFindAllBeaconsForPartOfATestInput

	| beacons |
	beacons := AOCDay19 parseRawInput: self aRawTestInput.
	
	self
		assert: ((AOCDay19
				 findAllBeacons: { 
						 (beacons at: 1).
						 (beacons at: 2) }
				 usingMinOverlapOfBeacons: 12) beacons asSet) size
		equals: 38