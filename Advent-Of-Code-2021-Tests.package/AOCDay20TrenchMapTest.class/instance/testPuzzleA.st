tests
testPuzzleA

	| imageEnhancementAlgorithm inputImage |
	imageEnhancementAlgorithm := self imageEnhancementAlgorithmPuzzleInput.
	inputImage := AOCDay20TrenchMap parseImageInput:
		              self imageInputPuzzleInput.
	self
		assert:
			((inputImage enhanceWith: imageEnhancementAlgorithm) enhanceWith:
				 imageEnhancementAlgorithm) numberOfLightSpots
		equals: 6532