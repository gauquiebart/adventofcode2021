converting
asFourDigitSolvers: aCollection 
	 ^ aCollection collect: [ :aRawInput | 
		                    | splitted |
		                    splitted := aRawInput splitOn: #( | ).
		                    Day08FourDigitDisplaySolver new
			                    initUniqueSignalPatterns: (splitted at: 1)
			                    andOutputValues: (splitted at: 2) ]