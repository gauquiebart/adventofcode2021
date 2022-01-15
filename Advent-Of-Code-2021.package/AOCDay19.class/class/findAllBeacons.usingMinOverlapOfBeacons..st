solving
findAllBeacons: aCollectionOfScanners usingMinOverlapOfBeacons: aNmbrOfBeacons

	| scannerZero otherScanners mergedScanners |
	scannerZero := aCollectionOfScanners first.
	otherScanners := aCollectionOfScanners allButFirst copy asSet.
	mergedScanners := Set new.

	1 to: otherScanners size do: [ :each | 
		otherScanners do: [ :otherScanner | 
			| matrixTranformationsToOtherScanner |
			matrixTranformationsToOtherScanner := scannerZero
				          mergeWith: otherScanner
				          usingMinOverlapOfBeacons: aNmbrOfBeacons.
			matrixTranformationsToOtherScanner isNotNil ifTrue: [ mergedScanners add: otherScanner ] ].
		otherScanners removeAllFoundIn: mergedScanners ].


	^ scannerZero