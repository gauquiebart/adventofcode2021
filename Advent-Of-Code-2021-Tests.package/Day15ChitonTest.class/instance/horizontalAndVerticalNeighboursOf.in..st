helper
horizontalAndVerticalNeighboursOf: aPoint in: points

	| min max |
	min := points min min.
	max := points max max.

	^ aPoint fourNeighbors reject: [ 
		  :each | each min < min or: each max > max ]