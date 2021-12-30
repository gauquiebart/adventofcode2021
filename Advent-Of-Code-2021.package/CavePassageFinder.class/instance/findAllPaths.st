solving
findAllPaths

	^ self
		  findAllPathsFrom: #start
		  to: #end
		  withPathSoFar: OrderedCollection new