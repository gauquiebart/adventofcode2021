solving
findAllBeacons: aCollectionOfScanners usingMinOverlapOfBeacons: aNmbrOfBeacons

	| scannerZero otherScanners mergedScanners scannerZeroNmbrOfBeacons |
	scannerZero := aCollectionOfScanners first.
	otherScanners := aCollectionOfScanners allButFirst copy asSet.
	mergedScanners := Set new.

	scannerZeroNmbrOfBeacons := scannerZero beacons size.

	1 to: otherScanners size do: [ :each | 
		otherScanners do: [ :otherScanner | 
			| merged |
			merged := scannerZero
				          mergeWith: otherScanner
				          usingMinOverlapOfBeacons: aNmbrOfBeacons.
			merged ifTrue: [ mergedScanners add: otherScanner ] ].
		otherScanners removeAllFoundIn: mergedScanners ].


	^ scannerZero