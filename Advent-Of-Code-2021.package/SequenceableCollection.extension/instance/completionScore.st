*Advent-Of-Code-2021
completionScore

	^ self inject: 0 into: [:sum :each| (sum * 5) + (each completionScore)].