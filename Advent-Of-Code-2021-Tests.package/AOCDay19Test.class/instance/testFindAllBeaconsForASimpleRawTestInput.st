tests
testFindAllBeaconsForASimpleRawTestInput

	| beacons |
	beacons := AOCDay19 parseRawInput: self aSimpleRawTestInput.

	self
		assert:
			(AOCDay19 findAllBeacons: beacons usingMinOverlapOfBeacons: 2)
				beacons asSet
		equals: { 
				{ -1. -1. 1 } asPMVector.
				{ -2. -2. 2 } asPMVector.
				{ -3. -3. 3 } asPMVector.
				{ -2. -3. 1 } asPMVector.
				{ 5. 6. -4 } asPMVector.
				{ 8. 0. 7 } asPMVector } asSet