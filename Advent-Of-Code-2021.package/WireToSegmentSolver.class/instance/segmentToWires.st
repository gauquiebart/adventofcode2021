private
segmentToWires

	| segmentToWires |
	segmentToWires := OrderedDictionary
		                  newFromKeys: ($a to: $g)
		                  andValues:
		                  (($a to: $g) collect: [ :each | 
			                   OrderedCollection new ]).

	wireToSegments keysAndValuesDo: [ :wire :segments | 
		segments do: [ :aSegment | (segmentToWires at: aSegment) add: wire ] ].

	^ segmentToWires collect: [ :segments | segments asArray ]