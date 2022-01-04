tests
testParseLiteralValue

	self
		assert:
		(Day16PacketDecoder decode: (self fromHexToBinary: 'D2FE28'))
		equals: { { #literal . 6. 4. 2021 } }