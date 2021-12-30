solving
findAllPathsSmallCavesAtMostOnceExceptOneSmallCaveTwice

	^ self
		  findAllPathsFrom: #start
		  to: #end
		  withPathSoFar: OrderedCollection new
		  usingPathReentryStopCondition: [ :pathSoFar :caveToAdd | 
			  caveToAdd isSmallCave
				  ifFalse: [ false ]
				  ifTrue: [ 
					  | smallCaveOccurencesInPathSoFar oneSmallCaveAlreadyTwiceInPath |
					  smallCaveOccurencesInPathSoFar := ((pathSoFar select:
						                                      #isSmallCave) groupedBy: [ 
						                                     :each | each ]) collect:
						                                    #size.
					  oneSmallCaveAlreadyTwiceInPath := smallCaveOccurencesInPathSoFar 
						                                    select: [ :each | each = 2 ].

					  smallCaveOccurencesInPathSoFar
						  associationAt: caveToAdd
						  ifPresent: [ :association | 
							  association key = #start or:
								  (association key = #end or: (oneSmallCaveAlreadyTwiceInPath
										    isNotEmpty )) ]
						  ifAbsent: [ false ] ] ]