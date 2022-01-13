tests
testFindAllBeacons

	| beacons |
	beacons := { 
		           (AOCBeaconScanner fromBeacons: { 
				            { 4. -66. 78 } asPMVector.
				            { 5. -20. 1 } asPMVector }).
		           (AOCBeaconScanner fromBeacons: { 
				            { 2. 0. 178 } asPMVector.
				            { 3. 46. 101 } asPMVector.
				            { 100. 99. 3 } asPMVector }) }.
				
	self assert: (AOCDay19 findAllBeacons: beacons usingMinOverlapOfBeacons: 2) beacons asSet
	equals: { 
				{ 4. -66. 78 } asPMVector.
				{ 5. -20. 1 } asPMVector.
				{ 102. 33. -97 } asPMVector } asSet.