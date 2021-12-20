*Advent-Of-Code-2021
isPointOnLine: aPoint

	| direction numberOfSteps xIncrease yIncrease xSweep ySweep |
	aPoint x < start x ifTrue: [ ^ false ].
	aPoint x > end x ifTrue: [ ^ false ].
	aPoint y < start y ifTrue: [ ^ false ].
	aPoint y > end y ifTrue: [ ^ false ].

	direction := self direction.

	numberOfSteps := direction x max: direction y.
	xIncrease := direction x / numberOfSteps.
	yIncrease := direction y / numberOfSteps.

	xSweep := start x.
	ySweep := start y.
	1 to: numberOfSteps + 1 do: [ :index | 
		(aPoint x = xSweep and: aPoint y = ySweep) ifTrue: [ ^ true ].
		xSweep := xSweep + xIncrease.
		ySweep := ySweep + yIncrease ].

	^ false