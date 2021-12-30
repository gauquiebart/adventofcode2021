tests
testFindAllPathsSmallCavesAtMostOnce

	self
		assert: (CavePassageFinder new caveConnections:
				 { (CaveConnection new a: #start b: #end) }) findAllPathsSmallCavesAtMostOnce
		equals: { #( start end ) }.

	self
		assert: (CavePassageFinder new caveConnections: { 
					 (CaveConnection new a: #start b: #a).
					 (CaveConnection new a: #a b: #end) }) findAllPathsSmallCavesAtMostOnce
		equals:  { #( start a end ) } 