private-solving
allCoordinates

	| result |
	result := OrderedCollection new.

	1 to: self maxX do: [ :x | 
		1 to: self maxY do: [ :y | 
			result add: x @ y]].
	
	^ result