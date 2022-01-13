tests
testCanMergeWithOtherForTranslation

	self
		assert: ((AOCBeaconScanner fromBeacons: { 
						  { 4. -66. 78 } asPMVector.
						  { 5. -20. 1 } asPMVector })
				 mergeWith: (AOCBeaconScanner fromBeacons: { 
								  { 2. 0. 178 } asPMVector.
								  { 3. 46. 101 } asPMVector.
								  { 100. 99. 3 } asPMVector })
				 usingMinOverlapOfBeacons: 2;
				 beacons) asSet
		equals: { 
				{ 4. -66. 78 } asPMVector.
				{ 5. -20. 1 } asPMVector.
				{ 102. 33. -97 } asPMVector } asSet