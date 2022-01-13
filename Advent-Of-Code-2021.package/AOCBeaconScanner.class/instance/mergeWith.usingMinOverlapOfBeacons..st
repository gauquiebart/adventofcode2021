merging
mergeWith: anOtherAOCBeaconScanner usingMinOverlapOfBeacons: aNmbrOfBeacons

	| matrixTranformationToOtherScanner |
	matrixTranformationToOtherScanner := self
		                                     findMatrixTransformationTo:
		                                     anOtherAOCBeaconScanner
		                                     usingMinOverlapOfBeacons:
		                                     aNmbrOfBeacons.

	matrixTranformationToOtherScanner isNotNil ifTrue: [ 
		beacons := (beacons addAll:
			            (anOtherAOCBeaconScanner beacons collect: [ :each | 
				             each multiplyWith: matrixTranformationToOtherScanner ]))
			           asSet asOrderedCollection ]