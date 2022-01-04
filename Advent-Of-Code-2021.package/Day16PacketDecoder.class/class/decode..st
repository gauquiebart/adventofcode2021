converting
decode: aBinaryString

	| index result |
	index := 1.
	result := OrderedCollection new.

	[ self shouldContinueParsing: aBinaryString atIndex: index ] 
		whileTrue: [ 
			| onePacketDecoded |
			onePacketDecoded := self
				                    decodeOnePacket: aBinaryString
				                    atIndex: index.
			result add: (onePacketDecoded at: 1).
			index := onePacketDecoded at: 2 ].

	^ result asArray