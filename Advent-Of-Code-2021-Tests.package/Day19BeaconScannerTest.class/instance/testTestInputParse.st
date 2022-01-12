tests
testTestInputParse

	self
		assert: ((Day19BeaconScanner parseRawInput: (self aRawTestInput )) size)
		equals: 5.