tests
testParseLiteralValue

	| testInput |
	testInput := 'D2FE28'.

	self
		assert:
		(Day16PacketDecoder decode: (self fromHexToBinary: testInput))
		equals: { { 6. 4. 2021 } }