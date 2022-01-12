solving
findLocationsOfBeacons: aCollectionOfScanners

	| scannerZero scannerCombinations beaconsWithAbsolutePositions transformation|
	scannerZero := aCollectionOfScanners first.
	scannerCombinations := Array streamContents: [ :stream | 
		                       aCollectionOfScanners
			                       combinations: 2
			                       atATimeDo: [ :each | 
			                       stream nextPut: each copy ] ].
	beaconsWithAbsolutePositions := Set new.
	
	beaconsWithAbsolutePositions addAll: scannerZero.

	transformation := self findTransformationToScanner: (aCollectionOfScanners second) relativeTo: scannerZero.
	
	beaconsWithAbsolutePositions addAll: (
		aCollectionOfScanners second collect: [ :aBeacon |
			aBeacon + transformation]).

	^ beaconsWithAbsolutePositions