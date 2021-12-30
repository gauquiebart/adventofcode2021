tests
testFindAllPathsForVerySimpleTestInput

	| rawInput caveConnections cavePassageFinder |
	rawInput := #( start - A #';' start - b #';' A - c #';' A - b #';'
	               b - d #';' A - end #';' b - end ).
	caveConnections := self parseAsCaveConnections: rawInput.

	cavePassageFinder := CavePassageFinder new caveConnections:
		                     caveConnections.

	self assert: cavePassageFinder findAllPaths asSet equals: (Set newFrom: { 
				 #( start A b A c A end ).
				 #( start A b A end ).
				 #( start A b end ).
				 #( start A c A b A end ).
				 #( start A c A b end ).
				 #( start A c A end ).
				 #( start A end ).
				 #( start b A c A end ).
				 #( start b A end ).
	 			 #( start b end )}).