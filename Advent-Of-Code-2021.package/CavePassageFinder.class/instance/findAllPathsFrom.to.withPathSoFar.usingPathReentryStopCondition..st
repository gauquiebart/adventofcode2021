private - solving
findAllPathsFrom: caveA to: caveB withPathSoFar: pathSoFar usingPathReentryStopCondition: aPathReentryStopCondition

	caveA = caveB ifTrue: [ ^ { { caveB } } ].
	(aPathReentryStopCondition value: pathSoFar value: caveA) ifTrue: [ 
		^ {  } ].

	^ (self connectionsTo: caveA) flatCollect: [ :conn | 
		  | pathSoFarIncludingCaveA allSubPaths |
		  pathSoFarIncludingCaveA := pathSoFar copy
			                             add: caveA;
			                             yourself.
		  allSubPaths := (self
			                  findAllPathsFrom: conn
			                  to: caveB
			                  withPathSoFar: pathSoFarIncludingCaveA
			usingPathReentryStopCondition: aPathReentryStopCondition ) reject: [ 
			                 :each | each isEmpty ].
		  allSubPaths collect: [ :aSubPath | 
			  OrderedCollection new
				  add: caveA;
				  addAll: aSubPath;
				  asArray ] ]