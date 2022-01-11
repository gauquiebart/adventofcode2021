solving
findOverlappingBeaconsFor: aScanner and: anotherScanner

	| relativeCoordinatesToBeaconsForScanner relativeCoordinatesToBeaconsForAnotherScanner relativeCoordinatesOverlapping uniqueRelativeCoordinatesOverlapping |
	relativeCoordinatesToBeaconsForScanner := self 
		                                          relativeCoordinatesToAllBeacons:
		                                          aScanner.
	relativeCoordinatesToBeaconsForAnotherScanner := self 
		                                                 relativeCoordinatesToAllBeacons:
		                                                 anotherScanner.

	relativeCoordinatesOverlapping := (relativeCoordinatesToBeaconsForScanner 
		                                   collect: #key) intersection:
		                                  (relativeCoordinatesToBeaconsForAnotherScanner 
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