converting
decodePacketType: aBinaryString atIndex: index

	^ Number
		  readFrom: (aBinaryString copyFrom: index to: index + 2)
		  base: 2