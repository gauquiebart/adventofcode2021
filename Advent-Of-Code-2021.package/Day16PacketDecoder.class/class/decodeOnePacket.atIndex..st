converting
decodeOnePacket: aBinaryString atIndex: index

	| updatedIndex packetVersion packetTypeId result |
	updatedIndex := index.
	packetVersion := self
		                 decodePacketVersion: aBinaryString
		                 atIndex: updatedIndex.
	updatedIndex := updatedIndex + 3.

	packetTypeId := self
		                decodePacketType: aBinaryString
		                atIndex: updatedIndex.
	updatedIndex := updatedIndex + 3.

	packetTypeId = 4
		ifTrue: [ 
			| literalAndIndexProgress |
			literalAndIndexProgress := self
				                           decodeLiteral: aBinaryString
				                           atIndex: updatedIndex.
			updatedIndex := literalAndIndexProgress at: 2.

			result := { 
							#literal . 
				          packetVersion.
				          packetTypeId.
				          (literalAndIndexProgress at: 1) } ]
		ifFalse: [ 
			| lengthTypeID subPackets |
			lengthTypeID := self
				                decodeLengthTypeID: aBinaryString
				                atIndex: updatedIndex.
			updatedIndex := updatedIndex + 1.
			lengthTypeID = 0
				ifTrue: [ 
					| lengthOfSubPackets |
					lengthOfSubPackets := self
						                      decodeLengthOfSubPackets: aBinaryString
						                      atIndex: updatedIndex.
					updatedIndex := updatedIndex + 15.

					subPackets := self decode: (aBinaryString
							               copyFrom: updatedIndex
							               to: updatedIndex + lengthOfSubPackets - 1).
					updatedIndex := updatedIndex + lengthOfSubPackets ]
				ifFalse: [ 
					| numberOfSubPackets |
					numberOfSubPackets := self
						                      decodeNumberOfSubPackets: aBinaryString
						                      atIndex: updatedIndex.
					updatedIndex := updatedIndex + 11.

					subPackets := OrderedCollection new.
					1 to: numberOfSubPackets do: [ :each | 
						| subPacketAndIndex |
						subPacketAndIndex := self
							                     decodeOnePacket: aBinaryString
							                     atIndex: updatedIndex.
						subPackets add: (subPacketAndIndex at: 1).
						updatedIndex := subPacketAndIndex at: 2 ] ].
			result := { 
							#operator.
				          packetVersion.
				          packetTypeId.
				          subPackets asArray } ].

	^ { 
		  result.
		  updatedIndex }