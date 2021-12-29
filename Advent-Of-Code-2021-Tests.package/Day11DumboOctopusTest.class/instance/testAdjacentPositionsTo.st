tests
testAdjacentPositionsTo

	| grid simpleTestInput |
	simpleTestInput := #( 1 1 1 1 1 1 9 9 9 1 1 9 1 9 1 1 9 9 9 1 1 1 1 1
	                      1 ) splitAt: 5.
	grid := DumboOctopusGrid new gridOfEnergyLevels: simpleTestInput.

	self
		assert: (grid adjacentPositionsTo: 1 @ 1)
		equals: (OrderedCollection new
				 add: 2 @ 1;
				 add: 2 @ 2;
				 add: 1 @ 2;
				 yourself).

	self
		assert: (grid adjacentPositionsTo: 2 @ 1)
		equals: (OrderedCollection new
				 add: 3 @ 1;
				 add: 3 @ 2;
				 add: 2 @ 2;
				 add: 1 @ 2;
				 add: 1 @ 1;
				 yourself).

	self
		assert: (grid adjacentPositionsTo: 5 @ 1)
		equals: (OrderedCollection new
				 add: 5 @ 2;
				 add: 4 @ 2;
				 add: 4 @ 1;
				 yourself).

	self
		assert: (grid adjacentPositionsTo: 1 @ 2)
		equals: (OrderedCollection new
				 add: 2 @ 2;
				 add: 2 @ 3;
				 add: 1 @ 3;
				 add: 1 @ 1;
				 add: 2 @ 1;
				 yourself).

	self
		assert: (grid adjacentPositionsTo: 5 @ 1)
		equals: (OrderedCollection new
				 add: 5 @ 2;
				 add: 4 @ 2;
				 add: 4 @ 1;
				 yourself).

	self
		assert: (grid adjacentPositionsTo: 5 @ 2)
		equals: (OrderedCollection new
				 add: 5 @ 3;
				 add: 4 @ 3;
				 add: 4 @ 2;
				 add: 4 @ 1;
				 add: 5 @ 1;
				 yourself).				

	self
		assert: (grid adjacentPositionsTo: 5 @ 5)
		equals: (OrderedCollection new
				 add: 4 @ 5;
				 add: 4 @ 4;
				 add: 5 @ 4;
				 yourself).

	self
		assert: (grid adjacentPositionsTo: 3 @ 3)
		equals: (OrderedCollection new
				 add: 4 @ 3;
				 add: 4 @ 4;
				 add: 3 @ 4;
				 add: 2 @ 4;
				 add: 2 @ 3;
				 add: 2 @ 2;
				 add: 3 @ 2;
				 add: 4 @ 2;
				 yourself)