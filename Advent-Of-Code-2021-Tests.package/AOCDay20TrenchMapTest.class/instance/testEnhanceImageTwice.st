tests
testEnhanceImageTwice

	| imageEnhancementAlgorithm inputImage enhancedInputImage expectedEnhancedImageTwiceInput |
	imageEnhancementAlgorithm := self imageEnhancementAlgorithmTestInput.
	inputImage := AOCDay20TrenchMap parseImageInput:
		              self imageInputTestInput.

	enhancedInputImage := inputImage enhanceWith:
		                      imageEnhancementAlgorithm.
	expectedEnhancedImageTwiceInput := AOCDay20TrenchMap 
		                                   parseImageInput:
		                                   self
			                                   imageInputAfterSecondEnhancementTestInput.
	self
		assert:
			(enhancedInputImage enhanceWith: imageEnhancementAlgorithm)
				imageLines asArray
		equals: expectedEnhancedImageTwiceInput imageLines asArray.

	self
		assert: (enhancedInputImage enhanceWith: imageEnhancementAlgorithm)
				numberOfLightSpots
		equals: expectedEnhancedImageTwiceInput numberOfLightSpots.

	self
		assert: (enhancedInputImage enhanceWith: imageEnhancementAlgorithm)
				numberOfLightSpots
		equals: 35