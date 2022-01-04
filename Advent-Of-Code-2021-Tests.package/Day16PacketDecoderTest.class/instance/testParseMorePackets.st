tests
testParseMorePackets

	self
		assert: (Day16PacketDecoder decode:
				 (self fromHexToBinary: '8A004A801A8002F478'))
		equals: { { 
				#operator.
				4.
				2.
				{ { 
					#operator.
					1.
					2.
					{ { 
						#operator.
						5.
						2.
						{ { #literal. 6. 4. 15 } } } } } } } }.

	self
		assert: (Day16PacketDecoder decode:
				 (self fromHexToBinary: '620080001611562C8802118E34'))
		equals: { { 
				#operator.
				3.
				0.
				{ 
					{ 
						#operator.
						0.
						0.
						{ 
							{ #literal. 0. 4. 10 }.
							{ #literal. 5. 4. 11 } } }.
					{ 
						#operator.
						1.
						0.
						{ 
							{ #literal. 0. 4. 12 }.
							{ #literal. 3. 4. 13 } } } } } }.

	self
		assert: (Day16PacketDecoder decode:
				 (self fromHexToBinary: 'C0015000016115A2E0802F182340'))
		equals: { { 
				#operator.
				6.
				0.
				{ 
					{ 
						#operator.
						0.
						0.
						{ 
							{ #literal. 0. 4. 10 }.
							{ #literal. 6. 4. 11 } } }.
					{ 
						#operator.
						4.
						0.
						{ 
							{ #literal. 7. 4. 12 }.
							{ #literal. 0. 4. 13 } } } } } }.

	self
		assert: (Day16PacketDecoder decode:
				 (self fromHexToBinary: 'A0016C880162017C3686B18A3D4780'))
		equals: { { 
				#operator.
				5.
				0.
				{ { 
					#operator.
					1.
					0.
					{ { 
						#operator.
						3.
						0.
						{ 
							{ #literal. 7. 4. 6 }.
							{ #literal. 6. 4. 6 }.
							{ #literal. 5. 4. 12 }.
							{ #literal. 2. 4. 15 }.
							{ #literal. 2. 4. 15 } } } } } } } }