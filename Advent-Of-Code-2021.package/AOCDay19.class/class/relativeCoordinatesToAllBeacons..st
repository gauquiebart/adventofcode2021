solving
relativeCoordinatesToAllBeacons: aCollectionOfBeacons

	| combinations |
	combinations := Array streamContents: [ :stream | 
		                aCollectionOfBeacons
			                combinations: 2
			                atATimeDo: [ :each | stream nextPut: each copy ] ].

	^ combinations flatCollectAsSet: [ :combination | 
		  ((combination at: 1) - (combination at: 2))
			  asSeenInAllCoordinateSystems collect: [ 
			  :eachRelativeCoordinateBetweenTwoBeacons | 
			  eachRelativeCoordinateBetweenTwoBeacons -> combination ] ]