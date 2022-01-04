tests
testTranslateLiteralToSmalltalk

	self
		assert: (OpalCompiler new
				 source:
					 (Day16PacketDecoder translateToSmalltalk:
							  { #literal. 6. 4. 2021 });
				 evaluate)
		equals: 2021