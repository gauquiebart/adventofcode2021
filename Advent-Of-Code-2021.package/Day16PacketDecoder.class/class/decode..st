converting
decode: aBinaryString

	| index result |
	index := 1.
	result := OrderedCollection new.

	[ self shouldContinueParsing: aBinaryString atIndex: index ] 
		whileTrue: [ 
			| packetVersion packetTypeId |
			packetVersion := self
				                 decodePacketVersion: aBinaryString
				                 atIndex: index.
			index := index + 3.

			packetTypeId := self decodePacketType: aBinaryString atIndex: index.
			index := index + 3.

			packetTypeId = 4
				ifTrue: [ 
					| literalAndIndexProgress |
					literalAndIndexProgress := self
						                           decodeLiteral: aBinaryString
						                           atIndex: index.
					index := literalAndIndexProgress at: 2.

					result add: { 
							packetVersion.
							packetTypeId.
							(literalAndIndexProgress at: 1) } ]
				ifFalse: [ 
					| lengthTypeID subPackets |
					lengthTypeID := self
						                decodeLengthTypeID: aBinaryString
						                atIndex: index.
					index := index + 1.
					lengthTypeID = 0 ifTrue: [ 
						| lengthOfSubPackets |
						lengthOfSubPackets := self
							                      decodeLengthOfSubPackets: aBinaryString
							                      atIndex: index.
						index := index + 15.

						subPackets := self decode:
							              (aBinaryString
								               copyFrom: index
								               to: index + lengthOfSubPackets - 1).
						index := index + lengthOfSubPackets ].
					result add: { 
							packetVersion.
							packetTypeId.
							subPackets } ] ].

	^ result asArray