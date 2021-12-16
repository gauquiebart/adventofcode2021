converting
asPairs: anOrderedCollection
	"returns a collection as a collection of pairs, each of them a collection of 2 elements"
	"scope: class-variables  &  class-instance-variables"	
			
	| pairs |
	pairs := OrderedCollection new.
	
	2 to: anOrderedCollection size do: [:index| 
		|pair|
		pair := OrderedCollection new add: (anOrderedCollection at: index - 1); add: (anOrderedCollection at: index); yourself.
		pairs add: pair].
	
	^ pairs