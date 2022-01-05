tests
testTranslateEqualToToSmalltalk

	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk: { 
								  #operator.
								  1.
								  7.
								  { 
									  { #literal. 6. 4. 1012 }.
									  { #literal. 4. 4. 123 } } });
				 evaluate)
		equals: 0.
		
	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk: { 
								  #operator.
								  1.
								  7.
								  { 
									  { #literal. 6. 4. 123 }.
									  { #literal. 4. 4. 1012 } } });
				 evaluate)
		equals: 0.
		
	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk: { 
								  #operator.
								  1.
								  7.
								  { 
									  { #literal. 6. 4. 1012 }.
									  { #literal. 4. 4. 1012 } } });
				 evaluate)
		equals: 1.