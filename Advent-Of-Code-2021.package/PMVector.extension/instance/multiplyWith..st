*Advent-Of-Code-2021
multiplyWith: aMatrix
	|elementVector| 

	elementVector := self class ones: (self size + 1).
	self doWithIndex: [ :each :index | elementVector at: index put: each]. 
	 
	^  (aMatrix * elementVector) allButLast