solving
addAll: anOrderedCollectionOfNumbers

	| first rest |
	first := anOrderedCollectionOfNumbers first.
	rest := anOrderedCollectionOfNumbers allButFirst.
	^ rest inject: first into: [ :sum :next | self add: sum with: next ]