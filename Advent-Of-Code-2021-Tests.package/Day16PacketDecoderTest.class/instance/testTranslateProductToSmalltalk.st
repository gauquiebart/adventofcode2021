tests
testTranslateProductToSmalltalk

	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk: { 
								  #operator.
								  2.
								  1.
								  { { #literal. 6. 4. 1012 } } });
				 evaluate)
		equals: 1012.

	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk: { 
								  #operator.
								  1.
								  1.
								  { 
									  { #literal. 6. 4. 1012 }.
									  { #literal. 4. 4. 123 } } });
				 evaluate)
		equals: 124476.

	self
		assert: (OpalCompiler new
				 source: (Day16PacketDecoder translateToSmalltalk: { 
								  #operator.
								  1.
								  1.
								  { 
									  { #literal. 6. 4. 1012 }.
									  { #literal. 4. 4. 123 }.
									  { 
										  #operator.
										  1.
										  1.
										  { { #literal. 6. 4. 599 } } } } });
				 evaluate)
		equals: 74561124