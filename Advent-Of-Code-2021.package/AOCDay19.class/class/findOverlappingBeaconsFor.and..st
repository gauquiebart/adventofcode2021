solving
findOverlappingBeaconsFor: aScanner and: otherScanner

	| relativeCoordinatesToBeaconsForScanner relativeCoordinatesToBeaconsForOtherScanner relativeCoordinatesOverlapping uniqueRelativeCoordinatesOverlapping |
	relativeCoordinatesToBeaconsForScanner := self 
		                                          relativeCoordinatesToAllBeacons:
		                                          aScanner.
	relativeCoordinatesToBeaconsForOtherScanner := self 
		                                                 relativeCoordinatesToAllBeacons:
		                                                 otherScanner.

	relativeCoordinatesOverlapping := (relativeCoordinatesToBeaconsForScanner 
		                                   collect: #key) intersection:
		                                  (relativeCoordinatesToBeaconsForOtherScanner 
			                                   collect: #key).

	uniqueRelativeCoordinatesOverlapping := Set new.

	relativeCoordinatesOverlapping do: [ :eachToAdd | 
		(uniqueRelativeCoordinatesOverlapping intersection:
			 eachToAdd asSeenInAllCoordinateSystems) isEmpty ifTrue: [ 
			uniqueRelativeCoordinatesOverlapping add: eachToAdd ] ].

	^ uniqueRelativeCoordinatesOverlapping flatCollectAsSet: [ 
		  :eachRelativeCoordinate | 
		  (relativeCoordinatesToBeaconsForScanner select: [ :each | 
			   each key = eachRelativeCoordinate ]) anyOne value ]