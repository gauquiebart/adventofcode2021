merging
mergeWith: anOtherAOCBeaconScanner usingMinOverlapOfBeacons: aNmbrOfBeacons

	| matrixTranformationsToOtherScanner |
	matrixTranformationsToOtherScanner := self
		                                     findMatrixTransformationsTo:
		                                     anOtherAOCBeaconScanner
		                                     usingMinOverlapOfBeacons:
		                                     aNmbrOfBeacons.

	matrixTranformationsToOtherScanner isNotNil ifTrue: [ 
		beacons addAll:
			            (anOtherAOCBeaconScanner beacons collect: [ :each | 
				             (each multiplyWith:
					              (matrixTranformationsToOtherScanner at: 1)) 
					             multiplyWith:
					             (matrixTranformationsToOtherScanner at: 2) ]).
		beacons := beacons asSet asOrderedCollection ].

	^ matrixTranformationsToOtherScanner