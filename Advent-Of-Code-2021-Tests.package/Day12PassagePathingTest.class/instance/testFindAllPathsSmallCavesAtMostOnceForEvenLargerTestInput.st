tests
testFindAllPathsSmallCavesAtMostOnceForEvenLargerTestInput

	| rawInput caveConnections cavePassageFinder |
	rawInput := #( fs - end #';' he - DX #';' fs - he #';' start - DX #';'
	               pj - DX #';' end - zg #';' zg - sl #';' zg - pj #';'
	               pj - he #';' RW - he #';' fs - DX #';' pj - RW #';'
	               zg - RW #';' start - pj #';' he - WI #';' zg - he #';'
	               pj - fs #';' start - RW ).
	caveConnections := self parseAsCaveConnections: rawInput.

	cavePassageFinder := CavePassageFinder new caveConnections:
		                     caveConnections.

	self assert: cavePassageFinder findAllPathsSmallCavesAtMostOnce asSet size equals: 226