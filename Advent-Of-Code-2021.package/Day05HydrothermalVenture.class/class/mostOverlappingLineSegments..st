as yet unclassified
mostOverlappingLineSegments: aCollectionOfLineSegments

	| segmentBoundaryRectangle origin corner result |
	result := Dictionary new.

	segmentBoundaryRectangle := self largestRectangle:
		                            aCollectionOfLineSegments.

	origin := segmentBoundaryRectangle origin.
	corner := segmentBoundaryRectangle corner.

	origin x to: corner y do: [ :x | 
		origin y to: corner y do: [ :y | 
			| lineSegmentsAtPoint |
			lineSegmentsAtPoint := aCollectionOfLineSegments select: [ 
				                       :aLineSegment | 
				                       aLineSegment isPointOnLine: x @ y ].
			lineSegmentsAtPoint size > 1 ifTrue: [ 
				result at: x @ y put: lineSegmentsAtPoint ] ] ].

	^ result