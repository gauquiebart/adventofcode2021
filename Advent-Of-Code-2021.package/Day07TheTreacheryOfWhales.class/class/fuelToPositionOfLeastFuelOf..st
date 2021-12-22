as yet unclassified
fuelToPositionOfLeastFuelOf: aCollectionOfHorizontalCrabPositions
	^ ((0 to: aCollectionOfHorizontalCrabPositions max) collect: [ :aPositionToVerify | 
		(aCollectionOfHorizontalCrabPositions collect: [ :aCrapPosition |
			(aCrapPosition - aPositionToVerify) abs]) sum])
		min.
