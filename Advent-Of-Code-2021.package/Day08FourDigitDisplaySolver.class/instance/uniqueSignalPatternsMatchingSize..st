as yet unclassified
uniqueSignalPatternsMatchingSize: patternSize

	^ uniqueSignalPatterns  select: [ :uniqueSignalPattern |
			uniqueSignalPattern size = patternSize ].