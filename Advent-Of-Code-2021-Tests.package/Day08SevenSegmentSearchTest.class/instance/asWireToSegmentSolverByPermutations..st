converting
asWireToSegmentSolverByPermutations: aCollection

	^ aCollection collect: [ :aRawInput | 
		  | splitted |
		  splitted := aRawInput splitOn: #( | ).
		WireToSegmentSolver new
		                       signalPatterns: (splitted at: 1);
		                       codeNumbers: (splitted at: 2);
		                       yourself.]