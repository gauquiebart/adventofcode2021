private
removeImpossibleWires: impossibleWiresForSegment	forSegment: aSegment
	impossibleWiresForSegment do: [ :aWire | 
				| segmentsForWire |
				segmentsForWire := wireToSegments at: aWire.
				segmentsForWire := segmentsForWire \ (Array with: aSegment).
				wireToSegments at: aWire put: segmentsForWire ]
