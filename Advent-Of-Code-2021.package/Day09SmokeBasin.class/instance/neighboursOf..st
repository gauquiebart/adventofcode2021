private-solving
neighboursOf: aPosition

	^ (OrderedCollection new
		   add: (self upFrom: aPosition);
		   add: (self downFrom: aPosition);
		   add: (self leftFrom: aPosition);
		   add: (self rightFrom: aPosition);
		   yourself) reject: [ :each | each isNil ]