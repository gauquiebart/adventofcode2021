tests
testPuzzleB

	| imageEnhancementAlgorithm inputImage |
	imageEnhancementAlgorithm := self imageEnhancementAlgorithmPuzzleInput.

	inputImage := AOCDay20TrenchMap
		              parseImageInput: self imageInputPuzzleInput
		              withEnhancement: imageEnhancementAlgorithm.

	1 to: 50 do: [ :index | inputImage := inputImage enhance ].

	self assert: inputImage numberOfLightSpots equals: 17628