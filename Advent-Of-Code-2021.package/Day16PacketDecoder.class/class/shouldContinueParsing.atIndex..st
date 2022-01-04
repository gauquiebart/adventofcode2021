converting
shouldContinueParsing: aBinaryString atIndex: index

	index > aBinaryString size ifTrue: [ ^ false ].
	(self decodeNumber: aBinaryString atIndex: index) = 0 ifTrue: [ ^ false ].
	^ true