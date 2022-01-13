solving - private
findTransformationToScanner: otherScanner relativeTo: originScanner

	| relativeCoordinatesToBeaconsForOriginScanner relativeCoordinatesToBeaconsForOtherScanner relativeCoordinatesOverlapping uniqueRelativeCoordinatesOverlapping uniqueRelativeCoordinatesOverlap beaconCoordinateInOriginScanner beaconCoordinateInOtherScanner |
	relativeCoordinatesToBeaconsForOriginScanner := self 
		                                                relativeCoordinatesToAllBeacons:
		                                                originScanner.
	relativeCoordinatesToBeaconsForOtherScanner := self 
		                                               relativeCoordinatesToAllBeacons:
		                                               otherScanner.

	relativeCoordinatesOverlapping := (relativeCoordinatesToBeaconsForOriginScanner 
		                                   collect: #key) intersection:
		                                  (relativeCoordinatesToBeaconsForOtherScanner 
			                                   collect: #key).

	uniqueRelativeCoordinatesOverlapping := Set new.

	relativeCoordinatesOverlapping do: [ :eachToAdd | 
		(uniqueRelativeCoordinatesOverlapping intersection:
			 eachToAdd asSeenInAllCoordinateSystems) isEmpty ifTrue: [ 
			uniqueRelativeCoordinatesOverlapping add: eachToAdd ] ].
	uniqueRelativeCoordinatesOverlap := uniqueRelativeCoordinatesOverlapping
		                                    anyOne.

	beaconCoordinateInOriginScanner := (relativeCoordinatesToBeaconsForOriginScanner 
		                                    select: [ :each | 
		                                    each key
		                                    =
		                                    uniqueRelativeCoordinatesOverlap ])
		                                   anyOne value.

	beaconCoordinateInOtherScanner := (relativeCoordinatesToBeaconsForOtherScanner 
		                                   select: [ :each | 
		                                   each key
		                                   =
		                                   uniqueRelativeCoordinatesOverlap ])
		                                  anyOne value.
		
	"these represent 2 vectors -> see about translation, orientation and direction -> that is how you should then transform all the beacons of the other Scanner, for now, we will only implement translation"
	
	^ beaconCoordinateInOriginScanner first - beaconCoordinateInOtherScanner first.
	
	"self shouldBeImplemented"