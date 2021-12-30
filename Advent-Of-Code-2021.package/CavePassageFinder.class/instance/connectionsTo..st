private - solving
connectionsTo: aCave

	^ (caveConnections select: [ :each | each isConnectedTo: aCave ]) 
		  collect: [ :each | each connectionTo: aCave ]