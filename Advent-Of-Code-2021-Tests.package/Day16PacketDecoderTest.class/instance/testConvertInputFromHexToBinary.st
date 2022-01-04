tests
testConvertInputFromHexToBinary

	| testInput |
	testInput := 'D2FE28'.

	self
		assert: (self fromHexToBinary: testInput)
		equals: '110100101111111000101000'