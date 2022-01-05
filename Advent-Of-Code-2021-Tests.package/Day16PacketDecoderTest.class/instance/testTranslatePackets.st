tests
testTranslatePackets

	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk:
							  (Day16PacketDecoder decode:
									   (self fromHexToBinary: 'C200B40A82')));
				 evaluate) first
		equals: 3.

	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk:
							  (Day16PacketDecoder decode:
									   (self fromHexToBinary: '04005AC33890')));
				 evaluate) first
		equals: 54.

	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk:
							  (Day16PacketDecoder decode:
									   (self fromHexToBinary: '880086C3E88112')));
				 evaluate) first
		equals: 7.

	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk:
							  (Day16PacketDecoder decode:
									   (self fromHexToBinary: 'CE00C43D881120')));
				 evaluate) first
		equals: 9.

	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk:
							  (Day16PacketDecoder decode:
									   (self fromHexToBinary: 'D8005AC2A8F0')));
				 evaluate) first
		equals: 1.


	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk:
							  (Day16PacketDecoder decode:
									   (self fromHexToBinary: 'F600BC2D8F')));
				 evaluate) first
		equals: 0.


	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk:
							  (Day16PacketDecoder decode:
									   (self fromHexToBinary: '9C005AC2F8F0')));
				 evaluate) first
		equals: 0.

	self
		assert: (OpalCompiler new
				 source:
					 (Day16PacketDecoder translateToSmalltalk:
							  (Day16PacketDecoder decode:
									   (self fromHexToBinary: '9C0141080250320F1802104A08')));
				 evaluate) first
		equals: 1