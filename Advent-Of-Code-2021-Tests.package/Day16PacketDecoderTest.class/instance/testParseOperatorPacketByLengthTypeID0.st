tests
testParseOperatorPacketByLengthTypeID0

	self
		assert:
		(Day16PacketDecoder decode: (self fromHexToBinary: '38006F45291200'))
		equals: { { 
				#operator.
				1.
				6.
				{ 
					{ #literal. 6. 4. 10 }.
					{ #literal. 2. 4. 20 } } } }