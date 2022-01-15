tests
testCanMergeWithOtherForTranslationAndRotation

	self
		assert: ((AOCBeaconScanner fromBeacons: { 
						  { 1. 2. 8 } asPMVector.
						  { 3. 7. 16 } asPMVector })
				 mergeWith: (AOCBeaconScanner fromBeacons: { 
								  { 8. 1. 12 } asPMVector.
								  { 16. 3. 17 } asPMVector.
								  { 100. 3. 99 } asPMVector })
				 usingMinOverlapOfBeacons: 2;
				 beacons) asSet
		equals: { 
				{ 1. 2. 8 } asPMVector.
				{ 3. 7. 16 } asPMVector.
				{ 3. 89. 100 } asPMVector } asSet.

	self
		assert: ((AOCBeaconScanner fromBeacons: { 
						  { 4. -66. 78 } asPMVector.
						  { 5. -20. 1 } asPMVector })
				 mergeWith: (AOCBeaconScanner fromBeacons: { 
								  { 2. -178. 0 } asPMVector.
								  { 3. -101. 46 } asPMVector.
								  { 100. 3. 99 } asPMVector })
				 usingMinOverlapOfBeacons: 2;
				 beacons) asSet
		equals: { 
				{ 4. -66. 78 } asPMVector.
				{ 5. -20. 1 } asPMVector.
				{ 102. 33. -103 } asPMVector } asSet