tests
testParseOperatorPacketByLengthTypeID1

	self
		assert:
		(Day16PacketDecoder decode: (self fromHexToBinary: 'EE00D40C823060'))
		equals: { { 
				#operator.
				7.
				3.
				{ 
					{ #literal . 2. 4. 1 } .
					{ #literal . 4. 4. 2 } . 
					{ #literal . 1. 4. 3 } } } }