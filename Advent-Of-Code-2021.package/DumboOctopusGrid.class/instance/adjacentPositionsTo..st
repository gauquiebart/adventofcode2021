private - accessing
adjacentPositionsTo: aPosition

	^ (aPosition eightNeighbors asOrderedCollection reject: [ :position | 
		   position min = 0 ]) reject: [ :position | 
		  position max > self gridSize ]