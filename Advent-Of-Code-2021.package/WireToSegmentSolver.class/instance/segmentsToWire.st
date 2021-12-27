private
segmentsToWire

	| segmentsToWire |
	segmentsToWire := OrderedDictionary new.

	wireToSegments keysAndValuesDo: [ :aWire :aSegmentCollection | 
		| aWireCollection |
		aWireCollection := segmentsToWire
			                   at: aSegmentCollection
			                   ifAbsent: [ OrderedCollection new ].
		aWireCollection add: aWire.
		segmentsToWire at: aSegmentCollection put: aWireCollection ].
	
	^ segmentsToWire