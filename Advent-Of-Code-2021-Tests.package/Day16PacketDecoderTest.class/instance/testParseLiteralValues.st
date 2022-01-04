tests
testParseLiteralValues

	self
		assert:
		(Day16PacketDecoder decode: '110100010100101001000100100')
		equals: { 
				{ 6. 4. 10 }.
				{ 2. 4. 20 } }