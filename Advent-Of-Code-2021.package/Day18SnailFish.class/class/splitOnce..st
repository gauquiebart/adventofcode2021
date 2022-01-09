solving - private
splitOnce: aNumber

	| xBeforeSplit xAfterSplit yBeforeSplit yAfterSplit xSplitted |
	aNumber isNumber ifTrue: [ 
		^ aNumber >= 10
			  ifTrue: [ 
				  { 
					  (aNumber // 2).
					  (aNumber // 2 + (aNumber \\ 2)) } ]
			  ifFalse: aNumber ].

	xBeforeSplit := aNumber at: 1.
	xAfterSplit := self splitOnce: xBeforeSplit.

	xSplitted := xBeforeSplit ~= xAfterSplit.

	yBeforeSplit := aNumber at: 2.
	yAfterSplit := xSplitted
		               ifTrue: yBeforeSplit
		               ifFalse: [ self splitOnce: yBeforeSplit ].
	^ { 
		  xAfterSplit.
		  yAfterSplit }