helper
fromHexToBinary: aString

	^ ((Number readFrom: aString base: 16) printStringBase: 2)
		padLeftTo: aString size * 4 with: $0