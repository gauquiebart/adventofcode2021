tests
testCaveConnections

	self
		assert: ((CaveConnection new a: #start b: #A) connectionTo: #start)
		equals: #A.

	self
		assert: ((CaveConnection new a: #start b: #A) connectionTo: #A)
		equals: #start.

	self
		assert: ((CaveConnection new a: #start b: #A) connectionTo: #B)
		equals: nil.
		
self
		assert: ((CaveConnection new a: #start b: #A) isConnectedTo: #start)
		equals: true.

self
		assert: ((CaveConnection new a: #start b: #A) isConnectedTo: #A)
		equals: true.
		
		self
		assert: ((CaveConnection new a: #start b: #A) isConnectedTo: #B)
		equals: false.

