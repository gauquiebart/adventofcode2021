as yet unclassified
countIncreases: seaFloorDepths
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"	
	|count|
	count := 0.
		
	2 to: seaFloorDepths size do: [:index |
		|valueatindexmin1 valueatindex|
		valueatindexmin1 := seaFloorDepths at: index - 1.
		valueatindex := seaFloorDepths at: index.
		valueatindex > valueatindexmin1 
			ifTrue:[count := count + 1]
		].
	
	^ count