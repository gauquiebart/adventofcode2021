solving
findOverlappingBeacons: aCollectionOfScanners
	|relativeCoordinatesToAllBeaconsForScanners result|
	
	relativeCoordinatesToAllBeaconsForScanners := 
		aCollectionOfScanners collect: [ :eachScanner | self relativeCoordinatesToAllBeacons: eachScanner].
	
	result := relativeCoordinatesToAllBeaconsForScanners allButFirst inject: relativeCoordinatesToAllBeaconsForScanners first into: [ :commonSet :relativeCoordinates| commonSet intersection: relativeCoordinates  ].
	
 
	^ result