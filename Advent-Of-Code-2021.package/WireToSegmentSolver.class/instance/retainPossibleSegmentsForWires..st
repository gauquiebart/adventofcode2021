private
retainPossibleSegmentsForWires: aWireSignalPattern

	| allPossibleSegments |
	allPossibleSegments := ((SmallInteger allNumbersWithPatternSize:
		                         aWireSignalPattern size) flatCollectAsSet: [ 
		                        :aNumber | aNumber signalPatterns ])
		                       asOrderedCollection sort asArray.

	aWireSignalPattern do: [ :aWire | 
		| segmentsForWire |
		segmentsForWire := wireToSegments at: aWire.

		segmentsForWire := (segmentsForWire intersection:
			                    allPossibleSegments) asOrderedCollection
			                   sort asArray.

		wireToSegments at: aWire put: segmentsForWire ]