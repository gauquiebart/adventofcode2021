solving
parseRawInput: aRawInputStringOfScannerAndBeaconLocations

	^ (((aRawInputStringOfScannerAndBeaconLocations splitOn: Character cr) 
		    splitOn: [ :each | each isEmpty ]) collect: [ :eachScanner | 
		   (eachScanner allButFirst collect: [ :beacon | 
			    | coordinatesForBeacon |
			    coordinatesForBeacon := beacon splitOn: ','.
			    (Number readFrom: (coordinatesForBeacon at: 1))
			    @ (Number readFrom: (coordinatesForBeacon at: 2))
			    @ (Number readFrom: (coordinatesForBeacon at: 3)) ]) asArray ])
		  asArray