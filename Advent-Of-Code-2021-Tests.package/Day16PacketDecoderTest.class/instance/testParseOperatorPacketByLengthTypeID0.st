tests
testParseOperatorPacketByLengthTypeID0

	| testInput |
	testInput := '38006F45291200'.

	self
		assert:
		(Day16PacketDecoder decode: (self fromHexToBinary: testInput))
		equals: { { 
				1.
				6.
				{ 
					{ 6. 4. 10 } .
					{ 2. 4. 20 } } } }