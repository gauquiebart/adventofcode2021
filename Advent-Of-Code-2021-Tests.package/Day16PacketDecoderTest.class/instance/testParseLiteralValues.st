tests
testParseLiteralValues

	self
		assert:
		(Day16PacketDecoder decode: '110100010100101001000100100')
		equals: { 
				{ #literal . 6 . 4. 10 }.
				{ #literal . 2. 4. 20 } }