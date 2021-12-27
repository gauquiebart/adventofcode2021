tests
testWireToSegmentSolverOneByOne

	| signalPatterns wireToSegmentSolver |
	signalPatterns := #( acedgfb cdfbe gcdfa fbcad dab cefabd cdfgeb
	                     eafb cagedb ab ).

	wireToSegmentSolver := WireToSegmentSolver new.

	self
		assert: wireToSegmentSolver wireToSegments
		equals: (OrderedDictionary new
				 at: $a put: #( $a $b $c $d $e $f $g );
				 at: $b put: #( $a $b $c $d $e $f $g );
				 at: $c put: #( $a $b $c $d $e $f $g );
				 at: $d put: #( $a $b $c $d $e $f $g );
				 at: $e put: #( $a $b $c $d $e $f $g );
				 at: $f put: #( $a $b $c $d $e $f $g );
				 at: $g put: #( $a $b $c $d $e $f $g );
				 yourself).

	self
		assert: (wireToSegmentSolver
				 reduceWithSignalPattern: #ab;
				 wireToSegments)
		equals: (OrderedDictionary new
				 at: $a put: #( $c $f );
				 at: $b put: #( $c $f );
				 at: $c put: #( $a $b $d $e $g );
				 at: $d put: #( $a $b $d $e $g );
				 at: $e put: #( $a $b $d $e $g );
				 at: $f put: #( $a $b $d $e $g );
				 at: $g put: #( $a $b $d $e $g );
				 yourself).

	self
		assert: (wireToSegmentSolver
				 reduceWithSignalPattern: #eafb;
				 wireToSegments)
		equals: (OrderedDictionary new
				 at: $a put: #( $c $f );
				 at: $b put: #( $c $f );
				 at: $c put: #( $a $e $g );
				 at: $d put: #( $a $e $g );
				 at: $e put: #( $b $d );
				 at: $f put: #( $b $d );
				 at: $g put: #( $a $e $g );
				 yourself).

	self
		assert: (wireToSegmentSolver
				 reduceWithSignalPattern: #dab;
				 wireToSegments)
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
				 reduceWithSignalPattern: #acedgfb;
				 wireToSegments)
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
				 reduceWithSignalPattern: #cdfbe;
				 wireToSegments)
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
				 reduceWithSignalPattern: #gcdfa;
				 wireToSegments)
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
				 reduceWithSignalPattern: #fbcad;
				 wireToSegments)
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
				 reduceWithSignalPattern: #cefabd;
				 wireToSegments)
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
				 reduceWithSignalPattern: #cdfgeb;
				 wireToSegments)
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
				 reduceWithSignalPattern: #cagedb;
				 wireToSegments)
		equals: (OrderedDictionary new
				 at: $a put: #( $c $f );
				 at: $b put: #( $c $f );
				 at: $c put: #( $e $g );
				 at: $d put: #( $a );
				 at: $e put: #( $b $d );
				 at: $f put: #( $b $d );
				 at: $g put: #( $e $g );
				 yourself)