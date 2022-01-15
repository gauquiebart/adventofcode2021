private
initRotationsAroundAllAxis

	| axisTemplate |
	axisTemplate := [ :matrix :rotationMatrix | 
	                | oneRotation twoRotations threeRotations |
	                oneRotation := matrix * rotationMatrix.
	                twoRotations := oneRotation * rotationMatrix.
	                threeRotations := twoRotations * rotationMatrix.
	                { 
		                matrix.
		                oneRotation.
		                twoRotations.
		                threeRotations } ].
	^ (axisTemplate
		   value: (PMSymmetricMatrix identity: 4)
		   value: (self forAxis: 1)) flatCollectAsSet: [ :aroundAxis1 | 
		  (axisTemplate value: aroundAxis1 value: (self forAxis: 2)) 
			  flatCollectAsSet: [ :aroundAxis1And2 | 
				  axisTemplate value: aroundAxis1And2 value: (self forAxis: 3) ] ]