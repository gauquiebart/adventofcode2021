tests
testPuzzleA

	self
		assert: (Day16PacketDecoder sumOfVersionNumbers:
				 (Day16PacketDecoder decode: (self fromHexToBinary: self puzzleInput)))
		equals: 875.