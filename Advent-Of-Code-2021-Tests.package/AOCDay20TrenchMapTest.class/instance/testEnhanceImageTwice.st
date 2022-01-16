tests
testEnhanceImageTwice

	| imageEnhancementAlgorithm inputImage enhancedInputImage expectedEnhancedImageTwiceInput |
	imageEnhancementAlgorithm := self imageEnhancementAlgorithmTestInput.

	inputImage := AOCDay20TrenchMap
		              parseImageInput: self imageInputTestInput
		              withEnhancement: imageEnhancementAlgorithm.

	enhancedInputImage := inputImage enhance.
	expectedEnhancedImageTwiceInput := AOCDay20TrenchMap
		                                   parseImageInput:
		                                   self
			                                   imageInputAfterSecondEnhancementTestInput
		                                   withEnhancement:
		                                   imageEnhancementAlgorithm.
	self
		assert: enhancedInputImage enhance numberOfLightSpots
		equals: expectedEnhancedImageTwiceInput numberOfLightSpots.

	self assert: enhancedInputImage enhance numberOfLightSpots equals: 35

	"self
		assert:
			enhancedInputImage enhance	imageLines asArray
		equals: expectedEnhancedImageTwiceInput imageLines asArray"