tests
testCanMergeWithOtherForRotation

self
		assert: ((AOCBeaconScanner fromBeacons: { 
						  { 1. 2. 8 } asPMVector.
						  { 3. 7. 16 } asPMVector })
				 mergeWith: (AOCBeaconScanner fromBeacons: { 
								  { 8. 1.  2 } asPMVector.
								  { 16. 3.  7 } asPMVector.
								  { 100. 3. 99 } asPMVector })
				 usingMinOverlapOfBeacons: 2;
				 beacons) asSet
		equals: { 
				{ 1. 2. 8 } asPMVector.
				{ 3. 7. 16 } asPMVector.
				{ 3. 99. 100 } asPMVector } asSet