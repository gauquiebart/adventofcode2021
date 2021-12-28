private
neighboursOfX: x y: y

	^ (OrderedCollection new
		   add: (self upFromX: x y: y);
		   add: (self downFromX: x y: y);
		   add: (self leftFromX: x y: y);
		   add: (self rightFromX: x y: y);
		   yourself) reject: [ :each | each isNil ]