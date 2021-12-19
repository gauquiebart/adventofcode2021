as yet unclassified
boardNumbers: aCollectionOfBoardNumbers 
	|unmarkedRowOrColumnTemplate|
	
	unmarkedRowOrColumnTemplate := (1 to: 5) collect: [:index| false ].
	
	rows := aCollectionOfBoardNumbers splitAt: 5.
	markedRows := (1 to: 5) collect: [:index| unmarkedRowOrColumnTemplate copy ].
	
	columns := (1 to: 5) collect: [:columnIndex | 
		(1 to: 5) collect: [:rowIndex | (rows at: rowIndex) at: columnIndex ]].
	markedColumns := (1 to: 5) collect: [ :index | unmarkedRowOrColumnTemplate copy ].