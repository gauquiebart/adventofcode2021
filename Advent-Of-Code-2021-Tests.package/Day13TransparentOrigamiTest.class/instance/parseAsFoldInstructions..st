helper
parseAsFoldInstructions: rawInput

	^( (rawInput splitOn: #(fold along))
	reject: #isEmpty)
	collect: [ :each | Association key: each first value: each third  ]