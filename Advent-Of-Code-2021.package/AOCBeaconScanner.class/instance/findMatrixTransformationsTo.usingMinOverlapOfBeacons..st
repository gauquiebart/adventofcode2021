private
findMatrixTransformationsTo: anOtherAOCBeaconScanner usingMinOverlapOfBeacons: aNmbrOfBeacons

	| relativeCoordinatesToBeacons relativeCoordinatesToBeaconsOfOtherScanner relativeCoordinatesBeaconsOverlapping uniqueRelativeCoordinatesOverlapping uniqueRelativeCoordinatesOverlap beaconCoordinatesInScanner beaconCoordinatesInOtherScanner originRotationMatrix originTransformationMatrix unityVectorInScanner unityVectorInOtherScanner possibleCombinationsOfMatrices matchingCombinationsOfMatrices |
	relativeCoordinatesToBeacons := self relativeCoordinatesToAllBeacons.
	relativeCoordinatesToBeaconsOfOtherScanner := anOtherAOCBeaconScanner
		                                              relativeCoordinatesToAllBeacons.

	relativeCoordinatesBeaconsOverlapping := (relativeCoordinatesToBeacons 
		                                          collect: #key) 
		                                         intersection:
		                                         (relativeCoordinatesToBeaconsOfOtherScanner 
			                                          collect: #key).

	uniqueRelativeCoordinatesOverlapping := Set new.

	relativeCoordinatesBeaconsOverlapping do: [ :eachToAdd | 
		(uniqueRelativeCoordinatesOverlapping intersection:
			 eachToAdd rotationsAroundAllAxis) isEmpty ifTrue: [ 
			uniqueRelativeCoordinatesOverlapping add: eachToAdd ] ].

	uniqueRelativeCoordinatesOverlapping size * 2 < aNmbrOfBeacons 
		ifTrue: [ ^ nil ].

	possibleCombinationsOfMatrices := uniqueRelativeCoordinatesOverlapping 
		                                  collect: [ 
			                                  :eachUniqueRelativeCoordinatesOverlap | 
			                                  uniqueRelativeCoordinatesOverlap := eachUniqueRelativeCoordinatesOverlap.

			                                  beaconCoordinatesInScanner := (relativeCoordinatesToBeacons 
				                                                                 select: [ 
				                                                                 :each | 
				                                                                 each
					                                                                 key
				                                                                 =
				                                                                 uniqueRelativeCoordinatesOverlap ])
				                                                                anyOne
				                                                                value.

			                                  beaconCoordinatesInOtherScanner := (relativeCoordinatesToBeaconsOfOtherScanner 
				                                                                      select: [ 
				                                                                      :each | 
				                                                                      each
					                                                                      key
				                                                                      =
				                                                                      uniqueRelativeCoordinatesOverlap ])
				                                                                     anyOne
				                                                                     value.


			                                  unityVectorInScanner := beaconCoordinatesInScanner
				                                                          first
			                                                          -
			                                                          beaconCoordinatesInScanner
				                                                          second.

			                                  unityVectorInOtherScanner := beaconCoordinatesInOtherScanner
				                                                               first
			                                                               -
			                                                               beaconCoordinatesInOtherScanner
				                                                               second.

			                                  originRotationMatrix := (AOCRotationMatrices
				                                                           rotationsAroundAllAxis 
				                                                           select: [ 
					                                                           :each | 
					                                                           (unityVectorInOtherScanner 
						                                                            multiplyWith:
						                                                            each)
					                                                           =
					                                                           unityVectorInScanner ])
				                                                          anyOne.

			                                  originTransformationMatrix := (beaconCoordinatesInScanner
				                                                                 first
			                                                                 -
				                                                                 (beaconCoordinatesInOtherScanner
					                                                                  first 
					                                                                  multiplyWith:
					                                                                  originRotationMatrix))
				                                                                asOriginTransformationMatrix.

			                                  beaconCoordinatesInScanner first
			                                  =
				                                  ((beaconCoordinatesInOtherScanner
					                                    first multiplyWith:
					                                    originRotationMatrix) 
					                                   multiplyWith:
					                                   originTransformationMatrix)
				                                  ifTrue: [ 
					                                  { 
						                                  originRotationMatrix.
						                                  originTransformationMatrix } ]
				                                  ifFalse: [ {  } ] ].



	matchingCombinationsOfMatrices := possibleCombinationsOfMatrices 
		                                  select: [ :eachMatrixCombination | 
			                                  ((anOtherAOCBeaconScanner beacons 
				                                    collect: [ :each | 
					                                    (each multiplyWith:
						                                     (eachMatrixCombination at:
							                                      1)) multiplyWith:
						                                    (eachMatrixCombination at: 2) ]) 
				                                   intersection: beacons) size
			                                  >= aNmbrOfBeacons ].

	^ matchingCombinationsOfMatrices isEmpty
		  ifTrue: [ ^ nil ]
		  ifFalse: [ matchingCombinationsOfMatrices anyOne ]