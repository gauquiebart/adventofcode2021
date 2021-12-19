as yet unclassified
winningInRows
	^ markedRows anySatisfy: [ :aMarkedRow| aMarkedRow allSatisfy: [:aValue| aValue]]