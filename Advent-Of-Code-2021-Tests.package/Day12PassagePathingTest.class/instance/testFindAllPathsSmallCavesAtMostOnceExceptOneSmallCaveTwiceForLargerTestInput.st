tests
testFindAllPathsSmallCavesAtMostOnceExceptOneSmallCaveTwiceForLargerTestInput

	| rawInput caveConnections cavePassageFinder |
	rawInput := #( dc - end #';' HN - start #';' start - kj #';' dc - start
	               #';' dc - HN #';' LN - dc #';' HN - end #';' kj - sa
	               #';' kj - HN #';' kj - dc ).
	caveConnections := self parseAsCaveConnections: rawInput.

	cavePassageFinder := CavePassageFinder new caveConnections:
		                     caveConnections.

	self
		assert:
		cavePassageFinder findAllPathsSmallCavesAtMostOnceExceptOneSmallCaveTwice asSet size
		equals: 103