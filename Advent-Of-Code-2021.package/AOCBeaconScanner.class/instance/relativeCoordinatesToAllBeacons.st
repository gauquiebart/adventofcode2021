private
relativeCoordinatesToAllBeacons

	| combinations |
	combinations := Array streamContents: [ :stream | 
		                beacons
			                combinations: 2
			                atATimeDo: [ :each | stream nextPut: each copy ] ].

	^ combinations flatCollectAsSet: [ :combination | 
		  (((combination at: 1) - (combination at: 2))
			   rotationsAroundAllAxis addAll:
			   ((combination at: 2) - (combination at: 1))
				   rotationsAroundAllAxis) collect: [ 
			  :eachRelativeCoordinateBetweenTwoBeacons | 
			  eachRelativeCoordinateBetweenTwoBeacons -> combination ] ]