tests
testPuzzleA

	| imageEnhancementAlgorithm inputImage |
	imageEnhancementAlgorithm := self
		                             imageEnhancementAlgorithmPuzzleInput.
	inputImage := AOCDay20TrenchMap
		              parseImageInput: self imageInputPuzzleInput
		              withEnhancement: imageEnhancementAlgorithm.
	self
		assert:
			inputImage enhance enhance numberOfLightSpots
		equals: 5682