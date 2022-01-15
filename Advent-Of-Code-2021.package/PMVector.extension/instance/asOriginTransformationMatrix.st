*Advent-Of-Code-2021
asOriginTransformationMatrix

	| result |
	result := PMSymmetricMatrix identity: 4.
	result at: 4 at: 1 put: self first.
	result at: 4 at: 2 put: self second.
	result at: 4 at: 3 put: self third.
	^ result