tests
testWireToSegmentSolver

	| signalPatterns codeNumbers wireToSegmentSolver |
	signalPatterns := #( acedgfb cdfbe gcdfa fbcad dab cefabd cdfgeb
	                     eafb cagedb ab ).
	codeNumbers := #( cdfeb fcadb cdfeb cdbaf ).

	wireToSegmentSolver := WireToSegmentSolver new
		                       signalPatterns: signalPatterns;
		                       codeNumbers: codeNumbers;
		                       yourself.

	self
		assert: WireToSegmentSolver wireToSegmentPermutations size
		equals: 5040.

	self
		assert: wireToSegmentSolver solveMapping
		equals: (OrderedDictionary new
				 at: $a put: $c;
				 at: $b put: $f;
				 at: $c put: $g;
				 at: $d put: $a;
				 at: $e put: $b;
				 at: $f put: $d;
				 at: $g put: $e;
				 yourself).


	self assert: wireToSegmentSolver decodeNumbers equals: 5353