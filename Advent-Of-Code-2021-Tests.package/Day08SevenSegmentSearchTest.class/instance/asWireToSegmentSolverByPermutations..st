converting
asWireToSegmentSolverByPermutations: aCollection

	^ aCollection collect: [ :aRawInput | 
		  | splitted |
		  splitted := aRawInput splitOn: #( | ).
		WireToSegmentSolverByPermutations new
		                       signalPatterns: (splitted at: 1);
		                       codeNumbers: (splitted at: 2);
		                       yourself.]