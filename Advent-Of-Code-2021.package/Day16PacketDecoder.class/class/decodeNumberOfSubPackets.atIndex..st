converting
decodeNumberOfSubPackets: aBinaryString atIndex: index
	^ Number
		  readFrom: (aBinaryString copyFrom: index to: index + 10)
		  base: 2