*Advent-Of-Code-2021
asOriginTransformationMatrix

	| result |
	result := PMSymmetricMatrix identity: 4.
	result at: 1 at: 4 put: self first.
	result at: 2 at: 4 put: self second.
	result at: 3 at: 4 put: self third.
	^ result