tests
testCanNotMergeWithOtherForTranslation

	self
		assert: (((AOCBeaconScanner fromBeacons: { 
					  { 4. 0. 0 } asPMVector.
					  { 5. 0. 0 } asPMVector })
				 mergeWith: (AOCBeaconScanner fromBeacons: { 
							  { 2. 0. 0 } asPMVector.
							  { 3. 0. 0 } asPMVector.
							  { 100. 0. 0 } asPMVector })
				 usingMinOverlapOfBeacons: 3) beacons) asSet
		equals: { 
				{ 4. 0. 0 } asPMVector.
				{ 5. 0. 0 } asPMVector } asSet