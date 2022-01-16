accessing
numberOfLightSpots

	| count |
	count := 0.

	1 to: self numberOfRows do: [ :row | 
		1 to: self numberOfColumns do: [ :column | 
			((imageLines at: row) at: column) = $# ifTrue: [ 
				count := count + 1 ] ] ].

	^ count