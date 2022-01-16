private
growAllAround

	| newInfiniteCharacter |
	newInfiniteCharacter := infiniteCharacter = $.
		                        ifTrue: [ imageEnhancementAlgorithm at: 1 ]
		                        ifFalse: [ imageEnhancementAlgorithm at: 9 ].

	^ self class new
		  imageLines: ((1 to: self numberOfRows + 8) collect: [ :each | 
					   String streamContents: [ :stream | 
							   1 to: self numberOfColumns + 8 do: [ :each2 | 
								   stream nextPut: newInfiniteCharacter ] ] ]);
		  enhancement: imageEnhancementAlgorithm;
		  infiniteCharacter: newInfiniteCharacter yourself