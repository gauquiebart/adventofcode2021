*Advent-Of-Code-2021
whenFirstGreaterThanSecondThenOneElseZero

	^ (self at: 1) > (self at: 2)
		  ifTrue: 1
		  ifFalse: 0