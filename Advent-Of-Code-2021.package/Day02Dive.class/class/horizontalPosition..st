accessing
horizontalPosition: anOrderedCollectionOfCommands

	^ (anOrderedCollectionOfCommands asPairs
		   select: [ :aPair | (aPair at: 1) = 'forward' ]
		   thenCollect: [ :aPair | aPair at: 2 ]) sumNumbers