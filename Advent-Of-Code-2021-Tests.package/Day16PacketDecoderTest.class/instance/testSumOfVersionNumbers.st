tests
testSumOfVersionNumbers

	self
		assert: (Day16PacketDecoder sumOfVersionNumbers:
				 (Day16PacketDecoder decode: (self fromHexToBinary: 'D2FE28')))
		equals: 6.

	self
		assert: (Day16PacketDecoder sumOfVersionNumbers:
				 (Day16PacketDecoder decode: '110100010100101001000100100'))
		equals: 8.

	self
		assert: (Day16PacketDecoder sumOfVersionNumbers:
				 (Day16PacketDecoder decode:
					  (self fromHexToBinary: '38006F45291200')))
		equals: 9.

	self
		assert:
			(Day16PacketDecoder sumOfVersionNumbers:
				 (Day16PacketDecoder decode:
					  (self fromHexToBinary: '8A004A801A8002F478')))
		equals: 16.
		
	self
		assert:
			(Day16PacketDecoder sumOfVersionNumbers:
				 (Day16PacketDecoder decode:
					  (self fromHexToBinary: '620080001611562C8802118E34')))
		equals: 12.
		
	self
		assert:
			(Day16PacketDecoder sumOfVersionNumbers:
				 (Day16PacketDecoder decode:
					  (self fromHexToBinary: 'C0015000016115A2E0802F182340')))
		equals: 23.
		
	self
		assert:
			(Day16PacketDecoder sumOfVersionNumbers:
				 (Day16PacketDecoder decode:
					  (self fromHexToBinary: 'A0016C880162017C3686B18A3D4780')))
		equals: 31.