private
findMatrixTransformationTo: anOtherAOCBeaconScanner usingMinOverlapOfBeacons: aNmbrOfBeacons

	| relativeCoordinatesToBeacons relativeCoordinatesToBeaconsOfOtherScanner relativeCoordinatesBeaconsOverlapping uniqueRelativeCoordinatesOverlapping uniqueRelativeCoordinatesOverlap beaconCoordinatesInScanner beaconCoordinatesInOtherScanner originRotationMatrix originTransformationMatrix unityVectorInScanner unityVectorInOtherScanner |
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



	uniqueRelativeCoordinatesOverlap := uniqueRelativeCoordinatesOverlapping
		                                    anyOne.

	beaconCoordinatesInScanner := (relativeCoordinatesToBeacons select: [ 
		                               :each | 
		                               each key
		                               = uniqueRelativeCoordinatesOverlap ])
		                              anyOne value.

	beaconCoordinatesInOtherScanner := (relativeCoordinatesToBeaconsOfOtherScanner 
		                                    select: [ :each | 
		                                    each key
		                                    =
		                                    uniqueRelativeCoordinatesOverlap ])
		                                   anyOne value.

	"these represent 2 vectors -> see about translation, orientation and direction -> that is how you should then transform all the beacons of the other Scanner, for now, we will only implement translation"
	"TODO model as a 3D transformation matrix"

	unityVectorInScanner := beaconCoordinatesInScanner first
	                        - beaconCoordinatesInScanner second.

	unityVectorInOtherScanner := beaconCoordinatesInOtherScanner first
	                             - beaconCoordinatesInOtherScanner second.

	originRotationMatrix := (AOCRotationMatrices rotationsAroundAllAxis 
		                         select: [ :each | 
			                         (unityVectorInOtherScanner multiplyWith:
				                          each) = unityVectorInScanner ]) anyOne.

	beaconCoordinatesInOtherScanner first multiplyWith:
		originRotationMatrix.


	originTransformationMatrix := (beaconCoordinatesInScanner first
	                               -
		                               (beaconCoordinatesInOtherScanner
			                                first multiplyWith:
			                                originRotationMatrix))
		                              asOriginTransformationMatrix.

	^ originRotationMatrix * originTransformationMatrix