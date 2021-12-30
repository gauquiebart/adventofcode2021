helper
parseInsertionRules: rawPairInsertionRules

	^ (rawPairInsertionRules splitAt: 3) collect: [ :each | 
			|input replacement|
			input := (each at: 1) asString.
			replacement := (input at: 1) asString , ((each at: 3) asString) , (input at: 2) asString.
		  Association
			  key: input
			  value: replacement ]