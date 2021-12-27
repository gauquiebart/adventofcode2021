as yet unclassified
solveMapping
	|segmentToUniqueSignalPatternMapping atog segmentToPossibleWireMapping|
	atog := #(a b c d e f g).
	segmentToUniqueSignalPatternMapping := Dictionary new.
	segmentToPossibleWireMapping := Dictionary new.

	(0 to: 9)	 collect: [ :aNumber | 
			|defaultPattern scrambledPatternsWithSameSize|
			defaultPattern := aNumber signalPatterns.
			
			scrambledPatternsWithSameSize := uniqueSignalPatterns select: [ :aSignalPattern |
				defaultPattern size = aSignalPattern size].
			
			segmentToUniqueSignalPatternMapping at: aNumber put: scrambledPatternsWithSameSize.].
	
	atog do: [:aSymbol | segmentToPossibleWireMapping at: aSymbol put: (Set newFrom: atog)].
	segmentToUniqueSignalPatternMapping keysAndValuesDo: [:aKey :aValue | 
		|defaultPattern|
		defaultPattern := aKey signalPatterns.
		(1 to: defaultPattern size) do: [ :index |
			|aSegment possibleWireMappingsForSegment|
			aSegment := defaultPattern at: index.
			possibleWireMappingsForSegment := ((aValue flatCollect: [ :each | each ]) asSet) collect: [ :each | each asSymbol ].
			segmentToPossibleWireMapping at: aSegment put: 
			((segmentToPossibleWireMapping at: aSegment)
				intersection: possibleWireMappingsForSegment)	]].	
				
	"[(segmentToPossibleWireMapping select: [ :aPossibleWireMapping | aPossibleWireMapping size > 2] )]"
	
		1 to: 5 do:  [:index |
			|sizeTwoMapping|
			
			sizeTwoMapping := (segmentToPossibleWireMapping select: [ :aValue| aValue size = 2 ]) values.
			
			
			(sizeTwoMapping size >= 2)
			ifTrue: [ 
			segmentToPossibleWireMapping valuesDo: [:aSet |
				(aSet size = 2 )
				ifFalse: [
					(sizeTwoMapping first) do: [ :aMapping| 
						aSet remove: aMapping ifAbsent: []].]]]
			
			
			 ].
		
	
		
				
		
	self shouldBeImplemented.