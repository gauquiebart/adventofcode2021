private
darkAndGrowAllAround

	^ self class new
		  imageLines: ((1 to: self numberOfRows + 2) collect: [ :each | 
					   ByteString fromByteArray: (Array streamContents: [ :stream | 
									    1 to: self numberOfColumns + 2 do: [ :each2 | 
										    stream nextPut: $. ] ]) ]);
		  yourself