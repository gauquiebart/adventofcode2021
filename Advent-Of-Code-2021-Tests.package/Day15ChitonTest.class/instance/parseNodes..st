helper
parseNodes: rawInput
	|numberOfColumns numberOfRows|
	numberOfColumns := (rawInput at: 1) asString size. 
	numberOfRows := rawInput size.
	
	
	^ (1 to: numberOfColumns) flatCollect: [:x | 
		(1 to: numberOfRows) collect: [:y |
			y @ x ]]