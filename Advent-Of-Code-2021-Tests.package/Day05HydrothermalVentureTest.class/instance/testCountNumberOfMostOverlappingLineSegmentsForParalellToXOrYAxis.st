tests
testCountNumberOfMostOverlappingLineSegmentsForParalellToXOrYAxis

	| testInput |
	testInput := (self asLineSegments:
		              #( 0 , 9 -> 5 , 9 8 , 0 -> 0 , 8 9 , 4 -> 3 , 4 2 , 2
		                 -> 2 , 1 7 , 0 -> 7 , 4 6 , 4 -> 2 , 0 0 , 9 -> 2 ,
		                 9 3 , 4 -> 1 , 4 0 , 0 -> 8 , 8 5 , 5 -> 8 , 2 )) 
		             select: [ :aLineSegment | 
			             aLineSegment isParallelToXAxis or:
				             aLineSegment isParallelToYAxis ].

	self
		assert:
		(Day05HydrothermalVenture mostOverlappingPoints: testInput)
			size
		equals: 5