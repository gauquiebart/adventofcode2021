solving
enhance

	| enhancedImage |
	enhancedImage := self growAllAround.

	1 to: enhancedImage numberOfRows do: [ :row | 
		1 to: enhancedImage numberOfColumns do: [ :column | 
			(enhancedImage imageLines at: row) at: column put: (self
					 enhancedBy: imageEnhancementAlgorithm
					 atRow: row - 1
					 andColumn: column - 1) ] ].

	^ enhancedImage