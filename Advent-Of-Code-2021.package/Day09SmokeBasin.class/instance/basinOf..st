private-solving
basinOf: aLowPoint

	| basinSize basin |
	basinSize := 0.
	basin := Set newFrom: { aLowPoint }.

	[ basin size > basinSize ] whileTrue: [ 
		basinSize := basin size.
		basin := basin flatCollectAsSet: [ :coord | 
			         self directBasinAround: coord ] ].
	
	^ basin