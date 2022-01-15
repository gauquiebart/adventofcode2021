tests
testFindAllBeaconsForATestInput

	| beacons |
	beacons := AOCDay19 parseRawInput: self aRawTestInput.
	
	self
		assert:
			((AOCDay19 findAllBeacons: beacons usingMinOverlapOfBeacons: 12)
				beacons asSet) size
		equals: 79