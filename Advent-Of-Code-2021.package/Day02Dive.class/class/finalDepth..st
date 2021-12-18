as yet unclassified
finalDepth: anOrderedCollectionOfCommands 
	^ (((Day01SonarSweep asPairs: anOrderedCollectionOfCommands)
		   select: [ :aPair | (aPair at: 1) = 'down' ]
		   thenCollect: [ :aPair | aPair at: 2 ]) sumNumbers) 
		- (((Day01SonarSweep asPairs: anOrderedCollectionOfCommands)
		   select: [ :aPair | (aPair at: 1) = 'up' ]
		   thenCollect: [ :aPair | aPair at: 2 ]) sumNumbers) 