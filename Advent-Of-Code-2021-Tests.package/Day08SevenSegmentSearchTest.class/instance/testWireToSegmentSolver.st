tests
testWireToSegmentSolver

	| signalPatterns codeNumbers wireToSegmentSolver |
	signalPatterns := #( acedgfb cdfbe gcdfa fbcad dab cefabd cdfgeb
	                     eafb cagedb ab ).
	codeNumbers := #( cdfeb fcadb cdfeb cdbaf ).

	wireToSegmentSolver := WireToSegmentSolver new.

	signalPatterns do: [ :aSignalPattern | 
		wireToSegmentSolver reduceWithSignalPattern: aSignalPattern ].

	self
		assert: wireToSegmentSolver wireToSegments
		equals: (OrderedDictionary new
				 at: $a put: #( $c $f );
				 at: $b put: #( $c $f );
				 at: $c put: #( $e $g );
				 at: $d put: #( $a );
				 at: $e put: #( $b $d );
				 at: $f put: #( $b $d );
				 at: $g put: #( $e $g );
				 yourself).


	self
		assert: (wireToSegmentSolver
				 reduceWithOutputValue: #( $b $c $d $e $f );
				 wireToSegments)
		equals: (OrderedDictionary new
				 at: $a put: #( $c );
				 at: $b put: #( $f );
				 at: $c put: #( $g );
				 at: $d put: #( $a );
				 at: $e put: #( $b $d );
				 at: $f put: #( $b $d );
				 at: $g put: #( $e );
				 yourself)