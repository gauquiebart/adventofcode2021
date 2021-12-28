private-solving
lowPoints

	^ (self allCoordinates collect: [ :coord | 
		   | height neighbours |
		   height := self at: coord.
		   neighbours := (self neighboursOf: coord) collect: [ :neighbour | 
			                 self at: neighbour ].

		   height < neighbours min ifTrue: [ coord ] ]) reject: #isNil