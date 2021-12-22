as yet unclassified
incrementalFuelToPositionOfLeastFuelOf: aCollectionOfHorizontalCrabPositions 
	^ ((0 to: aCollectionOfHorizontalCrabPositions max) collect: [   :aPositionToVerify | 
			((aCollectionOfHorizontalCrabPositions collect: [ :aCrapPosition | 
			    (aCrapPosition - aPositionToVerify) abs ])
			collect: [ :aPositionChange | (1 to: aPositionChange) sum]) sum
			])
		 min