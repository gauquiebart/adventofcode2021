printing
printOn: aStream

	1 to: self gridSize do: [ :x | 
		1 to: self gridSize do: [ :y | 
		(grid at: x @ y) energyLevel printOn: aStream ].
		x = self gridSize ifFalse: [ aStream cr ] ]