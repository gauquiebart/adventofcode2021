accessing
roll

	| result |
	result := value.
	value := value \\ 100 + 1.
	numberOfRolls := numberOfRolls + 1.

	^ result