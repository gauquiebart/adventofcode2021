solving
findOverlappingBeaconsFor: aScanner and: anotherScanner

	| relativeCoordinatesToScanner relativeCoordinatesToAnotherScanner resultWithMirroredAroundEachAxis result |
	relativeCoordinatesToScanner := self 
		                                relativeCoordinatesToAllBeacons:
		                                aScanner.
	relativeCoordinatesToAnotherScanner := self 
		                                       relativeCoordinatesToAllBeacons:
		                                       anotherScanner.

	resultWithMirroredAroundEachAxis := relativeCoordinatesToScanner 
		                                    intersection:
		                                    relativeCoordinatesToAnotherScanner.

	result := Set new.

	resultWithMirroredAroundEachAxis do: [ :eachToAdd | 
		(result intersection: eachToAdd asSeenInAllCoordinateSystems)
			isEmpty ifTrue: [ result add: eachToAdd ] ].

	^ result