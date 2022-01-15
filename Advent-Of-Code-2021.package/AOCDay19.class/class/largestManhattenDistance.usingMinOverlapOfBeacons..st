solving
largestManhattenDistance: aCollectionOfScanners usingMinOverlapOfBeacons: aNmbrOfBeacons

	| scannerZero otherScanners mergedScanners transformationMatricesOfScannerOrigins combinations |
	scannerZero := aCollectionOfScanners first.
	otherScanners := aCollectionOfScanners allButFirst copy asSet.
	mergedScanners := Set new.
	transformationMatricesOfScannerOrigins := Set newFrom:
		                                          { (PMSymmetricMatrix 
			                                           identity: 4) }.

	1 to: otherScanners size do: [ :each | 
		otherScanners do: [ :otherScanner | 
			| matrixTranformationsToOtherScanner |
			matrixTranformationsToOtherScanner := scannerZero
				                                      mergeWith: otherScanner
				                                      usingMinOverlapOfBeacons:
				                                      aNmbrOfBeacons.
			matrixTranformationsToOtherScanner isNotNil ifTrue: [ 
				mergedScanners add: otherScanner.
				transformationMatricesOfScannerOrigins add: (matrixTranformationsToOtherScanner at: 2) ] ].
		otherScanners removeAllFoundIn: mergedScanners ].

	combinations := Array streamContents: [ :stream | 
		                transformationMatricesOfScannerOrigins asOrderedCollection 
			                combinations: 2
			                atATimeDo: [ :each | stream nextPut: each copy ] ].
		
	^ (combinations collect: [ :each |
		(each at: 1) manhattenDistanceTo: (each at: 2)]) max