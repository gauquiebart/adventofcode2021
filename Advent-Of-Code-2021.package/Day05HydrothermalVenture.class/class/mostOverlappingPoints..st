as yet unclassified
mostOverlappingPoints: aCollectionOfLineSegments

	| result |
	result := Dictionary new.

	aCollectionOfLineSegments do: [ :aLineSegment | 
		aLineSegment asPoints do: [ :aPoint | 
			result at: aPoint update: [ :aValue | aValue + 1 ] initial: 1 ] ].

	^ result select: [ :anOccurance| anOccurance > 1 ].