solving
relativeCoordinatesToAllBeacons: aCollectionOfBeacons

	| combinations |
	combinations := Array streamContents: [ :stream | 
		                aCollectionOfBeacons
			                combinations: 2
			                atATimeDo: [ :each | stream nextPut: each copy ] ].

	^ (combinations collect: [ :eachCombination | 
		   (eachCombination at: 1) - (eachCombination at: 2) ]) 
		  flatCollectAsSet: [ :eachRelativeCoordinateBetweenTwoBeacons | 
			  { 
				  eachRelativeCoordinateBetweenTwoBeacons.
				  (eachRelativeCoordinateBetweenTwoBeacons * (-1 @ 1 @ 1)) } ]