tests
testEnhanceImage

	| imageEnhancementAlgorithm inputImage enhancedInputImage expectedEnhancedImageInput |
	imageEnhancementAlgorithm := self imageEnhancementAlgorithmTestInput.
	inputImage := AOCDay20TrenchMap
		              parseImageInput: self imageInputTestInput
		              withEnhancement: imageEnhancementAlgorithm.

	enhancedInputImage := inputImage enhance.
	expectedEnhancedImageInput := AOCDay20TrenchMap
		                              parseImageInput:
		                              self
			                              imageInputAfterFirstEnhancementTestInput
		                              withEnhancement:
		                              imageEnhancementAlgorithm.
	self
		assert: enhancedInputImage numberOfLightSpots
		equals: expectedEnhancedImageInput numberOfLightSpots.

	self
		assert: enhancedInputImage imageLines asArray
		equals: expectedEnhancedImageInput imageLines asArray