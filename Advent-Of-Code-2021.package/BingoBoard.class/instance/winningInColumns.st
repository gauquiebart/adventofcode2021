as yet unclassified
winningInColumns
	^ markedColumns anySatisfy: [:aMarkedColumn | aMarkedColumn allSatisfy: [:aValue| aValue  ] ]