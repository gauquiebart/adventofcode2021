private
findMatrixTransformationTo: anOtherAOCBeaconScanner usingMinOverlapOfBeacons: aNmbrOfBeacons

	| relativeCoordinatesToBeacons relativeCoordinatesToBeaconsOfOtherScanner relativeCoordinatesBeaconsOverlapping uniqueRelativeCoordinatesOverlapping uniqueRelativeCoordinatesOverlap beaconCoordinateInScanner beaconCoordinateInOtherScanner originTransformationMatrix |
	
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
	
	(uniqueRelativeCoordinatesOverlapping size * 2) < aNmbrOfBeacons ifTrue: [ ^ nil ].  

	uniqueRelativeCoordinatesOverlap := uniqueRelativeCoordinatesOverlapping
		                                    anyOne.

	beaconCoordinateInScanner := (relativeCoordinatesToBeacons select: [ 
		                              :each | 
		                              each key
		                              = uniqueRelativeCoordinatesOverlap ])
		                             anyOne value.

	beaconCoordinateInOtherScanner := (relativeCoordinatesToBeaconsOfOtherScanner 
		                                   select: [ :each | 
		                                   each key
		                                   =
		                                   uniqueRelativeCoordinatesOverlap ])
		                                  anyOne value.

	"these represent 2 vectors -> see about translation, orientation and direction -> that is how you should then transform all the beacons of the other Scanner, for now, we will only implement translation"
	"TODO model as a 3D transformation matrix"

	originTransformationMatrix := PMSymmetricMatrix identity: 4.
	originTransformationMatrix
		at: 1
		at: 4
		put: (beaconCoordinateInScanner first
			 - beaconCoordinateInOtherScanner first) first.
	originTransformationMatrix
		at: 2
		at: 4
		put: (beaconCoordinateInScanner first
			 - beaconCoordinateInOtherScanner first) second.
	originTransformationMatrix
		at: 3
		at: 4
		put: (beaconCoordinateInScanner first
			 - beaconCoordinateInOtherScanner first) third.

	^ originTransformationMatrix