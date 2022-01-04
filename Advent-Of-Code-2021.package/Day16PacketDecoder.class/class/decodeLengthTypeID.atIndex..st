converting
decodeLengthTypeID: aBinaryString atIndex: index 
	^ Number
		  readFrom: (aBinaryString copyFrom: index to: index)
		  base: 2