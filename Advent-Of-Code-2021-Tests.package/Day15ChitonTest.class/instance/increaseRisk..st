helper
increaseRisk: aString 
	 ^aString collect: [ :each | 
		Character digitValue: (each digitValue + 1 \\ 10 max: 1) ].