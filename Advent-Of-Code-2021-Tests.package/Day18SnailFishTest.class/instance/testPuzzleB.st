tests
testPuzzleB

	self
		assert: (Day18SnailFish largestMagnitudeOfTwoSums: 
					  (Day18SnailFish parseHomeworkAssignmentAsNumbers:
						   self puzzleInput))
		equals: 4563