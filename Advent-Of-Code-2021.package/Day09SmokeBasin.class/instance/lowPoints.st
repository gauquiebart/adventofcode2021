private-solving
lowPoints 
	|lowPoints|
	lowPoints := OrderedCollection new.

	1 to: (self maxX) do: [ :x | 
		1 to: (self maxY) do: [ :y | 
			| height neighbours |
			height := self x: x y: y.
			neighbours := self neighboursOfX: x y: y.

			height < neighbours min ifTrue: [ lowPoints add: height ] ] ].
	
^ lowPoints 