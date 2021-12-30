private - solving
findAllPathsFrom: caveA to: caveB withPathSoFar: pathSoFar

	caveA = caveB ifTrue: [ ^ { { caveB } } ].
	(pathSoFar anySatisfy: [ :each | 
		 caveA = each and: (caveA allSatisfy: [ :char | char isLowercase ]) ]) 
		ifTrue: [ ^ {  } ].

	^ (self connectionsTo: caveA) flatCollect: [ :conn | 
		  | pathSoFarIncludingCaveA allSubPaths |
		  pathSoFarIncludingCaveA := pathSoFar copy
			                             add: caveA;
			                             yourself.
		  allSubPaths := (self
			                  findAllPathsFrom: conn
			                  to: caveB
			                  withPathSoFar: pathSoFarIncludingCaveA) reject: [ 
			                 :each | each isEmpty ].
		  allSubPaths collect: [ :aSubPath | 
			  OrderedCollection new
				  add: caveA;
				  addAll: aSubPath;
				  asArray ] ]