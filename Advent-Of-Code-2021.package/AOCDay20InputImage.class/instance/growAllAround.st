private
growAllAround

	| newInfiniteCharacter |
	newInfiniteCharacter := infiniteCharacter = $.
		                        ifTrue: [ imageEnhancementAlgorithm first ]
		                        ifFalse: [ imageEnhancementAlgorithm last ].

	^ self class new
		  imageLines: ((1 to: self numberOfRows + 8) collect: [ :each | 
					   String streamContents: [ :stream | 
							   1 to: self numberOfColumns + 8 do: [ :each2 | 
								   stream nextPut: newInfiniteCharacter ] ] ]);
		  enhancement: imageEnhancementAlgorithm;
		  infiniteCharacter: newInfiniteCharacter yourself