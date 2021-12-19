as yet unclassified
markRowsWith: anInteger 
	rows doWithIndex: [:row :rowIndex| 	
			|indexWithinRow|
			indexWithinRow := row indexOf: anInteger.
			(indexWithinRow > 0) ifTrue: [ (markedRows at: rowIndex) at: indexWithinRow put: true ]]
