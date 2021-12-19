as yet unclassified
markColumnsWith: anInteger 
	columns doWithIndex: [:column :columnIndex| 	
			|indexWithinColumn|
			indexWithinColumn := column indexOf: anInteger.
			(indexWithinColumn > 0) ifTrue: [ (markedColumns at: columnIndex) at: indexWithinColumn put: true ]]
