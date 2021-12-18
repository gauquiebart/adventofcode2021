accessing
horizontalPosition: anOrderedCollectionOfCommands 
	
	^ ((Day01SonarSweep asPairs: anOrderedCollectionOfCommands)
	select: [:aPair | (aPair at: 1) = 'forward']
	thenCollect: [:aPair | aPair at: 2])
	sumNumbers.
	