converting
decodeLiteral: aBinaryString atIndex: index

	| literalValueAsBitString literalBit updatedIndex |
	literalValueAsBitString := ''.
	updatedIndex := index.

	[ 
	literalBit := Number
		              readFrom:
		              (aBinaryString copyFrom: updatedIndex to: updatedIndex)
		              base: 2.
	updatedIndex := updatedIndex + 1.
	literalValueAsBitString := literalValueAsBitString
	                           ,
	                           (aBinaryString
		                            copyFrom: updatedIndex
		                            to: updatedIndex + 3).
	updatedIndex := updatedIndex + 4 ] doWhileTrue: [ literalBit = 1 ].

	updatedIndex := updatedIndex + (updatedIndex \\ 4).

	^ { 
		  (Number readFrom: literalValueAsBitString base: 2).
		  updatedIndex }