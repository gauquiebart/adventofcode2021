tests
testPuzzleB

	| rawInput caveConnections cavePassageFinder |
	rawInput := #( start - YA #';' ps - yq #';' zt - mu #';' JS - yi #';'
	               yq - VJ #';' QT - ps #';' start - yq #';' YA - yi #';'
	               start - nf #';' nf - YA #';' nf - JS #';' JS - ez #';'
	               yq - JS #';' ps - JS #';' ps - yi #';' yq - nf #';'
	               QT - yi #';' end - QT #';' nf - yi #';' zt - QT #';'
	               end - ez #';' yq - YA #';' end - JS ).
	caveConnections := self parseAsCaveConnections: rawInput.

	cavePassageFinder := CavePassageFinder new caveConnections:
		                     caveConnections.

	self
		assert:
		cavePassageFinder findAllPathsSmallCavesAtMostOnceExceptOneSmallCaveTwice  asSet size
		equals: 118242