tests
testFindAllPathsSmallCavesAtMostOnceExceptOneSmallCaveTwiceForVerySimpleTestInput

	| rawInput caveConnections cavePassageFinder |
	rawInput := #( start - A #';' start - b #';' A - c #';' A - b #';'
	               b - d #';' A - end #';' b - end ).
	caveConnections := self parseAsCaveConnections: rawInput.

	cavePassageFinder := CavePassageFinder new caveConnections:
		                     caveConnections.

	self
		assert:
		cavePassageFinder findAllPathsSmallCavesAtMostOnceExceptOneSmallCaveTwice asSet size
		equals: 36