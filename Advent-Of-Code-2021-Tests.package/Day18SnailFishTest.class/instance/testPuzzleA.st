tests
testPuzzleA

	self
		assert: (Day18SnailFish magnitude: (Day18SnailFish addAll:
					  (Day18SnailFish parseHomeworkAssignmentAsNumbers:
						   self puzzleInput)))
		equals: 3305