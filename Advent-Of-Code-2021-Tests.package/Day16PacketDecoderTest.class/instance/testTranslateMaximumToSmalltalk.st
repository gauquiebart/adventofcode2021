tests
testTranslateMaximumToSmalltalk

	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk: { 
								  #operator.
								  2.
								  3.
								  { { #literal. 6. 4. 1012 } } });
				 evaluate)
		equals: 1012.

	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk: { 
								  #operator.
								  1.
								  3.
								  { 
									  { #literal. 6. 4. 1012 }.
									  { #literal. 4. 4. 123 } } });
				 evaluate)
		equals: 1012