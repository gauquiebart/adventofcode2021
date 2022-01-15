tests
testSolvePuzzleA

	| beacons |
	beacons := AOCDay19 parseRawInput: self aRawPuzzleInput.
	
	self
		assert:
			((AOCDay19 findAllBeacons: beacons usingMinOverlapOfBeacons: 12)
				beacons asSet) size
		equals: 355