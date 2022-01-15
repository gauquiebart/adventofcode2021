*Advent-Of-Code-2021
manhattenDistanceTo: aPMSymmetricMatrix 
	^ ((aPMSymmetricMatrix at: 1 at: 4) - (self at: 1 at: 4)) abs +
		((aPMSymmetricMatrix at: 2 at: 4) - (self at: 2 at: 4)) abs + 
			((aPMSymmetricMatrix at: 3 at: 4) - (self at: 3 at: 4)) abs