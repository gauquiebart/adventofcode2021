tests
testAdvanceStepByStep

	| grid testInput |
	testInput := self aTestInput.
	grid := DumboOctopusGrid new gridOfEnergyLevels: testInput.

	grid advanceStep: 1.
	self assert: grid flashes equals: 0.
	self assert: grid asString equals: '6594254334
3856965822
6375667284
7252447257
7468496589
5278635756
3287952832
7993992245
5957959665
6394862637'.

	grid advanceStep: 2.
	self assert: grid flashes equals: 35.
	self assert: grid asString equals: '8807476555
5089087054
8597889608
8485769600
8700908800
6600088989
6800005943
0000007456
9000000876
8700006848'