solving - private
reduceAndSplitOnce: aNumber

	| explodedNumber |
	explodedNumber := self explodeOnce: aNumber.

	^ explodedNumber = aNumber
		  ifTrue: [ self splitOnce: explodedNumber ]
		  ifFalse: [ explodedNumber ]