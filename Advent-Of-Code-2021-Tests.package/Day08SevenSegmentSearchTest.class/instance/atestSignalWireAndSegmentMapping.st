tests
atestSignalWireAndSegmentMapping

	| signalsAndOutput |
	signalsAndOutput := self asFourDigitSolvers:
		                    #( #( acedgfb cdfbe gcdfa fbcad dab cefabd
		                          cdfgeb eafb cagedb ab | cdfeb fcadb cdfeb
		                          cdbaf ) ).

	self
		assert: (signalsAndOutput at: 1) solveMapping
		equals: (Dictionary
				 newFromKeys: #( d e a f g b c )
				 andValues: #( a b c d e f g ))