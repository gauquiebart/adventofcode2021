private
growAllAround

	| newInfiniteCharacter |
	newInfiniteCharacter := infiniteCharacter = $.
		                        ifTrue: [ imageEnhancementAlgorithm first ]
		                        ifFalse: [ imageEnhancementAlgorithm last ].

	^ self class new
		  imageLines: ((1 to: self numberOfRows + 2) collect: [ :each | 
					   String streamContents: [ :stream | 
							   1 to: self numberOfColumns + 2 do: [ :each2 | 
								   stream nextPut: newInfiniteCharacter ] ] ]);
		  enhancement: imageEnhancementAlgorithm;
		  infiniteCharacter: newInfiniteCharacter yourself