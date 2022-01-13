tests
testTestInputParse

	self
		assert: ((AOCDay19 parseRawInput: (self aRawTestInput )) size)
		equals: 5.