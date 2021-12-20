tests
testPuzzleB

	| testInput |
	testInput := self asLineSegments: self rawPuzzleInput.

	self
		assert:
		(Day05HydrothermalVenture mostOverlappingPoints: testInput) size
		equals: 20187