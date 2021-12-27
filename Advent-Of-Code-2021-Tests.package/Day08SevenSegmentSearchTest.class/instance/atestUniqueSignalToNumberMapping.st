tests
atestUniqueSignalToNumberMapping

	| signalsAndOutput |
	signalsAndOutput := self asFourDigitSolvers:
		                    #( #( acedgfb cdfbe gcdfa fbcad dab cefabd
		                          cdfgeb eafb cagedb ab | cdfeb fcadb cdfeb
		                          cdbaf ) ).

	self
		assert: (signalsAndOutput at: 1) uniqueSignalToNumberMapping
		equals: (Dictionary
				 newFromKeys:
				 #( acedgfb cdfbe gcdfa fbcad dab cefabd cdfgeb eafb cagedb ab )
				 andValues: #( 8 5 2 3 7 9 6 4 0 1 ))