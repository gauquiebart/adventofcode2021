solving
sumOfRiskLevelsOfAllLowPoints

	^ (self lowPoints collect: [ :each | (self at: each) + 1 ]) sum