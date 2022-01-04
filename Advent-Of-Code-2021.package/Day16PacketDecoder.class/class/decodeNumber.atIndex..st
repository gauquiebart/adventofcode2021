converting
decodeNumber: aBinaryString atIndex: index

	^ Number
		  readFrom: (aBinaryString copyFrom: index to: aBinaryString size)
		  base: 2