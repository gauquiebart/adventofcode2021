solving
findAllPathsSmallCavesAtMostOnce

	^ self
		  findAllPathsFrom: #start
		  to: #end
		  withPathSoFar: OrderedCollection new
		  usingPathReentryStopCondition: [ :pathSoFar :caveToAdd | 
			  pathSoFar anySatisfy: [ :each | 
				  caveToAdd = each and: caveToAdd isSmallCave ] ]