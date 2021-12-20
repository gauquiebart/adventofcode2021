as yet unclassified
largestRectangle: aCollectionOfLineSegments
	^ Rectangle encompassing: (aCollectionOfLineSegments flatCollect: [:aLineSegment | aLineSegment controlPoints])