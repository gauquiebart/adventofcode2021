private-solving
directBasinAround: aPosition

	^ ((self neighboursOf: aPosition) reject: [ :coord | 
			   (self at: coord) = 9 ]) asSet
		  add: aPosition;
		  yourself