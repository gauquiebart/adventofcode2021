converting
decodeLengthOfSubPackets: aBinaryString atIndex: index 
	^ Number
		  readFrom: (aBinaryString copyFrom: index to: index + 14)
		  base: 2