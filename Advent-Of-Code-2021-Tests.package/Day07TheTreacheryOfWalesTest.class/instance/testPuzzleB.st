tests
testPuzzleB

	self
		assert:
			(Day07TheTreacheryOfWhales incrementalFuelToPositionOfLeastFuelOf:
				 self puzzleInput)
		equals: 99634572