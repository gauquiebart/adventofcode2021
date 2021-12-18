as yet unclassified
bitMasks: length

	^ (1 to: length) collect: [ :index | 1 << (index - 1) ]