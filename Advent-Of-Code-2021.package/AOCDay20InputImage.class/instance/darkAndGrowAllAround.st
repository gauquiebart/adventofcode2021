private
darkAndGrowAllAround

	^ self class new
		  imageLines: ((1 to: self numberOfRows + 4) collect: [ :each | 
					   String streamContents: [ :stream | 
							   1 to: self numberOfColumns + 4 do: [ :each2 | 
								   stream nextPut: $. ] ] ]);
		  yourself