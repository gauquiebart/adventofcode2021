solving - private
reduce: aNumber

	| beforeReduction |
	beforeReduction := aNumber.

	1 to: 1000 do: [ :index | 
		| afterReduction |
		afterReduction := self reduceAndSplitOnce: beforeReduction.
		beforeReduction = afterReduction
			ifTrue: [ ^ beforeReduction ]
			ifFalse: [ beforeReduction := afterReduction ] ].

	^ nil