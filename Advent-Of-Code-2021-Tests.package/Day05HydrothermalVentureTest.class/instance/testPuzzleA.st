tests
testPuzzleA

	| testInput |
	testInput := (self asLineSegments: self rawPuzzleInput) select: [ 
		             :aLineSegment | 
		             aLineSegment isParallelToXAxis or:
			             aLineSegment isParallelToYAxis ].

	self
		assert:
		(Day05HydrothermalVenture mostOverlappingPoints: testInput)
			size
		equals: 5585