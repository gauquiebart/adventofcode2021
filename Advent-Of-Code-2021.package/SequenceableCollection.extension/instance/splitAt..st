*Advent-Of-Code-2021
splitAt: numberOfElements

	"returns a collection of aSequenceableCollection, split at numberOfElements"

	| result index |
	result := OrderedCollection new.
	index := 1.

	[ index < self size ] whileTrue: [ 
		result add: (self
				 copyFrom: index
				 to: index + numberOfElements - 1).
		index := index + numberOfElements ].

	^ result