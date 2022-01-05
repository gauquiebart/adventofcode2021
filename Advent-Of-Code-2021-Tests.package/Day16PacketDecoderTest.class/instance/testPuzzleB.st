tests
testPuzzleB

	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk:
							  (Day16PacketDecoder decode:
									   (self fromHexToBinary: self puzzleInput)));
				 evaluate) first
		equals: 1264857437203