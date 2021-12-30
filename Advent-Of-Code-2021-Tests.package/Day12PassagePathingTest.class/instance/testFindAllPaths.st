tests
testFindAllPaths

	self
		assert: (CavePassageFinder new caveConnections:
				 { (CaveConnection new a: #start b: #end) }) findAllPaths
		equals: { #( start end ) }.

	self
		assert: (CavePassageFinder new caveConnections: { 
					 (CaveConnection new a: #start b: #a).
					 (CaveConnection new a: #a b: #end) }) findAllPaths
		equals:  { #( start a end ) } 