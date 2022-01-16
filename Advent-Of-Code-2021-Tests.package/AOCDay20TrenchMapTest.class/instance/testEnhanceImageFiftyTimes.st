tests
testEnhanceImageFiftyTimes

	| imageEnhancementAlgorithm inputImage |
	imageEnhancementAlgorithm := self imageEnhancementAlgorithmTestInput.

	inputImage := AOCDay20TrenchMap
		              parseImageInput: self imageInputTestInput
		              withEnhancement: imageEnhancementAlgorithm.

	1 to: 50 do: [ :index | inputImage := inputImage enhance ].

	self assert: inputImage numberOfLightSpots equals: 3351