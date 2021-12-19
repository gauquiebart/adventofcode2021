as yet unclassified
sumUnmarkedNumbers
	|sum|
	
	sum := 0.
	markedRows doWithIndex: [ :markedRow :rowIndex | 
		markedRow doWithIndex: [ :positionMarked :indexWithinRow |
			positionMarked ifFalse: [ sum:= sum + ((rows at: rowIndex) at: indexWithinRow)  ]]].
	
 ^ sum 