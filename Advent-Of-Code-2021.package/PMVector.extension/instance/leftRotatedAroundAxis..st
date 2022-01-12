*Advent-Of-Code-2021
leftRotatedAroundAxis: anAxisNumber
	|elementVector rotationMatrix| 
	rotationMatrix := PMSymmetricMatrix identity: 4.
	anAxisNumber = 1 ifTrue: [ 
		rotationMatrix at: 2 at: 2 put: 0.
		rotationMatrix at: 3 at: 3 put: 0.
		rotationMatrix at: 2 at: 3 put: -1.
		rotationMatrix at: 3 at: 2 put: 1].
	anAxisNumber = 2 ifTrue: [ 
		rotationMatrix at: 1 at: 1 put: 0.
		rotationMatrix at: 3 at: 3 put: 0.
		rotationMatrix at: 3 at: 1 put: -1.
		rotationMatrix at: 1 at: 3 put: 1].	
	anAxisNumber = 3 ifTrue: [ 
		rotationMatrix at: 1 at: 1 put: 0.
		rotationMatrix at: 2 at: 2 put: 0.
		rotationMatrix at: 1 at: 2 put: -1.
		rotationMatrix at: 2 at: 1 put: 1].	

	elementVector := self class ones: (self size + 1).
	self doWithIndex: [ :each :index | elementVector at: index put: each].
	 
	^ (rotationMatrix * elementVector) asArray allButLast asPMVector 