tests
testCanRollDeterministic100SidedDie

	| die |
	die := AOCDeterministic100SidedDie new.

	1 to: 10 do: [ :ignore | 
		1 to: 100 do: [ :index | self assert: die roll equals: index ] ]