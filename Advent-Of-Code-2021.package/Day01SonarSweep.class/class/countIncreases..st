as yet unclassified
countIncreases: seaFloorDepths
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"	
	|count|
	count := 0.
	
	(self asPairs: seaFloorDepths) collect: [:pair |
		 (pair at: 2) > (pair at: 1)
		ifTrue:[count := count + 1] ].
		
	^ count