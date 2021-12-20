tests
testPuzzleB

	| testInput |
	testInput := self asLineSegments: self rawPuzzleInput.

	TimeProfiler spyOn: [ (Day05HydrothermalVenture mostOverlappingLineSegments: testInput)].

	self
		assert:
		(Day05HydrothermalVenture mostOverlappingLineSegments: testInput)
			size
		equals: 5585