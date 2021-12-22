tests
testCountNumberOfTimesEasyDigitsAppear

	| signalsAndOutput |
	signalsAndOutput := self asFourDigitSolvers: self aTestInput..

	self
		assert: (Day08FourDigitDisplaySolver
				 outputValuesForDigits: #( 1 4 7 8 )
				 of: signalsAndOutput) size
		equals: 26