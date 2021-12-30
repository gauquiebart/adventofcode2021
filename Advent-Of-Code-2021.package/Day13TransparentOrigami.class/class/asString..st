solving
asString: dots

	| min max result |
	min := dots min.
	max := dots max.
	result := OrderedCollection new.
	1 to: max y + 1 do: [ :eachY | 
		| row |
		row := String new: max x + 1.
		1 to: max x + 1 do: [ :eachX | 
		row byteAt: eachX put: Character space ].
		result add: row ].
	dots do: [ :each | 
		(result at: each y + 1) byteAt: each x + 1 put: $# ].

	^ result collect: [ :each | each asString ]