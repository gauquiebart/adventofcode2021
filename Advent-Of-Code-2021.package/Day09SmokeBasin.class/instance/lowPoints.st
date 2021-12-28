private-solving
lowPoints

	^ (self allCoordinates collect: [ :coord | 
		  | height neighbours |
		  height := self at: coord.
		  neighbours := (self neighboursOf: coord) collect: [ :each | 
			                self at: each ].

		  height < neighbours min ifTrue: [ coord ] ])
	reject: #isNil