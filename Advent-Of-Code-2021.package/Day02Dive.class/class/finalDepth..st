as yet unclassified
finalDepth: anOrderedCollectionOfCommands

	^ (anOrderedCollectionOfCommands asPairs
		   select: [ :aPair | (aPair at: 1) = 'down' ]
		   thenCollect: [ :aPair | aPair at: 2 ]) sumNumbers
	  - (anOrderedCollectionOfCommands asPairs
			   select: [ :aPair | (aPair at: 1) = 'up' ]
			   thenCollect: [ :aPair | aPair at: 2 ]) sumNumbers