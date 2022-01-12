*Advent-Of-Code-2021
rotationsAroundAllAxis

	| axisTemplate |
	axisTemplate := [ :vector :nbr | 
	                | oneRotation twoRotations threeRotations |
	                oneRotation := vector leftRotatedAroundAxis: nbr.
	                twoRotations := oneRotation leftRotatedAroundAxis:
		                                nbr.
	                threeRotations := twoRotations 
		                                  leftRotatedAroundAxis: nbr.
	                { 
		                vector.
		                oneRotation.
		                twoRotations.
		                threeRotations } ].
	^ (axisTemplate value: self value: 1) flatCollectAsSet: [ 
		  :aroundAxis1 | 
		  (axisTemplate value: aroundAxis1 value: 2) flatCollectAsSet: [ 
			  :aroundAxis1And2 | axisTemplate value: aroundAxis1And2 value: 3 ] ]