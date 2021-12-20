*Advent-Of-Code-2021
asPoints
	| direction numberOfSteps xIncrease yIncrease xSweep ySweep result |
	result := OrderedCollection new.
	direction := self direction.

	numberOfSteps := direction x max: direction y.
	xIncrease := direction x / numberOfSteps.
	yIncrease := direction y / numberOfSteps.

	xSweep := start x.
	ySweep := start y.
	1 to: numberOfSteps + 1 do: [ :index | 
		result add: xSweep @ ySweep.
		xSweep := xSweep + xIncrease.
		ySweep := ySweep + yIncrease ].

	^ result