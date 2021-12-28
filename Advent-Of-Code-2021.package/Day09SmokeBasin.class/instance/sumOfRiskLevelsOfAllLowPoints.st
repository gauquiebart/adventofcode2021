solving
sumOfRiskLevelsOfAllLowPoints

	^ (self lowPoints collect: [ :each | each + 1 ]) sum